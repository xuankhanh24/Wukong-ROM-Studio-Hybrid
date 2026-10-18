#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
=============================================================================
* TOOL: OPlus Camera Hasselblad Feature Auto Patcher
* TÁC VỤ: Tự động mở khóa Hasselblad Master Filter, XPAN & Custom Watermark
* TƯƠNG THÍCH: Đa phiên bản (ColorOS 12, 13, 14, 15, 16, Android 12 - 17+)
* ĐẶC ĐIỂM: Kháng obfuscation, độc lập số dòng, tự dò thanh ghi (Auto-Register)
=============================================================================
"""

import os
import re
import sys
import shutil
import zipfile
import tempfile
import argparse
import subprocess
from pathlib import Path

# Đảm bảo in tiếng Việt không bị lỗi charmap trên terminal Windows
if sys.stdout and hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
if sys.stderr and hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")

# Khóa Vendor Tag mục tiêu cần mở khóa (chuyển từ "0" sang "1")
TARGET_KEYS = [
    "com.oplus.camera.support.custom.hasselblad.watermark",
    "com.oplus.use.hasselblad.style.support"
]

SCRIPT_DIR = Path(__file__).resolve().parent
BIN_DIR = SCRIPT_DIR / "bin"

# Tích hợp bộ công cụ dùng chung hoặc tự cung cấp (Standalone Fallback)
try:
    sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
    from patch_common import run_tool, rewrite_archive, align_apk, find_tool as shared_tool, require_tool
except Exception:
    def find_tool(name: str):
        # 1. Tìm trong thư mục bin cục bộ
        local_candidates = [
            BIN_DIR / f"{name}.jar",
            BIN_DIR / f"{name}.exe",
            BIN_DIR / name,
        ]
        for c in local_candidates:
            if c.is_file():
                return str(c)

        # 2. Tìm trong PATH
        which = shutil.which(name)
        if which:
            return which

        # 3. Tìm các JAR thường dùng trong Downloads
        downloads = Path.home() / "Downloads"
        if downloads.is_dir():
            for jar in downloads.glob(f"*{name}*.jar"):
                return str(jar)
        return None

    def require_tool(name: str):
        tool = find_tool(name)
        if not tool:
            raise FileNotFoundError(f"Không tìm thấy công cụ bắt buộc: {name}")
        return tool

    def shared_tool(name: str):
        return find_tool(name)

    def run_tool(cmd, **kwargs):
        return subprocess.run(cmd, **kwargs)

    def rewrite_archive(original, output, replacements, *, store_dex=True):
        original, output = Path(original), Path(output)
        output.parent.mkdir(parents=True, exist_ok=True)
        fd, temp_file = tempfile.mkstemp(prefix="patch_zip_", suffix=".tmp", dir=output.parent)
        os.close(fd)
        try:
            with zipfile.ZipFile(original, "r") as zin, zipfile.ZipFile(temp_file, "w", allowZip64=True) as zout:
                for item in zin.infolist():
                    if item.filename in replacements:
                        val = replacements[item.filename]
                        data = val if isinstance(val, bytes) else Path(val).read_bytes()
                        zinfo = zipfile.ZipInfo(item.filename)
                        if store_dex and re.fullmatch(r"classes(?:\d+)?\.dex", item.filename):
                            zinfo.compress_type = zipfile.ZIP_STORED
                        else:
                            zinfo.compress_type = item.compress_type
                        zout.writestr(zinfo, data)
                    else:
                        data = zin.read(item.filename)
                        zout.writestr(item, data)
                # Thêm file mới nếu chưa có
                for name, val in replacements.items():
                    if name not in zin.namelist():
                        data = val if isinstance(val, bytes) else Path(val).read_bytes()
                        zinfo = zipfile.ZipInfo(name)
                        zinfo.compress_type = zipfile.ZIP_STORED if store_dex else zipfile.ZIP_DEFLATED
                        zout.writestr(zinfo, data)
            shutil.move(temp_file, str(output))
        finally:
            Path(temp_file).unlink(missing_ok=True)

    def align_apk(zipalign_bin, in_apk, out_apk):
        if zipalign_bin and Path(zipalign_bin).is_file():
            cmd = [str(zipalign_bin), "-f", "-p", "4", str(in_apk), str(out_apk)]
            res = subprocess.run(cmd, capture_output=True)
            if res.returncode == 0:
                return
        shutil.copyfile(in_apk, out_apk)

def clean_path_input(raw: str) -> str:
    """Loại bỏ dấu nháy kép, khoảng trắng thừa khi kéo thả file từ Windows Explorer."""
    if not raw:
        return ""
    cleaned = raw.strip()
    if (cleaned.startswith('"') and cleaned.endswith('"')) or (cleaned.startswith("'") and cleaned.endswith("'")):
        cleaned = cleaned[1:-1].strip()
    return cleaned

def patch_smali_content(content: str) -> tuple[str, int, list[str]]:
    """
    Vá nội dung Smali theo cách độc lập phiên bản và độc lập thanh ghi:
    1. Nhận diện chuỗi Vendor Tag (không bị obfuscate vì là hằng số công khai).
    2. Quét ngược trong phương thức bao quanh để tìm thanh ghi đang giữ "1".
    3. Kiểm tra thanh ghi đó có bị ghi đè không. Nếu an toàn, dùng luôn thanh ghi đó.
    4. Nếu không có thanh ghi nào giữ "1", tự động inject 'const-string <reg>, "1"' ngay trước lệnh put.
    """
    patch_count = 0
    patched_details = []
    modified = content

    for key in TARGET_KEYS:
        escaped_key = re.escape(key)
        
        # Regex tìm:
        # const-string <reg_key>, "<key>"
        # ...
        # invoke-virtual {<reg_map>, <reg_key>, <reg_val>}, Ljava/util/HashMap;->put
        pattern = re.compile(
            rf'(const-string(?:\/jumbo)?\s+([vp]\d+),\s*"{escaped_key}"[\s\S]*?'
            rf'invoke-virtual\s*\{{([vp]\d+),\s*\2,\s*)([vp]\d+)(\}},\s*Ljava/util/HashMap;->put)',
            re.MULTILINE
        )

        match = pattern.search(modified)
        if match:
            full_match = match.group(0)
            prefix = match.group(1)
            reg_key = match.group(2)
            reg_map = match.group(3)
            current_val_reg = match.group(4)
            suffix = match.group(5)

            # Tìm đầu phương thức (.method)
            method_match = None
            for m in re.finditer(r'(?m)^\.method\s+', modified[:match.start()]):
                method_match = m
            
            method_code = modified[method_match.start():match.start()] if method_match else ""
            
            # Tìm xem trong phương thức có thanh ghi nào được gán "1" không
            one_reg_match = re.search(r'const-string(?:\/jumbo)?\s+([vp]\d+),\s*"1"', method_code)
            
            target_reg = None
            if one_reg_match:
                cand_reg = one_reg_match.group(1)
                # Kiểm tra cand_reg có bị ghi đè từ sau lệnh gán đến vị trí hiện tại không
                after_const = method_code[one_reg_match.end():]
                reassign = re.search(rf'(?m)^\s*(?:const|move|invoke|sget|iget)[^\n]*\s+{re.escape(cand_reg)},', after_const)
                if not reassign:
                    target_reg = cand_reg

            if target_reg:
                replacement = f"{prefix}{target_reg}{suffix}"
                modified = modified[:match.start()] + modified[match.start():].replace(full_match, replacement, 1)
                patch_count += 1
                patched_details.append(f"{key} -> sử dụng thanh ghi {target_reg} (giá trị '1')")
            else:
                # Dynamic injection: Gán "1" trực tiếp cho current_val_reg ngay trước lệnh put
                injection = f'    const-string {current_val_reg}, "1"\n\n    '
                replacement = f"{prefix[:-len('invoke-virtual')]}{injection}invoke-virtual{prefix[prefix.rfind('{'):]}{current_val_reg}{suffix}"
                modified = modified[:match.start()] + modified[match.start():].replace(full_match, replacement, 1)
                patch_count += 1
                patched_details.append(f"{key} -> inject trực tiếp const-string {current_val_reg}, '1'")

    return modified, patch_count, patched_details

def patch_smali_directory(smali_dir: Path) -> tuple[int, int]:
    """Quét đệ quy và vá toàn bộ file Smali trong thư mục."""
    total_files = 0
    total_keys = 0
    smali_files = list(smali_dir.rglob("*.smali"))
    
    print(f"[*] Đang quét {len(smali_files)} file Smali...")
    for smali_file in smali_files:
        try:
            with open(smali_file, "r", encoding="utf-8") as f:
                content = f.read()
        except UnicodeDecodeError:
            continue

        if any(k in content for k in TARGET_KEYS):
            new_content, count, details = patch_smali_content(content)
            if count > 0:
                with open(smali_file, "w", encoding="utf-8") as f:
                    f.write(new_content)
                rel_path = smali_file.relative_to(smali_dir)
                print(f"[+] Đã vá thành công {count} tính năng trong: {rel_path}")
                for d in details:
                    print(f"    - {d}")
                total_files += 1
                total_keys += count

    return total_files, total_keys

def patch_archive(input_file: Path, output_file: Path) -> bool:
    """Xử lý decompile -> vá smali -> recompile -> đóng gói JAR/APK/DEX."""
    baksmali_bin = shared_tool("baksmali")
    smali_bin = shared_tool("smali")

    if not baksmali_bin or not smali_bin:
        print("[-] Lỗi: Không tìm thấy smali/baksmali!")
        print(f"    Vui lòng kiểm tra thư mục 'bin/' hoặc PATH hệ thống.")
        return False

    temp_dir = Path(tempfile.mkdtemp(prefix="hasselblad_patch_"))
    out_smali = temp_dir / "smali"
    out_dex = temp_dir / "classes.dex"

    try:
        if input_file.suffix.lower() in {".jar", ".apk"}:
            replacements = {}
            total_keys = total_files = 0
            with zipfile.ZipFile(input_file) as archive:
                targets = [name for name in archive.namelist()
                           if re.fullmatch(r"classes(?:\d+)?\.dex", name)
                           and any(key.encode() in archive.read(name) for key in TARGET_KEYS)]
                for name in targets:
                    dex = temp_dir / name
                    dex.write_bytes(archive.read(name))
                    decoded = temp_dir / (name + ".smali")
                    run_tool([require_tool("java"), "-jar", baksmali_bin, "d", str(dex), "-o", str(decoded)], check=True)
                    files, keys = patch_smali_directory(decoded)
                    if keys:
                        rebuilt = temp_dir / ("patched_" + name)
                        run_tool([require_tool("java"), "-jar", smali_bin, "a", str(decoded), "-o", str(rebuilt)], check=True)
                        replacements[name] = rebuilt
                        total_files += files
                        total_keys += keys
            if not replacements:
                print("[-] Không có DEX chứa khóa có thể vá; giữ nguyên tệp đầu vào.")
                return False
            intermediate = temp_dir / "patched.zip"
            rewrite_archive(input_file, intermediate, replacements)
            if input_file.suffix.lower() == ".apk":
                align_apk(shared_tool("zipalign"), intermediate, output_file)
            else:
                shutil.copyfile(intermediate, output_file)
            print(f"\n[OK] ĐÃ VÁ THÀNH CÔNG:")
            print(f"     -> {total_keys} keys / {total_files} classes / {len(replacements)} DEX")
            print(f"     -> Xuất ra: {output_file.resolve()}\n")
            return True

        print(f"[*] Đang giải nén và phân tích bytecode (baksmali): {input_file.name}...")
        cmd_bak = [require_tool("java"), "-jar", baksmali_bin, "d", str(input_file), "-o", str(out_smali)]
        res_bak = run_tool(cmd_bak, capture_output=True, text=True)
        if res_bak.returncode != 0:
            print(f"[-] Lỗi khi chạy baksmali:\n{res_bak.stderr}")
            return False

        files_patched, keys_patched = patch_smali_directory(out_smali)
        if keys_patched == 0:
            print("[-] Cảnh báo: Không tìm thấy khóa Hasselblad nào trong file này!")
            print("    Có thể file này không chứa camera SDK (com.oplus.camera.unit.sdk) hoặc đã được vá trước đó.")
            return False

        print(f"[*] Đang biên dịch lại Smali thành DEX (smali)...")
        cmd_smali = [require_tool("java"), "-jar", smali_bin, "a", str(out_smali), "-o", str(out_dex)]
        res_smali = run_tool(cmd_smali, capture_output=True, text=True)
        if res_smali.returncode != 0:
            print(f"[-] Lỗi khi chạy smali:\n{res_smali.stderr}")
            return False

        shutil.copyfile(out_dex, output_file)
        print("\n" + "="*60)
        print(f"[OK] VÁ THÀNH CÔNG! ĐÃ XUẤT RA:")
        print(f"     -> {output_file.resolve()}")
        print(f"     -> Tổng cộng {keys_patched} tính năng được kích hoạt trong {files_patched} file.")
        print("="*60 + "\n")
        return True

    finally:
        shutil.rmtree(temp_dir, ignore_errors=True)

def main():
    parser = argparse.ArgumentParser(description='OPlus Camera Hasselblad Feature Auto Patcher')
    parser.add_argument('input', nargs='?', help='File (.jar, .apk, .dex) hoặc thư mục smali')
    parser.add_argument('output', nargs='?', help='Đường dẫn file xuất ra (tùy chọn)')
    args = parser.parse_args()

    print("="*68)
    print("   OPLUS CAMERA HASSELBLAD FILTER & WATERMARK AUTO PATCHER")
    print("="*68)

    # 1. Nhận input từ tham số dòng lệnh hoặc nhập tương tác
    if args.input:
        raw_input = args.input
    else:
        # Kiểm tra xem có file mặc định gần đây không
        default_candidate = SCRIPT_DIR.parent / "my_product" / "product_overlay" / "framework" / "com.oplus.camera.unit.sdk.jar"
        default_hint = f"\n[Gợi ý: Nhấn Enter để tự nhận diện: {default_candidate.name}]" if default_candidate.exists() else ""

        print("\nBạn có thể:")
        print("  - Nhập đường dẫn file (.jar, .apk, .dex) hoặc thư mục smali")
        print("  - Hoặc KÉO & THẢ file trực tiếp vào cửa sổ này rồi nhấn Enter")
        if default_hint:
            print(f"  - {default_hint}")
        
        try:
            raw_input = input("\n>> Nhập đường dẫn INPUT: ").strip()
        except (KeyboardInterrupt, EOFError):
            print("\nĐã hủy thao tác.")
            sys.exit(0)

        if not raw_input and default_candidate.exists():
            raw_input = str(default_candidate)

    input_path_str = clean_path_input(raw_input)
    if not input_path_str:
        print("[-] Lỗi: Bạn chưa cung cấp đường dẫn input.")
        sys.exit(1)

    input_path = Path(input_path_str).resolve()
    if not input_path.exists():
        print(f"[-] Lỗi: Không tìm thấy đường dẫn: {input_path}")
        sys.exit(1)

    # 2. Xử lý theo loại input (thư mục smali hay file archive)
    if input_path.is_dir():
        print(f"\n[*] Đang xử lý thư mục Smali: {input_path}")
        files_p, keys_p = patch_smali_directory(input_path)
        print(f"\n[OK] Hoàn tất. Đã vá {keys_p} tính năng trong {files_p} file.")
    elif input_path.is_file():
        # Xác định file output
        if args.output:
            output_path = Path(clean_path_input(args.output)).resolve()
        else:
            # Tự động sinh tên <name>_mod.<ext> trong cùng thư mục
            parent = input_path.parent
            stem = input_path.stem
            ext = input_path.suffix
            output_path = parent / f"{stem}_mod{ext}"

        print(f"\n[*] Input:  {input_path}")
        print(f"[*] Output: {output_path}")

        success = patch_archive(input_path, output_path)
        if not success:
            sys.exit(1)
    else:
        print(f"[-] Loại tệp không hợp lệ: {input_path}")
        sys.exit(1)

if __name__ == "__main__":
    main()
