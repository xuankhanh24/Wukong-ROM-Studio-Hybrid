"""Power button hook transformations and standalone decoded-smali CLI."""
from __future__ import annotations

import re

BRIDGE = "Lcom/wukong/manager/WukongPowerKeyBridge;"


def transform(text, helpers):
    bridge = BRIDGE
    gestures = re.findall(r"(?m)^\.method[^\n]*\s(onKeyGesture\(L[^;)]+;\)V)[ \t]*$", text)
    if len(gestures) > 1:
        raise helpers.PatchError(f"Expected one object onKeyGesture callback, found {len(gestures)}")
    def gesture(method):
        if bridge + "->handleGesture" in method:
            return method
        if ":wk_power_original" in method or ":cond_orig_gesture" in method:
            raise helpers.PatchError("Power gesture label collision")
        return helpers._entry(method, f"""    # === [WUKONG POWER REMAP HOOK] ===
    invoke-static/range {{p0 .. p1}}, {bridge}->handleGesture(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_orig_gesture
    return-void
    :cond_orig_gesture
""", 2)
    if gestures:
        text = helpers._edit(text, gestures[0], gesture)
    else:
        # ColorOS 16.0.10 uses the legacy SingleKeyGestureDetector ABI.
        # Validate both callbacks before transforming either one. p3 is the
        # count; p1/p2 are the long timestamp and p4 is the display ID.
        signatures = ("onLongPress(J)V", "onMultiPress(JII)V")
        for signature in signatures:
            match = helpers._pattern(signature).search(text)
            if not match or re.search(r"\b(static|abstract|native)\b", match.group().splitlines()[0]):
                raise helpers.PatchError(f"Unsupported power callback ABI: missing instance {signature}")

        def legacy(method, snippet, words):
            if "# === [WUKONG LEGACY POWER REMAP] ===" in method:
                return method
            if ":wk_power_" in method:
                raise helpers.PatchError("Power callback label collision")
            return helpers._entry(method, "    # === [WUKONG LEGACY POWER REMAP] ===\n" + snippet, words)

        text = helpers._edit(text, signatures[0], lambda method: legacy(method, f"""    invoke-static/range {{p0 .. p0}}, {bridge}->onLongPress(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :wk_power_original
    return-void
    :wk_power_original
""", 3))
        text = helpers._edit(text, signatures[1], lambda method: legacy(method, f"""    const/4 v0, 0x2
    if-ne p3, v0, :wk_power_check_triple
    invoke-static/range {{p0 .. p0}}, {bridge}->onDoublePress(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :wk_power_original
    return-void
    :wk_power_check_triple
    const/4 v0, 0x3
    if-ne p3, v0, :wk_power_original
    invoke-static/range {{p0 .. p0}}, {bridge}->onTriplePress(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :wk_power_original
    return-void
    :wk_power_original
""", 5))

    superclass = re.search(r"(?m)^\.super\s+(L[^\s]+;)", text)
    if not superclass:
        raise helpers.PatchError("Missing superclass for power rule")

    new_gmp_method = f""".method public getMaxMultiPressCount()I
    .registers 3

    invoke-super {{p0}}, {superclass[1]}->getMaxMultiPressCount()I
    move-result v0
    invoke-static {{p0, v0}}, {bridge}->getMaxCount(Ljava/lang/Object;I)I
    move-result v0
    return v0
.end method"""

    signature = "getMaxMultiPressCount()I"
    if not helpers._pattern(signature).search(text):
        text += f"\n{new_gmp_method}\n"
    else:
        def max_count(method):
            if bridge + "->getMaxCount" in method:
                return method
            declaration = re.search(r"\.(locals|registers)\s+(\d+)", method)
            if not declaration:
                raise helpers.PatchError("getMaxMultiPressCount: missing register declaration")
            owner_register = int(declaration[2]) - (declaration[1] == "registers")

            def hook_return(match):
                indent, register = match[1], match[2]
                result_register = owner_register if register == "p0" else int(register[1:])
                if owner_register <= 15 and result_register <= 15 and register != "p0":
                    invoke = f"invoke-static {{p0, {register}}}, {bridge}->getMaxCount(Ljava/lang/Object;I)I"
                else:
                    # 35c invokes accept only four-bit physical registers.
                    invoke = f"invoke-static/range {{{register} .. {register}}}, {bridge}->getMaxCount(I)I"
                return f"{indent}{invoke}\n{indent}move-result {register}\n{match[0]}"

            result, count = re.subn(
                r"(?m)^([ \t]*)return ([vp]\d+)[ \t]*$",
                hook_return, method)
            if not count:
                raise helpers.PatchError("getMaxMultiPressCount: no integer return")
            return result
        text = helpers._edit(text, signature, max_count)

    signature = "supportLongPress()Z"
    if helpers._pattern(signature).search(text):
        def support_long_press(method):
            if bridge + "->isMasterEnabled" in method:
                return method
            if ":wk_power_support_original" in method:
                raise helpers.PatchError("Power support label collision")
            return helpers._entry(method, f"""    invoke-static/range {{p0 .. p0}}, {bridge}->isMasterEnabled(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :wk_power_support_original
    return v0
    :wk_power_support_original
""", 1)
        text = helpers._edit(text, signature, support_long_press)
    return text


def main():
    if __package__:
        from .patch_features import main as run
    else:
        from patch_features import main as run
    run(default_patch="power_button_remap")


if __name__ == "__main__":
    main()

