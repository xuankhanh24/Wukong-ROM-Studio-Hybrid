import hashlib
import tempfile
import unittest
import zipfile
from pathlib import Path
from unittest import mock

import studio_core


class OxygenOSBuildTests(unittest.TestCase):
    def test_display_version_has_no_v_prefix(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            prop = root / 'my_product_unpacked' / 'my_product' / 'build.prop'
            prop.parent.mkdir(parents=True)
            for version in ('V3.4', 'v3.4', '3.4'):
                prop.write_text('ro.build.version.oplusrom.display=16.1 | Plus | V2.0\n')
                studio_core.patch_build_branding(root, 'Lite', version)
                self.assertEqual(prop.read_text(), 'ro.build.version.oplusrom.display=16.1 | Lite | 3.4\n')

    def test_oxygen_block_ota_targets_region_and_preserves_stock(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            unpack = root / 'unpack'
            files = {}
            for partition in ('my_region', 'my_stock'):
                path = unpack / f'{partition}_unpacked' / partition / 'etc' / 'extension' / 'com.oplus.app-features.xml'
                path.parent.mkdir(parents=True)
                path.write_text('<oplus-config>\n<oplus-feature name="com.oplus.ota.service"/>\n<oplus-feature name="com.oplus.keep"/>\n</oplus-config>\n')
                files[partition] = path
            mods = root / 'MOD'
            (mods / 'OxygenOS_16.0.10').mkdir(parents=True)
            with mock.patch.multiple(studio_core, MOD_DIR=mods, STARK_ROOT=root / 'STARK'):
                result = studio_core.apply_selected_mods(['Block_ota'], unpack,
                    studio_core.find_device('CPH2691IN'), root, 'OxygenOS_16.0.10')
            self.assertNotIn('ota.service', files['my_region'].read_text())
            self.assertIn('com.oplus.keep', files['my_region'].read_text())
            self.assertIn('ota.service', files['my_stock'].read_text())
            self.assertEqual(result['modifiedPartitions'], ['my_region'])

    def test_incomplete_cph_metadata_returns_preflight_errors(self):
        with tempfile.TemporaryDirectory() as temporary:
            rom = Path(temporary) / 'incomplete.zip'
            with zipfile.ZipFile(rom, 'w') as archive:
                archive.writestr('META-INF/com/android/metadata', 'product_name=CPH2691IN\n')
                archive.writestr('payload.bin', b'payload')
            report = studio_core.inspect_rom(rom, enforce_space=False)
            self.assertIn('Cannot determine OxygenOS MOD version from CPH ROM metadata', report['errors'])

    def test_cph_zip_selects_matching_oxygen_pack_and_skips_super(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            (root / 'MOD' / 'OxygenOS_16.0.10').mkdir(parents=True)
            rom = root / 'download.zip'
            with zipfile.ZipFile(rom, 'w') as archive:
                archive.writestr('META-INF/com/android/metadata',
                                 'product_name=CPH2691IN\nversion_name=CPH2691_16.0.10.500(EX01)\n')
                archive.writestr('payload.bin', b'payload')
            spec = studio_core.BuildSpec.from_dict(
                {'romPath': str(rom), 'preset': 'custom', 'modNames': [],
                 'enabledSteps': ['inspect_rom', 'repack_super', 'package_zip']},
                mod_root=root / 'MOD')
            self.assertEqual(spec.modVersion, 'OxygenOS_16.0.10')
            self.assertEqual(studio_core.plan_steps(spec), ['inspect_rom', 'package_zip'])
            device = studio_core.find_device('CPH2691IN')
            self.assertEqual(device['romFamily'], 'OxygenOS')
            self.assertNotIn('SuperSize', device)

    def test_global_zip_validates_individual_system_images_without_super(self):
        with tempfile.TemporaryDirectory() as temporary:
            rom = Path(temporary) / 'global.zip'
            payload = b'known image bytes'
            digest = hashlib.md5(payload).hexdigest()
            logical = ['my_bigball', 'my_carrier', 'my_company', 'my_engineering',
                       'my_heytap', 'my_manifest', 'my_preload', 'my_product',
                       'my_region', 'my_stock', 'odm', 'product', 'system',
                       'system_dlkm', 'system_ext', 'vendor', 'vendor_dlkm']
            boot = ['boot', 'dtbo', 'init_boot', 'modem', 'recovery', 'vbmeta',
                    'vbmeta_system', 'vbmeta_vendor', 'vendor_boot']
            with zipfile.ZipFile(rom, 'w') as archive:
                for partition in logical:
                    archive.writestr(f'system/{partition}.img', payload)
                for partition in boot:
                    archive.writestr(f'images/{partition}.img', payload)
                archive.writestr('wukong_md5_hashes.txt', ''.join(
                    f'{digest}  {partition}.img\n' for partition in logical + boot))
            result = studio_core.validate_final_zip(
                rom, studio_core.find_device('CPH2691IN'), mode='deep')
            self.assertEqual(result['partitions'], sorted(logical))

    def test_oxygen_debloat_removes_google_apps_but_keeps_package_installer(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            product = root / 'my_product_unpacked' / 'my_product'
            (product / 'app' / 'Maps').mkdir(parents=True)
            installer = product / 'non_overlay' / 'priv-app' / 'GooglePackageInstaller'
            installer.mkdir(parents=True)
            stock = root / 'my_stock_unpacked' / 'my_stock' / 'del-app'
            for name in ('INOnePlusStore', 'OplusDocumentsReader'):
                (stock / name).mkdir(parents=True)
            report = studio_core.delete_bloatware(root, studio_core.default_debloat_paths('OxygenOS'))
            self.assertFalse((product / 'app' / 'Maps').exists())
            self.assertTrue(installer.exists())
            for name in ('INOnePlusStore', 'OplusDocumentsReader'):
                self.assertFalse((stock / name).exists())
                self.assertNotIn(f'my_stock\\del-app\\{name}', studio_core.default_debloat_paths())
            self.assertEqual(report['modifiedPartitions'], ['my_product', 'my_stock'])

    def test_wk_installer_removes_stock_google_installer(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            mods = root / 'MOD'
            asset = mods / 'OxygenOS_16.0.10' / 'WK_Installer' / 'my_product' / 'priv-app' / 'WKInstaller' / 'WK.apk'
            asset.parent.mkdir(parents=True)
            asset.write_bytes(b'installer payload')
            unpack = root / 'unpack'
            product = unpack / 'my_product_unpacked' / 'my_product'
            stock = product / 'non_overlay' / 'priv-app' / 'GooglePackageInstaller'
            stock.mkdir(parents=True)
            with mock.patch.multiple(studio_core, MOD_DIR=mods, STARK_ROOT=root / 'STARK', CONTENT_ROOT=root):
                result = studio_core.apply_selected_mods(
                    ['WK_Installer'], unpack, studio_core.find_device('CPH2691IN'), root,
                    'OxygenOS_16.0.10')
            self.assertFalse(stock.exists())
            self.assertTrue((product / 'priv-app' / 'WKInstaller' / 'WK.apk').exists())
            self.assertIn('my_product', result['modifiedPartitions'])

    def test_global_build_packages_rebuilt_stock_and_copy_image_sources(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            content = root / 'Content'
            (content / 'MOD' / 'OxygenOS_16.0.10').mkdir(parents=True)
            copies = content / 'copy-image'
            copies.mkdir()
            for name in ('my_company', 'my_preload'):
                (copies / f'{name}.img').write_bytes(b'copy-image override')
            rom = root / 'download.zip'
            with zipfile.ZipFile(rom, 'w') as archive:
                archive.writestr('META-INF/com/android/metadata',
                                 'product_name=CPH2691IN\nversion_name=CPH2691_16.0.10.500(EX01)\n')
                archive.writestr('payload.bin', b'payload')
            spec = studio_core.BuildSpec(romPath=str(rom), preset='custom',
                                         enabledSteps=['repack_super', 'package_zip'])
            workspace = studio_core.prepare_workspace(root / 'global', 'cph-test',
                                                       'global', resume=False, root=root)
            source = workspace / 'source_rom'
            source.mkdir()
            for name in studio_core.PARTITIONS:
                (source / f'{name}.img').write_bytes(b'stock logical')
            for name in studio_core.REQUIRED_IMAGES - {'super.img'}:
                (source / name).write_bytes(b'stock boot')
            (workspace / 'rom-repack').mkdir()
            (workspace / 'rom-repack' / 'my_product.img').write_bytes(b'rebuilt product')
            (workspace / 'rom-unpack' / 'my_product_unpacked' / 'my_product' / 'app' / 'Maps').mkdir(parents=True)
            binaries = root / 'bin'
            for name in ('extract.erofs', 'mkfs.erofs', 'magiskboot', 'cpio'):
                path = studio_core.platform_tool_path(name, binaries)
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(b'fixture')
            recovery = root / 'custom-recovery'
            recovery.mkdir()
            (recovery / 'TWRP-86xx.img').write_bytes(b'must not be packaged')
            (root / 'flash').mkdir()
            (root / 'flash' / 'tao_md5.bat').write_bytes(b'operator-only checksum helper')
            with mock.patch.multiple(studio_core, CONTENT_ROOT=content,
                                     MOD_DIR=content / 'MOD', BIN_ROOT=binaries,
                                     ROOT_DIR=root, WORKSPACE_ROOT=root,
                                     ROM_BUILD_DONE=root / 'output', FLASH_ROOT=root / 'flash',
                                     TWRP_ROOT=recovery, OFX_ROOT=recovery), \
                    mock.patch.dict('os.environ', {'WUKONG_STUDIO_ASYNC_PACKAGE': '0'}):
                result = studio_core.execute_build('cph-test', spec, workspace)
            with zipfile.ZipFile(result['outputZip']) as archive:
                self.assertEqual(archive.read('system/my_product.img'), b'rebuilt product')
                self.assertEqual(archive.read('system/vendor.img'), b'stock logical')
                self.assertEqual(archive.read('system/my_company.img'), b'copy-image override')
                self.assertEqual(archive.read('system/my_preload.img'), b'copy-image override')
                self.assertNotIn('images/TWRP.img', archive.namelist())
                self.assertNotIn('images/super.img', archive.namelist())
                self.assertNotIn('tao_md5.bat', archive.namelist())
                self.assertIn('Global Mod (OxygenOS)', archive.read('info.txt').decode())

    def test_cloud_recipe_targets_oxygen_pack_from_cph_metadata(self):
        from wukong.models import BuildRecipe
        recipe = BuildRecipe.from_dict({
            'task': 'build', 'device': 'OP5D3BL1',
            'source': {'kind': 'https', 'uri': 'https://example.com/rom.zip',
                       'metadata': {'productName': 'CPH2691IN',
                                    'version': 'CPH2691_16.0.10.500(EX01)'}},
            'build': {'modVersion': 'ColorOS_16.0.7', 'enabledSteps': ['repack_super', 'package_zip']},
        })
        self.assertEqual(recipe.build.mod_version, 'OxygenOS_16.0.10')
        self.assertNotIn('repack_super', recipe.build.enabled_steps)

    def test_local_cph_selection_switches_unchanged_coloros_preset_defaults(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            for version, mod in [('ColorOS_16.0.7', 'Gapps'), ('OxygenOS_16.0.10', 'WK_Installer')]:
                asset = root / version / mod / 'my_product' / 'app' / 'fixture.apk'
                asset.parent.mkdir(parents=True)
                asset.write_bytes(b'mod payload')
            rom = root / 'download.zip'
            with zipfile.ZipFile(rom, 'w') as archive:
                archive.writestr('META-INF/com/android/metadata',
                                 'product_name=CPH2691IN\nversion_name=CPH2691_16.0.10.500(EX01)\n')
            spec = studio_core.BuildSpec.from_dict(
                {'romPath': str(rom), 'preset': 'lite', 'modVersion': 'ColorOS_16.0.7', 'modNames': ['Gapps', 'Block_ota']},
                mod_root=root)
            self.assertEqual(spec.selected_mod_names(), ['Block_ota', 'WK_Installer'])
