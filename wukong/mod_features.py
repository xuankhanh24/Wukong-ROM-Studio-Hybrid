"""Stable optional feature IDs shared by build validation and ROM patch dispatch."""
LAUNCHER_FEATURES = ('global_region', 'recents', 'dock', 'taskbar', 'feed', 'search',
                     'quick_search', 'gestures', 'ram')
FIX_NOTI_FEATURES = ('level1', 'level2')
DEFAULT_LAUNCHER_FEATURES = ('global_region',)


def normalize_features(value, field):
    if value is None:
        return None
    allowed = {'launcherFeatures': LAUNCHER_FEATURES, 'fixNotiFeatures': FIX_NOTI_FEATURES}[field]
    if not isinstance(value, list) or any(not isinstance(item, str) or item not in allowed for item in value):
        raise ValueError(f'{field} must be a list of supported feature IDs')
    result = list(dict.fromkeys(value))
    if field == 'fixNotiFeatures' and len(result) > 1:
        raise ValueError('Fix_noti: select only LV1 or LV2, not both')
    return result
