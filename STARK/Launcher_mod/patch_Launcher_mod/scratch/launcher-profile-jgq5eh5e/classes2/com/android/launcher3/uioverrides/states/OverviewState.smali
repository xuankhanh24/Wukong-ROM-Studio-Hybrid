.class public Lcom/android/launcher3/uioverrides/states/OverviewState;
.super Lcom/android/launcher3/LauncherState;
.source "OverviewState.java"


# static fields
.field private static final STATE_FLAGS:I

.field private static final TAG:Ljava/lang/String; = "OverviewState"

.field protected static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field protected mIsLastStateAllApps:Z

.field private mIsTaskViewRemoving:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/launcher3/uioverrides/states/OverviewState;->sTempRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    sget v0, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_OVERVIEW_UI:I

    .line 13
    .line 14
    or-int/2addr v0, v1

    .line 15
    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_INACCESSIBLE:I

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_CLOSE_POPUPS:I

    .line 19
    .line 20
    or-int/2addr v0, v1

    .line 21
    sput v0, Lcom/android/launcher3/uioverrides/states/OverviewState;->STATE_FLAGS:I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 1
    sget v0, Lcom/android/launcher3/uioverrides/states/OverviewState;->STATE_FLAGS:I

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherState;-><init>(III)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsTaskViewRemoving:Z

    return-void
.end method

.method public static synthetic a(ZLcom/android/quickstep/views/TaskView;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->lambda$onBackPressed$0(ZLcom/android/quickstep/views/TaskView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$001(Lcom/android/launcher3/uioverrides/states/OverviewState;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$101(Lcom/android/launcher3/uioverrides/states/OverviewState;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/uioverrides/states/OverviewState;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->lambda$onBackPressed$1(Lcom/android/launcher3/Launcher;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/uioverrides/states/OverviewState;Lcom/android/launcher/folder/download/db/a;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->lambda$onBackPressed$2(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/uioverrides/states/OverviewState;)V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsTaskViewRemoving:Z

    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultSwipeHeight(Lcom/android/launcher3/Launcher;)F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/android/quickstep/util/LayoutUtils;->getDefaultSwipeHeight(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$onBackPressed$0(ZLcom/android/quickstep/views/TaskView;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->launchTasks()V

    .line 4
    .line 5
    .line 6
    :cond_5
    return-void
.end method

.method private synthetic lambda$onBackPressed$1(Lcom/android/launcher3/Launcher;)V
    .registers 12

    .line 1
    invoke-static {}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->getTopWindowZoom()Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportPanoramicFold()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    move v1, v3

    goto :goto_12

    :cond_11
    :goto_11
    move v1, v2

    .line 19
    :goto_12
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportPanoramicFold()Z

    move-result v4

    if-eqz v4, :cond_25

    if-eqz v0, :cond_25

    const/4 v0, 0x3

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 32
    const-string/jumbo v5, "quitRecentsFlag"

    .line 35
    invoke-static {v4, v5, v0}, Lcom/oplus/quickstep/multiwindow/FlexibleWindowReflectManager;->notifyWmsLauncherStatusForPanorama(Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 38
    :cond_25
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 44
    instance-of v4, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v4, :cond_54

    .line 48
    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    .line 50
    invoke-virtual {v5}, Lcom/android/quickstep/OplusBaseRecentsModel;->hasPanoramaFlexibleTask()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 56
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOplusPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 62
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOplusPanoramaLayout()Lcom/android/quickstep/views/OplusPanoramaLayout;

    move-result-object v5

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v6, Lcom/android/launcher3/anim/iconsurfacemanager/a;

    move-object v7, v0

    .line 72
    check-cast v7, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v8, 0x2

    .line 75
    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/anim/iconsurfacemanager/a;-><init>(Ljava/lang/Object;I)V

    .line 78
    invoke-virtual {v5, v6}, Lcom/android/quickstep/views/OplusPanoramaLayout;->launchPanoramaTasksAnimatedIfNeed(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_54

    return-void

    .line 85
    :cond_54
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v7, "onBackPressed: pendingOps taskView is null: "

    .line 94
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_63

    goto :goto_64

    :cond_63
    move v2, v3

    .line 101
    :goto_64
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, " isTaskViewRemoving: "

    .line 106
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v2, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsTaskViewRemoving:Z

    .line 111
    const-string v3, "OverviewState"

    .line 113
    invoke-static {v3, v6, v2}, La1/a;->b(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v5, :cond_133

    .line 118
    iget-boolean v2, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsTaskViewRemoving:Z

    if-nez v2, :cond_133

    .line 122
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_91

    .line 128
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v2

    .line 132
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    .line 136
    invoke-virtual {v2, v6}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isQuickSearchBoxPkg(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 142
    # invokes: Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V
    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->access$001(Lcom/android/launcher3/uioverrides/states/OverviewState;Lcom/android/launcher3/Launcher;)V

    return-void

    .line 146
    :cond_91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 150
    sget-object v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 152
    invoke-virtual {v2, p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setClickBackTime(J)V

    .line 155
    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getClickTaskTime()J

    move-result-wide v6

    sub-long v6, p0, v6

    .line 161
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_ab

    return-void

    .line 172
    :cond_ab
    invoke-virtual {v2, p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setClickTaskTime(J)V

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v7, "onBackPressed: isRecentView: "

    .line 180
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    const-string v7, ", now:"

    .line 188
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_12d

    .line 203
    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 205
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_127

    .line 211
    iget-boolean p0, v0, Lcom/android/quickstep/views/RecentsView;->isAutoFocusToNextPageInOverviewAnimatorStarted:Z

    if-nez p0, :cond_dc

    .line 215
    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    move-result p0

    if-eqz p0, :cond_127

    .line 221
    :cond_dc
    sget-object p0, Lcom/oplus/quickstep/utils/VirtualBtnToRecentContinuationHelper;->INSTANCE:Lcom/oplus/quickstep/utils/VirtualBtnToRecentContinuationHelper;

    .line 223
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/VirtualBtnToRecentContinuationHelper;->tryToBlock(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    move-result p0

    if-nez p0, :cond_11e

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    .line 231
    const-string/jumbo p1, "onBackPressed: recentView.getNextPage(): "

    .line 234
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getNextPage()I

    move-result p1

    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getNextPage()I

    move-result p0

    .line 255
    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    .line 258
    invoke-static {}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getRecentLaunchFromButtonAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_11e

    .line 264
    invoke-static {}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getRecentLaunchFromButtonAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_11e

    .line 274
    const-string/jumbo p0, "onBackPressed: will end RecentLaunchFromButtonAnimatorSet"

    .line 277
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getRecentLaunchFromButtonAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    .line 287
    :cond_11e
    new-instance p0, Lcom/android/launcher3/uioverrides/states/b;

    .line 289
    invoke-direct {p0, v1, v5}, Lcom/android/launcher3/uioverrides/states/b;-><init>(ZLcom/android/quickstep/views/TaskView;)V

    .line 292
    invoke-virtual {v0, p0, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_136

    :cond_127
    if-eqz v1, :cond_136

    .line 298
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->launchTasks()V

    goto :goto_136

    :cond_12d
    if-eqz v1, :cond_136

    .line 304
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->launchTasks()V

    goto :goto_136

    .line 308
    :cond_133
    # invokes: Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V
    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->access$101(Lcom/android/launcher3/uioverrides/states/OverviewState;Lcom/android/launcher3/Launcher;)V

    :cond_136
    :goto_136
    return-void
.end method

.method private synthetic lambda$onBackPressed$2(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 3
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getWaitingGoHomeFinish()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_b
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsTaskViewRemoving:Z

    .line 15
    const-string p0, "OverviewState"

    .line 17
    const-string/jumbo v1, "onBackPressed: setWaitingGoHomeFinish false when animation end."

    .line 20
    invoke-static {p0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setWaitingGoHomeFinish(Z)V

    return-void
.end method

.method public static newBackgroundState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newModalTaskState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newSplitSelectState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newSwitchState(I)Lcom/android/launcher3/uioverrides/states/OverviewState;
    .registers 2

    .line 1
    new-instance v0, Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/states/QuickSwitchState;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z
    .registers 2

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_c

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/launcher/layoutparam/ConfigParam;->isTablet()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move p1, p0

    .line 14
    :goto_d
    if-nez p1, :cond_15

    .line 15
    .line 16
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_16

    .line 21
    .line 22
    :cond_15
    const/4 p0, 0x1

    .line 23
    :cond_16
    return p0
.end method

.method public getBlurUnchecked(Landroid/content/Context;)F
    .registers 2

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return p0
.end method

.method public getDepthUnchecked(Landroid/content/Context;)F
    .registers 2

    .line 1
    const-string/jumbo p0, "ro.launcher.depth.overview"

    const/4 p1, 0x1

    .line 5
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    goto :goto_e

    :cond_c
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_e
    return p0
.end method

.method public getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .registers 2

    .line 1
    sget p0, Lcom/android/launcher3/R$string;->accessibility_recent_apps:I

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getDragLayerScaleAndAlpha(Lcom/android/launcher3/Launcher;)[F
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->isInAllApps(Lcom/android/launcher3/Launcher;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_9

    .line 6
    .line 7
    const/high16 p0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    goto :goto_c

    .line 10
    :cond_9
    const p0, 0x3f6b851f    # 0.92f

    .line 11
    .line 12
    .line 13
    :goto_c
    const/4 p1, 0x2

    .line 14
    new-array p1, p1, [F

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aput p0, p1, v0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    const/4 v0, 0x1

    .line 21
    aput p0, p1, v0

    .line 22
    .line 23
    return-object p1
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getIsLastStateAllApps()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 2
    .line 3
    return p0
.end method

.method public getLauncherTaskViewAlpha(Lcom/android/launcher3/Launcher;)F
    .registers 2

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getLauncherTaskViewTouchable(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F
    .registers 2

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array p0, p0, [F

    .line 3
    .line 4
    fill-array-data p0, :array_8

    .line 5
    .line 6
    .line 7
    return-object p0

    .line 8
    nop

    .line 9
    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isBlurUnavailable(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    const/high16 p0, 0x3e800000    # 0.25f

    .line 10
    .line 11
    return p0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_9

    .line 6
    .line 7
    const/16 p0, 0x17c

    .line 8
    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 p0, 0x190

    .line 11
    .line 12
    :goto_b
    return p0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .registers 2

    .line 1
    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 2
    .line 3
    if-eqz p0, :cond_1b

    .line 4
    .line 5
    if-eqz p1, :cond_19

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntrySupport()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_19

    .line 22
    .line 23
    const/16 p0, 0x1002

    .line 24
    .line 25
    return p0

    .line 26
    :cond_19
    const/4 p0, 0x2

    .line 27
    return p0

    .line 28
    :cond_1b
    const/16 p0, 0x9d

    .line 29
    .line 30
    return p0
.end method

.method public getWorkspaceAlpha(Lcom/android/launcher3/Launcher;)Ljava/lang/Float;
    .registers 2

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    new-instance p1, Lcom/android/launcher3/uioverrides/states/OverviewState$2;

    .line 6
    .line 7
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/uioverrides/states/OverviewState$2;-><init>(Lcom/android/launcher3/uioverrides/states/OverviewState;Landroid/view/animation/Interpolator;)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_c
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_11

    .line 7
    .line 8
    new-instance p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    .line 9
    .line 10
    const p1, 0x3f6b851f    # 0.92f

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_11
    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .registers 2

    .line 1
    sget p0, Lcom/android/launcher3/R$attr;->overviewScrimColor:I

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isInAllApps(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_f

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 10
    .line 11
    if-eqz p0, :cond_d

    .line 12
    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 p0, 0x1

    .line 17
    :goto_10
    return p0
.end method

.method public isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    check-cast p1, Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_14

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->supportsVisualStashing()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_14

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p0, 0x0

    .line 22
    :goto_15
    return p0

    .line 23
    :cond_16
    invoke-super {p0, p1}, Lcom/android/launcher3/states/OPlusBaseState;->isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public onBackPressed(Lcom/android/launcher3/Launcher;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/launcher/folder/download/db/a;

    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lcom/android/launcher/folder/download/db/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7
    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 9
    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getRemovingTaskView()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 15
    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getAllTaskDismissRunning()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 21
    sget-boolean v1, Lcom/oplus/quickstep/delegates/touch/GridTouchDelegate;->isHandlingGridTaskViewTouch:Z

    if-eqz v1, :cond_19

    goto :goto_1d

    .line 26
    :cond_19
    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/a;->run()V

    goto :goto_5e

    .line 30
    :cond_1d
    :goto_1d
    const-string v1, "OverviewState"

    .line 32
    const-string/jumbo v2, "taskview is removing when back pressed"

    .line 35
    invoke-static {v1, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    .line 42
    instance-of v1, v1, Lcom/android/quickstep/views/RecentsView;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 47
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    .line 53
    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz p1, :cond_3c

    .line 57
    invoke-virtual {p1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    :cond_3c
    if-eqz v2, :cond_5b

    .line 63
    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 67
    new-instance v1, Lcom/android/launcher3/uioverrides/states/OverviewState$1;

    .line 69
    invoke-direct {v1, p0}, Lcom/android/launcher3/uioverrides/states/OverviewState$1;-><init>(Lcom/android/launcher3/uioverrides/states/OverviewState;)V

    .line 72
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    new-instance p1, Lcom/android/launcher/sellmode/a;

    const/4 v1, 0x2

    .line 78
    invoke-direct {p1, v1, p0, v0}, Lcom/android/launcher/sellmode/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v2, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setEndAction(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_5e

    .line 92
    :cond_5b
    invoke-virtual {v0}, Lcom/android/launcher/folder/download/db/a;->run()V

    :goto_5e
    return-void
.end method

.method public setIsLastStateAllApps(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/states/OverviewState;->mIsLastStateAllApps:Z

    .line 2
    .line 3
    return-void
.end method
