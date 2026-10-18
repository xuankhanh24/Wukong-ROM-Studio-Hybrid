"""WK Manager applies the owner's full policy without rewriting its source."""
from pathlib import Path
import tempfile
import unittest
from unittest import mock

import studio_core as core


class WkManagerForcePolicyTests(unittest.TestCase):
    def test_install_keeps_unknown_owner_rule_and_source_bytes(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            unpack = root / 'rom'
            selinux = unpack / 'system_unpacked/system/system/etc/selinux'
            source = root / 'shared/system/system'
            shared_policy = source / 'etc/selinux'
            selinux.mkdir(parents=True)
            config = unpack / 'system_unpacked/config'
            config.mkdir(parents=True)
            for name in ('system_fs_config', 'system_file_contexts'):
                (config / name).write_bytes(b'')
            shared_policy.mkdir(parents=True)
            (source / 'bin').mkdir()
            (source / 'etc/init').mkdir()
            (source / 'bin/wukong-system-powerd').write_bytes(b'fixture')
            (source / 'etc/init/wukong-system-powerd.rc').write_bytes(b'fixture')
            (selinux / 'plat_sepolicy.cil').write_text(
                '(type wukong_manager_app)\n(type privapp_data_file)\n(type system_file)\n', encoding='utf-8')
            patch = shared_policy / 'stark_plat_sepolicy.cil'
            rule = '(allow wukong_manager_app audiopolicy_service (service_manager (find)))'
            original = ('+' + rule + '\n').encode()
            patch.write_bytes(original)
            fallback = root / 'fallback.cil'
            fallback.write_text('+(allow wrong_source wrong_type (file (read)))\n', encoding='utf-8')
            for name in ('stark_plat_seapp_contexts', 'stark_plat_file_contexts'):
                (shared_policy / name).write_bytes(b'')
            with mock.patch.object(core, '_validate_wk_manager_power_daemon'), \
                 mock.patch.object(core, '_validate_wk_manager_power_rc'), \
                 mock.patch.object(core, '_stock_vendor_sepolicy_for_validation', return_value=(None, None)), \
                 mock.patch.object(core, '_ensure_wk_manager_art_runtime_policy', return_value=0), \
                 mock.patch.object(core, 'WK_MANAGER_TRACKED_SYSTEM_POLICY_FALLBACK', fallback):
                report = core._install_wk_manager_power_service(unpack, root / 'shared')
            self.assertEqual(patch.read_bytes(), original)
            self.assertIn(rule, (selinux / 'plat_sepolicy.cil').read_text(encoding='utf-8'))
            self.assertNotIn('wrong_source', (selinux / 'plat_sepolicy.cil').read_text(encoding='utf-8'))
            self.assertEqual(report['unresolvedPolicySymbols'], ['audiopolicy_service'])
            self.assertEqual(report['skippedPolicySymbols'], [])


if __name__ == '__main__':
    unittest.main()
