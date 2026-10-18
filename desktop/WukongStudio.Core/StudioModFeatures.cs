namespace WukongStudio.Core;

public sealed record StudioModFeature(string Id, string Label, bool DefaultSelected);

public static class StudioModFeatures
{
    public static IReadOnlyList<StudioModFeature> Launcher { get; } = [
        new("global_region", "Bỏ giới hạn CN / Global region", true),
        new("recents", "Đa nhiệm máy tính bảng / Tablet recents", false),
        new("dock", "Làm mờ thanh dock / Dock blur", false),
        new("taskbar", "Mở rộng thanh tác vụ / Expanded taskbar", false),
        new("feed", "Google Feed", false),
        new("search", "Thanh tìm kiếm tùy chỉnh / Custom search bar", false),
        new("quick_search", "Tìm kiếm nhanh Google / Google QSB", false),
        new("gestures", "Cử chỉ vuốt xuống / Swipe-down gestures", false),
        new("ram", "Hiển thị RAM đa nhiệm / Recents RAM", false)
    ];
    public static IReadOnlyList<StudioModFeature> FixNoti { get; } = [
        new("level1", "LV1 · Global baseline — cân bằng pin / Balanced", true),
        new("level2", "LV2 · Fix thông báo đầy đủ / Full notification fix", false)
    ];
}
