.class public Lcom/android/launcher3/uioverrides/states/BackgroundAppState;
.super Lcom/android/launcher3/uioverrides/states/OverviewState;
.source "BackgroundAppState.java"


# static fields
.field private static final STATE_FLAGS:I


# instance fields
.field private mIgnoreContentAnim:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_OVERVIEW_UI:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_INACCESSIBLE:I

    .line 6
    .line 7
    or-int/2addr v0, v1

    .line 8
    or-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_CLOSE_POPUPS:I

    .line 11
    .line 12
    or-int/2addr v0, v1

    .line 13
    sput v0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->STATE_FLAGS:I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 2
    sget v0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->STATE_FLAGS:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(III)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->mIgnoreContentAnim:Z

    return-void
.end method

.method public static getOverviewScaleAndOffsetForBackgroundState(Lcom/android/launcher3/BaseDraggingActivity;)[F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aput p0, v0, v1

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    aput p0, v0, v1

    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z
    .registers 2

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getBlur(Landroid/content/Context;F)F
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isDynamicBlurAvailable(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-nez v0, :cond_12

    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 10
    .line 11
    if-eqz p2, :cond_d

    .line 12
    .line 13
    return v1

    .line 14
    :cond_d
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getBlur(Landroid/content/Context;)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_12
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1e

    .line 22
    .line 23
    const/high16 p0, -0x40800000    # -1.0f

    .line 24
    .line 25
    cmpl-float p0, p2, p0

    .line 26
    .line 27
    if-nez p0, :cond_1d

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1d
    return p2

    .line 31
    :cond_1e
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getBlur(Landroid/content/Context;)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public getBlurUnchecked(Landroid/content/Context;)F
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isBlurUnavailable(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz p1, :cond_f

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 10
    .line 11
    if-eqz p0, :cond_d

    .line 12
    .line 13
    return v0

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_f
    return v0
.end method

.method public getDepth(Landroid/content/Context;F)F
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isDynamicBlurAvailable(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 13
    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    return p2

    .line 17
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public getDepthUnchecked(Landroid/content/Context;)F
    .registers 2

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getDragLayerScaleAndAlpha(Lcom/android/launcher3/Launcher;)[F
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->isInAllApps(Lcom/android/launcher3/Launcher;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    const v0, 0x3f6b851f    # 0.92f

    .line 12
    .line 13
    .line 14
    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->isInAllApps(Lcom/android/launcher3/Launcher;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1e

    .line 19
    .line 20
    invoke-static {}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOpeningAnim()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1e

    .line 29
    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v1, 0x0

    .line 32
    :goto_1f
    const/4 p0, 0x2

    .line 33
    new-array p0, p0, [F

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    aput v0, p0, p1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    aput v1, p0, p1

    .line 40
    .line 41
    return-object p0
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getIconBlur(Landroid/content/Context;F)F
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return p2

    .line 6
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/states/OPlusBaseState;->getIconBlur(Landroid/content/Context;F)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public getOverviewFullscreenProgress()F
    .registers 1

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return p0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->getOverviewScaleAndOffsetForBackgroundState(Lcom/android/launcher3/BaseDraggingActivity;)[F

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F
    .registers 2

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getVerticalProgress(Lcom/android/launcher3/Launcher;)F
    .registers 2

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return p0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1d

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntrySupport()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1b

    .line 24
    .line 25
    const/16 p0, 0x1002

    .line 26
    .line 27
    return p0

    .line 28
    :cond_1b
    const/4 p0, 0x2

    .line 29
    return p0

    .line 30
    :cond_1d
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    and-int/lit8 p0, p0, -0x1d

    .line 35
    .line 36
    return p0
.end method

.method public getWorkspaceAlpha(Lcom/android/launcher3/Launcher;)Ljava/lang/Float;
    .registers 2

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    .line 1
    new-instance p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    .line 2
    .line 3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .registers 2

    .line 1
    if-eqz p1, :cond_17

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->taskbar()Lcom/android/launcher/layoutparam/TaskBarParam;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/android/launcher/layoutparam/TaskBarParam;->isTaskbarPresentInApps()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_17

    .line 16
    .line 17
    sget p0, Lcom/android/launcher3/R$color;->taskbar_background:I

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_17
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public ignoreDepthAndAlphaChange()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->mIgnoreContentAnim:Z

    .line 2
    .line 3
    return p0
.end method

.method public isTaskbarAlignedWithHotseat(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_6
    invoke-super {p0, p1}, Lcom/android/launcher3/states/OPlusBaseState;->isTaskbarAlignedWithHotseat(Lcom/android/launcher3/Launcher;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_6
    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public setIgnoreContentAnimFlag(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->mIgnoreContentAnim:Z

    .line 2
    .line 3
    return-void
.end method
