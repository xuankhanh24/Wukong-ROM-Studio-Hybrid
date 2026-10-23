// Read only the saved recipe; current form/catalog defaults are not job history.
const groups = [
  { mod: "Launcher_mod", field: "launcherFeatures", features: {
    global_region: "featureGlobalRegion", recents: "featureRecents", dock: "featureDock",
    taskbar: "featureTaskbar", feed: null, search: "featureSearch",
    quick_search: "featureQuickSearch", gestures: "featureGestures", ram: "featureRam"
  } },
  { mod: "Fix_noti", field: "fixNotiFeatures", features: {
    level1: "featureLevel1", level2: "featureLevel2"
  } },
  { mod: "WK_Manager", field: "wkManagerPatches", features: {
    keybox_manager: "featureKeybox", play_integrity_spoof: null, gamespoof: null,
    hma_privacy_spoof: "featureHma", kernel_manager: "featureKernel",
    power_button_remap: "featurePower", multi_window: "featureMultiWindow",
    disable_flag_secure: "featureSecure", black_window: "featureBlackWindow", multi_audio: "featureMultiAudio"
  } }
];
const names = { feed: "Google Feed", play_integrity_spoof: "Play Integrity Spoof", gamespoof: "Game Spoof" };

export function jobPatchSelections(build = {}, translate) {
  const mods = Array.isArray(build.mods) ? build.mods : [];
  return groups.filter(({ mod }) => mods.includes(mod)).map(({ mod, field, features }) => {
    const saved = build[field];
    const selected = Array.isArray(saved) ? [...new Set(saved)] : null;
    let mode;
    if (selected === null) {
      mode = mod === "Launcher_mod" ? "launcherBundled" : "jobPatchLegacy";
    } else if (!selected.length) {
      mode = "jobPatchNone";
    } else {
      mode = mod === "Launcher_mod" ? "jobPatchStock" : "jobPatchSelected";
    }
    return {
      mod, mode: translate(mode), count: selected?.length ?? null,
      total: Object.keys(features).length,
      patches: (selected || []).map(id => ({
        id, label: Object.hasOwn(features, id) && features[id]
          ? translate(features[id]) : names[id] || id
      }))
    };
  });
}
