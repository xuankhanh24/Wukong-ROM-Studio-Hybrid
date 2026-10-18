"""Relocated legacy patch code; existing function bodies are unchanged."""
from __future__ import annotations

import sys
from dataclasses import asdict
from pathlib import Path
from typing import Iterable

_PATCH_DIR = str(Path(__file__).resolve().parent)
if _PATCH_DIR not in sys.path:
    sys.path.insert(0, _PATCH_DIR)

if __package__:
    from .smali_helpers import (
        DISABLE_FLAG_SECURE_MARKER,
        PatchReport,
        _code,
        _edit_method,
        _insert_after,
        _insert_before,
        _patch_after_directive,
        _patch_after_directive_first_present,
        _patch_after_directive_if_present,
        _patch_before,
        _replace_method,
        _replace_method_after_directive,
        _smali_anchor,
    )
else:
    from smali_helpers import (
        DISABLE_FLAG_SECURE_MARKER,
        PatchReport,
        _code,
        _edit_method,
        _insert_after,
        _insert_before,
        _patch_after_directive,
        _patch_after_directive_first_present,
        _patch_after_directive_if_present,
        _patch_before,
        _replace_method,
        _replace_method_after_directive,
        _smali_anchor,
    )


def patch_services_decoded(
    decoded: Path,
    selected_patches: Iterable[str] | None = None,
) -> dict[str, int | str]:
    report = PatchReport(jar="services.jar")
    selected = set(selected_patches) if selected_patches is not None else None

    if selected is None or "hma_privacy_spoof" in selected:
        before_patches = [
        (
            "com.android.server.accessibility.AccessibilityManagerService",
            "addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J",
            "    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mServiceExt:Lcom/android/server/accessibility/IAccessibilityManagerServiceExt;",
            """
                invoke-static {}, Landroid/os/Binder;->getCallingUid()I

                move-result v0

                invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHideAccessibilityForUid(I)Z

                move-result v0

                if-eqz v0, :cond_wk

                const-wide/16 v0, 0x0

                return-wide v0

                :cond_wk
            """,
            "WukongHmaPolicyBridge;->shouldHideAccessibilityForUid",
        ),
        (
            "com.android.server.accessibility.AccessibilityManagerService",
            "getEnabledAccessibilityServiceList(II)Ljava/util/List;",
            "    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;",
            """
                invoke-static {}, Landroid/os/Binder;->getCallingUid()I

                move-result v0

                invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHideAccessibilityForUid(I)Z

                move-result v0

                if-eqz v0, :cond_wk

                invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

                move-result-object v0

                return-object v0

                :cond_wk
            """,
            "WukongHmaPolicyBridge;->shouldHideAccessibilityForUid",
        ),
    ]
    for class_name, signature, anchor, snippet, marker in before_patches:
        report.patchedMethods += _patch_before(decoded, class_name, signature, anchor, _code(snippet), marker)
    report.patchedMethods += _edit_method(
        decoded,
        "com.android.server.am.ActivityManagerService",
        "forceStopPackage(Ljava/lang/String;IILjava/lang/String;)V",
        "WukongHmaPolicyBridge;->isManagerCallerUid",
        lambda method: _insert_before(
            _insert_after(
                method,
                _smali_anchor(
                    """
                        invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

                        move-result v0
                    """
                ),
                _code(
                    """
                        if-eqz v0, :cond_wk

                        invoke-static {}, Landroid/os/Binder;->getCallingUid()I

                        move-result v0

                        invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isManagerCallerUid(I)Z

                        move-result v0
                    """
                ),
                "ActivityManagerService.forceStopPackage permission",
            ),
            _smali_anchor(
                """
                    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

                    move-result v4
                """
            ),
            "    :cond_wk",
            "ActivityManagerService.forceStopPackage label",
        ),
    )
    report.patchedMethods += _patch_before(
        decoded,
        "com.android.server.am.ActivityManagerService",
        "systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V",
        _smali_anchor(
            """
                iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mActivityManagerServiceExt:Lcom/android/server/am/IActivityManagerServiceExt;

                iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;
            """
        ),
        _code(
            """
                iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

                invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->registerPolicySyncReceiver(Landroid/content/Context;)V
            """
        ),
        "WukongHmaPolicyBridge;->registerPolicySyncReceiver",
    )
    below_register_patches = [
        (
            "com.android.server.pm.AppsFilterBase",
            "shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z",
            """
                if-eqz p4, :cond_wk

                invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

                move-result-object v0

                invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

                move-result v2

                invoke-static {p2, v0, v2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHidePackageForUid(ILjava/lang/String;Z)Z

                move-result v0

                if-eqz v0, :cond_wk

                const/4 v0, 0x1

                return v0

                :cond_wk
            """,
        ),
        (
            "com.android.server.pm.ComputerEngine",
            "getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;",
            """
                const/4 v0, 0x0

                invoke-static {p4, p1, v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHidePackageForUid(ILjava/lang/String;Z)Z

                move-result v0

                if-eqz v0, :cond_wk

                const/4 v0, 0x0

                return-object v0

                :cond_wk
            """,
        ),
        (
            "com.android.server.pm.ComputerEngine",
            "getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;",
            """
                const/4 v0, 0x0

                invoke-static {p6, p1, v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHidePackageForUid(ILjava/lang/String;Z)Z

                move-result v0

                if-eqz v0, :cond_wk

                const/4 v0, 0x0

                return-object v0

                :cond_wk
            """,
        ),
    ]
    for class_name, signature, snippet in below_register_patches:
        report.patchedMethods += _patch_after_directive(
            decoded,
            class_name,
            signature,
            r"^[ \t]*\.(?:registers|locals) [0-9]+[ \t]*$",
            _code(snippet),
            "WukongHmaPolicyBridge;->shouldHidePackageForUid",
        )

    if selected is None or "kernel_manager" in selected:
        report.patchedMethods += _replace_method(
            decoded,
            "com.android.server.power.PowerManagerService$BinderService",
            "reboot(ZLjava/lang/String;Z)V",
            "WukongHmaPolicyBridge;->isManagerCallerUid",
        _code(
            """
                .method public reboot(ZLjava/lang/String;Z)V
                    .registers 8

                    const/4 v2, 0x0

                    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

                    move-result v0

                    invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isManagerCallerUid(I)Z

                    move-result v0

                    if-nez v0, :cond_0

                    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

                    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

                    move-result-object v0

                    const-string v1, "android.permission.REBOOT"

                    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

                    :cond_0
                    const-string v0, "recovery"

                    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

                    move-result v0

                    if-nez v0, :cond_1

                    const-string v0, "recovery-update"

                    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

                    move-result v0

                    if-eqz v0, :cond_2

                    :cond_1
                    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

                    move-result v0

                    invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isManagerCallerUid(I)Z

                    move-result v0

                    if-nez v0, :cond_2

                    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

                    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

                    move-result-object v0

                    const-string v1, "android.permission.RECOVERY"

                    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

                    :cond_2
                    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

                    move-result v0

                    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

                    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

                    move-result-wide v0

                    :try_start_0
                    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

                    const/4 v3, 0x1

                    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
                    :try_end_0
                    .catchall {:try_start_0 .. :try_end_0} :catchall_0

                    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

                    nop

                    return-void

                    :catchall_0
                    move-exception v2

                    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

                    throw v2
                .end method
            """
        ),
    )
    report.patchedMethods += _replace_method(
        decoded,
        "com.android.server.power.PowerManagerService$BinderService",
        "shutdown(ZLjava/lang/String;Z)V",
        "WukongHmaPolicyBridge;->isManagerCallerUid",
        _code(
            """
                .method public shutdown(ZLjava/lang/String;Z)V
                    .registers 8

                    const/4 v2, 0x0

                    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

                    move-result v0

                    invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isManagerCallerUid(I)Z

                    move-result v0

                    if-nez v0, :cond_0

                    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

                    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

                    move-result-object v0

                    const-string v1, "android.permission.REBOOT"

                    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

                    :cond_0
                    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

                    move-result v0

                    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(ILjava/lang/String;)V

                    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

                    move-result-wide v0

                    :try_start_0
                    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

                    const/4 v3, 0x0

                    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mshutdownOrRebootInternal(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
                    :try_end_0
                    .catchall {:try_start_0 .. :try_end_0} :catchall_0

                    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

                    nop

                    return-void

                    :catchall_0
                    move-exception v2

                    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

                    throw v2
                .end method
            """
        ),
    )
    if selected is None or "disable_flag_secure" in selected:
        simple_directive_patches = [
            (
                "com.android.server.devicepolicy.DevicePolicyCacheImpl",
                "isScreenCaptureAllowed(I)Z",
                r'^[ \t]*\.param p1, "userHandle".*$',
                """
                    const-string/jumbo v0, "disable_flag_secure"

                    invoke-static {v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

                    move-result v0

                    if-eqz v0, :cond_wk

                    const/4 v0, 0x1

                    return v0

                    :cond_wk
                """,
                "disable_flag_secure",
            ),
            (
                "com.android.server.devicepolicy.DevicePolicyManagerService",
                "getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z",
                r'^[ \t]*\.param p3, "parent".*$',
                """
                    const-string/jumbo v0, "disable_flag_secure"

                    invoke-static {v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

                    move-result v0

                    if-eqz v0, :cond_wk

                    const/4 v0, 0x0

                    return v0

                    :cond_wk
                """,
                "disable_flag_secure",
            ),
            (
                "com.android.server.wm.DisplayContent",
                "hasSecureWindowOnScreen()Z",
                r"^[ \t]*\.(?:registers|locals) [0-9]+[ \t]*$",
                """
                    const-string/jumbo v0, "disable_flag_secure"

                    invoke-static {v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

                    move-result v0

                    if-eqz v0, :cond_wk

                    const/4 v0, 0x0

                    return v0

                    :cond_wk
                """,
                "disable_flag_secure",
            ),
            (
                "com.android.server.wm.WindowManagerService",
                "notifyScreenshotListeners(I)Ljava/util/List;",
                r"^[ \t]*\.end annotation[ \t]*$",
                """
                    const-string/jumbo v0, "disable_flag_secure"

                    invoke-static {v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

                    move-result v0

                    if-eqz v0, :cond_wk

                    new-instance v0, Ljava/util/ArrayList;

                    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

                    return-object v0

                    :cond_wk
                """,
                "disable_flag_secure",
            ),
            (
                "com.android.server.wm.WindowState",
                "isSecureLocked()Z",
                r"^[ \t]*\.(?:registers|locals) [0-9]+[ \t]*$",
                """
                    const-string/jumbo v0, "disable_flag_secure"

                    invoke-static {v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

                    move-result v0

                    if-eqz v0, :cond_wk

                    const/4 v0, 0x0

                    return v0

                    :cond_wk
                """,
                "disable_flag_secure",
            ),
        ]
        for class_name, signature, directive, snippet, marker in simple_directive_patches:
            patcher = (
                _patch_after_directive_if_present
                if (class_name, signature)
                == ("com.android.server.wm.DisplayContent", "hasSecureWindowOnScreen()Z")
                else _patch_after_directive
            )
            report.patchedMethods += patcher(
                decoded, class_name, signature, directive, _code(snippet), marker
            )

    if selected is None or "multi_audio" in selected:
        report.patchedMethods += _patch_after_directive_first_present(
            decoded,
            "com.android.server.audio.MediaFocusControl",
            (
            (
                "requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZIZ)I",
                r'^[ \t]*\.param p11, "permissionOverridesCheck".*$',
            ),
            (
                "requestAudioFocus(ILandroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZIZ)I",
                r'^[ \t]*\.param p12, "isForCall".*$',
            ),
        ),
        _code(
            """
                const-string/jumbo v0, "multi_audio"

                invoke-static {v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

                move-result v0

                if-eqz v0, :cond_wk

                const/4 v0, 0x1

                return v0

                :cond_wk
            """
        ),
        "multi_audio",
    )
    return asdict(report)


def patch_disable_flag_secure_services_decoded(decoded: Path) -> dict[str, int | str]:
    """Apply the standalone disable-``FLAG_SECURE`` guide to services.jar."""
    report = PatchReport(jar="services.jar")
    patches = [
        (
            "com.android.server.devicepolicy.DevicePolicyCacheImpl",
            "isScreenCaptureAllowed(I)Z",
            r'^[ \t]*\.param p1, "userHandle".*$',
            """
                const/4 v0, 0x1

                return v0
            """,
        ),
        (
            "com.android.server.devicepolicy.DevicePolicyManagerService",
            "getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z",
            r'^[ \t]*\.param p3, "parent".*$',
            """
                const/4 v0, 0x0

                return v0
            """,
        ),
        (
            "com.android.server.wm.DisplayContent",
            "hasSecureWindowOnScreen()Z",
            r"^[ \t]*\.(?:registers|locals) [0-9]+[ \t]*$",
            """
                const/4 v0, 0x0

                return v0
            """,
        ),
        (
            "com.android.server.wm.WindowManagerService",
            "notifyScreenshotListeners(I)Ljava/util/List;",
            r"^[ \t]*\.end annotation[ \t]*$",
            """
                new-instance v0, Ljava/util/ArrayList;

                invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

                return-object v0
            """,
        ),
        (
            "com.android.server.wm.WindowState",
            "isSecureLocked()Z",
            r"^[ \t]*\.(?:registers|locals) [0-9]+[ \t]*$",
            """
                const/4 v0, 0x0

                return v0
            """,
        ),
    ]
    for class_name, signature, directive, snippet in patches:
        report.patchedMethods += _replace_method_after_directive(
            decoded,
            class_name,
            signature,
            directive,
            snippet,
            DISABLE_FLAG_SECURE_MARKER,
        )
    return asdict(report)

