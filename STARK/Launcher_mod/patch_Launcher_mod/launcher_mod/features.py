"""User-facing mod choices shared by the terminal, resources and helper compiler."""
from dataclasses import dataclass
import re


@dataclass(frozen=True)
class Feature:
    id: str
    title: str
    description: str
    preferences: tuple[str, ...]
    mod_settings: bool = True


FEATURES = (
    Feature('recents', 'Đa nhiệm máy tính bảng', 'Bố cục lưới và chuyển cảnh đa nhiệm.', ('wk_tablet',)),
    Feature('dock', 'Làm mờ thanh dock', 'Tùy chọn nền mờ của dock.', ('wk_dock',)),
    Feature('taskbar', 'Mở rộng thanh tác vụ', 'Ứng dụng gần đây/đề xuất, slider và sửa kích thước dock A17.', ('wk_thanh', 'wk_taskbar_expand_count')),
    Feature('feed', 'Google Feed', 'Trang Google Feed bên trái Home.', ('wk_gg',)),
    Feature('search', 'Thanh tìm kiếm dưới cùng tùy chỉnh', 'Chọn ứng dụng/lối tắt và biểu tượng cho thanh tìm kiếm.', ('launcher_breeno_entry_enable', 'wk_search_package')),
    Feature('quick_search', 'Hộp tìm kiếm nhanh Google trên Home', 'Khôi phục mục cài đặt và widget QSB native.', ()),
    Feature('gestures', 'Cử chỉ vuốt xuống tùy chỉnh', 'Mở ứng dụng, chia trái/phải và bảng hệ thống.', ('launcher_slide_down', 'wk_slide_down_package', 'wk_slide_down_package_left', 'wk_slide_down_package_right')),
    Feature('ram', 'Hiển thị thông tin RAM', 'Mở khóa hiển thị RAM native trong đa nhiệm; dùng công tắc RAM của hệ thống.', (), mod_settings=False),
)
FEATURE_IDS = frozenset(feature.id for feature in FEATURES)
PREFERENCE_FEATURE = {key: feature.id for feature in FEATURES for key in feature.preferences}


class SelectionCancelled(Exception):
    pass


def validate_features(selected=None):
    selected = FEATURE_IDS if selected is None else frozenset(selected)
    unknown = selected - FEATURE_IDS
    if unknown:
        raise ValueError('Unknown mods: ' + ', '.join(sorted(unknown)))
    if not selected:
        raise ValueError('Chọn ít nhất một mod; dùng APK stock nếu không cần mod.')
    return selected


def parse_features(value):
    if value.strip().lower() == 'all':
        return FEATURE_IDS
    return validate_features(re.split(r'[\s,]+', value.strip()) if value.strip() else [])


def preference_enabled(key, selected):
    feature = PREFERENCE_FEATURE.get(key)
    return feature is None or feature in selected


def needs_mod_settings(selected):
    return any(feature.mod_settings and feature.id in selected for feature in FEATURES)


def print_features(output=print):
    for index, feature in enumerate(FEATURES, 1):
        output(f'{index}. {feature.id}: {feature.title} — {feature.description}')


def choose_features(input_fn=input, output=print):
    selected = set(FEATURE_IDS)
    while True:
        output('\nChọn mod cho bản build (không tự bật công tắc trên điện thoại):')
        for index, feature in enumerate(FEATURES, 1):
            mark = 'x' if feature.id in selected else ' '
            output(f'  {index}. [{mark}] {feature.title} ({feature.id})')
        output('Nhập số để đổi tick (vd: 1 3); all: tất cả; none: bỏ hết; done: build; q: hủy.')
        try:
            answer = input_fn('> ').strip().lower()
        except (EOFError, KeyboardInterrupt):
            raise SelectionCancelled() from None
        if answer in {'q', 'cancel'}:
            raise SelectionCancelled()
        if answer == 'done':
            if selected:
                return frozenset(selected)
            output('Chưa chọn mod nào.')
        elif answer == 'all':
            selected = set(FEATURE_IDS)
        elif answer == 'none':
            selected.clear()
        else:
            tokens = re.split(r'[\s,]+', answer)
            if not tokens or any(not token.isdigit() or not 1 <= int(token) <= len(FEATURES) for token in tokens):
                output('Lựa chọn không hợp lệ.')
                continue
            for index in set(map(int, tokens)):
                feature = FEATURES[index - 1].id
                selected.symmetric_difference_update({feature})


def java_feature_source(selected=None):
    selected = validate_features(selected)
    constants = '\n'.join(f'    public static final boolean {feature.id.upper()} = {str(feature.id in selected).lower()};' for feature in FEATURES)
    cases = '\n'.join(f'            case "{key}": return {feature.upper()};' for key, feature in PREFERENCE_FEATURE.items())
    return f'''package android.preference;

/** Generated from the build selection. Never read from user preferences. */
public final class BuildFeatures {{
{constants}
    private BuildFeatures() {{}}
    public static boolean allowsPreference(String key) {{
        if (key == null) return true;
        switch (key) {{
{cases}
            default: return true;
        }}
    }}
}}
'''
