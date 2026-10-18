using WukongStudio.Core;

namespace WukongStudio.Tests;

public sealed class StudioBuildProfileTests
{
    [Fact]
    public void FixNotiDefaultsToLevelOneOnly()
    {
        Assert.Equal(new[] { "level1" }, StudioModFeatures.FixNoti
            .Where(feature => feature.DefaultSelected).Select(feature => feature.Id));
    }

    [Fact]
    public void FixNotiLevelsAreExclusiveAndEmptySelectionIsPreserved()
    {
        Assert.Throws<InvalidDataException>(() => StudioBuildProfile.Create(
            "test", "ColorOS_16.0.10", "custom", [], [], [], false,
            fixNotiFeatures: ["level1", "level2"]));
        var profile = StudioBuildProfile.Create("test", "ColorOS_16.0.10", "custom", [], [], [], false,
            launcherFeatures: [], fixNotiFeatures: []);
        var parsed = StudioBuildProfile.Parse(profile.ToJson());
        Assert.Empty(parsed.LauncherFeatures!);
        Assert.Empty(parsed.FixNotiFeatures!);
        Assert.Equal(2, StudioModFeatures.FixNoti.Count);
    }

    [Fact]
    public void RoundTripKeepsBuildConfigurationWithoutRomPath()
    {
        var profile = StudioBuildProfile.Create(
            "ColorOS Plus",
            "ColorOS_16.0.8",
            "custom",
            ["WK_Manager", "Fake_lock", "WK_Manager"],
            [@"my_stock\app\Browser"],
            ["apply_mod", "package_zip"],
            notifyTelegram: true,
            wkManagerPatches: ["multi_window", "power_button_remap"],
            launcherFeatures: ["global_region", "ram"],
            fixNotiFeatures: ["level1"]);

        var json = profile.ToJson();
        var loaded = StudioBuildProfile.Parse(json);

        Assert.Equal(profile.Name, loaded.Name);
        Assert.Equal(profile.ModVersion, loaded.ModVersion);
        Assert.Equal(profile.Preset, loaded.Preset);
        Assert.Equal(profile.DebloatPaths, loaded.DebloatPaths);
        Assert.Equal(profile.EnabledSteps, loaded.EnabledSteps);
        Assert.Equal(profile.NotifyTelegram, loaded.NotifyTelegram);
        Assert.Equal(profile.WkManagerPatches, loaded.WkManagerPatches);
        Assert.Equal(profile.LauncherFeatures, loaded.LauncherFeatures);
        Assert.Equal(profile.FixNotiFeatures, loaded.FixNotiFeatures);
        Assert.DoesNotContain("romPath", json, StringComparison.OrdinalIgnoreCase);
        Assert.Equal(["Fake_lock", "WK_Manager"], loaded.ModNames);
    }

    [Fact]
    public void FutureSchemaIsRejected()
    {
        const string json = """
            {
              "schemaVersion": 99,
              "name": "future",
              "modVersion": "ColorOS_16.0.8",
              "preset": "custom",
              "modNames": [],
              "debloatPaths": [],
              "enabledSteps": [],
              "notifyTelegram": false
            }
            """;

        Assert.Throws<InvalidDataException>(() => StudioBuildProfile.Parse(json));
    }
}
