"""Multi-window hook transformations and standalone decoded-smali CLI."""
from __future__ import annotations

import re

BRIDGE = "Lcom/wukong/manager/WukongMultiWindowBridge;"


def transform(service, utils, helpers):
    bridge = BRIDGE
    def max_windows(method):
        method = helpers._remove_legacy(method)
        if bridge in method:
            return method
        if ":wk_mw_original" in method:
            raise helpers.PatchError("Multi-window label collision")
        return helpers._entry(method, f"""    invoke-static/range {{p1 .. p1}}, {bridge}->getHookedMaxWinNum(I)I
    move-result v0
    if-lez v0, :wk_mw_original
    return v0
    :wk_mw_original
""", 2)
    service = helpers._edit(service, "getMaxWinNum(I)I", max_windows)
    # Undo only the old known override, preserving stock support detection.
    if helpers._pattern("isSupportMultiMode()Z").search(utils):
        utils = helpers._edit(utils, "isSupportMultiMode()Z", helpers._remove_legacy)
    def max_tasks(method):
        if bridge in method:
            return method
        # Retain the ROM's own fallback when the manager switch is off.
        result, count = re.subn(
            r"(?m)^([ \t]*)return ([vp]\d+)[ \t]*$",
            lambda m: f"{m[1]}invoke-static/range {{{m[2]} .. {m[2]}}}, {bridge}->getMaxFlexibleTaskNum(I)I\n"
                      f"{m[1]}move-result {m[2]}\n{m[0]}", method)
        if not count:
            raise helpers.PatchError("getMaxFlexibleTaskNum: no integer return")
        return result
    return service, helpers._edit(utils, "getMaxFlexibleTaskNum()I", max_tasks)


def main():
    if __package__:
        from .patch_features import main as run
    else:
        from patch_features import main as run
    run(default_patch="multi_window")


if __name__ == "__main__":
    main()
