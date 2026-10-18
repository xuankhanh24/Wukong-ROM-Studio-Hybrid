"""Relocated legacy patch code; existing function bodies are unchanged."""
from __future__ import annotations

import re
import sys
from dataclasses import asdict
from pathlib import Path

_PATCH_DIR = str(Path(__file__).resolve().parent)
if _PATCH_DIR not in sys.path:
    sys.path.insert(0, _PATCH_DIR)

if __package__:
    from .smali_helpers import (
        DISABLE_FLAG_SECURE_MARKER,
        PatchReport,
        WkManagerPatchError,
        _code,
        _edit_method_by_name,
        _patch_after_directive,
        _replace_method_after_directive,
    )
else:
    from smali_helpers import (
        DISABLE_FLAG_SECURE_MARKER,
        PatchReport,
        WkManagerPatchError,
        _code,
        _edit_method_by_name,
        _patch_after_directive,
        _replace_method_after_directive,
    )


def _patch_gemini_button_in_register_settings(method: str) -> str:
    gap = r"(?:(?:[ \t]*\n)|(?:[ \t]*\.line[^\n]*\n))*"
    pattern = re.compile(
        r"(?m)"
        r"^[ \t]*invoke-static \{\}, "
        r"Lcom/oplus/content/OplusFeatureConfigManager;->getInsta(?:cne|nce)"
        r"\(\)Lcom/oplus/content/OplusFeatureConfigManager;[ \t]*\n"
        + gap
        + r"[ \t]*move-result-object (?P<manager>[vp][0-9]+)[ \t]*\n"
        + gap
        + r"[ \t]*const-string(?:/jumbo)? (?P<feature>[vp][0-9]+), "
        + re.escape('"oplus.software.speech_assist_for_breeno"')
        + r"[ \t]*\n"
        + gap
        + r"[ \t]*invoke-virtual \{(?P=manager), (?P=feature)\}, "
        r"Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature"
        r"\(Ljava/lang/String;\)Z[ \t]*\n"
        + gap
        + r"[ \t]*move-result (?P<result>[vp][0-9]+)[ \t]*$"
    )
    matches = list(pattern.finditer(method))
    if len(matches) != 1:
        raise WkManagerPatchError(
            f"PhoneWindowManagerExtImpl registerSettingsForOplusLocked gemini button: "
            f"expected one speech assist feature probe, found {len(matches)}"
        )
    result_register = matches[0].group("result")
    replacement = _code(
        f"""
            const-string/jumbo {result_register}, "gemini_button"

            invoke-static {{{result_register}}}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;)I

            move-result {result_register}

            if-eqz {result_register}, :cond_wk_gemini_button

            const/4 {result_register}, 0x0

            goto :goto_wk_gemini_button

            :cond_wk_gemini_button
            const/4 {result_register}, 0x1

            :goto_wk_gemini_button
        """
    )
    return method[: matches[0].start()] + replacement + method[matches[0].end() :]


def patch_oplus_services_decoded(
    decoded: Path,
    selected_patches: Iterable[str] | None = None,
) -> dict[str, int | str]:
    if __package__:
        from .patch_features import patch_decoded
    else:
        from patch_features import patch_decoded

    if selected_patches is None:
        patches = ["disable_flag_secure", "black_window", "multi_window", "power_button_remap"]
    else:
        patches = [p for p in selected_patches if p in ("multi_window", "power_button_remap", "disable_flag_secure", "black_window")]

    if not patches:
        return asdict(PatchReport(jar="oplus-services.jar"))

    res = patch_decoded(decoded, patches, jar="oplus-services")
    return asdict(PatchReport(jar="oplus-services.jar", patchedMethods=res.get("patchedMethods", 0)))


def patch_disable_flag_secure_oplus_services_decoded(decoded: Path) -> dict[str, int | str]:
    """Apply the standalone disable-``FLAG_SECURE`` guide to oplus-services.jar."""
    report = PatchReport(jar="oplus-services.jar")
    patches = [
        (
            "com.android.server.wm.IOplusWindowManagerServiceEx",
            "dumpWindowsForScreenShot(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z",
            r'^[ \t]*\.param p3, "args".*$',
            """
                const/4 v0, 0x1

                return v0
            """,
        ),
        (
            "com.android.server.wm.OplusLongshotMainWindow",
            "hasSecure()Z",
            r"^[ \t]*\.(?:registers|locals) [0-9]+[ \t]*$",
            """
                const/4 v0, 0x0

                return v0
            """,
        ),
        (
            "com.android.server.wm.OplusWindowDumpUtils",
            "isSecureWindow(Lcom/android/server/wm/WindowState;)Z",
            r'^[ \t]*\.param p1, "w".*$',
            """
                const/4 v0, 0x0

                return v0
            """,
        ),
        (
            "com.android.server.wm.OplusWindowManagerServiceEx",
            "dumpWindowsForScreenShot(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z",
            r'^[ \t]*\.param p3, "args".*$',
            """
                const/4 v0, 0x1

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

