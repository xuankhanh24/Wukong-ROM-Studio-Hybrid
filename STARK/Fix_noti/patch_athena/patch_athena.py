#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
================================================================================
STARK AUTO PATCHER FOR ATHENA (COLOROS 14 / 15 / 16 / 17 | ANDROID 14 - 17)
Tác giả: KhanhStark & Antigravity
Vị trí: C:\\Android\\Auto_Build_WK\\STARK\\Fix_noti\\patch_athena.py

Hỗ trợ 2 chế độ:
  - Tương tác (Interactive): Giao diện dòng lệnh thân thiện, tự động gợi ý đường dẫn
  - Tự động (CLI/Pipeline): Truyền tham số -i, -o, -l cho Auto_Build_WK

Cấp độ vá (Patch Levels):
  - Level 1: True Global Baseline (Mát máy, pin trâu, 14 apps thiết yếu, chuẩn Global 100%)
  - Level 2: Fix thông báo hoàn toàn (Heavy-duty 42 apps, Grab, Shopee, Lazada, Twitter, OTT...)
================================================================================
"""

import os
import sys
import re
import shutil
import struct
import zipfile
import argparse
import tempfile
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from patch_common import run_tool, align_apk, merge_rebuilt_archive, find_tool as shared_tool, require_tool

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
CONFIGS_DIR = os.path.join(SCRIPT_DIR, "configs")
LVL1_DIR = os.path.join(CONFIGS_DIR, "level1_global")
LVL2_DIR = os.path.join(CONFIGS_DIR, "level2_full_fix")

def log(msg):
    print(f"[*] {msg}")

def log_ok(msg):
    print(f"[+] {msg}")

def log_warn(msg):
    print(f"[!] {msg}")

def log_err(msg):
    print(f"[ERROR] {msg}")

# ==============================================================================
# TÌM CÔNG CỤ (APKTOOL & ZIPALIGN)
# ==============================================================================
def find_apktool():
    return shared_tool("apktool")

def find_zipalign():
    return shared_tool("zipalign")
def extract_apk_signing_block(apk_path):
    magic = b"APK Sig Block 42"
    with open(apk_path, "rb") as f:
        data = f.read()
    pos = data.find(magic)
    if pos == -1:
        raise ValueError(f"Không tìm thấy khối APK Sig Block 42 trong {apk_path}")
    size_bytes = data[pos - 8 : pos]
    size = struct.unpack("<Q", size_bytes)[0]
    start = pos + 16 - size - 8
    block = data[start : pos + 16]
    return block

def inject_apk_signing_block(input_apk, block, output_apk):
    with open(input_apk, "rb") as f:
        data = f.read()
    eocd_pos = data.rfind(b"\x50\x4b\x05\x06")
    if eocd_pos == -1:
        raise ValueError(f"Không tìm thấy EOCD trong {input_apk}")
    cd_offset = struct.unpack("<I", data[eocd_pos + 16 : eocd_pos + 20])[0]
    entries_data = data[:cd_offset]
    cd_data = data[cd_offset:eocd_pos]
    eocd_data = bytearray(data[eocd_pos:])
    
    new_cd_offset = cd_offset + len(block)
    eocd_data[16:20] = struct.pack("<I", new_cd_offset)
    
    if os.path.isdir(output_apk):
        raise ValueError(f"Đường dẫn đầu ra '{output_apk}' là một thư mục, không phải tệp APK!")

    out_data = entries_data + block + cd_data + bytes(eocd_data)
    os.makedirs(os.path.dirname(os.path.abspath(output_apk)), exist_ok=True)
    with open(output_apk, "wb") as f:
        f.write(out_data)

# ==============================================================================
# HÀM XỬ LÝ ĐƯỜNG DẪN ĐẦU RA AN TOÀN
# ==============================================================================
def resolve_output_path(input_apk, output_path):
    if not output_path:
        output_path = detect_default_output_apk()
        
    out = os.path.abspath(output_path.strip(' "\''))
    
    # Nếu đầu ra là một thư mục hiện hữu hoặc kết thúc bằng dấu gạch chéo
    if os.path.isdir(out) or output_path.strip().endswith(('/', '\\')):
        # 1. Kiểm tra nếu thư mục này là thư mục ROM chứa system_ext/app/Athena
        rom_athena = os.path.join(out, "system_ext", "app", "Athena", "Athena.apk")
        if os.path.isdir(os.path.dirname(rom_athena)) or os.path.isfile(rom_athena):
            log_warn(f"Đường dẫn đầu ra là thư mục ROM. Tự động chuyển đích đến: {rom_athena}")
            return os.path.abspath(rom_athena)
        # 2. Hoặc thư mục đích chứa APK cùng tên với input
        base_name = os.path.basename(input_apk) if input_apk and input_apk.lower().endswith(".apk") else "Athena.apk"
        resolved = os.path.join(out, base_name)
        log_warn(f"Đường dẫn đầu ra là thư mục. Tự động lưu tệp APK vào: {resolved}")
        return os.path.abspath(resolved)
        
    # Nếu đường dẫn không có đuôi .apk
    if not out.lower().endswith(".apk"):
        rom_athena = os.path.join(out, "system_ext", "app", "Athena", "Athena.apk")
        if os.path.isdir(os.path.dirname(rom_athena)):
            log_warn(f"Tự động chuyển đích đến cấu trúc ROM: {rom_athena}")
            return os.path.abspath(rom_athena)
        base_name = os.path.basename(input_apk) if input_apk and input_apk.lower().endswith(".apk") else "Athena.apk"
        resolved = os.path.join(out, base_name)
        log_warn(f"Đường dẫn không có đuôi .apk. Tự động thêm: {resolved}")
        return os.path.abspath(resolved)
        
    return out

# ==============================================================================
# HÀM VÁ CHÍNH (CORE PATCHING LOGIC)
# ==============================================================================
def patch_athena_apk(input_apk, output_apk, level):
    with tempfile.TemporaryDirectory(prefix='wukong-athena-') as work_dir:
        return _patch_athena_apk(input_apk, output_apk, level, work_dir)


def _patch_athena_apk(input_apk, output_apk, level, work_dir):
    input_apk = os.path.abspath(input_apk)
    output_apk = resolve_output_path(input_apk, output_apk)

    if not os.path.isfile(input_apk):
        log_err(f"Tệp APK đầu vào không tồn tại: {input_apk}")
        return False

    cfg_dir = LVL1_DIR if level == 1 else LVL2_DIR
    level_name = "Level 1: True Global Baseline (Mát máy & Cân bằng)" if level == 1 else "Level 2: Fix Thông Báo Hoàn Toàn (Heavy-duty 42 Apps)"

    print("=" * 80)
    print(f"[*] BẮT ĐẦU VÁ ATHENA: {level_name}")
    print(f"[*] Input : {input_apk} ({os.path.getsize(input_apk)} bytes)")
    print(f"[*] Output: {output_apk}")
    print("=" * 80)

    # 1. Trích xuất chữ ký gốc OEM
    log("Trích xuất khối chữ ký OEM (APK Sig Block 42)...")
    try:
        orig_sig_block = extract_apk_signing_block(input_apk)
        log_ok(f"Trích xuất thành công chữ ký OEM: {len(orig_sig_block)} bytes")
    except Exception as e:
        log_err(f"Lỗi trích xuất chữ ký: {e}")
        return False

    # 2. Tìm công cụ
    apktool_jar = find_apktool()
    zipalign_bin = find_zipalign()

    if not apktool_jar:
        log_err("Thiếu apktool dùng chung; kiểm tra bin/Java hoặc Runtime/Bin/Java.")
        return False
    if not zipalign_bin:
        log_err("Không tìm thấy zipalign.exe! Hãy cài Android SDK build-tools.")
        return False

    log_ok(f"Sử dụng Apktool: {apktool_jar}")
    log_ok(f"Sử dụng Zipalign: {zipalign_bin}")

    # 3. Decompile APK
    decomp_dir = os.path.join(work_dir, "decompiled")
    os.makedirs(decomp_dir, exist_ok=True)

    log("Đang Decompile APK bằng Apktool...")
    res = run_tool([require_tool("java"), "-jar", apktool_jar, "d", input_apk, "-o", decomp_dir, "-f"], capture_output=True, text=True)
    if res.returncode != 0:
        log_err(f"Decompile thất bại:\n{res.stderr}")
        shutil.rmtree(work_dir, ignore_errors=True)
        return False
    log_ok("Decompile hoàn tất!")

    # 4. Kích hoạt peculiar_kill_policy trong res/values/bools.xml
    values_dir = os.path.join(decomp_dir, "res", "values")
    os.makedirs(values_dir, exist_ok=True)
    bools_path = os.path.join(values_dir, "bools.xml")
    if os.path.isfile(bools_path):
        with open(bools_path, "r", encoding="utf-8", errors="ignore") as f:
            bc = f.read()
        for flag in ["guardelf_associate_with_startup", "guardelf_kill_sensor", "peculiar_kill_policy"]:
            if f'name="{flag}"' in bc:
                bc = re.sub(rf'<bool name="{flag}">.*?</bool>', f'<bool name="{flag}">true</bool>', bc)
            else:
                bc = bc.replace("</resources>", f'    <bool name="{flag}">true</bool>\n</resources>')
        with open(bools_path, "w", encoding="utf-8") as f:
            f.write(bc)
    else:
        with open(bools_path, "w", encoding="utf-8") as f:
            f.write('<?xml version="1.0" encoding="utf-8"?>\n<resources>\n    <bool name="peculiar_kill_policy">true</bool>\n</resources>\n')
    log_ok("Đã kích hoạt peculiar_kill_policy = true trong bools.xml")

    # 5. Sao chép toàn bộ 15 tệp XML cấu hình của Level tương ứng
    target_assets = os.path.join(decomp_dir, "assets")
    os.makedirs(target_assets, exist_ok=True)
    log(f"Đang nạp 15 tệp cấu hình XML từ: {cfg_dir}")
    copied_count = 0
    for fn in os.listdir(cfg_dir):
        if fn.endswith(".xml"):
            shutil.copy2(os.path.join(cfg_dir, fn), os.path.join(target_assets, fn))
            copied_count += 1
    log_ok(f"Đã đồng bộ {copied_count}/15 tệp XML cấu hình vào bản dựng!")

    # 6. Rebuild APK
    temp_built_apk = os.path.join(work_dir, "built.apk")
    log("Đang Rebuild APK bằng Apktool...")
    res = run_tool([require_tool("java"), "-jar", apktool_jar, "b", decomp_dir, "-o", temp_built_apk, "-f"], capture_output=True, text=True)
    if res.returncode != 0:
        log_err(f"Rebuild thất bại:\n{res.stderr}")
        shutil.rmtree(work_dir, ignore_errors=True)
        return False
    log_ok("Rebuild APK hoàn tất!")

    # 7. Zipalign 4-byte
    temp_aligned_apk = os.path.join(work_dir, "aligned.apk")
    log("Đang căn chỉnh 4-byte bằng Zipalign...")
    preserved_apk = os.path.join(work_dir, "preserved.apk")
    merge_rebuilt_archive(input_apk, temp_built_apk, preserved_apk)
    align_apk(zipalign_bin, preserved_apk, temp_aligned_apk)
    log_ok("Căn chỉnh và kiểm tra Zipalign 16KB hoàn tất!")

    # 8. Tiêm chữ ký gốc OEM (OrigSig Block 42)
    log("Đang tiêm khối chữ ký OEM (OrigSig Injection)...")
    try:
        inject_apk_signing_block(temp_aligned_apk, orig_sig_block, output_apk)
        log_warn(f"Đã tạo {output_apk}; chép khối OEM không làm chữ ký v2/v3 hợp lệ lại.")
    except Exception as e:
        log_err(f"Lỗi tiêm chữ ký: {e}")
        shutil.rmtree(work_dir, ignore_errors=True)
        return False

    # 9. Dọn dẹp
    shutil.rmtree(work_dir, ignore_errors=True)
    print("=" * 80)
    print("                VÁ APK THÀNH CÔNG 100%!")
    print(f"File đầu ra: {output_apk}")
    print("=" * 80)
    return True

# ==============================================================================
# TỰ ĐỘNG PHÁT HIỆN ĐƯỜNG DẪN MẶC ĐỊNH
# ==============================================================================
def detect_default_input_apk():
    candidates = [
        os.path.join(SCRIPT_DIR, "..", "system_ext", "app", "Athena", "Athena.apk"),
        os.path.join(SCRIPT_DIR, "system_ext", "app", "Athena", "Athena.apk"),
        os.path.join(SCRIPT_DIR, "Athena_CN.apk"),
        os.path.join(SCRIPT_DIR, "..", "Athena_CN.apk"),
        os.path.join(SCRIPT_DIR, "Athena.apk"),
        os.path.join(SCRIPT_DIR, "..", "Athena.apk"),
    ]
    for c in candidates:
        if os.path.isfile(c):
            return os.path.abspath(c)
    return ""

def detect_default_output_apk():
    parent_rom = os.path.join(SCRIPT_DIR, "..", "system_ext", "app", "Athena", "Athena.apk")
    if os.path.isfile(parent_rom) or os.path.isdir(os.path.dirname(parent_rom)):
        return os.path.abspath(parent_rom)
    return os.path.abspath(os.path.join(SCRIPT_DIR, "system_ext", "app", "Athena", "Athena.apk"))

# ==============================================================================
# GIAO DIỆN TƯƠNG TÁC (INTERACTIVE CLI)
# ==============================================================================
def interactive_menu():
    print("=" * 80)
    print("       CÔNG CỤ VÁ TỰ ĐỘNG ATHENA - AUTO_BUILD_WK / STARK")
    print("                 (ColorOS 14 / 15 / 16 / 17)")
    print("=" * 80)

    # 1. Input APK
    default_input = detect_default_input_apk()
    print("\n[BƯỚC 1/3] CHỌN ĐƯỜNG DẪN TỆP APK ĐẦU VÀO:")
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
    print("\n[BƯỚC 2/3] CHỌN ĐƯỜNG DẪN TỆP APK ĐẦU RA:")
    print(f"  (Gợi ý mặc định: {default_output})")
    outp = input("  Nhập đường dẫn APK đầu ra [Enter để dùng mặc định]: ").strip(' "\'')
    if not outp:
        outp = default_output
    outp = resolve_output_path(inp, outp)

    # 3. Level selection
    print("\n[BƯỚC 3/3] CHỌN CẤP ĐỘ VÁ (PATCH LEVEL):")
    print("  " + "-" * 74)
    print("  [1] Level 1: True Global Baseline (KHUYẾN NGHỊ: Mát máy & Cân bằng)")
    print("      • Cấu hình 100% chuẩn Global gốc của kỹ sư OPPO/OnePlus.")
    print("      • Lean Profile: Bảo vệ 14 ứng dụng liên lạc và báo thức thiết yếu")
    print("        (Zalo, Telegram, Nekogram, Messenger, FB, WhatsApp, Gmail, Clocks...).")
    print("      • Tắt alwaysalive và telemetry DCS -> CPU ngủ sâu, máy mát lạnh, pin trâu.")
    print("      • Giữ nguyên cơ chế thu hồi RAM (LMK) trơn tru cho Gaming & Camera.")
    print("")
    print("  [2] Level 2: Fix Thông Báo Hoàn Toàn (Heavy-duty Whitelist 42 Apps)")
    print("      • Lưới quét diện rộng: 42 ứng dụng không bao giờ bị kill khi xóa đa nhiệm.")
    print("      • Bao gồm: Toàn bộ OTT, Shopee, ShopeeFood, Grab, Lazada, Twitter, Kakao...")
    print("      • Kích hoạt rã đông 10 giây ELSA imPkg cho 20+ app khi đổi mạng Wi-Fi/4G.")
    print("      • Thích hợp khi cần nổ thông báo mọi app và chấp nhận dùng thêm RAM/pin.")
    print("  " + "-" * 74)

    lvl_choice = input("  Nhập lựa chọn của bạn [1 hoặc 2] (Mặc định: 1): ").strip()
    if lvl_choice == "2":
        level = 2
    else:
        level = 1

    print("\n" + "=" * 80)
    print("XÁC NHẬN THÔNG TIN VÁ:")
    print(f"  - APK Đầu vào: {inp}")
    print(f"  - APK Đầu ra : {outp}")
    print(f"  - Cấp độ vá  : Level {level} ({'True Global Baseline' if level == 1 else 'Fix Thông Báo Hoàn Toàn'})")
    print("=" * 80)
    confirm = input("Bắt đầu vá ngay? [Y/n]: ").strip().lower()
    if confirm in ["n", "no"]:
        print("Đã hủy thao tác.")
        return

    success = patch_athena_apk(inp, outp, level)
    if success:
        print("\n[HOÀN TẤT] Bạn có thể build lại ROM trong Wukong ROM Studio hoặc flash ngay!")
    input("\nNhấn Enter để thoát...")

# ==============================================================================
# ENTRYPOINT CHÍNH
# ==============================================================================
def main():
    parser = argparse.ArgumentParser(description="Athena Auto Patcher for Auto_Build_WK / STARK")
    parser.add_argument("-i", "--input", help="Đường dẫn file APK đầu vào")
    parser.add_argument("-o", "--output", help="Đường dẫn file APK đầu ra")
    parser.add_argument("-l", "--level", type=int, choices=[1, 2], help="Cấp độ vá: 1 (Global Baseline) hoặc 2 (Fix hoàn toàn)")
    parser.add_argument("--no-interactive", action="store_true", help="Chạy tự động không chờ hỏi")

    args = parser.parse_args()

    # Nếu truyền đủ tham số dòng lệnh
    if args.input and args.output and args.level:
        success = patch_athena_apk(args.input, args.output, args.level)
        sys.exit(0 if success else 1)

    # Chạy giao diện tương tác
    interactive_menu()

if __name__ == "__main__":
    main()
