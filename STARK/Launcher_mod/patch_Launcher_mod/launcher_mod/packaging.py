"""APK signing-block preservation and flash-module packaging.

Copying the OEM signing block is the existing mod packaging convention, not a
valid cryptographic signature for changed APK contents.
"""
from pathlib import Path
import shutil
import struct
import tempfile
import zipfile
from .paths import ROOT, SCRATCH


def extract_apk_signing_block(apk_path):
    """Trích xuất khối APK Signing Block gốc từ OEM APK"""
    magic = b"APK Sig Block 42"
    with open(apk_path, "rb") as f:
        data = f.read()
    pos = data.rfind(magic)
    if pos == -1:
        raise ValueError(f"Không tìm thấy khối APK Sig Block 42 trong {apk_path}")
    size_bytes = data[pos - 8 : pos]
    size = struct.unpack("<Q", size_bytes)[0]
    start = pos + 16 - size - 8
    return data[start : pos + 16]

def inject_apk_signing_block(input_apk, block, output_apk):
    """Tiêm khối chữ ký OEM (OrigSig Injection) vào trước Central Directory"""
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

def package_magisk_module(patched_apk_path, output_zip_path):
    output = Path(output_zip_path)
    output.parent.mkdir(parents=True, exist_ok=True)
    SCRATCH.mkdir(exist_ok=True)
    with tempfile.TemporaryDirectory(prefix='launcher-module-', dir=SCRATCH) as temporary:
        work = Path(temporary)
        shutil.copytree(ROOT / 'module_template', work, dirs_exist_ok=True)
        for relative in ('system/system_ext/priv-app/OplusLauncher/OplusLauncher.apk',
                         'system_ext/priv-app/OplusLauncher/OplusLauncher.apk'):
            target = work / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(patched_apk_path, target)
        with zipfile.ZipFile(output, 'w', zipfile.ZIP_DEFLATED) as archive:
            for path in sorted(work.rglob('*')):
                if path.is_file():
                    archive.write(path, path.relative_to(work).as_posix())
