"""Relocated legacy patch code; existing function bodies are unchanged."""
from __future__ import annotations

import shutil
import re
import sys
from dataclasses import asdict
from pathlib import Path
from typing import Iterable

_PATCH_DIR = str(Path(__file__).resolve().parent)
if _PATCH_DIR not in sys.path:
    sys.path.insert(0, _PATCH_DIR)

if __package__:
    from .smali_helpers import (
        DEFAULT_STARK_DIR,
        PatchReport,
        WkManagerPatchError,
        _add_local_registers,
        _code,
        _edit_method,
        _insert_after,
        _insert_before_return_after_trace,
        _patch_after,
        _patch_before,
        _replace_method,
        _smali_anchor,
    )
else:
    from smali_helpers import (
        DEFAULT_STARK_DIR,
        PatchReport,
        WkManagerPatchError,
        _add_local_registers,
        _code,
        _edit_method,
        _insert_after,
        _insert_before_return_after_trace,
        _patch_after,
        _patch_before,
        _replace_method,
        _smali_anchor,
    )


def _keystore_request_class(decoded: Path, operation: str) -> str:
    """Synthetic numbering is firmware-specific; bind by executed operation."""
    candidates = []
    for path in decoded.rglob('KeyStore2$$ExternalSyntheticLambda*.smali'):
        content = path.read_text(encoding='utf-8')
        constructor = re.search(
            r'(?m)^\.method[^\n]* <init>\(Landroid/system/keystore2/KeyDescriptor;\)V\s*$', content)
        execute = re.search(
            r'(?ms)^\.method[^\n]* execute\(Landroid/system/keystore2/IKeystoreService;\)'
            r'Ljava/lang/Object;\s*\n(.*?)^\.end method', content)
        target = 'Landroid/security/KeyStore2;->lambda$' + operation + '$'
        if (constructor and execute and target in execute[1]
                and '.implements Landroid/security/KeyStore2$CheckedRemoteRequest;' in content):
            declaration = re.search(r'(?m)^\.class[^\n]* (L[^\s]+;)$', content)
            if declaration:
                candidates.append(declaration[1])
    if len(candidates) != 1:
        raise WkManagerPatchError(
            f'KeyStore2.{operation}: expected one descriptor request with matching OEM operation, '
            f'found {len(candidates)}; refusing firmware-incompatible patch')
    return candidates[0]


def _replace_keystore_method(decoded, class_name, signature, marker, replacement, operation):
    request = _keystore_request_class(decoded, operation)
    version_marker = f'# WK_KEYSTORE_SEMANTIC_REQUEST_V1 {request}'
    replacement = replacement.replace('Lwk/OemKeyStoreRequest;', request)
    replacement = replacement.replace('\n', '\n    ' + version_marker + '\n', 1)
    return _replace_method(decoded, class_name, signature, version_marker, replacement)


def _copy_stark_smali(decoded: Path, stark_dir: Path) -> int:
    if not stark_dir.is_dir():
        raise WkManagerPatchError(f"STARK directory is missing: {stark_dir}")
    destination = decoded / "smali_classes6"
    imported = 0
    for source in sorted(stark_dir.rglob("*.smali")):
        relative = source.relative_to(stark_dir)
        target = destination / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        if target.is_file() and target.read_bytes() == source.read_bytes():
            continue
        if target.exists():
            raise WkManagerPatchError(f"STARK target already exists with different content: {target}")
        shutil.copy2(source, target)
        imported += 1
    if imported == 0 and not destination.is_dir():
        raise WkManagerPatchError("No STARK smali files were imported")
    return imported


def patch_framework_decoded(
    decoded: Path,
    stark_dir: Path = DEFAULT_STARK_DIR,
    selected_patches: Iterable[str] | None = None,
) -> dict[str, int | str]:
    report = PatchReport(jar="framework.jar")
    selected = set(selected_patches) if selected_patches is not None else None

    if selected is None or "gamespoof" in selected:
        report.patchedMethods += _patch_before(
            decoded,
            "android.app.ApplicationPackageManager",
            "hasSystemFeature(Ljava/lang/String;I)Z",
            "    iget-boolean v1, p0, Landroid/app/ApplicationPackageManager;->mUseSystemFeaturesCache:Z",
            _code(
                """
                    invoke-static {p1, p2}, Lcom/wukong/manager/WukongPackageManagerHook;->maybeOverride(Ljava/lang/String;I)Ljava/lang/Boolean;

                    move-result-object v0

                    if-eqz v0, :cond_wk

                    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

                    move-result v1

                    return v1

                    :cond_wk
                """
            ),
            "WukongPackageManagerHook;->maybeOverride",
        )

    if selected is None or selected.intersection({"play_integrity_spoof", "gamespoof"}):
        report.patchedMethods += _patch_before(
            decoded,
            "android.app.Instrumentation",
            "newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;",
            "    return-object v0",
            "    invoke-static {p1}, Lcom/wukong/manager/WukongInstrumentationHook;->onApplicationAttached(Landroid/content/Context;)V",
            "WukongInstrumentationHook;->onApplicationAttached",
        )
        report.patchedMethods += _patch_before(
            decoded,
            "android.app.Instrumentation",
            "newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;",
            "    return-object v0",
            "    invoke-static {p3}, Lcom/wukong/manager/WukongInstrumentationHook;->onApplicationAttached(Landroid/content/Context;)V",
            "WukongInstrumentationHook;->onApplicationAttached",
        )

    if selected is None or "hma_privacy_spoof" in selected:
        def patch_content_provider_call(method: str) -> str:
            updated, local = _add_local_registers(method, 3, parameter_words=6)
            identity, value, owner = (f"v{local + offset}" for offset in range(3))
            first = _code(
                f"""
                    invoke-static {{p1, p2, p3, p4}}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldExecuteSettingsCallAsManager(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

                    move-result v0

                    if-eqz v0, :cond_wk

                    const-string v0, "call: "

                    const-wide/16 v1, 0x40

                    invoke-static {{v1, v2, v0, p2}}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

                    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

                    invoke-virtual {{v0}}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

                    move-result-object {identity}

                    :try_start_wk
                    iget-object {value}, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

                    invoke-interface {{{value}, p2, p3, p4, p5}}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

                    move-result-object {value}
                    :try_end_wk
                    .catchall {{:try_start_wk .. :try_end_wk}} :catchall_wk

                    iget-object {owner}, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

                    invoke-virtual {{{owner}, {identity}}}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

                    invoke-static {{v1, v2}}, Landroid/os/Trace;->traceEnd(J)V

                    return-object {value}

                    :catchall_wk
                    move-exception {value}

                    iget-object {owner}, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

                    invoke-virtual {{{owner}, {identity}}}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

                    invoke-static {{v1, v2}}, Landroid/os/Trace;->traceEnd(J)V

                    throw {value}

                    :cond_wk
                """
            )
            updated = _insert_after(
                updated,
                "    invoke-static {p5, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;",
                first,
                "ContentProvider.Transport.call manager path",
            )
            return _insert_before_return_after_trace(
                updated,
                "v1, v2",
                "v3",
                _code(
                    """
                        invoke-static {p1, p2, p3, p4, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->maybeSpoofSettingsCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

                        move-result-object v3
                    """
                ),
                "ContentProvider.Transport.call spoof return",
            )

        report.patchedMethods += _edit_method(
            decoded,
            "android.content.ContentProvider$Transport",
            "call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;",
            "WukongHmaPolicyBridge;->shouldExecuteSettingsCallAsManager",
            patch_content_provider_call,
        )

        def patch_content_provider_query(method: str) -> str:
            return _insert_before_return_after_trace(
                method,
                "v2, v3",
                "v1",
                _code(
                    """
                        invoke-static {p1, p2, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->maybeSpoofSettingsQuery(Ljava/lang/Object;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

                        move-result-object v1
                    """
                ),
                "ContentProvider.Transport.query spoof return",
            )

        report.patchedMethods += _edit_method(
            decoded,
            "android.content.ContentProvider$Transport",
            "query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;",
            "WukongHmaPolicyBridge;->maybeSpoofSettingsQuery",
            patch_content_provider_query,
        )
    if selected is None or "keybox_manager" in selected:
        report.patchedMethods += _edit_method(
            decoded,
            "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi",
            "generateKeyPair()Ljava/security/KeyPair;",
        "WukongFrameworkBridge;->maybeGenerateKey",
        lambda method: _insert_after(
            _insert_after(
                method,
                _smali_anchor(
                    """
                        invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;->constructKeyGenerationArguments()Ljava/util/Collection;

                        move-result-object v10
                    """
                ),
                _code(
                    """
                        move v13, v5

                        invoke-static/range {v8 .. v13}, Lcom/wukong/manager/WukongFrameworkBridge;->maybeGenerateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[BI)Landroid/system/keystore2/KeyMetadata;

                        move-result-object v0

                        if-nez v0, :cond_wk
                    """
                ),
                "AndroidKeyStoreKeyPairGeneratorSpi pre-generate",
            ),
            _smali_anchor(
                """
                    invoke-virtual/range {v7 .. v12}, Landroid/security/KeyStoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

                    move-result-object v0
                """
            ),
            "    :cond_wk",
            "AndroidKeyStoreKeyPairGeneratorSpi post-generate",
        ),
    )
    report.patchedMethods += _replace_method(
        decoded,
        "android.security.keystore2.AndroidKeyStorePublicKey",
        "getCertificate()[B",
        "WukongFrameworkBridge;->maybePatchCertificate",
        _code(
            """
                .method public blacklist getCertificate()[B
                    .registers 4

                    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

                    move-result-object v0

                    if-eqz v0, :cond_0

                    iget-object v0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

                    goto :goto_0

                    :cond_0
                    const/4 v0, 0x0

                    :goto_0
                    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

                    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

                    invoke-static {v0, v1, v2}, Lcom/wukong/manager/WukongFrameworkBridge;->maybePatchCertificate(Ljava/lang/String;[B[B)[B

                    move-result-object v0

                    return-object v0
                .end method
            """
        ),
    )
    report.patchedMethods += _replace_method(
        decoded,
        "android.security.keystore2.AndroidKeyStorePublicKey",
        "getCertificateChain()[B",
        "WukongFrameworkBridge;->maybePatchCertificateChain",
        _code(
            """
                .method public blacklist getCertificateChain()[B
                    .registers 4

                    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

                    move-result-object v0

                    if-eqz v0, :cond_0

                    iget-object v0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

                    goto :goto_0

                    :cond_0
                    const/4 v0, 0x0

                    :goto_0
                    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

                    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

                    invoke-static {v0, v1, v2}, Lcom/wukong/manager/WukongFrameworkBridge;->maybePatchCertificateChain(Ljava/lang/String;[B[B)[B

                    move-result-object v0

                    return-object v0
                .end method
            """
        ),
    )
    report.patchedMethods += _patch_after(
        decoded,
        "android.security.keystore2.AndroidKeyStoreSpi",
        "getKeyMetadata(Ljava/lang/String;)Landroid/system/keystore2/KeyEntryResponse;",
        "    invoke-virtual {v1, v0}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;",
        _code(
            """
                move-result-object v1

                invoke-static {p1, v1}, Lcom/wukong/manager/WukongFrameworkBridge;->maybePatchKeyEntryResponse(Ljava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;
            """
        ),
        "WukongFrameworkBridge;->maybePatchKeyEntryResponse",
    )
    report.patchedMethods += _patch_after(
        decoded,
        "android.security.keystore2.AndroidKeyStoreSpi",
        "engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;",
        "    invoke-static {v0, p1, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;",
        _code(
            """
                move-result-object v0

                invoke-static {p1, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->maybeSwapLoadedKey(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Key;
            """
        ),
        "WukongFrameworkBridge;->maybeSwapLoadedKey",
    )
    report.patchedMethods += _replace_keystore_method(
        decoded,
        "android.security.KeyStore2",
        "deleteKey(Landroid/system/keystore2/KeyDescriptor;)V",
        "WukongFrameworkBridge;->deleteKey",
        _code(
            """
                .method public blacklist deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
                    .registers 3
                    .annotation system Ldalvik/annotation/Throws;
                        value = {
                            Landroid/security/KeyStoreException;
                        }
                    .end annotation

                    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

                    invoke-static {p1}, Lcom/wukong/manager/WukongFrameworkBridge;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)Z

                    move-result v0

                    if-nez v0, :cond_0

                    new-instance v0, Lwk/OemKeyStoreRequest;

                    invoke-direct {v0, p1}, Lwk/OemKeyStoreRequest;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

                    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

                    :cond_0
                    return-void
                .end method
            """
        ),
        "deleteKey",
    )
    report.patchedMethods += _replace_keystore_method(
        decoded,
        "android.security.KeyStore2",
        "getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;",
        "WukongFrameworkBridge;->preGetKeyEntry",
        _code(
            """
                .method public blacklist getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
                    .registers 3
                    .annotation system Ldalvik/annotation/Throws;
                        value = {
                            Landroid/security/KeyStoreException;
                        }
                    .end annotation

                    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

                    invoke-static {p1}, Lcom/wukong/manager/WukongFrameworkBridge;->preGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

                    move-result-object v0

                    if-nez v0, :cond_0

                    new-instance v0, Lwk/OemKeyStoreRequest;

                    invoke-direct {v0, p1}, Lwk/OemKeyStoreRequest;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

                    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

                    move-result-object v0

                    check-cast v0, Landroid/system/keystore2/KeyEntryResponse;

                    invoke-static {p1, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->postGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;

                    move-result-object v0

                    :cond_0
                    return-object v0
                .end method
            """
        ),
        "getKeyEntry",
    )
    if selected is None and stark_dir and stark_dir.is_dir():
        report.importedSmali = _copy_stark_smali(decoded, stark_dir)
    return asdict(report)

