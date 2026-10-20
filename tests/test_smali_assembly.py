from pathlib import Path
import hashlib
import json
import struct
import zlib
import shutil
import subprocess
import tempfile
import unittest
from unittest.mock import patch
import zipfile

import studio_core
from STARK import patch_common as common
from wukong import smali_io


class SmaliAssemblyTests(unittest.TestCase):
    @staticmethod
    def valid_header_fixture():
        data = bytearray(116)
        data[:8] = b'dex\n039\0'
        struct.pack_into('<III', data, 32, len(data), 112, 0x12345678)
        data[12:32] = hashlib.sha1(data[32:], usedforsecurity=False).digest()
        struct.pack_into('<I', data, 8, zlib.adler32(data[12:]))
        return data

    def test_stale_valid_output_cannot_mask_an_assembler_failure(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            jar = root / 'framework.jar'
            with zipfile.ZipFile(jar, 'w') as archive:
                archive.writestr('classes.dex', b'original')
            original = jar.read_bytes()
            stale = root / 'work/rebuilt-dex/classes.dex'
            stale.parent.mkdir(parents=True)
            stale.write_bytes(self.valid_header_fixture())
            def command(args, **kwargs):
                if args[3] == 'd':
                    target = Path(args[-1]) / 'smali/Target.smali'
                    target.parent.mkdir(parents=True)
                    target.write_text('stock', encoding='utf-8')
            def modify(decoded):
                (decoded / 'smali/Target.smali').write_text('changed', encoding='utf-8')
            with patch.object(studio_core, '_run_command', side_effect=command):
                with self.assertRaisesRegex(studio_core.StudioError, 'invalid DEX'):
                    studio_core._patch_jar_with_apktool(jar, root / 'work', modify)
            self.assertEqual(jar.read_bytes(), original)

    def test_assembler_zero_exit_without_output_is_rejected_before_jar_replacement(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            jar = root / 'framework.jar'
            with zipfile.ZipFile(jar, 'w') as archive:
                archive.writestr('classes.dex', b'original')
            original = jar.read_bytes()
            def command(args, **kwargs):
                if args[3] == 'd':
                    target = Path(args[-1]) / 'smali/Target.smali'
                    target.parent.mkdir(parents=True)
                    target.write_text('stock', encoding='utf-8')
                # Simulate smali parser errors returning 0 but creating no DEX.
            def modify(decoded):
                (decoded / 'smali/Target.smali').write_text('changed', encoding='utf-8')
            with patch.object(studio_core, '_run_command', side_effect=command):
                with self.assertRaisesRegex(studio_core.StudioError, 'invalid DEX'):
                    studio_core._patch_jar_with_apktool(jar, root / 'work', modify)
            self.assertEqual(jar.read_bytes(), original)

    @unittest.skipUnless(shutil.which('java'), 'Java unavailable')
    def test_real_framework_hidden_api_flags_assemble_and_preserve_dex_version(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / 'input'
            source.mkdir()
            (source / 'Hidden.smali').write_text(
                '.class public Lfixture/Hidden;\n.super Ljava/lang/Object;\n'
                '.field public static final blacklist VALUE:I = 0x1\n', encoding='utf-8')
            dex = root / 'classes.dex'
            subprocess.run(common.java_command('smali', 'a', source, '--api', '29', '-o', dex),
                           check=True, capture_output=True)
            jar = root / 'framework.jar'
            with zipfile.ZipFile(jar, 'w') as archive:
                archive.write(dex, 'classes.dex')
                archive.writestr('resource.bin', b'OEM resource')
            def modify(decoded):
                target = decoded / 'smali/fixture/Hidden.smali'
                text = target.read_text(encoding='utf-8')
                self.assertIn('blacklist', text)
                target.write_text(text.replace('0x1', '0x2'), encoding='utf-8')
            report = studio_core._patch_jar_with_apktool(jar, root / 'work', modify)
            self.assertEqual(report['changedDex'], ['classes.dex'])
            with zipfile.ZipFile(jar) as archive:
                self.assertEqual(archive.read('classes.dex')[:8], dex.read_bytes()[:8])
                self.assertEqual(archive.read('resource.bin'), b'OEM resource')
                self.assertEqual(archive.getinfo('classes.dex').compress_type, zipfile.ZIP_STORED)

    def test_api_uses_decoded_metadata_and_hidden_api_floor(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for minimum, expected in ((23, 29), (29, 29), (35, 35)):
                (root / 'apktool.yml').write_text(f'sdkInfo:\n  minSdkVersion: {minimum}\n', encoding='utf-8')
                self.assertEqual(smali_io.assembly_api(root), expected)

    def test_reference_overflow_shards_classes_without_overwriting_oem_dex(self):
        for fail_child in (False, True):
            with self.subTest(fail_child=fail_child), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                jar = root / 'services.jar'
                with zipfile.ZipFile(jar, 'w') as archive:
                    archive.writestr('classes.dex', b'original primary')
                    archive.writestr('classes2.dex', b'untouched second')
                    archive.writestr('classes5.dex', b'untouched fifth')
                    archive.writestr('resource.bin', b'OEM resource')
                original = jar.read_bytes()
                assembled = []

                def command(args, **kwargs):
                    if args[3] == 'd':
                        folder = Path(args[-1]) / 'smali'
                        folder.mkdir(parents=True)
                        for name in 'ABCD':
                            (folder / f'{name}.smali').write_text(f'.class public Lfixture/{name};\n')
                    else:
                        folder = Path(args[6])
                        contents = sorted(p.read_text() for p in folder.rglob('*.smali'))
                        if len(contents) > 2:
                            raise studio_core.StudioError(
                                'Unsigned short value out of range: 65538\n'
                                'at com.android.tools.smali.dexlib2.writer.InstructionWriter.write(InstructionWriter.java:398)')
                        if fail_child:
                            raise studio_core.StudioError('Unrelated malformed instruction')
                        assembled.extend(contents)
                        Path(args[-1]).write_bytes(self.valid_header_fixture())

                def modify(decoded):
                    for path in (decoded / 'smali').glob('*.smali'):
                        path.write_text(path.read_text() + '# patched\n')

                with patch.object(studio_core, '_run_command', side_effect=command):
                    if fail_child:
                        with self.assertRaisesRegex(studio_core.StudioError, 'malformed instruction'):
                            studio_core._patch_jar_with_apktool(jar, root / 'work', modify)
                        self.assertEqual(jar.read_bytes(), original)
                        continue
                    report = studio_core._patch_jar_with_apktool(jar, root / 'work', modify)
                self.assertEqual(report['changedDex'], ['classes.dex', 'classes6.dex'])
                self.assertEqual(len(assembled), 4)
                self.assertEqual(len(set(assembled)), 4)
                with zipfile.ZipFile(jar) as archive:
                    self.assertEqual(set(archive.namelist()), {
                        'classes.dex', 'classes2.dex', 'classes5.dex', 'classes6.dex', 'resource.bin'})
                    self.assertEqual(archive.read('classes2.dex'), b'untouched second')
                    self.assertEqual(archive.read('classes5.dex'), b'untouched fifth')
                    self.assertEqual(archive.read('resource.bin'), b'OEM resource')
                marker = json.loads((root / 'work' / studio_core.APKTOOL_DECODE_MARKER_NAME).read_text())
                self.assertFalse(marker['decodedLayoutValid'])

    def test_unsplittable_class_fails_without_allocating_another_dex(self):
        from wukong.dex_shards import assemble_dex_shards
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / 'smali'
            source.mkdir()
            (source / 'One.smali').write_text('.class public Lfixture/One;\n')
            output = root / 'classes.dex'
            output.write_bytes(b'existing output')
            error = studio_core.StudioError('Unsigned short value out of range: 65538\nInstructionWriter.write')
            from unittest.mock import Mock
            build, allocate = Mock(side_effect=error), Mock()
            with self.assertRaisesRegex(studio_core.StudioError, '65538'):
                assemble_dex_shards(source, output, build=build, allocate_name=allocate)
            self.assertEqual(build.call_count, 1)
            allocate.assert_not_called()
            self.assertEqual(output.read_bytes(), b'existing output')

    def test_split_dex_layout_cannot_reuse_unsplit_decode_cache(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            jar = root / 'services.jar'
            with zipfile.ZipFile(jar, 'w') as archive:
                archive.writestr('classes.dex', self.valid_header_fixture())
            previous = root / 'previous'
            (previous / 'decoded').mkdir(parents=True)
            (previous / studio_core.APKTOOL_DECODE_MARKER_NAME).write_text(json.dumps({
                'jar': jar.name, 'sha256': hashlib.sha256(jar.read_bytes()).hexdigest(),
                'decodedLayoutValid': False}))
            commands = []

            def command(args, **kwargs):
                commands.append(args)
                if args[3] == 'd':
                    folder = Path(args[-1]) / 'smali'
                    folder.mkdir(parents=True)
                    (folder / 'One.smali').write_text('.class public Lfixture/One;\n')
                else:
                    Path(args[-1]).write_bytes(self.valid_header_fixture())

            def modify(decoded):
                path = decoded / 'smali/One.smali'
                path.write_text(path.read_text() + '# patched\n')

            with patch.object(studio_core, '_run_command', side_effect=command):
                report = studio_core._patch_jar_with_apktool(jar, root / 'work', modify,
                                                            reuse_decoded_from=previous)
            self.assertFalse(report['decodedReused'])
            self.assertEqual(sum(args[3] == 'd' for args in commands), 1)

    def test_invalid_dex_header_size_signature_and_checksum_are_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'classes.dex'
            data = bytearray(116)
            data[:8] = b'dex\n039\0'
            struct.pack_into('<III', data, 32, len(data), 112, 0x12345678)
            data[12:32] = hashlib.sha1(data[32:], usedforsecurity=False).digest()
            struct.pack_into('<I', data, 8, zlib.adler32(data[12:]))
            path.write_bytes(data)
            smali_io.validate_dex(path)
            for offset in (0, 8, 12, 32, 40, 115):
                broken = bytearray(data)
                broken[offset] ^= 1
                path.write_bytes(broken)
                with self.assertRaises(ValueError):
                    smali_io.validate_dex(path)


if __name__ == '__main__':
    unittest.main()
