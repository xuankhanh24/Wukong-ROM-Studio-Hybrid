"""Optional window-compatibility and audio settings from the supplied guides."""
from __future__ import annotations

def plan_edits(decoded, selected, helpers, jar="oplus-services"):
    """Return validated edits without writing, so a missing target cannot leave half a patch."""
    edits = {}

    def apply(name, signature, setting, result, parameter_words):
        path = helpers._class(decoded, name)
        text = edits.get(path, path.read_text(encoding="utf-8"))

        def editor(method):
            if f'"{setting}"' in method:
                return method
            label = f":wk_{setting}_original"
            if label in method:
                raise helpers.PatchError(f"Label collision: {label}")
            snippet = f'''    const-string/jumbo v0, "{setting}"
    invoke-static {{v0}}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I
    move-result v0
    if-eqz v0, {label}
    const/4 v0, {result[0]}
    {result[1]} v0
    {label}'''
            return helpers._entry(method, snippet, parameter_words)

        edits[path] = helpers._edit(text, signature, editor)

    if jar == "oplus-services":
        if "disable_flag_secure" in selected:
            for name, signature, val, ret, words in (
                ("com.android.server.wm.IOplusWindowManagerServiceEx", "dumpWindowsForScreenShot(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z", "0x1", "return", 4),
                ("com.android.server.wm.OplusLongshotMainWindow", "hasSecure()Z", "0x0", "return", 1),
                ("com.android.server.wm.OplusWindowDumpUtils", "isSecureWindow(Lcom/android/server/wm/WindowState;)Z", "0x0", "return", 2),
                ("com.android.server.wm.OplusWindowManagerServiceEx", "dumpWindowsForScreenShot(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z", "0x1", "return", 4),
            ):
                apply(name, signature, "disable_flag_secure", (val, ret), words)

        if "black_window" in selected:
            name = "com.android.server.wm.FlexibleWindowUtils"
            for signature, value, ret, words in (
                ("getUnSupportRatiosInFlexibleTask(Ljava/lang/String;)Ljava/lang/String;", "0x0", "return-object", 1),
                ("isInMultiWindowFlexibleBlackList(Ljava/lang/String;)Z", "0x0", "return", 1),
                ("isSupportFlexibleWindow(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z", "0x1", "return", 2),
                ("isSupportFlexibleWindow(Lcom/android/server/wm/Task;)Z", "0x1", "return", 1),
                ("isSupportFlexibleWindow(Ljava/lang/String;Ljava/lang/String;)Z", "0x1", "return", 2),
            ):
                apply(name, signature, "black_window", (value, ret), words)

    elif jar == "services":
        if "disable_flag_secure" in selected:
            for name, signature, val, ret, words in (
                ("com.android.server.devicepolicy.DevicePolicyCacheImpl", "isScreenCaptureAllowed(I)Z", "0x1", "return", 2),
                ("com.android.server.devicepolicy.DevicePolicyManagerService", "getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z", "0x0", "return", 4),
                ("com.android.server.wm.DisplayContent", "hasSecureWindowOnScreen()Z", "0x0", "return", 1),
                ("com.android.server.wm.WindowState", "isSecureLocked()Z", "0x0", "return", 1),
            ):
                apply(name, signature, "disable_flag_secure", (val, ret), words)

            name = "com.android.server.wm.WindowManagerService"
            signature = "notifyScreenshotListeners(I)Ljava/util/List;"
            path = helpers._class(decoded, name)
            text = edits.get(path, path.read_text(encoding="utf-8"))
            def screenshot_editor(method):
                if '"disable_flag_secure"' in method:
                    return method
                label = ":wk_disable_flag_secure_original"
                snippet = f'''    const-string/jumbo v0, "disable_flag_secure"
    invoke-static {{v0}}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I
    move-result v0
    if-eqz v0, {label}
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {{v0}}, Ljava/util/ArrayList;-><init>()V
    return-object v0
    {label}'''
                return helpers._entry(method, snippet, 2)
            edits[path] = helpers._edit(text, signature, screenshot_editor)

        if "multi_audio" in selected:
            name = "com.android.server.audio.MediaFocusControl"
            path = helpers._class(decoded, name)
            text = edits.get(path, path.read_text(encoding="utf-8"))
            candidates = (
                ("requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZIZ)I", 12),
                ("requestAudioFocus(ILandroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZIZ)I", 13),
            )
            present = [(signature, words) for signature, words in candidates if helpers._pattern(signature).search(text)]
            if len(present) != 1:
                raise helpers.PatchError(f"requestAudioFocus: expected one supported overload, found {len(present)}")
            signature, words = present[0]
            declaration = helpers._pattern(signature).search(text).group().splitlines()[0]
            apply(name, signature, "multi_audio", ("0x1", "return"), words - int(" static " in declaration))

    return edits

