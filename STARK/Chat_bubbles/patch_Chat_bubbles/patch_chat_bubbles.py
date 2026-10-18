#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
================================================================================
STARK AUTO PATCHER: CHAT BUBBLES & NOTIFICATION CENTER
(ColorOS 14 / 15 / 16 / 17 | Wukong ROM Studio)
Tác giả: KhanhStark & Antigravity
Vị trí: C:\\Android\\Auto_Build_WK\\STARK\\Chat_bubbles\\patch_Chat_bubbles\\patch_chat_bubbles.py

Tính năng:
  1. Bật bong bóng chat (Chat Bubbles) trong More Settings (isExpVersion -> true)
  2. Bật hiển thị số thông báo (Number Badge) cho mọi ứng dụng (isNumBadgeSupportForPackage -> true)
  3. Đổi RomUpdate Provider Database sang máy chủ WK (com.wk.romupdate.provider.db)
  4. Tự động nhận diện DEX chứa class cần vá (classes.dex, classes2.dex, classes3.dex...)
  5. Giữ nguyên cấu trúc nén STORED và căn chỉnh 4-byte Zipalign cho Android Runtime
  6. Lưu dữ liệu khối OEM; sửa DEX làm mất hiệu lực chữ ký v2/v3.
================================================================================
"""

import os
import sys
import re
import struct
import shutil
import zipfile
import argparse
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from patch_common import run_tool, rewrite_archive, align_apk, find_tool as shared_tool, require_tool

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
TOOLS_DIR = os.path.join(SCRIPT_DIR, "tools")

def log(msg):
    print(f"[*] {msg}")

def log_ok(msg):
    print(f"[+] {msg}")

def log_warn(msg):
    print(f"[!] {msg}")

def log_err(msg):
    print(f"[ERROR] {msg}")

# ==============================================================================
# TÌM CÔNG CỤ (BAKSMALI, SMALI, ZIPALIGN)
# ==============================================================================

def get_tools():
    return shared_tool("baksmali"), shared_tool("smali"), shared_tool("zipalign")
def extract_apk_signing_block(apk_path):
    """Trích xuất khối chữ ký OEM (APK Signature Scheme v2/v3) từ APK gốc"""
    magic = b"APK Sig Block 42"
    with open(apk_path, "rb") as f:
        data = f.read()
    
    pos = data.find(magic)
    if pos == -1:
        log_warn(f"Không tìm thấy khối 'APK Sig Block 42' trong {apk_path} (APK có thể chưa ký v2/v3).")
        return None
        
    size_bytes = data[pos - 8 : pos]
    size = struct.unpack("<Q", size_bytes)[0]
    start = pos + 16 - size - 8
    block = data[start : pos + 16]
    log_ok(f"Trích xuất thành công chữ ký OEM (APK Sig Block 42): {len(block)} bytes")
    return block

def inject_apk_signing_block(input_apk, block, output_apk):
    """Tiêm khối chữ ký OEM vào APK đã căn chỉnh zipalign và cập nhật Central Directory offset"""
    with open(input_apk, "rb") as f:
        data = f.read()
        
    eocd_magic = b"\x50\x4b\x05\x06"
    eocd_pos = data.rfind(eocd_magic)
    if eocd_pos == -1:
        raise ValueError(f"Không tìm thấy EOCD trong {input_apk}")
        
    cd_offset = struct.unpack("<I", data[eocd_pos + 16 : eocd_pos + 20])[0]
    entries_data = data[:cd_offset]
    cd_data = data[cd_offset:eocd_pos]
    eocd_data = bytearray(data[eocd_pos:])
    
    new_cd_offset = cd_offset + len(block)
    eocd_data[16:20] = struct.pack("<I", new_cd_offset)
    
    out_data = entries_data + block + cd_data + bytes(eocd_data)
    
    os.makedirs(os.path.dirname(os.path.abspath(output_apk)), exist_ok=True)
    with open(output_apk, "wb") as f:
        f.write(out_data)
        
    log_ok(f"Tiêm thành công chữ ký OEM vào: {output_apk} ({len(out_data)} bytes)")

# ==============================================================================
# TỰ ĐỘNG PHÁT HIỆN DEX MỤC TIÊU
# ==============================================================================
def dex_defines_class(dex_bytes, class_descriptor):
    """Kiểm tra chính xác xem DEX có định nghĩa class_descriptor trong class_defs hay không"""
    try:
        string_ids_size, string_ids_off = struct.unpack('<II', dex_bytes[0x38:0x40])
        type_ids_size, type_ids_off = struct.unpack('<II', dex_bytes[0x40:0x48])
        class_defs_size, class_defs_off = struct.unpack('<II', dex_bytes[0x60:0x68])

        def get_str(idx):
            str_off = struct.unpack('<I', dex_bytes[string_ids_off + idx * 4 : string_ids_off + (idx + 1) * 4])[0]
            p = str_off
            length = 0
            shift = 0
            while True:
                b = dex_bytes[p]
                p += 1
                length |= (b & 0x7f) << shift
                if not (b & 0x80): break
                shift += 7
            end = dex_bytes.find(b'\x00', p)
            return dex_bytes[p:end]

        for i in range(class_defs_size):
            class_idx = struct.unpack('<I', dex_bytes[class_defs_off + i * 32 : class_defs_off + i * 32 + 4])[0]
            str_idx = struct.unpack('<I', dex_bytes[type_ids_off + class_idx * 4 : type_ids_off + (class_idx + 1) * 4])[0]
            if get_str(str_idx) == class_descriptor:
                return True
    except Exception:
        pass
    return False

def find_target_dex(apk_path):
    """Quét tất cả các DEX file để tìm file định nghĩa BaseFeatureOption"""
    target_class = b"Lcom/oplus/notificationmanager/config/BaseFeatureOption;"
    with zipfile.ZipFile(apk_path, "r") as z:
        dex_files = [n for n in z.namelist() if n.endswith(".dex")]
        for d in dex_files:
            if dex_defines_class(z.read(d), target_class):
                return d
    return "classes3.dex" if "classes3.dex" in dex_files else (dex_files[0] if dex_files else None)

# ==============================================================================
# HÀM XỬ LÝ ĐƯỜNG DẪN ĐẦU RA AN TOÀN
# ==============================================================================
def resolve_output_path(input_apk, output_path):
    out = os.path.abspath(output_path.strip(' "\''))
    
    # Nếu đầu ra là thư mục
    if os.path.isdir(out) or output_path.strip().endswith(('/', '\\')):
        # 1. Kiểm tra nếu là thư mục module chứa system_ext/app/NotificationCenter
        rom_apk = os.path.join(out, "system_ext", "app", "NotificationCenter", "NotificationCenter.apk")
        if os.path.isdir(os.path.dirname(rom_apk)) or os.path.isfile(rom_apk):
            log_warn(f"Đường dẫn đầu ra là thư mục Module ROM. Tự động chuyển đích đến: {rom_apk}")
            return os.path.abspath(rom_apk)
            
        base_name = os.path.basename(input_apk) if input_apk and input_apk.lower().endswith(".apk") else "NotificationCenter.apk"
        resolved = os.path.join(out, base_name)
        log_warn(f"Đường dẫn đầu ra là thư mục. Tự động lưu tệp APK vào: {resolved}")
        return os.path.abspath(resolved)
        
    if not out.lower().endswith(".apk"):
        resolved = out + ".apk"
        log_warn(f"Đường dẫn không có đuôi .apk. Tự động đổi thành: {resolved}")
        return os.path.abspath(resolved)
        
    return out

# ==============================================================================
# HÀM VÁ CHÍNH (CORE PATCHING LOGIC)
# ==============================================================================
def patch_notification_center(input_apk, output_apk, inject_origsig=True):
    input_apk = os.path.abspath(input_apk)
    output_apk = resolve_output_path(input_apk, output_apk)

    if not os.path.isfile(input_apk):
        log_err(f"Tệp APK đầu vào không tồn tại: {input_apk}")
        return False

    baksmali_jar, smali_jar, zipalign_bin = get_tools()
    if not baksmali_jar or not smali_jar:
        log_err("Thiếu smali/baksmali dùng chung; kiểm tra bin/Java hoặc Runtime/Bin/Java.")
        return False

    print("=" * 78)
    print("           BẮT ĐẦU VÁ CHAT BUBBLES & SỐ THÔNG BÁO")
    print(f"[*] Input APK : {input_apk} ({os.path.getsize(input_apk):,} bytes)")
    print(f"[*] Output APK: {output_apk}")
    print("=" * 78)

    # 1. Trích xuất chữ ký OEM trước khi sửa đổi
    orig_sig_block = None
    if inject_origsig:
        try:
            orig_sig_block = extract_apk_signing_block(input_apk)
        except Exception as e:
            log_warn(f"Lỗi khi trích xuất chữ ký gốc: {e}")

    # 2. Xác định DEX mục tiêu
    target_dex = find_target_dex(input_apk)
    if not target_dex:
        log_err("Không tìm thấy file DEX nào trong APK!")
        return False
    log_ok(f"Phát hiện DEX mục tiêu chứa class cần vá: {target_dex}")

    # 3. Tạo thư mục tạm
    work_dir = os.path.join(SCRIPT_DIR, "_patch_temp")
    if os.path.exists(work_dir):
        shutil.rmtree(work_dir, ignore_errors=True)
    os.makedirs(work_dir, exist_ok=True)

    try:
        # 4. Trích xuất và decompile đúng DEX mục tiêu
        extracted_dex = os.path.join(work_dir, target_dex)
        with zipfile.ZipFile(input_apk, "r") as z:
            z.extract(target_dex, work_dir)

        smali_out = os.path.join(work_dir, "smali")
        log(f"Đang phân tích và dịch ngược {target_dex} bằng baksmali...")
        cmd_baksmali = [require_tool("java"), "-jar", baksmali_jar, "d", extracted_dex, "-o", smali_out]
        run_tool(cmd_baksmali, check=True)
        log_ok("Dịch ngược smali hoàn tất!")

        # 5. Áp dụng các bản vá Smali
        # 5.1: BaseFeatureOption.smali -> isExpVersion()Z
        bfo_file = None
        for root, dirs, files in os.walk(smali_out):
            if "BaseFeatureOption.smali" in files:
                bfo_file = os.path.join(root, "BaseFeatureOption.smali")
                break

        if not bfo_file:
            log_err("Không tìm thấy BaseFeatureOption.smali trong DEX!")
            return False

        with open(bfo_file, "r", encoding="utf-8") as f:
            bfo_src = f.read()

        pattern_bfo = re.compile(r"\.method public static isExpVersion\(\)Z.*?\.end method", re.DOTALL)
        replacement_bfo = """.method public static isExpVersion()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method"""
        bfo_new, count_bfo = pattern_bfo.subn(replacement_bfo, bfo_src)
        with open(bfo_file, "w", encoding="utf-8") as f:
            f.write(bfo_new)
        log_ok(f"BaseFeatureOption.isExpVersion() -> return true (Bật bong bóng chat & Global features)")

        # 5.2: NotificationBackend.smali -> isNumBadgeSupportForPackage
        nb_file = None
        for root, dirs, files in os.walk(smali_out):
            if "NotificationBackend.smali" in files:
                nb_file = os.path.join(root, "NotificationBackend.smali")
                break

        if nb_file:
            with open(nb_file, "r", encoding="utf-8") as f:
                nb_src = f.read()

            pattern_nb = re.compile(r"\.method public isNumBadgeSupportForPackage\(Ljava/lang/String;I\)Z.*?\.end method", re.DOTALL)
            replacement_nb = """.method public isNumBadgeSupportForPackage(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method"""
            nb_new, count_nb = pattern_nb.subn(replacement_nb, nb_src)
            with open(nb_file, "w", encoding="utf-8") as f:
                f.write(nb_new)
            log_ok("NotificationBackend.isNumBadgeSupportForPackage() -> return true (Bật số thông báo cho mọi app)")
        else:
            log_warn("NotificationBackend.smali không tồn tại trong DEX này.")

        # 5.3: RomUpdate Provider Database URL
        old_urls = [
            'content://com.oplus.romupdate.provider.db/update_list',
            '"stark"'
        ]
        new_url = 'content://com.wk.romupdate.provider.db/update_list'
        url_count = 0

        for root, dirs, files in os.walk(smali_out):
            for file in files:
                if file.endswith(".smali"):
                    fpath = os.path.join(root, file)
                    with open(fpath, "r", encoding="utf-8", errors="ignore") as f:
                        text = f.read()
                    
                    modified = False
                    if 'content://com.oplus.romupdate.provider.db/update_list' in text:
                        text = text.replace('content://com.oplus.romupdate.provider.db/update_list', new_url)
                        modified = True
                        url_count += 1
                    elif file == "DBUtil.smali" and '"stark"' in text:
                        text = text.replace('"stark"', f'"{new_url}"')
                        modified = True
                        url_count += 1
                        
                    if modified:
                        with open(fpath, "w", encoding="utf-8") as f:
                            f.write(text)
                        log_ok(f"Đã cập nhật RomUpdate URL trong: {file}")

        log_ok(f"Đã cập nhật RomUpdate URL sang com.wk.romupdate ({url_count} vị trí)")

        # 6. Reassemble smali -> DEX
        patched_dex = os.path.join(work_dir, "patched.dex")
        log(f"Đang biên dịch lại smali sang DEX bằng smali.jar...")
        cmd_smali = [require_tool("java"), "-jar", smali_jar, "a", smali_out, "-o", patched_dex]
        run_tool(cmd_smali, check=True)
        log_ok(f"Biên dịch DEX thành công! Kích thước: {os.path.getsize(patched_dex):,} bytes")

        # 7. Đóng gói lại APK
        temp_apk = os.path.join(work_dir, "repackaged.apk")
        log("Đang đóng gói lại tệp APK (giữ cấu trúc STORED uncompressed cho DEX)...")
        rewrite_archive(input_apk, temp_apk, {target_dex: Path(patched_dex)})

        # 8. Căn chỉnh Zipalign 4-byte
        aligned_apk = os.path.join(work_dir, "aligned.apk")
        align_apk(zipalign_bin, temp_apk, aligned_apk)

        # 9. Tiêm lại chữ ký gốc OEM (OrigSig Injection)
        if orig_sig_block:
            log("Đang tiêm khối chữ ký OEM (OrigSig Injection)...")
            inject_apk_signing_block(aligned_apk, orig_sig_block, output_apk)
        else:
            shutil.copy2(aligned_apk, output_apk)
            log_warn("Không có khối chữ ký OEM, xuất file APK nguyên bản.")

        print("\n" + "=" * 78)
        print("               VÁ TỆP APK THÀNH CÔNG 100%!")
        print(f"File đầu ra : {output_apk} ({os.path.getsize(output_apk):,} bytes)")
        if orig_sig_block:
            print("Khối OEM đã chép; chữ ký v2/v3 không còn hợp lệ sau khi sửa DEX.")
        print("=" * 78)
        return True

    finally:
        shutil.rmtree(work_dir, ignore_errors=True)

# ==============================================================================
# PHÁT HIỆN ĐƯỜNG DẪN MẶC ĐỊNH
# ==============================================================================
def detect_default_input_apk():
    candidates = [
        os.path.join(SCRIPT_DIR, "..", "system_ext", "app", "NotificationCenter", "NotificationCenter.apk"),
        os.path.join(SCRIPT_DIR, "NotificationCenter.apk"),
    ]
    for c in candidates:
        if os.path.isfile(c):
            return os.path.abspath(c)
    return ""

def detect_default_output_apk():
    parent_rom = os.path.join(SCRIPT_DIR, "..", "system_ext", "app", "NotificationCenter", "NotificationCenter.apk")
    if os.path.isfile(parent_rom) or os.path.isdir(os.path.dirname(parent_rom)):
        return os.path.abspath(parent_rom)
    return os.path.abspath(os.path.join(SCRIPT_DIR, "NotificationCenter_patched.apk"))

# ==============================================================================
# GIAO DIỆN TƯƠNG TÁC (INTERACTIVE MENU)
# ==============================================================================
def interactive_menu():
    print("=" * 80)
    print("      CÔNG CỤ VÁ TỰ ĐỘNG CHAT BUBBLES - AUTO_BUILD_WK / STARK")
    print("              (NotificationCenter.apk - ColorOS)")
    print("=" * 80)

    # 1. Input APK
    default_input = detect_default_input_apk()
    print("\n[BƯỚC 1/2] CHỌN ĐƯỜNG DẪN TỆP APK ĐẦU VÀO:")
    if default_input:
        print(f"  (Gợi ý mặc định: {default_input})")
    inp = input("  Nhập đường dẫn APK [Enter để dùng mặc định]: ").strip(' "\'')
    if not inp:
        inp = default_input

    while not inp or not os.path.isfile(inp):
        print(f"  [!] Tệp không tồn tại: {inp}")
        inp = input("  Vui lòng nhập lại đường dẫn APK đầu vào: ").strip(' "\'')

    # 2. Output APK
    default_output = detect_default_output_apk()
    print("\n[BƯỚC 2/2] CHỌN ĐƯỜNG DẪN TỆP APK ĐẦU RA:")
    print(f"  (Gợi ý mặc định: {default_output})")
    outp = input("  Nhập đường dẫn APK đầu ra [Enter để dùng mặc định]: ").strip(' "\'')
    if not outp:
        outp = default_output
    outp = resolve_output_path(inp, outp)

    print("\n" + "=" * 80)
    print("XÁC NHẬN THÔNG TIN VÁ:")
    print(f"  - APK Đầu vào: {inp}")
    print(f"  - APK Đầu ra : {outp}")
    print("  - Tính năng vá: Bật bong bóng chat + Bật số thông báo + Đổi WK RomUpdate")
    print("  - Chữ ký     : Tự động tiêm lại chữ ký gốc OEM (OrigSig Injection)")
    print("=" * 80)
    
    confirm = input("Bắt đầu vá ngay? [Y/n]: ").strip().lower()
    if confirm in ["n", "no"]:
        print("Đã hủy thao tác.")
        return

    success = patch_notification_center(inp, outp, inject_origsig=True)
    if success:
        print("\n[HOÀN TẤT] Tệp đã sẵn sàng cho Wukong ROM Studio đóng ROM hoặc flash!")
    input("\nNhấn Enter để kết thúc...")

# ==============================================================================
# ENTRYPOINT CHÍNH
# ==============================================================================
def main():
    parser = argparse.ArgumentParser(description="Auto Patcher for NotificationCenter (Chat Bubbles)")
    parser.add_argument("-i", "--input", help="Đường dẫn tệp APK đầu vào")
    parser.add_argument("-o", "--output", help="Đường dẫn tệp APK đầu ra")
    parser.add_argument("--no-origsig", action="store_true", help="Không tiêm lại chữ ký gốc OEM")
    parser.add_argument("--no-interactive", action="store_true", help="Chạy tự động không chờ hỏi")

    args = parser.parse_args()

    # Nếu truyền đủ tham số qua dòng lệnh (CLI / Pipeline cho Auto_Build_WK)
    if args.input and args.output:
        success = patch_notification_center(args.input, args.output, inject_origsig=not args.no_origsig)
        sys.exit(0 if success else 1)

    # Chạy giao diện tương tác
    interactive_menu()

if __name__ == "__main__":
    main()
