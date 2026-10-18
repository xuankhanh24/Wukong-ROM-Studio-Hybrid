import importlib
import tempfile
import unittest
from pathlib import Path

import wk_manager_patcher


class KeystoreRequestBindingTests(unittest.TestCase):
    def setUp(self):
        self.module = importlib.import_module(wk_manager_patcher.patch_framework_decoded.__module__)

    def fixture(self, root, number, operation, parameters='Landroid/system/keystore2/KeyDescriptor;'):
        descriptor = f'Landroid/security/KeyStore2$$ExternalSyntheticLambda{number};'
        path = root / 'smali/android/security' / f'KeyStore2$$ExternalSyntheticLambda{number}.smali'
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(
            f'.class public final synthetic {descriptor}\n'
            '.super Ljava/lang/Object;\n'
            '.implements Landroid/security/KeyStore2$CheckedRemoteRequest;\n'
            f'.method public constructor <init>({parameters})V\n.locals 0\nreturn-void\n.end method\n'
            '.method public execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;\n'
            '.locals 1\n'
            f'invoke-static {{v0, p1}}, Landroid/security/KeyStore2;->lambda${operation}$5'
            '(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)'
            'Landroid/system/keystore2/KeyEntryResponse;\nreturn-object v0\n.end method\n',
            encoding='utf-8',
        )
        return descriptor

    def test_pkg110_get_key_entry_is_lambda8_not_grant_lambda9(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            correct = self.fixture(root, 8, 'getKeyEntry')
            self.fixture(root, 9, 'grant', 'Landroid/system/keystore2/KeyDescriptor;II')
            self.assertEqual(self.module._keystore_request_class(root, 'getKeyEntry'), correct)

    def test_numbering_can_change_and_same_constructor_is_not_enough(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            correct = self.fixture(root, 2, 'getKeyEntry')
            self.fixture(root, 8, 'deleteKey')
            self.assertEqual(self.module._keystore_request_class(root, 'getKeyEntry'), correct)

    def test_missing_or_ambiguous_request_fails_closed(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            self.fixture(root, 9, 'grant')
            with self.assertRaises(wk_manager_patcher.WkManagerPatchError):
                self.module._keystore_request_class(root, 'getKeyEntry')
            self.fixture(root, 2, 'getKeyEntry')
            self.fixture(root, 8, 'getKeyEntry')
            with self.assertRaises(wk_manager_patcher.WkManagerPatchError):
                self.module._keystore_request_class(root, 'getKeyEntry')

    def test_replaces_legacy_bad_request_and_is_idempotent(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            correct = self.fixture(root, 8, 'getKeyEntry')
            self.fixture(root, 9, 'grant', 'Landroid/system/keystore2/KeyDescriptor;II')
            key = root / 'smali/android/security/KeyStore2.smali'
            signature = 'getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;'
            template = (
                f'.method public {signature}\n.registers 3\n'
                '# WukongFrameworkBridge;->preGetKeyEntry\n'
                'new-instance v0, Lwk/OemKeyStoreRequest;\n'
                'invoke-direct {v0, p1}, Lwk/OemKeyStoreRequest;-><init>(Landroid/system/keystore2/KeyDescriptor;)V\n'
                'return-object v0\n.end method'
            )
            key.write_text('.class public Landroid/security/KeyStore2;\n' + template.replace(
                'Lwk/OemKeyStoreRequest;', 'Landroid/security/KeyStore2$$ExternalSyntheticLambda9;'), encoding='utf-8')
            args = (root, 'android.security.KeyStore2', signature,
                    'WukongFrameworkBridge;->preGetKeyEntry', template, 'getKeyEntry')
            self.assertTrue(self.module._replace_keystore_method(*args))
            self.assertIn(correct, key.read_text(encoding='utf-8'))
            self.assertNotIn('ExternalSyntheticLambda9;', key.read_text(encoding='utf-8'))
            self.assertFalse(self.module._replace_keystore_method(*args))


if __name__ == '__main__':
    unittest.main()
