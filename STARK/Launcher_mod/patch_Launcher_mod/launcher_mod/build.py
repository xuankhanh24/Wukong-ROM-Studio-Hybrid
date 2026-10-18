"""Coordinate reviewed native patches, Java helpers, resources and packaging."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import sys
import zipfile

sys.path.insert(0, str(Path(__file__).resolve().parents[3]))
from patch_common import run_tool, rewrite_archive, align_apk, require_tool

from .paths import DIST, INPUTS, stock_apk
from .toolchain import find_tool
from .helpers import compile_helpers
from .profiles import prepare_patches, adapt_helper_abi
from .verify import verify
from .resources import prepare_resources
from .dex import remove_class_definitions
from .packaging import extract_apk_signing_block, inject_apk_signing_block, package_magisk_module
from .features import FEATURE_IDS, SelectionCancelled, choose_features, parse_features, print_features


def log(message):
    print(f"[*] {message}", flush=True)


def log_ok(message):
    print(f"[+] {message}", flush=True)


def log_warn(message):
    print(f"[!] {message}", flush=True)


def run_cmd(command):
    result = run_tool(command, check=True, capture_output=True, text=True, encoding='utf-8', errors='replace')
    return result.stdout.strip()


def main(argv=None):
    if hasattr(sys.stdout, "reconfigure"):
        sys.stdout.reconfigure(encoding="utf-8")
    parser = argparse.ArgumentParser(description="Build reviewed ColorOS A16/A17 feature profiles")
    parser.add_argument("target_apk", nargs="?", default=str(INPUTS / "OplusLauncher_a17.apk"), help="File APK Launcher stock cần vá")
    parser.add_argument("--no-install", action="store_true", help="Không cài đặt ADB sau khi đóng gói")
    parser.add_argument("--profile", help="Reviewed profile.json; default discovers the native API family")
    parser.add_argument("--output", help="Output APK path; default: dist/OplusLauncher_mod.apk")
    parser.add_argument("--module-output", help="Output module ZIP; default: dist/OplusLauncher_Universal_Mod_Module.zip")
    parser.add_argument("--serial", help="ADB device serial for installation")
    choices = parser.add_mutually_exclusive_group()
    choices.add_argument("--select", action="store_true", help="Tick mods using an interactive terminal menu")
    choices.add_argument("--features", help="Comma-separated mod IDs; default: all")
    parser.add_argument("--list-features", action="store_true", help="List mod IDs and exit without building")
    args = parser.parse_args(argv)

    if args.list_features:
        print_features()
        return
    target_apk = stock_apk(args.target_apk)
    if not target_apk.is_file():
        raise FileNotFoundError(f"Không tìm thấy APK mục tiêu: {target_apk}")
    if args.select:
        print('Sau build: ' + ('chỉ tạo APK/module, không cài.' if args.no_install else 'cài qua ADB và compile ART.'))
    try:
        if args.select:
            selected = choose_features()
        elif args.features is not None:
            selected = parse_features(args.features)
        else:
            selected = FEATURE_IDS
    except SelectionCancelled:
        print('Đã hủy; chưa build hoặc cài APK.')
        return
    except ValueError as error:
        parser.error(str(error))
    final_apk = Path(args.output).expanduser().resolve() if args.output else DIST / "OplusLauncher_mod.apk"
    module_zip = Path(args.module_output).expanduser().resolve() if args.module_output else DIST / "OplusLauncher_Universal_Mod_Module.zip"
    if final_apk == target_apk:
        raise ValueError("Output must not overwrite the stock APK")
    if module_zip in {target_apk, final_apk}:
        raise ValueError("Module ZIP must not overwrite the stock or patched APK")
    final_apk.parent.mkdir(parents=True, exist_ok=True)

    smali_jar = find_tool("smali")
    zipalign_bin = find_tool("zipalign")

    print("=" * 80)
    print("      COLOROS LAUNCHER REVIEWED FEATURE PATCHER           ")
    print(f"      Mục tiêu: {target_apk} ({os.path.getsize(target_apk):,} bytes)           ")
    print(f"      Mods: {', '.join(sorted(selected))}")
    print("=" * 80, flush=True)

    print("\n[BƯỚC 1/6] Nhận diện và kiểm tra độc lập từng patch...", flush=True)
    work, dex_roots = prepare_patches(target_apk, find_tool("baksmali"), args.profile, selected)
    selection = json.loads((work / 'selection.json').read_text(encoding='utf-8'))
    print("\n[BƯỚC 2/6] Biên dịch helpers từ source...", flush=True)
    helpers = None
    if 'bootstrap' in selection['resolved_features']:
        helpers = compile_helpers(work / "helpers", selected)
        log_ok(f"Helper ABI bindings: {adapt_helper_abi(target_apk, helpers)}")
    else:
        log_ok('Lựa chọn chỉ dùng native: không cần Java helper hoặc menu mod.')
    with zipfile.ZipFile(target_apk) as archive:
        dex_numbers = [1 if name == "classes.dex" else int(name[7:-4]) for name in archive.namelist() if re.fullmatch(r"classes(?:\d+)?\.dex", name)]
    helper_dex = f"classes{max(dex_numbers) + 1}.dex"
    replacements = {}
    print("\n[BƯỚC 3/6] Assemble DEX đã vá và helper DEX...", flush=True)
    patch_report = json.loads((work / 'patch_report.json').read_text(encoding='utf-8'))
    overlay = work / 'overlay'
    overlay.mkdir()
    for source in helpers.rglob('*.smali') if helpers is not None else []:
        destination = overlay / source.relative_to(helpers)
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, destination)
    modified_paths = {Path(match['class']) for match in patch_report['matches']}
    with zipfile.ZipFile(target_apk) as archive:
        for name, directory in dex_roots.items():
            moved = set()
            for source in modified_paths:
                if directory in source.parents:
                    relative = source.relative_to(directory)
                    moved.add('L' + str(relative).replace('\\', '/')[:-6] + ';')
                    destination = overlay / relative
                    destination.parent.mkdir(parents=True, exist_ok=True)
                    shutil.copy2(source, destination)
            output = work / name
            output.write_bytes(remove_class_definitions(archive.read(name), moved))
            replacements[name] = str(output)
    helper_output = str(work / helper_dex)
    run_tool([require_tool("java"), "-jar", smali_jar, "a", str(overlay), "-o", helper_output], check=True)
    replacements[helper_dex] = helper_output

    # Package reviewed DEX/resources, align, then preserve the mod signing convention.
    print("\n[BƯỚC 4/6] Đóng gói DEX/tài nguyên và căn chỉnh APK...", flush=True)
    temp_mod = str(work / "temp_mod.apk")
    if os.path.exists(temp_mod):
        os.remove(temp_mod)

    # Rebuild/cache resources from the input stock APK and the reviewed recipe.
    base_template = prepare_resources(target_apk, selected)
    log_ok(f"Sử dụng khuôn mẫu tài nguyên: {os.path.basename(base_template)}")
    shutil.copy2(base_template, temp_mod)

    # Store DEX uncompressed; retain all non-replaced entry metadata.
    temp_stream = str(work / "temp_stream.apk")
    rewrite_archive(base_template, temp_stream, replacements)
    shutil.move(temp_stream, temp_mod)

    log_ok(f"APK đã tiêm hoàn chỉnh: {temp_mod} ({os.path.getsize(temp_mod):,} bytes)")

    # 16KB Page-Align
    temp_aligned = str(work / "temp_aligned.apk")
    if os.path.exists(temp_aligned):
        os.remove(temp_aligned)

    if not zipalign_bin:
        raise FileNotFoundError("Không tìm thấy công cụ zipalign! Vui lòng cài đặt Android Build-Tools.")

    log(f"Căn chỉnh Zipalign 16KB page-align (zipalign -P 16 -f 4)...")
    align_apk(zipalign_bin, temp_mod, temp_aligned)
    log_ok("16KB Page-aligned thành công!")

    # Tiêm khối chữ ký OEM Block 42
    log("Tiêm APK Signing Block 42 từ OEM stock APK...")
    block = extract_apk_signing_block(target_apk)
    inject_apk_signing_block(temp_aligned, block, final_apk)
    log_ok(f"Đã giữ signing block theo cơ chế đóng gói mod: {final_apk} ({os.path.getsize(final_apk):,} bytes)")

    # BƯỚC 5: ĐÓNG GÓI MODULE MAGISK / KERNELSU / APATCH
    print("\n[BƯỚC 5/6] Đóng gói Module flash Magisk / KernelSU / APatch...", flush=True)
    verification = verify(final_apk, stock_apk=target_apk)
    log_ok(f"DEX verification: {verification}")
    package_magisk_module(final_apk, module_zip)
    build_report = {**selection, 'stock_apk': str(target_apk), 'apk': str(final_apk),
                    'apk_sha256': hashlib.sha256(final_apk.read_bytes()).hexdigest(),
                    'module': str(module_zip), 'modified_methods': patch_report['modified_methods'],
                    'modified_classes': patch_report['modified_classes'], 'verification': verification}
    report_path = final_apk.with_suffix('.build.json')
    report_path.write_text(json.dumps(build_report, ensure_ascii=False, indent=2), encoding='utf-8')
    log_ok(f"Build selection report: {report_path}")

    # BƯỚC 6: CÀI ĐẶT ADB & TỐI ƯU HÓA ART SPEED
    if not args.no_install:
        print("\n[BƯỚC 6/6] Cài đặt ADB và tối ưu hóa trước toàn bộ mã máy ART Speed...", flush=True)
        adb = [find_tool("adb")] + (["-s", args.serial] if args.serial else [])
        try:
            install_res = run_cmd([*adb, "install", "-r", "-d", "-g", str(final_apk)])
            print(f" -> [INSTALL RESULT] {install_res}", flush=True)

            compile_res = run_cmd([*adb, "shell", "su", "-c", "cmd package compile -m speed -f com.android.launcher"])
            print(f" -> [COMPILE RESULT] {compile_res}", flush=True)

            run_cmd([*adb, "shell", "su", "0", "killall", "com.android.launcher"])
            print("\n" + "=" * 80)
            print(">>> Đã build và cài APK; cần kiểm tra từng tính năng trên thiết bị. <<<")
            print(f">>> File Module flash: {module_zip} <<<")
            print(f">>> File APK hoàn chỉnh: {final_apk} <<<")
            print("=" * 80, flush=True)
        except Exception as e:
            raise RuntimeError(f"ADB install / compile failed: {e}") from e
    else:
        print("\n[BƯỚC 6/6] Bỏ qua cài đặt ADB (--no-install). Module và APK đã sẵn sàng để triển khai!", flush=True)
        print("\n" + "=" * 80)
        print(">>> Đã build APK và kiểm tra liên kết DEX. Chưa chạy kiểm tra thiết bị. <<<")
        print(f">>> File Module flash: {module_zip} <<<")
        print(f">>> File APK hoàn chỉnh: {final_apk} <<<")
        print("=" * 80, flush=True)

if __name__ == "__main__":
    main()
