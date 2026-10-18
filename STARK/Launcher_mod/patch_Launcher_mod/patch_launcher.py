#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
================================================================================
UNIVERSAL LAUNCHER PATCHER - COLOROS / OXYGENOS (ANDROID 16 & 17)
Thư mục: C:\\Android\\Auto_Build_WK\\STARK\\Launcher_mod\\patch_Launcher_mod
Tác giả: KhanhStark & Antigravity
================================================================================
Tính năng chính:
  1. Hỗ trợ chọn APK đầu vào linh hoạt:
     - Kéo & thả file APK vào patch_launcher.bat
     - Truyền đường dẫn qua dòng lệnh: python patch_launcher.py <path_to_apk>
     - Menu tương tác tự động nhận diện ROM STARK:
       ../system_ext/priv-app/OplusLauncher/OplusLauncher.apk
     - Tự động nhận diện ColorOS A16 (ColorOS 15/16) hoặc A17 (ColorOS 16/17).
  2. Tích hợp 8 nhóm tính năng độc lập (Reviewed Minimal Hooking):
     - recents: Đa nhiệm máy tính bảng (Tablet Grid Recents 2 hàng)
     - dock: Làm mờ thanh dock (Dock Blur với context bảo vệ xoay ngang)
     - taskbar: Mở rộng thanh tác vụ (Taskbar Expand + SeekBar số lượng app)
     - feed: Google Feed (Vuốt sang trái mở Google Discover)
     - search: Thanh tìm kiếm dưới cùng (Bottom Search Bar + App Picker)
     - quick_search: Hộp tìm kiếm nhanh Google trên Home (QSB)
     - gestures: Cử chỉ vuốt xuống tùy biến (Vuốt mở app, chia trái/phải)
     - ram: Mở khóa hiển thị RAM native trong đa nhiệm
  3. Tự động kiểm tra Multi-DEX và bảo toàn 100% chữ ký OEM Block 42 (OrigSig).
  4. Hỗ trợ tự động cập nhật APK vào ROM STARK hoặc đóng gói Module flash.
================================================================================
"""

import os
import sys
import shutil
import argparse
from pathlib import Path

if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

BASE_DIR = Path(__file__).resolve().parent

# Thêm thư mục hiện tại vào sys.path để import launcher_mod
if str(BASE_DIR) not in sys.path:
    sys.path.insert(0, str(BASE_DIR))

try:
    from launcher_mod.build import main as run_build
    from launcher_mod.features import FEATURES, parse_features
except ImportError as e:
    print(f"[ERROR] Không thể import thư viện launcher_mod: {e}", flush=True)
    sys.exit(1)


def log(msg):
    print(f"[*] {msg}", flush=True)

def log_ok(msg):
    print(f"[+] {msg}", flush=True)

def log_warn(msg):
    print(f"[!] {msg}", flush=True)

def log_err(msg):
    print(f"[ERROR] {msg}", flush=True)


def find_candidate_apks():
    """Tìm kiếm các file APK khả dụng trong dự án STARK và thư mục lân cận"""
    candidates = []
    
    # 1. APK trong ROM STARK
    stark_rom_apk = (BASE_DIR.parent / "system_ext" / "priv-app" / "OplusLauncher" / "OplusLauncher.apk").resolve()
    if stark_rom_apk.is_file():
        candidates.append((stark_rom_apk, "STARK ROM (system_ext/priv-app/OplusLauncher)"))

    # 2. Thư mục inputs lân cận
    downloads_inputs = Path.home() / "Downloads" / "mod_stark" / "launcher-mod" / "inputs"
    if downloads_inputs.is_dir():
        for apk in sorted(downloads_inputs.glob("*.apk")):
            candidates.append((apk.resolve(), f"Downloads/inputs ({apk.name})"))

    # 3. Thư mục inputs cục bộ
    local_inputs = BASE_DIR / "inputs"
    if local_inputs.is_dir():
        for apk in sorted(local_inputs.glob("*.apk")):
            candidates.append((apk.resolve(), f"inputs/{apk.name}"))

    # 4. Thư mục hiện tại
    for apk in sorted(BASE_DIR.glob("*.apk")):
        if "mod" not in apk.name.lower():
            candidates.append((apk.resolve(), f"patch_Launcher_mod/{apk.name}"))

    return candidates


def select_input_apk():
    """Hộp thoại dòng lệnh chọn APK đầu vào"""
    if len(sys.argv) > 1 and not sys.argv[1].startswith("-"):
        arg_path = Path(sys.argv[1]).resolve()
        if arg_path.is_file():
            return str(arg_path)
        log_err(f"File APK chỉ định không tồn tại: {arg_path}")

    candidates = find_candidate_apks()
    
    print("\n" + "=" * 80)
    print("      CHỌN FILE OPLUS LAUNCHER APK ĐỂ TIẾN HÀNH VÁ (PATCH)")
    print("=" * 80)

    if candidates:
        for idx, (path, desc) in enumerate(candidates, 1):
            size_mb = path.stat().st_size / (1024 * 1024)
            print(f"  [{idx}] {path.name:<25} ({size_mb:5.1f} MB) - {desc}")
        print(f"  [M] Nhập đường dẫn file APK khác thủ công")
        print(f"  [Q] Thoát chương trình")
        print("-" * 80)

        while True:
            choice = input("Nhập lựa chọn của bạn (Mặc định [1]): ").strip()
            if not choice or choice == "1":
                return str(candidates[0][0])
            if choice.upper() == "Q":
                sys.exit(0)
            if choice.upper() == "M":
                break
            if choice.isdigit() and 1 <= int(choice) <= len(candidates):
                return str(candidates[int(choice) - 1][0])
            print("[!] Lựa chọn không hợp lệ. Vui lòng thử lại.")

    while True:
        manual_path = input("\nKéo & thả file APK vào đây hoặc nhập đường dẫn đầy đủ: ").strip().strip('"').strip("'")
        if not manual_path:
            continue
        p = Path(manual_path).resolve()
        if p.is_file():
            return str(p)
        print(f"[!] Không tìm thấy file tại: {p}")


def select_features_interactive():
    """Menu chọn tính năng muốn vá"""
    print("\n" + "=" * 80)
    print("      CHỌN CHẾ ĐỘ VÁ TÍNH NĂNG (FEATURE SET)")
    print("=" * 80)
    print("  [1] Vá TOÀN BỘ 8 tính năng (Đa nhiệm Tablet, Dock Blur, Taskbar, Feed, Search...) [Khuyên dùng]")
    print("  [2] Tùy chỉnh tick chọn từng tính năng mong muốn")
    print("  [3] Chỉ mở khóa hiển thị RAM trong Đa nhiệm (Minimal pure stock)")
    print("-" * 80)

    choice = input("Lựa chọn chế độ (Mặc định [1]): ").strip()
    if choice == "2":
        return ["--select"]
    elif choice == "3":
        return ["--features", "ram"]
    else:
        return []


def main():
    # CLI invocations must not fall through into interactive prompts or deployment.
    # The build parser owns --help, validation and the complete noninteractive API.
    if len(sys.argv) > 1:
        raise SystemExit(run_build([*sys.argv[1:], '--no-install']))
    print("=" * 80)
    print("      COLOROS LAUNCHER UNIVERSAL AUTO-PATCHER (Android 16 & 17)           ")
    print("      Tác giả: KhanhStark & Antigravity | Dự án: Auto_Build_WK STARK       ")
    print("=" * 80, flush=True)

    input_apk = select_input_apk()
    log_ok(f"APK Mục tiêu: {input_apk} ({os.path.getsize(input_apk):,} bytes)")

    feature_args = select_features_interactive()

    # Thư mục đầu ra
    dist_dir = BASE_DIR / "dist"
    dist_dir.mkdir(parents=True, exist_ok=True)
    out_apk = dist_dir / "OplusLauncher_mod.apk"
    out_module = dist_dir / "OplusLauncher_Universal_Mod_Module.zip"

    cmd_args = [
        input_apk,
        "--output", str(out_apk),
        "--module-output", str(out_module),
        "--no-install"
    ] + feature_args

    log("Bắt đầu quy trình biên dịch, vá bytecode Smali và đóng gói...")
    exit_code = run_build(cmd_args)
    if exit_code != 0:
        log_err(f"Quá trình vá gặp lỗi (Mã lỗi: {exit_code})")
        sys.exit(exit_code)

    print("\n" + "=" * 80)
    print(">>> VÁ VÀ ĐÓNG GÓI HOÀN TẤT 100%! <<<")
    print(f">>> File APK hoàn chỉnh: {out_apk} <<<")
    print(f">>> File Module flash:   {out_module} <<<")
    print("=" * 80, flush=True)

    # Tùy chọn tự động cập nhật vào STARK ROM build
    stark_target = (BASE_DIR.parent / "system_ext" / "priv-app" / "OplusLauncher" / "OplusLauncher.apk").resolve()
    if stark_target.parent.is_dir():
        print("\n" + "-" * 80)
        try:
            dep_choice = input(f"Bạn có muốn tự động cập nhật file APK đã vá vào STARK ROM tại:\n  {stark_target} ? (Y/n): ").strip().upper()
        except (EOFError, KeyboardInterrupt):
            dep_choice = "N"
        if dep_choice != 'N':
            shutil.copy2(str(out_apk), str(stark_target))
            log_ok(f"Đã cập nhật file thành công vào STARK ROM: {stark_target}")
        print("-" * 80, flush=True)


if __name__ == "__main__":
    main()
