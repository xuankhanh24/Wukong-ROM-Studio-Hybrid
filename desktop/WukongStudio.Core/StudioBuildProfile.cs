using System.Text.Json;

namespace WukongStudio.Core;

public sealed record StudioBuildProfile(
    int SchemaVersion,
    string Name,
    string ModVersion,
    string Preset,
    IReadOnlyList<string> ModNames,
    IReadOnlyList<string> DebloatPaths,
    IReadOnlyList<string> EnabledSteps,
    bool NotifyTelegram,
    IReadOnlyList<string>? WkManagerPatches = null,
    IReadOnlyList<string>? LauncherFeatures = null,
    IReadOnlyList<string>? FixNotiFeatures = null)
{
    public const int CurrentSchemaVersion = 1;

    public static StudioBuildProfile Create(
        string name,
        string modVersion,
        string preset,
        IEnumerable<string> modNames,
        IEnumerable<string> debloatPaths,
        IEnumerable<string> enabledSteps,
        bool notifyTelegram,
        IEnumerable<string>? wkManagerPatches = null,
        IEnumerable<string>? launcherFeatures = null,
        IEnumerable<string>? fixNotiFeatures = null) => new(
            CurrentSchemaVersion,
            string.IsNullOrWhiteSpace(name) ? "Wukong build profile" : name.Trim(),
            modVersion.Trim(),
            NormalizePreset(preset),
            NormalizeList(modNames),
            NormalizeList(debloatPaths),
            NormalizeList(enabledSteps),
            notifyTelegram,
            wkManagerPatches is null ? null : NormalizeList(wkManagerPatches),
            NormalizeFeatures(launcherFeatures, StudioModFeatures.Launcher, false),
            NormalizeFeatures(fixNotiFeatures, StudioModFeatures.FixNoti, true));

    public string ToJson() => JsonSerializer.Serialize(this, JsonOptions);

    public static StudioBuildProfile Parse(string json)
    {
        var profile = JsonSerializer.Deserialize<StudioBuildProfile>(json, JsonOptions)
            ?? throw new InvalidDataException("Build profile is empty.");
        if (profile.SchemaVersion != CurrentSchemaVersion)
        {
            throw new InvalidDataException($"Unsupported build profile schema: {profile.SchemaVersion}.");
        }
        if (string.IsNullOrWhiteSpace(profile.ModVersion))
        {
            throw new InvalidDataException("Build profile does not contain a MOD version.");
        }
        return Create(
            profile.Name,
            profile.ModVersion,
            profile.Preset,
            profile.ModNames ?? [],
            profile.DebloatPaths ?? [],
            profile.EnabledSteps ?? [],
            profile.NotifyTelegram,
            profile.WkManagerPatches,
            profile.LauncherFeatures,
            profile.FixNotiFeatures);
    }

    private static string NormalizePreset(string preset) => preset.Trim().ToLowerInvariant() switch
    {
        "lite" => "lite",
        "resume" => "resume",
        "both" => "both",
        "custom" => "custom",
        _ => "custom",
    };

    private static IReadOnlyList<string>? NormalizeFeatures(IEnumerable<string>? values,
        IReadOnlyList<StudioModFeature> definitions, bool singleChoice)
    {
        if (values is null) return null;
        var result = NormalizeList(values);
        if (result.Any(value => !definitions.Any(feature => feature.Id == value)) || (singleChoice && result.Count > 1))
            throw new InvalidDataException("Invalid MOD feature selection. Fix_noti allows LV1 or LV2, not both.");
        return result;
    }

    private static IReadOnlyList<string> NormalizeList(IEnumerable<string> values) => values
        .Select(value => value.Trim())
        .Where(value => value.Length > 0)
        .Distinct(StringComparer.OrdinalIgnoreCase)
        .OrderBy(value => value, StringComparer.OrdinalIgnoreCase)
        .ToArray();

    private static readonly JsonSerializerOptions JsonOptions = new(JsonSerializerDefaults.Web)
    {
        PropertyNameCaseInsensitive = true,
        WriteIndented = true,
    };
}
