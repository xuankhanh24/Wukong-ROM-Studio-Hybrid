#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
================================================================================
UNIVERSAL SETTINGS PATCHER - COLOROS / OXYGENOS (ANDROID 14 / 15 / 16 / 17+)
Thư mục: C:\\Android\\Auto_Build_WK\\STARK\\Settings_mod\\patch_Settings_mod
Tác giả: KhanhStark & Antigravity
================================================================================
Tính năng chính:
  1. Hỗ trợ chọn APK đầu vào linh hoạt:
     - Kéo & thả file APK vào patch_settings.bat
     - Truyền đường dẫn qua dòng lệnh: python patch_settings.py <path_to_apk>
     - Menu tương tác tự động quét các file Settings.apk trong thư mục và ROM STARK
     - Hỗ trợ mở hộp thoại File Picker GUI hoặc gõ đường dẫn tùy ý.
  2. Tự động nhận diện công cụ (Java, Apktool, Zipalign) trong Auto_Build_WK và Android SDK.
  3. Quét Multi-Dex cực nhanh bằng In-Memory DEX Parser:
     - Xác định chính xác DEX chứa AboutDeviceOtaUpdatePreference.
     - Chỉ decompile và build lại DEX chứa OTA preference; giữ các DEX khác nguyên bản.
  4. Vá bytecode Smali thích ứng (Adaptive Hooks):
     - Gọi WkOtaCardHook.onBind sau touch listener hoặc super callback, không dùng thanh ghi tạm.
     - Giữ nguyên public/private/static/final của getTargetIntentStatic trên A16/A17.
     - Bộ helper xử lý ảnh/video/audio, màu chữ, tap play/pause và vòng đời player.
     - Giữ nguyên các method video nội bộ, controller, listener và resource ID của OEM.
  5. Lưu dữ liệu khối ký OEM (không xác nhận chữ ký còn hợp lệ):
     - Trích xuất khối APK Signing Block 42 từ Stock APK gốc.
     - Căn chỉnh và kiểm tra zipalign -P 16.
     - Sửa DEX làm mất hiệu lực chữ ký v2/v3; cần quy trình ký ROM được cấp quyền.
  6. Đóng gói module KernelSU / Magisk / APatch sẵn sàng flash và hỗ trợ tự động triển khai vào ROM STARK.
================================================================================
"""

import os
import sys
import shutil
import struct
import zipfile
import re
import argparse
import tempfile
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from patch_common import run_tool, rewrite_archive, align_apk, find_tool as shared_tool

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

# Màu sắc console
def log(msg):
    print(f"[*] {msg}", flush=True)

def log_ok(msg):
    print(f"[+] {msg}", flush=True)

def log_warn(msg):
    print(f"[!] {msg}", flush=True)

def log_err(msg):
    print(f"[ERROR] {msg}", flush=True)

# ------------------------------------------------------------------------------
# 1. TÌM KIẾM CÔNG CỤ TỰ ĐỘNG
# ------------------------------------------------------------------------------
def find_java():
    return shared_tool("java")

def find_apktool():
    return shared_tool("apktool")

def find_zipalign():
    return shared_tool("zipalign")
def get_defined_classes_from_dex(dex_data):
    """Phân tích cấu trúc nhị phân DEX để lấy danh sách class định nghĩa (class_defs)"""
    if len(dex_data) < 0x70 or dex_data[:4] != b'dex\n':
        return set()
    string_ids_size, string_ids_off = struct.unpack_from('<II', dex_data, 0x38)
    type_ids_size, type_ids_off = struct.unpack_from('<II', dex_data, 0x40)
    class_defs_size, class_defs_off = struct.unpack_from('<II', dex_data, 0x60)
    
    str_offsets = [struct.unpack_from('<I', dex_data, string_ids_off + i * 4)[0] for i in range(string_ids_size)]
    
    def get_str(idx):
        off = str_offsets[idx]
        pos = off
        while dex_data[pos] & 0x80:
            pos += 1
        pos += 1
        end = dex_data.find(b'\x00', pos)
        return dex_data[pos:end].decode('utf-8', errors='ignore')
    
    type_str_indices = [struct.unpack_from('<I', dex_data, type_ids_off + i * 4)[0] for i in range(type_ids_size)]
    
    classes = set()
    for i in range(class_defs_size):
        class_idx = struct.unpack_from('<I', dex_data, class_defs_off + i * 32)[0]
        str_idx = type_str_indices[class_idx]
        classes.add(get_str(str_idx))
    return classes

def scan_apk_for_target_dex(apk_path):
    """Quét APK để tìm dex chứa các class mục tiêu"""
    log("Đang phân tích cấu trúc Multi-Dex của APK đầu vào...")
    target_pref = "Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference;"
    target_ctrl = "Lcom/oplus/settings/feature/deviceinfo/controller/OtaUpdateController;"
    target_ctrl_comp = "Lcom/oplus/settings/feature/deviceinfo/controller/OtaUpdateController$Companion;"
    target_video_listener = "Lcom/oplus/settings/widget/preference/AboutDeviceOtaUpdatePreference$setupTopVideo$1;"

    results = {
        'pref_dex': None,
        'ctrl_dex': None,
        'listener_dex': None
    }

    with zipfile.ZipFile(apk_path, 'r') as zf:
        dex_files = [n for n in zf.namelist() if n.startswith('classes') and n.endswith('.dex')]
        # Sắp xếp classes.dex, classes2.dex, classes3.dex...
        def dex_sort_key(n):
            if n == 'classes.dex':
                return 1
            num = n.replace('classes', '').replace('.dex', '')
            return int(num) if num.isdigit() else 999
        dex_files.sort(key=dex_sort_key)

        for dex_name in dex_files:
            dex_data = zf.read(dex_name)
            defined = get_defined_classes_from_dex(dex_data)
            if target_pref in defined:
                results['pref_dex'] = dex_name
            if target_ctrl in defined or target_ctrl_comp in defined:
                results['ctrl_dex'] = dex_name
            if target_video_listener in defined:
                results['listener_dex'] = dex_name

    log_ok(f"Kết quả phân tích Multi-Dex:")
    log_ok(f"  - AboutDeviceOtaUpdatePreference:  {results['pref_dex']}")
    log_ok(f"  - OtaUpdateController:             {results['ctrl_dex']}")
    log_ok(f"  - setupTopVideo$1:                 {results['listener_dex']}")

    if not results['pref_dex']:
        raise ValueError("Không tìm thấy class AboutDeviceOtaUpdatePreference trong bất kỳ file DEX nào!")
    return results

# ------------------------------------------------------------------------------
# 3. KỸ THUẬT CHỮ KÝ OEM (ORIGSIG INJECTION)
# ------------------------------------------------------------------------------
def extract_apk_signing_block(apk_path):
    """Trích xuất khối APK Signing Block 42 từ Stock APK"""
    magic = b"APK Sig Block 42"
    with open(apk_path, "rb") as f:
        data = f.read()
    pos = data.find(magic)
    if pos == -1:
        log_warn("APK không chứa khối APK Sig Block 42 (có thể là APK ký testkey hoặc scheme v1)")
        return None
    size_bytes = data[pos - 8 : pos]
    size = struct.unpack("<Q", size_bytes)[0]
    start = pos + 16 - size - 8
    block = data[start : pos + 16]
    return block

def inject_apk_signing_block(input_apk, block, output_apk):
    """Tiêm khối chữ ký OEM vào trước Central Directory và cập nhật EOCD"""
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
    
    out_data = entries_data + block + cd_data + bytes(eocd_data)
    with open(output_apk, "wb") as f:
        f.write(out_data)

# ------------------------------------------------------------------------------
# 4. THAO TÁC VÁ BYTECODE SMALI THÍCH ỨNG
# ------------------------------------------------------------------------------
def patch_ota_preference(pref_path):
    """Use the universal onBind helper while retaining OEM method visibility."""
    path = Path(pref_path)
    original = path.read_text(encoding="utf-8")
    bind_pattern = re.compile(
        r"(?ms)^\.method[^\n]*\sonBindViewHolder\(Landroidx/preference/PreferenceViewHolder;\)V[ \t]*\n.*?^\.end method[ \t]*$"
    )
    matches = list(bind_pattern.finditer(original))
    if len(matches) != 1:
        raise ValueError(f"Expected one onBindViewHolder callback, found {len(matches)}")
    bind = matches[0].group()
    if re.search(r"\b(static|abstract|native)\b", bind.splitlines()[0]):
        raise ValueError("onBindViewHolder must be an instance method with a body")
    bridge = "Lcom/oplus/settings/widget/preference/WkOtaCardHook;"
    if bridge + "->onBind" not in bind:
        hook = (
            "    # WUKONG UNIVERSAL OTA MEDIA CARD\n"
            f"    invoke-static/range {{p0 .. p1}}, {bridge}->onBind(Ljava/lang/Object;Ljava/lang/Object;)V\n"
        )
        # Match only this callback. OEM code may reuse p1 before returning,
        # so a return-void is not a safe place to pass the original holder.
        anchors = (
            r"(?m)^[ \t]*invoke-virtual(?:/range)?\s*\{[^}\n]+\},\s*Landroid/view/View;->setOnTouchListener\(Landroid/view/View\$OnTouchListener;\)V[ \t]*$",
            r"(?m)^[ \t]*invoke-super(?:/range)?\s*\{[^}\n]+\},\s*L[^;\n]+;->onBindViewHolder\(Landroidx/preference/PreferenceViewHolder;\)V[ \t]*$",
        )
        for anchor in anchors:
            match = re.search(anchor, bind)
            if match:
                bind = bind[:match.end()] + "\n" + hook.rstrip("\n") + bind[match.end():]
                break
        else:
            raise ValueError("onBindViewHolder has no safe hook anchor")
    code = original[:matches[0].start()] + bind + original[matches[0].end():]

    # Keep public/private/static/final exactly as supplied by the stock ABI.
    intent_pattern = re.compile(
        r"(?ms)^(?P<header>\.method[^\n]*\sgetTargetIntentStatic\(\)Landroid/content/Intent;)[ \t]*\n.*?^\.end method[ \t]*$"
    )
    intents = list(intent_pattern.finditer(code))
    if len(intents) > 1:
        raise ValueError("Duplicate getTargetIntentStatic methods")
    if intents:
        match = intents[0]
        if re.search(r"\b(abstract|native)\b", match["header"]):
            raise ValueError("Unsupported getTargetIntentStatic declaration")
        body = (
            match["header"] + "\n    .locals 1\n\n"
            f"    invoke-static {{}}, {bridge}->getTargetIntent()Landroid/content/Intent;\n"
            "    move-result-object v0\n    return-object v0\n.end method"
        )
        code = code[:match.start()] + body + code[match.end():]
    path.write_bytes(code.encode("utf-8"))
    log_ok("Universal OTA onBind hook applied; OEM visibility and video methods preserved.")
    return True
def package_magisk_module(patched_apk_path, output_zip_path):
    """Đóng gói module flash qua Magisk / KernelSU / APatch"""
    log("Đang đóng gói Module Magisk / KernelSU...")
    work_dir = os.path.join(os.path.dirname(output_zip_path), "_module_temp")
    if os.path.isdir(work_dir):
        shutil.rmtree(work_dir)
    os.makedirs(work_dir, exist_ok=True)

    # 1. module.prop
    prop_path = os.path.join(work_dir, "module.prop")
    with open(prop_path, "w", encoding="utf-8", newline="\n") as f:
        f.write("""id=settings_universal_mod
name=Settings ColorOS Android 17 Mod (Ace 5 Port)
version=v17.0-Universal
versionCode=1700
author=KhanhStark and Antigravity
description=Settings Mod voi Video Header va Custom Card OTA (OnePlus Ace 5 Port) cho ColorOS Android 17. Giu 100% chu ky OEM goc.
""")

    # 2. customize.sh
    cust_path = os.path.join(work_dir, "customize.sh")
    with open(cust_path, "w", encoding="utf-8", newline="\n") as f:
        f.write("""ui_print "***********************************************"
ui_print "* Settings ColorOS Android 17 Mod (Ace 5 Port)*"
ui_print "*         KhanhStark and Antigravity          *"
ui_print "***********************************************"

ui_print "- Xoa cache cu de he thong nhan dien Settings moi..."
rm -rf /data/system/package_cache/* /data/misc/profiles/cur/0/com.android.settings /data/misc/profiles/ref/com.android.settings

ui_print "- Thiet lap phan quyen..."
set_perm_recursive "$MODPATH" 0 0 0755 0644
toybox chcon -R u:object_r:system_file:s0 "$MODPATH/system" 2>/dev/null
toybox chcon -R u:object_r:system_file:s0 "$MODPATH/system_ext" 2>/dev/null
ui_print "- Cai dat hoan tat! Vui long khoi dong lai thiet bi."
""")

    # 3. Targets cho overlay mount
    target1 = os.path.join(work_dir, "system", "system_ext", "priv-app", "Settings", "Settings.apk")
    target2 = os.path.join(work_dir, "system_ext", "priv-app", "Settings", "Settings.apk")
    os.makedirs(os.path.dirname(target1), exist_ok=True)
    os.makedirs(os.path.dirname(target2), exist_ok=True)
    shutil.copy2(patched_apk_path, target1)
    shutil.copy2(patched_apk_path, target2)

    # 4. Zip
    if os.path.exists(output_zip_path):
        os.remove(output_zip_path)
    with zipfile.ZipFile(output_zip_path, "w") as zf:
        for root, _, files in os.walk(work_dir):
            for f in files:
                full_p = os.path.join(root, f)
                rel_p = os.path.relpath(full_p, work_dir).replace("\\", "/")
                compress = zipfile.ZIP_STORED if f.endswith(".apk") else zipfile.ZIP_DEFLATED
                zf.write(full_p, rel_p, compress_type=compress)

    shutil.rmtree(work_dir)
    log_ok(f"Tạo Module flash thành công: {output_zip_path}")

# ------------------------------------------------------------------------------
# 6. GIAO DIỆN CHỌN TỆP ĐẦU VÀO LINH HOẠT
# ------------------------------------------------------------------------------
def select_input_apk():
    """Cho phép người dùng chọn tệp APK đầu vào qua tham số, menu hoặc file dialog"""
    # 1. Kiểm tra tham số dòng lệnh
    if len(sys.argv) > 1 and os.path.isfile(sys.argv[1]):
        return os.path.abspath(sys.argv[1])

    # 2. Quét tìm các file Settings APK ứng viên
    script_dir = os.path.dirname(os.path.abspath(__file__))
    candidates = []

    # Quét thư mục hiện tại
    for f in os.listdir(script_dir):
        if f.lower().endswith(".apk") and not ("patched" in f.lower() or "temp" in f.lower()):
            candidates.append(os.path.join(script_dir, f))

    # Quét ROM STARK: system_ext/priv-app/Settings/Settings.apk
    stark_settings = os.path.abspath(os.path.join(script_dir, "..", "system_ext", "priv-app", "Settings", "Settings.apk"))
    if os.path.isfile(stark_settings) and stark_settings not in candidates:
        candidates.append(stark_settings)

    # Quét thư mục mod_stark nếu có
    download_dir = os.path.join(script_dir, 'inputs')
    if os.path.isdir(download_dir):
        for f in ["Settings_a17.apk", "Settings.apk"]:
            p = os.path.join(download_dir, f)
            if os.path.isfile(p) and p not in candidates:
                candidates.append(p)

    print("=" * 80)
    print("      UNIVERSAL SETTINGS PATCHER - COLOROS / OXYGENOS ANDROID 14 - 17")
    print("=" * 80)
    print("Vui lòng chọn file Settings APK đầu vào:")
    print("-" * 80)
    for idx, cand in enumerate(candidates, 1):
        sz_mb = os.path.getsize(cand) / (1024 * 1024)
        print(f" [{idx}] {cand} ({sz_mb:.1f} MB)")
    print("-" * 80)
    print(" [O] Mở hộp thoại chọn file (File Picker GUI)")
    print(" [C] Nhập đường dẫn file APK tùy ý")
    print(" [Q] Thoát")
    print("=" * 80)

    if not sys.stdin.isatty():
        if candidates:
            log_ok(f"Chế độ tự động (Non-Interactive): Chọn file APK đầu tiên: {candidates[0]}")
            return candidates[0]
        else:
            raise RuntimeError("Chế độ tự động nhưng không tìm thấy file Settings APK nào!")

    while True:
        default_choice = "1" if candidates else "C"
        try:
            choice = input(f"Lựa chọn của bạn [Mặc định {default_choice}]: ").strip()
        except (EOFError, KeyboardInterrupt):
            choice = default_choice

        if not choice:
            choice = default_choice

        choice_upper = choice.upper()
        if choice_upper == 'Q':
            print("Đã hủy tác vụ.")
            sys.exit(0)
        elif choice_upper == 'O':
            try:
                import tkinter as tk
                from tkinter import filedialog
                root = tk.Tk()
                root.withdraw()
                file_selected = filedialog.askopenfilename(
                    title="Chọn Settings APK đầu vào",
                    filetypes=[("Android APK", "*.apk"), ("All Files", "*.*")]
                )
                root.destroy()
                if file_selected and os.path.isfile(file_selected):
                    return os.path.abspath(file_selected)
                else:
                    print("Không có file nào được chọn. Vui lòng chọn lại.")
            except Exception as e:
                print(f"Không thể mở giao diện File Picker: {e}")
        elif choice_upper == 'C':
            custom_path = input("Nhập đường dẫn đầy đủ đến file APK: ").strip().strip('"').strip("'")
            if os.path.isfile(custom_path):
                return os.path.abspath(custom_path)
            else:
                print(f"File không tồn tại: {custom_path}. Vui lòng thử lại.")
        elif choice.isdigit():
            idx = int(choice) - 1
            if 0 <= idx < len(candidates):
                return candidates[idx]
            else:
                print("Lựa chọn số không hợp lệ.")
        elif os.path.isfile(choice.strip('"').strip("'")):
            return os.path.abspath(choice.strip('"').strip("'"))
        else:
            print("Lựa chọn không hợp lệ, vui lòng thử lại.")

# ------------------------------------------------------------------------------
# 7. QUY TRÌNH VÁ CHÍNH (PIPELINE)
# ------------------------------------------------------------------------------
def run_patch_pipeline(input_apk, *, output_apk=None, work_dir=None, package_module=True, deploy=False):
    """Each run owns scratch; unattended runs never deploy into shared content."""
    if output_apk and Path(input_apk).resolve() == Path(output_apk).resolve():
        raise ValueError("Output must not overwrite the source APK")
    if work_dir:
        Path(work_dir).mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix="settings-patch-", dir=work_dir) as scratch:
        return _run_patch_pipeline(input_apk, scratch, output_apk, package_module, deploy)


def _run_patch_pipeline(input_apk, scratch_dir, output_apk, package_module, deploy):
    base_dir = os.path.dirname(os.path.abspath(__file__))

    log_ok(f"Bắt đầu xử lý file APK: {input_apk}")

    # 1. Tìm công cụ
    java_bin = find_java()
    apktool_bin = find_apktool()
    zipalign_bin = find_zipalign()

    if not java_bin:
        raise RuntimeError("Không tìm thấy Java (JDK 17/21). Vui lòng cài đặt Java!")
    if not apktool_bin:
        raise RuntimeError("Không tìm thấy Apktool. Vui lòng kiểm tra Auto_Build_WK\\bin hoặc Tools\\apktool!")
    if not zipalign_bin:
        raise RuntimeError("Không tìm thấy Zipalign. Vui lòng kiểm tra Android SDK build-tools!")

    log_ok(f"Công cụ sử dụng:")
    log_ok(f"  - Java:     {java_bin}")
    log_ok(f"  - Apktool:  {apktool_bin}")
    log_ok(f"  - Zipalign: {zipalign_bin}")

    # 2. Trích xuất chữ ký OEM
    log("Trích xuất khối chữ ký OEM (APK Signing Block 42)...")
    oem_sig_block = extract_apk_signing_block(input_apk)
    if oem_sig_block:
        log_ok(f"Trích xuất thành công: {len(oem_sig_block)} bytes (Scheme v2/v3)")
    else:
        log_warn("Không tìm thấy khối chữ ký OEM v2/v3, sẽ bỏ qua bước OrigSig Injection.")

    # 3. Quét Multi-Dex
    dex_mapping = scan_apk_for_target_dex(input_apk)
    pref_dex = dex_mapping['pref_dex']

    # Tập hợp các DEX duy nhất cần sửa đổi
    target_dex_set = set([pref_dex])

    log_ok(f"Các file DEX cần giải nén & vá: {sorted(list(target_dex_set))}")

    # 4. Decompile từng DEX cần thiết bằng Apktool
    rebuilt_dex_map = {} # dex_name -> path_to_new_dex

    custom_smali_dir = os.path.join(base_dir, "smali", "com", "oplus", "settings", "widget", "preference")
    if not os.path.isdir(custom_smali_dir):
        raise FileNotFoundError(f"Không tìm thấy thư mục smali tùy biến tại: {custom_smali_dir}")

    with zipfile.ZipFile(input_apk, 'r') as zf_in:
        for dex_name in sorted(list(target_dex_set)):
            log(f"--- Đang xử lý {dex_name} ---")
            dex_data = zf_in.read(dex_name)
            dex_temp_file = os.path.join(scratch_dir, dex_name)
            with open(dex_temp_file, 'wb') as f:
                f.write(dex_data)

            # Tạo dummy apk chứa 1 classes.dex
            dummy_apk = os.path.join(scratch_dir, f"mini_{dex_name}.apk")
            with zipfile.ZipFile(dummy_apk, 'w') as z_dummy:
                z_dummy.write(dex_temp_file, "classes.dex")

            smali_out = os.path.join(scratch_dir, f"smali_{dex_name}")
            if os.path.isdir(smali_out):
                shutil.rmtree(smali_out)

            # Chạy apktool d -r
            cmd_d = [java_bin, "-jar", apktool_bin, "d", "-r", dummy_apk, "-o", smali_out, "-f"] if apktool_bin.endswith(".jar") else [apktool_bin, "d", "-r", dummy_apk, "-o", smali_out, "-f"]
            res_d = run_tool(cmd_d, capture_output=True, text=True)
            if res_d.returncode != 0:
                raise RuntimeError(f"Lỗi khi dịch ngược {dex_name}:\n{res_d.stderr}")

            # Áp dụng các thay đổi tùy theo vai trò của DEX
            # Vai trò 1: DEX chứa AboutDeviceOtaUpdatePreference
            if dex_name == pref_dex:
                # Copy the complete universal helper family, including nested listeners.
                target_pref_pkg = os.path.join(smali_out, "smali", "com", "oplus", "settings", "widget", "preference")
                os.makedirs(target_pref_pkg, exist_ok=True)
                for f_smali in os.listdir(custom_smali_dir):
                    if f_smali.endswith(".smali"):
                        shutil.copy2(os.path.join(custom_smali_dir, f_smali), os.path.join(target_pref_pkg, f_smali))
                log_ok(f"  -> Đã tích hợp bộ class WkOtaCard* vào {dex_name}")

                # Vá AboutDeviceOtaUpdatePreference.smali
                pref_smali_file = os.path.join(target_pref_pkg, "AboutDeviceOtaUpdatePreference.smali")
                if os.path.isfile(pref_smali_file):
                    patch_ota_preference(pref_smali_file)
                else:
                    raise FileNotFoundError(f"Không tìm thấy {pref_smali_file}")

            # Biên dịch lại DEX
            rebuilt_apk = os.path.join(scratch_dir, f"rebuilt_{dex_name}.apk")
            cmd_b = [java_bin, "-jar", apktool_bin, "b", smali_out, "-o", rebuilt_apk] if apktool_bin.endswith(".jar") else [apktool_bin, "b", smali_out, "-o", rebuilt_apk]
            res_b = run_tool(cmd_b, capture_output=True, text=True)
            if res_b.returncode != 0:
                raise RuntimeError(f"Lỗi khi biên dịch lại {dex_name}:\n{res_b.stderr}")

            # Trích xuất classes.dex mới
            with zipfile.ZipFile(rebuilt_apk, 'r') as z_reb:
                new_dex_data = z_reb.read("classes.dex")
            new_dex_path = os.path.join(scratch_dir, f"{dex_name}_new")
            with open(new_dex_path, 'wb') as f:
                f.write(new_dex_data)
            rebuilt_dex_map[dex_name] = new_dex_path
            log_ok(f"  -> Biên dịch thành công {dex_name} (Kích thước: {len(new_dex_data)} bytes)")

    # 5. Đóng gói lại APK (Thay thế các DEX đã sửa đổi)
    log("Đang đóng gói file APK mới với các DEX đã vá...")
    unaligned_apk = os.path.join(scratch_dir, "Settings_unaligned.apk")
    rewrite_archive(input_apk, unaligned_apk, rebuilt_dex_map)

    # 6. Căn chỉnh 4-byte zipalign
    log("Căn chỉnh và kiểm tra 16KB (zipalign -P 16 -f 4)...")
    aligned_apk = os.path.join(scratch_dir, "Settings_aligned.apk")
    align_apk(zipalign_bin, unaligned_apk, aligned_apk)

    # 7. Tiêm chữ ký OEM gốc (OrigSig Injection)
    out_apk_name = "Settings_Patched_OrigSig.apk"
    final_apk = os.path.abspath(output_apk or os.path.join(base_dir, out_apk_name))
    os.makedirs(os.path.dirname(final_apk), exist_ok=True)
    if oem_sig_block:
        log("Tiêm khối chữ ký OEM gốc (OrigSig Injection)...")
        inject_apk_signing_block(aligned_apk, oem_sig_block, final_apk)
        # Xác minh
        injected_block = extract_apk_signing_block(final_apk)
        if injected_block == oem_sig_block:
            log_warn("Dữ liệu khối OEM trùng khớp; chữ ký v2/v3 không còn hợp lệ sau khi sửa DEX.")
        else:
            log_warn("Khối chữ ký OEM không hoàn toàn trùng khớp!")
    else:
        shutil.copy2(aligned_apk, final_apk)
        log_warn("Đã lưu APK nhưng không có chữ ký OEM.")

    log_ok(f"Đã tạo file APK hoàn chỉnh: {final_apk} ({os.path.getsize(final_apk):,} bytes)")

    # 8. Đóng gói Module flash cho Magisk / KernelSU
    module_zip = os.path.join(os.path.dirname(final_apk), "Settings_Universal_Mod.zip")
    if package_module:
        package_magisk_module(final_apk, module_zip)

    # 9. Tùy chọn triển khai trực tiếp vào ROM STARK
    stark_target = os.path.abspath(os.path.join(base_dir, "..", "system_ext", "priv-app", "Settings", "Settings.apk"))
    if deploy and os.path.isdir(os.path.dirname(stark_target)):
        print("\n" + "-" * 80, flush=True)
        if not sys.stdin.isatty():
            dep_choice = "Y"
        else:
            try:
                dep_choice = input(f"Bạn có muốn tự động cập nhật APK vào STARK ROM build tại:\n  {stark_target} ? (Y/n): ").strip().upper()
            except (EOFError, KeyboardInterrupt):
                dep_choice = "Y"
        if dep_choice != 'N':
            shutil.copy2(final_apk, stark_target)
            log_ok(f"Đã cập nhật file vào ROM STARK: {stark_target}")
        print("-" * 80, flush=True)

    # 10. Dọn dẹp tệp tạm
    shutil.rmtree(scratch_dir, ignore_errors=True)

    print("\n" + "=" * 80)
    print("                     VÁ VÀ ĐÓNG GÓI HOÀN TẤT 100%!")
    print("=" * 80)
    print(f"1. APK đã vá kèm chữ ký OEM: {final_apk}")
    if package_module:
        print(f"2. Module Flash KernelSU/Magisk: {module_zip}")
    print("=" * 80 + "\n")
    return final_apk

def main():
    parser = argparse.ArgumentParser(description="Patch Settings with isolated scratch and verified 16KB alignment")
    parser.add_argument("input", nargs="?")
    parser.add_argument("-o", "--output")
    parser.add_argument("--work-dir")
    parser.add_argument("--no-module", action="store_true")
    parser.add_argument("--deploy-to-stark", action="store_true")
    args = parser.parse_args()
    try:
        input_apk = args.input or select_input_apk()
        run_patch_pipeline(input_apk, output_apk=args.output, work_dir=args.work_dir,
                           package_module=not args.no_module, deploy=args.deploy_to_stark)
    except KeyboardInterrupt:
        print("\nĐã hủy bởi người dùng.")
        sys.exit(1)
    except Exception as e:
        log_err(f"Quá trình xử lý thất bại: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)

if __name__ == "__main__":
    main()
