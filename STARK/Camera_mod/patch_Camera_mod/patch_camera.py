#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
================================================================================
          OPLUS CAMERA AUTO PATCHER - WUKONG ROM STUDIO / STARK
                     (ColorOS 14 / 15 / 16 / 17)
================================================================================
Tác giả: STARK / Wukong ROM Studio & Antigravity Assistant
Mô tả:
  Công cụ tự động hóa toàn diện vá OplusCamera.apk cho mọi dòng máy OnePlus / OPPO:
    1. Mở khóa dải Zoom động (Dynamic Zoom Range Override) qua Settings.Global:
       - wk_camera_zoom_mod_enabled (1 = Bật, 0 = Tắt)
       - wk_camera_zoom_max_ratio_x100 (mặc định 3000 = 30x, lên tới 240x)
    2. Mở khóa tính năng ẩn (Hasselblad Lumo Setting Guide & Video Guide):
       - com.oplus.video.guide.support
       - com.oplus.lumo.setting.guide.support
    3. Nhận diện ngữ nghĩa (Semantic Bytecode Matching):
       - Không phụ thuộc tên class/method bị mã hóa (obfuscate).
       - Thích ứng đa phiên bản từ ColorOS 14 đến ColorOS 17 (Android 14 -> 17).
    4. Căn chỉnh chuẩn 16KB Page Alignment (-P 16 4):
       - Khắc phục triệt để lỗi crash dlopen libmmkv.so trên Android 17.
    5. Bảo tồn khối chữ ký gốc OEM (APK Sig Block 42):
       - Tự động trích xuất và tiêm lại khối chứng chỉ OEM nguyên bản.
================================================================================
"""

import os
import re
import sys
import shutil
import struct
import zipfile
import argparse
import tempfile
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
from patch_common import run_tool, rewrite_archive, align_apk, find_tool as shared_tool, require_tool

if sys.stdout.encoding != 'utf-8':
    try:
        sys.stdout.reconfigure(encoding='utf-8')
    except Exception:
        pass

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
BIN_DIR = os.path.join(SCRIPT_DIR, "bin")

# ==============================================================================
# HÀM LOGGING ĐỊNH DẠNG MÀU SẮC
# ==============================================================================
def log(msg):
    print(f"[*] {msg}")

def log_ok(msg):
    print(f"[+] {msg}")

def log_warn(msg):
    print(f"[!] {msg}")

def log_err(msg):
    print(f"[-] {msg}")

# ==============================================================================
# MÃ NGUỒN SMALI HOOK ĐỘC LẬP (Lwk/camera/ZoomRangeHook;)
# ==============================================================================
ZOOM_RANGE_HOOK_SMALI = """.class public final Lwk/camera/ZoomRangeHook;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfiguredMax()F
    .registers 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wk_camera_zoom_mod_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "wk_camera_zoom_max_ratio_x100"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v2, 0x5dc0

    if-le v1, v2, :cond_1

    move v1, v2

    :cond_1
    int-to-float v1, v1

    const/high16 v2, 0x42c80000

    div-float/2addr v1, v2

    return v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static patchMax(F)F
    .registers 3

    invoke-static {}, Lwk/camera/ZoomRangeHook;->getConfiguredMax()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static patchRange([F)[F
    .registers 6

    invoke-static {}, Lwk/camera/ZoomRangeHook;->getConfiguredMax()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    if-eqz p0, :cond_1

    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    const/4 v2, 0x1

    aput v0, p0, v2

    array-length v2, p0

    const/4 v4, 0x4

    if-lt v2, v4, :cond_0

    const/4 v2, 0x3

    aput v0, p0, v2

    :cond_0
    return-object p0

    :cond_1
    return-object p0
.end method

.method public static isFeatureSupported(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "com.oplus.video.guide.support"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oplus.lumo.setting.guide.support"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static initConfigOverrides(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "com.oplus.video.guide.support"

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.oplus.lumo.setting.guide.support"

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
"""

# ==============================================================================
# XỬ LÝ CHỮ KÝ GỐC OEM (APK SIG BLOCK 42)
# ==============================================================================
def extract_apk_signing_block(apk_path):
    magic = b"APK Sig Block 42"
    with open(apk_path, "rb") as f:
        data = f.read()
    pos = data.find(magic)
    if pos == -1:
        return None
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
    
    out_data = entries_data + block + cd_data + bytes(eocd_data)
    os.makedirs(os.path.dirname(os.path.abspath(output_apk)), exist_ok=True)
    with open(output_apk, "wb") as f:
        f.write(out_data)

# ==============================================================================
# ĐỊNH VỊ CÔNG CỤ (ZIPALIGN, BAKSMALI, SMALI)
# ==============================================================================
def find_zipalign():
    return shared_tool("zipalign")

def find_tools():
    return shared_tool("baksmali"), shared_tool("smali"), shared_tool("zipalign")
def split_smali_methods(text):
    lines = text.splitlines()
    header_lines = []
    methods = []
    
    in_method = False
    cur_method_lines = []
    cur_method_sig = ""
    
    for line in lines:
        if line.startswith(".method "):
            in_method = True
            cur_method_sig = line
            cur_method_lines = [line]
        elif in_method:
            cur_method_lines.append(line)
            if line.startswith(".end method"):
                in_method = False
                methods.append((cur_method_sig, cur_method_lines))
                cur_method_lines = []
        else:
            header_lines.append(line)
    return header_lines, methods

def patch_characteristics_file(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        text = f.read()

    header_lines, methods = split_smali_methods(text)
    patched_methods = []
    zoom_range_method_name = None

    for sig, mlines in methods:
        mbody = "\n".join(mlines)
        if "getSupportedZoomRange, e: " in mbody and sig.endswith(")[F"):
            match = re.search(r'\.method\s+(?:.+?\s+)?([^\s(]+)\(', sig)
            if match:
                zoom_range_method_name = match.group(1)
            log(f"  [+] Tìm thấy phương thức getSupportedZoomRange: {sig} (tên: {zoom_range_method_name})")

    for sig, mlines in methods:
        mbody = "\n".join(mlines)
        
        # 1. SCALER_AVAILABLE_MAX_DIGITAL_ZOOM getter
        if "SCALER_AVAILABLE_MAX_DIGITAL_ZOOM" in mbody and sig.endswith(")F"):
            log(f"  [+] Đang vá scaler max zoom: {sig}")
            patched_lines = []
            for l in mlines:
                if re.match(r'^\s*return\s+[a-z0-9]+', l):
                    ret_reg = l.strip().split()[-1]
                    patched_lines.append(f"    invoke-static {{{ret_reg}}}, Lwk/camera/ZoomRangeHook;->patchMax(F)F")
                    patched_lines.append(f"    move-result {ret_reg}")
                    patched_lines.append(l)
                else:
                    patched_lines.append(l)
            patched_methods.append((sig, patched_lines))
            continue

        # 2. getSupportedZoomRange
        if "getSupportedZoomRange, e: " in mbody and sig.endswith(")[F"):
            log(f"  [+] Đang vá getSupportedZoomRange: {sig}")
            patched_lines = []
            for l in mlines:
                if re.match(r'^\s*return-object\s+[a-z0-9]+', l):
                    ret_reg = l.strip().split()[-1]
                    patched_lines.append(f"    invoke-static {{{ret_reg}}}, Lwk/camera/ZoomRangeHook;->patchRange([F)[F")
                    patched_lines.append(f"    move-result-object {ret_reg}")
                    patched_lines.append(l)
                else:
                    patched_lines.append(l)
            patched_methods.append((sig, patched_lines))
            continue

        # 3. getMaxZoom method (chế độ Chân dung/Pro)
        is_max_zoom = False
        if zoom_range_method_name and f"->{zoom_range_method_name}(" in mbody and sig.endswith(")F"):
            if ("com.oplus.portrait.max.zoom.value" in mbody or 
                "com.oplus.feature.macro.closeup.max.zoom.value" in mbody or
                "com.oplus.night.pro.zoom.max.value" in mbody):
                is_max_zoom = True

        if is_max_zoom:
            log(f"  [+] Đang vá getMaxZoom: {sig}")
            patched_lines = []
            hook_injected = False
            for l in mlines:
                patched_lines.append(l)
                if not hook_injected and (l.strip().startswith(".registers") or l.strip().startswith(".locals")):
                    hook_injected = True
                    patched_lines.append("    invoke-static {}, Lwk/camera/ZoomRangeHook;->getConfiguredMax()F")
                    patched_lines.append("    move-result v0")
                    patched_lines.append("    const/4 v1, 0x0")
                    patched_lines.append("    cmpl-float v1, v0, v1")
                    patched_lines.append("    if-lez v1, :cond_zoom_configured_max")
                    patched_lines.append("    return v0")
                    patched_lines.append("    :cond_zoom_configured_max")
            patched_methods.append((sig, patched_lines))
            continue

        patched_methods.append((sig, mlines))

    output = []
    output.extend(header_lines)
    for sig, mlines in patched_methods:
        output.extend(mlines)

    with open(file_path, "w", encoding="utf-8") as f:
        f.write("\n".join(output) + "\n")
    log_ok(f"Đã vá thành công: {os.path.basename(file_path)}")

def patch_camera_config(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        text = f.read()

    header_lines, methods = split_smali_methods(text)
    patched_methods = []

    for sig, mlines in methods:
        # Hook <clinit>
        if sig.startswith(".method static constructor <clinit>()V"):
            log("  [+] Đang hook CameraConfig.<clinit>() với initConfigOverrides")
            patched_lines = []
            hooked = False
            for l in mlines:
                patched_lines.append(l)
                if not hooked and "sput-object" in l and "->d:Ljava/util/concurrent/ConcurrentHashMap;" in l:
                    reg = l.strip().split()[1].replace(",", "")
                    patched_lines.append(f"    invoke-static {{{reg}}}, Lwk/camera/ZoomRangeHook;->initConfigOverrides(Ljava/util/concurrent/ConcurrentHashMap;)V")
                    hooked = True
            patched_methods.append((sig, patched_lines))
            continue

        # Hook getConfigBooleanValue
        if sig.startswith(".method public static getConfigBooleanValue(Ljava/lang/String;)Z"):
            log("  [+] Đang hook CameraConfig.getConfigBooleanValue để mở khóa Lumo & Video Guide")
            patched_lines = []
            hooked = False
            for l in mlines:
                patched_lines.append(l)
                if not hooked and (l.strip().startswith(".registers") or l.strip().startswith(".locals")):
                    patched_lines.append("    invoke-static {p0}, Lwk/camera/ZoomRangeHook;->isFeatureSupported(Ljava/lang/String;)Z")
                    patched_lines.append("    move-result v0")
                    patched_lines.append("    if-eqz v0, :cond_cfg_hook_bypass")
                    patched_lines.append("    const/4 p0, 0x1")
                    patched_lines.append("    return p0")
                    patched_lines.append("    :cond_cfg_hook_bypass")
                    hooked = True
            patched_methods.append((sig, patched_lines))
            continue

        patched_methods.append((sig, mlines))

    output = []
    output.extend(header_lines)
    for sig, mlines in patched_methods:
        output.extend(mlines)

    with open(file_path, "w", encoding="utf-8") as f:
        f.write("\n".join(output) + "\n")
    log_ok("Đã vá thành công CameraConfig.smali")

def patch_camera_file(file_path):
    with open(file_path, "r", encoding="utf-8") as f:
        text = f.read()

    lines = text.splitlines()
    output = []
    patched = False

    i = 0
    while i < len(lines):
        l = lines[i]
        output.append(l)
        if not patched and 'const-string' in l and '"com.oplus.video.guide.support"' in l:
            j = i + 1
            while j < min(len(lines), i + 15):
                output.append(lines[j])
                if lines[j].strip().startswith("move-result"):
                    reg = lines[j].strip().split()[-1]
                    output.append(f"    const/4 {reg}, 0x1")
                    patched = True
                    log(f"  [+] Đã chèn const/4 {reg}, 0x1 trong Camera.smali")
                    i = j
                    break
                j += 1
        i += 1

    if patched:
        with open(file_path, "w", encoding="utf-8") as f:
            f.write("\n".join(output) + "\n")
        log_ok("Đã vá thành công Camera.smali")

def patch_smali_directory(smali_dir):
    log("Tiến hành áp dụng các bản vá ngữ nghĩa vào cây Smali...")
    
    # 1. Thêm ZoomRangeHook.smali
    hook_dir = os.path.join(smali_dir, "wk", "camera")
    os.makedirs(hook_dir, exist_ok=True)
    hook_file = os.path.join(hook_dir, "ZoomRangeHook.smali")
    with open(hook_file, "w", encoding="utf-8") as f:
        f.write(ZOOM_RANGE_HOOK_SMALI)
    log_ok(f"Đã chèn class ZoomRangeHook.smali: {hook_file}")

    # 2. Tìm và vá OplusCameraCharacteristics (tự động nhận diện)
    char_file = None
    for root, dirs, files in os.walk(smali_dir):
        for file in files:
            if file.endswith(".smali"):
                full_path = os.path.join(root, file)
                try:
                    with open(full_path, "r", encoding="utf-8") as fp:
                        content = fp.read()
                        if '.source "OplusCameraCharacteristics.java"' in content or 'getSupportedZoomRange, e: ' in content:
                            char_file = full_path
                            break
                except Exception:
                    pass
        if char_file:
            break

    if char_file:
        log_ok(f"Nhận diện OplusCameraCharacteristics tại: {char_file}")
        patch_characteristics_file(char_file)
    else:
        log_warn("Không tìm thấy OplusCameraCharacteristics trong DEX này!")

    # 3. Vá CameraConfig.smali
    cam_config_file = os.path.join(smali_dir, "com", "oplus", "camera", "configure", "CameraConfig.smali")
    if os.path.exists(cam_config_file):
        log_ok(f"Nhận diện CameraConfig tại: {cam_config_file}")
        patch_camera_config(cam_config_file)
    else:
        log_warn("Không tìm thấy CameraConfig.smali!")

    # 4. Vá Camera.smali
    camera_file = os.path.join(smali_dir, "com", "oplus", "camera", "Camera.smali")
    if os.path.exists(camera_file):
        log_ok(f"Nhận diện Camera tại: {camera_file}")
        patch_camera_file(camera_file)

# ==============================================================================
# HÀM XỬ LÝ ĐƯỜNG DẪN MẶC ĐỊNH
# ==============================================================================
def detect_default_input_apk():
    candidates = [
        os.path.join(SCRIPT_DIR, "..", "my_product", "app", "OplusCamera", "OplusCamera.apk"),
        os.path.join(SCRIPT_DIR, "OplusCamera.apk"),
        "OplusCamera.apk"
    ]
    for c in candidates:
        if os.path.isfile(c):
            return os.path.abspath(c)
    return ""

def detect_default_output_apk(input_apk=""):
    parent_rom_apk = os.path.join(SCRIPT_DIR, "..", "my_product", "app", "OplusCamera", "OplusCamera.apk")
    if os.path.isdir(os.path.dirname(parent_rom_apk)):
        return os.path.abspath(parent_rom_apk)
    if input_apk and os.path.isfile(input_apk):
        base, ext = os.path.splitext(input_apk)
        return f"{base}_mod{ext}"
    return os.path.abspath(os.path.join(SCRIPT_DIR, "OplusCamera_mod.apk"))

def resolve_output_path(input_apk, output_path):
    if not output_path:
        output_path = detect_default_output_apk(input_apk)
    out = os.path.abspath(output_path.strip(' "\''))
    if os.path.isdir(out) or output_path.strip().endswith(('/', '\\')):
        base_name = os.path.basename(input_apk) if input_apk and input_apk.lower().endswith(".apk") else "OplusCamera.apk"
        resolved = os.path.join(out, base_name)
        log_warn(f"Đường dẫn đầu ra là thư mục. Tự động lưu vào: {resolved}")
        return os.path.abspath(resolved)
    if not out.lower().endswith(".apk"):
        resolved = out + ".apk"
        log_warn(f"Tự động thêm đuôi .apk: {resolved}")
        return os.path.abspath(resolved)
    return out

# ==============================================================================
# QUY TRÌNH VÁ CHÍNH (MAIN PATCH PIPELINE)
# ==============================================================================
def patch_camera_apk(input_apk, output_apk):
    input_apk = os.path.abspath(input_apk.strip(' "\''))
    output_apk = resolve_output_path(input_apk, output_apk)

    if not os.path.isfile(input_apk):
        log_err(f"Tệp APK đầu vào không tồn tại: {input_apk}")
        return False

    baksmali_jar, smali_jar, zipalign_bin = find_tools()
    if not baksmali_jar or not os.path.isfile(baksmali_jar):
        log_err("Thiếu baksmali dùng chung; kiểm tra bin/Java hoặc Runtime/Bin/Java.")
        return False
    if not smali_jar or not os.path.isfile(smali_jar):
        log_err("Thiếu smali dùng chung; kiểm tra bin/Java hoặc Runtime/Bin/Java.")
        return False

    print("\n" + "=" * 80)
    print("                     BẮT ĐẦU QUÁ TRÌNH VÁ OPLUS CAMERA")
    print("=" * 80)
    log(f"APK Đầu vào : {input_apk} ({os.path.getsize(input_apk)} bytes)")
    log(f"APK Đầu ra  : {output_apk}")
    log(f"Công cụ     : Baksmali={os.path.basename(baksmali_jar)}, Smali={os.path.basename(smali_jar)}")
    if zipalign_bin:
        log(f"Zipalign    : {zipalign_bin}")
    else:
        log_err("Cần zipalign hỗ trợ -P 16 để xuất APK đã kiểm tra căn chỉnh.")
        return False

    # 1. Trích xuất khối chữ ký OEM (APK Sig Block 42)
    log("Bước 1/6: Đang trích xuất khối chữ ký gốc OEM (APK Sig Block 42)...")
    orig_sig_block = extract_apk_signing_block(input_apk)
    if orig_sig_block:
        log_ok(f"Trích xuất thành công chữ ký OEM: {len(orig_sig_block)} bytes")
    else:
        log_warn("Không tìm thấy APK Sig Block 42 trong APK nguồn.")

    work_dir = tempfile.mkdtemp(prefix="camera_patch_")
    try:
        # 2. Quét Multidex để xác định DEX mục tiêu
        log("Bước 2/6: Quét Multidex nhận diện DEX chứa CameraCharacteristics...")
        target_dex = None
        with zipfile.ZipFile(input_apk, "r") as z:
            for item in sorted(z.namelist()):
                if item.startswith("classes") and item.endswith(".dex"):
                    data = z.read(item)
                    if b"getSupportedZoomRange, e: " in data:
                        target_dex = item
                        log_ok(f"Đã nhận diện DEX mục tiêu: {item}")
                        break

        if not target_dex:
            raise ValueError("Không nhận diện được DEX Camera; dừng để tránh vá sai phiên bản.")

        # 3. Disassemble DEX mục tiêu
        log(f"Bước 3/6: Disassemble {target_dex} bằng Baksmali...")
        dex_path = os.path.join(work_dir, target_dex)
        with zipfile.ZipFile(input_apk, "r") as z:
            z.extract(target_dex, work_dir)

        smali_out = os.path.join(work_dir, f"smali_{target_dex}")
        cmd_dis = [require_tool("java"), "-jar", baksmali_jar, "d", dex_path, "-o", smali_out]
        run_tool(cmd_dis, check=True)
        log_ok(f"Disassemble hoàn tất vào: {smali_out}")

        # 4. Áp dụng Semantic Patches
        log("Bước 4/6: Áp dụng Semantic Patches (Zoom Range & Feature Unlocks)...")
        patch_smali_directory(smali_out)

        # 5. Assemble lại DEX
        log(f"Bước 5/6: Assemble {target_dex} bằng Smali...")
        new_dex_path = os.path.join(work_dir, f"new_{target_dex}")
        cmd_ass = [require_tool("java"), "-jar", smali_jar, "a", smali_out, "-o", new_dex_path]
        run_tool(cmd_ass, check=True)
        with open(new_dex_path, "rb") as df:
            new_dex_bytes = df.read()
        log_ok(f"Biên dịch DEX thành công: {len(new_dex_bytes)} bytes")

        # 6. Đóng gói & Căn chỉnh 16KB & Tiêm chữ ký
        log("Bước 6/6: Đóng gói APK, ZipAlign 16KB và tiêm lại chữ ký OEM...")
        temp_unaligned = os.path.join(work_dir, "unaligned.apk")
        rewrite_archive(input_apk, temp_unaligned, {target_dex: new_dex_bytes})

        temp_aligned = os.path.join(work_dir, "aligned.apk")
        align_apk(zipalign_bin, temp_unaligned, temp_aligned)

        if orig_sig_block:
            log("Đang tiêm khối chữ ký gốc OEM (OrigSig Block 42)...")
            inject_apk_signing_block(temp_aligned, orig_sig_block, output_apk)
            log_warn("Khối OEM đã chép; chữ ký v2/v3 không còn hợp lệ sau khi sửa DEX.")
        else:
            shutil.copy2(temp_aligned, output_apk)

        print("\n" + "=" * 80)
        print("                  VÁ OPLUS CAMERA THÀNH CÔNG 100%!")
        print(f"  Tệp đầu ra : {output_apk}")
        print(f"  Kích thước : {os.path.getsize(output_apk):,} bytes")
        print("=" * 80)
        return True

    except Exception as e:
        log_err(f"Quá trình vá gặp lỗi: {e}")
        return False
    finally:
        shutil.rmtree(work_dir, ignore_errors=True)

# ==============================================================================
# GIAO DIỆN TƯƠNG TÁC NGƯỜI DÙNG (INTERACTIVE CLI)
# ==============================================================================
def interactive_menu():
    print("=" * 80)
    print("      CÔNG CỤ VÁ TỰ ĐỘNG OPLUS CAMERA - AUTO_BUILD_WK / STARK")
    print("                    (ColorOS 14 / 15 / 16 / 17)")
    print("=" * 80)

    # 1. Input APK
    default_input = detect_default_input_apk()
    print("\n[BƯỚC 1/2] CHỌN ĐƯỜNG DẪN TỆP APK ĐẦU VÀO:")
    if default_input:
        print(f"  (Gợi ý mặc định: {default_input})")
    inp = input("  Nhập đường dẫn APK nguồn [Enter để dùng mặc định]: ").strip(' "\'')
    if not inp:
        inp = default_input

    while not inp or not os.path.isfile(inp):
        print(f"  [!] Tệp không tồn tại: {inp}")
        inp = input("  Vui lòng nhập lại đường dẫn APK đầu vào: ").strip(' "\'')

    # 2. Output APK
    default_output = detect_default_output_apk(inp)
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
    print(f"  - Tính năng  : Zoom Range Override (30x-240x) + Lumo/Video Guide Support")
    print(f"  - Tiêu chuẩn : 16KB Page Alignment + OEM OrigSig Block 42 Injection")
    print("=" * 80)
    confirm = input("Bắt đầu vá ngay? [Y/n]: ").strip().lower()
    if confirm in ["n", "no"]:
        print("Đã hủy thao tác.")
        return

    success = patch_camera_apk(inp, outp)
    if success:
        print("\n[HOÀN TẤT] Bạn có thể build lại ROM trong Wukong ROM Studio hoặc copy vào Magisk module!")
    input("\nNhấn Enter để thoát...")

# ==============================================================================
# ENTRYPOINT CHÍNH
# ==============================================================================
def main():
    parser = argparse.ArgumentParser(description="Oplus Camera Auto Patcher for Auto_Build_WK / STARK")
    parser.add_argument("-i", "--input", help="Đường dẫn file APK đầu vào")
    parser.add_argument("-o", "--output", help="Đường dẫn file APK đầu ra")
    parser.add_argument("--no-interactive", action="store_true", help="Chạy tự động không chờ hỏi")

    args = parser.parse_args()

    if args.input and args.output:
        success = patch_camera_apk(args.input, args.output)
        sys.exit(0 if success else 1)

    interactive_menu()

if __name__ == "__main__":
    main()
