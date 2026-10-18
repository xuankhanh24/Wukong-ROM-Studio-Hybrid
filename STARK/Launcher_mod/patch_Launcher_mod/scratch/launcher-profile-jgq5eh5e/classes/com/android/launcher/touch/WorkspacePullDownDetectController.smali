.class public Lcom/android/launcher/touch/WorkspacePullDownDetectController;
.super Ljava/lang/Object;
.source "WorkspacePullDownDetectController.java"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/touch/WorkspacePullDownDetectController$ActionQuiteContentObserver;
    }
.end annotation


# static fields
.field private static final BLUR_ANIMATE_SCALE:F = 0.6f

.field private static final BLUR_ANIMATE_THRESHOLD:F = 0.1f

.field private static final INVALID_POINT:I = -0x1

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final PULL_DOWN_ACTION_QUITE:Ljava/lang/String; = "shelf_or_search_quite_action_call_time"

.field private static final SCREEN_HEIGHT_SCALE_RADIO:F = 12.5f

.field private static final START_ACTIVITY_THRESHOLD:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WorkspacePullDownDetectController"

.field private static final TOP_AREA_DETECT_HEIGHT_RADIO:F = 3.0f

.field private static final VELOCITY_UNIT_PX_PER_MS:I = 0x1

.field private static final VELOCITY_UNIT_PX_PER_S:I = 0x3e8

.field private static final WAITE_FRACTION_TIME:I = 0x3e8

.field public static sGlobalSearchActivityName:Ljava/lang/String; = null

.field private static sOneHandedRegionRatio:D = 0.125


# instance fields
.field private mActionQuiteObserver:Lcom/android/launcher/touch/WorkspacePullDownDetectController$ActionQuiteContentObserver;

.field private mActivePointer:I

.field private mCanIntercept:Ljava/lang/Boolean;

.field private mGpuBoostFd:I

.field private mHiAssistantAppEnable:Z

.field private mIsHiAssistantSupport:Z

.field private mIsOneHandedModeEnabled:Z

.field private mIsPullDownCancel:Z

.field private mIsPullDownReady:Z

.field private mIsShelfSupport:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOneHandedContentObserver:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private mOneHandedGestureDomain:I

.field private mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

.field private mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

.field private mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

.field private mPullDownIsMove:Z

.field private mScaledTouchSlop:I

.field private mSlideDownType:I

.field private mStartAppDownY:F

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mVelocityDpPerSecond:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowHeight:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowHeight:I

    const/16 v1, 0x12c

    .line 9
    iput v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedGestureDomain:I

    .line 11
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsOneHandedModeEnabled:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownIsMove:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownCancel:Z

    .line 19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    iput-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivePointer:I

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mHiAssistantAppEnable:Z

    .line 29
    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mGpuBoostFd:I

    .line 31
    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 33
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 41
    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mScaledTouchSlop:I

    .line 43
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->createPullDownAnimator(Lcom/android/launcher/Launcher;)Lcom/android/launcher/touch/PullDownAnimator;

    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 49
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowManager:Landroid/view/WindowManager;

    .line 57
    invoke-interface {p1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowManager:Landroid/view/WindowManager;

    .line 71
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 83
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 87
    iput p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowHeight:I

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v0, "mWindowHeight = "

    .line 94
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowHeight:I

    .line 99
    const-string v1, "WorkspacePullDownDetectController"

    .line 101
    invoke-static {p1, v0, v1}, Lcom/android/common/config/l;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 104
    iget p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowHeight:I

    int-to-double v2, p1

    .line 107
    sget-wide v4, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->sOneHandedRegionRatio:D

    mul-double/2addr v2, v4

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 115
    iput p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedGestureDomain:I

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v0, "mOneHandedGestureDomain = "

    .line 122
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedGestureDomain:I

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {v1, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance p1, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 139
    invoke-direct {p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 144
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 152
    invoke-virtual {v1}, Landroid/app/Activity;->getUserId()I

    move-result v1

    .line 156
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result p1

    .line 160
    iput-boolean p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsOneHandedModeEnabled:Z

    .line 162
    new-instance p1, Lcom/android/launcher/touch/n;

    .line 164
    invoke-direct {p1, p0}, Lcom/android/launcher/touch/n;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)V

    .line 167
    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedContentObserver:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 169
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    .line 173
    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 175
    new-instance p1, Lcom/android/launcher/touch/WorkspacePullDownDetectController$ActionQuiteContentObserver;

    .line 177
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 179
    iget-object v0, v0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    .line 181
    invoke-direct {p1, v0, p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController$ActionQuiteContentObserver;-><init>(Landroid/os/Handler;Lcom/android/launcher/touch/WorkspacePullDownDetectController;)V

    .line 184
    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActionQuiteObserver:Lcom/android/launcher/touch/WorkspacePullDownDetectController$ActionQuiteContentObserver;

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->updateShelfSupport()V

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->initPullDownDialog()V

    .line 192
    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMExpDevice:Z

    if-eqz p1, :cond_c6

    .line 196
    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->updateHiAssistantSupport()V

    :cond_c6
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$showSearchBar$3(Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$pullCancel$6()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$updateHiAssistantSupport$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private canInterceptTouchEvent(Landroid/view/MotionEvent;I)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0x100

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "WorkspacePullDownDetectController"

    .line 9
    .line 10
    if-eqz v0, :cond_11

    .line 11
    .line 12
    const-string p0, "canInterceptTouchEvent : cameFromNavBar"

    .line 13
    .line 14
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 19
    .line 20
    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_41

    .line 27
    .line 28
    sget-object v0, Lcom/android/launcher3/allapps/OplusExitDrawerCanBeBlockedUtils;->INSTANCE:Lcom/android/launcher3/allapps/OplusExitDrawerCanBeBlockedUtils;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/launcher3/allapps/OplusExitDrawerCanBeBlockedUtils;->isDrawerExiting(Lcom/android/launcher3/Launcher;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_41

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p2, "canInterceptTouchEvent : !mLauncher.isInState(LauncherState.NORMAL). isDrawerIsExiting = false, state = "

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v1

    .line 66
    :cond_41
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 67
    .line 68
    const v3, 0x67ffeff

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v3}, Lcom/android/launcher3/AbstractFloatingView;->getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_5e

    .line 76
    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string p1, "canInterceptTouchEvent : has Top Open View : "

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return v1

    .line 95
    :cond_5e
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_70

    .line 106
    .line 107
    const-string p0, "canInterceptTouchEvent : Guide page is showing, WorkSpacePullDown cancel"

    .line 108
    .line 109
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return v1

    .line 113
    :cond_70
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-static {v0, v3, v4}, Lcom/android/launcher3/WorkspaceHelper;->isTouchScrollAppWidgetOrGroupCard(Lcom/android/launcher3/Launcher;FF)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_86

    .line 128
    .line 129
    const-string p0, "canInterceptTouchEvent : isTouchScrollAppWidget"

    .line 130
    .line 131
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v1

    .line 135
    :cond_86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    float-to-int p1, p1

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->isOnehandedModeActivating(I)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_97

    .line 145
    .line 146
    const-string p0, "canInterceptTouchEvent : isOnehandedModeActivating"

    .line 147
    .line 148
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return v1

    .line 152
    :cond_97
    iput p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mSlideDownType:I

    .line 153
    .line 154
    const/4 p0, 0x6

    .line 155
    if-ne p2, p0, :cond_a2

    .line 156
    .line 157
    const-string p0, "canInterceptTouchEvent : isSlideDownTypeNotificationCenter"

    .line 158
    .line 159
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return v1

    .line 163
    :cond_a2
    const/4 p0, 0x1

    .line 164
    return p0
.end method

.method private checkTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-gtz v0, :cond_10

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x2

    .line 13
    if-lt p1, v0, :cond_f

    .line 14
    .line 15
    goto :goto_10

    .line 16
    :cond_f
    return p0

    .line 17
    :cond_10
    :goto_10
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method private createPullDownAnimator(Lcom/android/launcher/Launcher;)Lcom/android/launcher/touch/PullDownAnimator;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isSupportSearchBoxIntegration()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_c

    .line 6
    .line 7
    new-instance p0, Lcom/oplus/quickstep/integration/gesture/IntegrationPullDownAnimator;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/integration/gesture/IntegrationPullDownAnimator;-><init>(Lcom/android/launcher/Launcher;)V

    .line 10
    .line 11
    .line 12
    goto :goto_11

    .line 13
    :cond_c
    new-instance p0, Lcom/android/launcher/touch/PullDownAnimator;

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/PullDownAnimator;-><init>(Lcom/android/launcher/Launcher;)V

    .line 16
    .line 17
    .line 18
    :goto_11
    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$startGlobalSearch$5(Lcom/android/launcher/Launcher;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$showSearchBar$4(Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->lambda$updateShelfSupport$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic h(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/touch/PullDownAnimator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method private initDragStates(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 5
    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownX:F

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 11
    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownY:F

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownIsMove:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownCancel:Z

    .line 21
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 23
    invoke-virtual {v1, v0}, Lcom/android/launcher/touch/PullDownAnimator;->setActivityStarted(Z)V

    .line 26
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 28
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 35
    iput p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivePointer:I

    .line 37
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v0, "onControllerInterceptTouchEvent -- ACTION_DOWN, mTouchDownX = "

    .line 48
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownX:F

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, ", mTouchDownY = "

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownY:F

    .line 63
    const-string v0, "WorkspacePullDownDetectController"

    .line 65
    invoke-static {p1, p0, v0}, La1/a;->c(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_43
    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 4

    .line 1
    const-string p1, "WorkspacePullDownDetectController"

    .line 3
    const-string/jumbo v0, "onChange, oneHandedMode Enabled changed"

    .line 6
    invoke-static {p1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 11
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 19
    invoke-virtual {v1}, Landroid/app/Activity;->getUserId()I

    move-result v1

    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getSettingsOneHandedModeEnabled(Landroid/content/ContentResolver;I)Z

    move-result p1

    .line 27
    iput-boolean p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsOneHandedModeEnabled:Z

    return-void
.end method

.method private synthetic lambda$pullCancel$6()V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorIfNeeded()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$showSearchBar$3(Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 15

    .line 1
    const-string v0, "WorkspacePullDownDetectController"

    .line 3
    const-string/jumbo v1, "search real start showSearchBar"

    .line 6
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$INSTANCE;

    .line 11
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    .line 17
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseAllIconSurface(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V

    .line 25
    iget-object v3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    move v8, p5

    .line 35
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher/touch/PullDownAnimator;->startSearchApp(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$showSearchBar$4(Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 16

    .line 1
    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-nez v0, :cond_84

    .line 11
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 13
    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->isRepeatStartSupport()Z

    move-result v0

    if-nez v0, :cond_24

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_24

    .line 26
    :cond_19
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result p0

    if-eqz p0, :cond_84

    const/4 p0, 0x0

    .line 33
    invoke-static {p0}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->updateTaskbarNoOccludeState(Z)V

    goto :goto_84

    .line 37
    :cond_24
    :goto_24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v1, "search start showSearchBar isRepeatStartSupport: "

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 47
    invoke-virtual {v1}, Lcom/android/launcher/touch/PullDownAnimator;->isRepeatStartSupport()Z

    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, " , isResumed: "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "WorkspacePullDownDetectController"

    .line 72
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    .line 79
    new-instance v9, Lcom/android/launcher/touch/m;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 88
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher/touch/m;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v0, p1, v2, v2, v9}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->delayStartActivityIfNeed(Landroid/content/Context;Landroid/content/Intent;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 98
    const-string/jumbo v0, "search real start showSearchBar success is false"

    .line 101
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$INSTANCE;

    .line 106
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    .line 110
    check-cast v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;

    .line 112
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    const/4 v2, 0x1

    .line 117
    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseAllIconSurface(Lcom/android/launcher3/Launcher;Landroid/view/View;ZZ)V

    .line 120
    iget-object v3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    move v8, p5

    .line 130
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher/touch/PullDownAnimator;->startSearchApp(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    :cond_84
    :goto_84
    return-void
.end method

.method private synthetic lambda$startGlobalSearch$5(Lcom/android/launcher/Launcher;Landroid/content/Intent;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    .line 5
    :catch_4
    const-string p1, "WorkspacePullDownDetectController"

    .line 7
    const-string/jumbo p2, "start activity failed, searchHomeActivity not found!"

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancel()V

    :goto_f
    return-void
.end method

.method private synthetic lambda$updateHiAssistantSupport$2()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsHiAssistantPullDownSupport()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsHiAssistantSupport:Z

    .line 6
    .line 7
    if-eqz v0, :cond_24

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 10
    .line 11
    const-string v1, "com.oplus.leftscreen"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/android/common/util/PackageUtils;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/android/common/util/PackageUtils;->isApplicationEnabled(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mHiAssistantAppEnable:Z

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Get HiAssistant app enable state result = "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mHiAssistantAppEnable:Z

    .line 31
    .line 32
    const-string v1, "WorkspacePullDownDetectController"

    .line 33
    .line 34
    invoke-static {v1, v0, p0}, La1/a;->b(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 35
    .line 36
    .line 37
    :cond_24
    return-void
.end method

.method private synthetic lambda$updateShelfSupport$1()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsShelfSupport:Z

    .line 6
    .line 7
    if-eqz v0, :cond_37

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->slideDownDialogHasShownForShelf(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lcom/android/launcher/touch/BasePullDownContent;->setSIsFirstPullInExpVersion(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 19
    .line 20
    const-string v1, "com.coloros.assistantscreen"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/android/common/util/PackageUtils;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Lcom/android/common/util/PackageUtils;->isApplicationEnabled(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Lcom/android/launcher/touch/BasePullDownContent;->setSIsAppShelfEnable(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Get shel app enable state result = "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/android/launcher/touch/BasePullDownContent;->getSIsAppShelfEnable()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "WorkspacePullDownDetectController"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomSearchGlobalDisabled(Landroid/content/Context;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4b

    .line 67
    .line 68
    sget-object v1, Lcom/android/launcher/touch/BasePullDownContent;->Companion:Lcom/android/launcher/touch/BasePullDownContent$Companion;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/android/launcher/touch/BasePullDownContent$Companion;->getSIsAppShelfEnable()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_56

    .line 75
    .line 76
    :cond_4b
    if-eqz v0, :cond_5c

    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x5

    .line 85
    if-ne v0, v1, :cond_5c

    .line 86
    .line 87
    :cond_56
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 88
    .line 89
    const/4 v0, 0x6

    .line 90
    invoke-static {p0, v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownTypeWithCheck(Landroid/content/Context;I)Z

    .line 91
    .line 92
    .line 93
    :cond_5c
    return-void
.end method

.method private normalAreaDetect(Lcom/android/launcher/Launcher;Landroid/view/MotionEvent;II)Z
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->isActivityStarted()Z

    move-result v0

    const/4 v1, 0x0

    .line 8
    const-string v2, "WorkspacePullDownDetectController"

    if-nez v0, :cond_17

    .line 12
    invoke-direct {p0, p2}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 18
    const-string p0, "!ActivityStarted && checkTouchEvent"

    .line 20
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 24
    :cond_17
    invoke-static {}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOpeningAnim()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 34
    const-string p0, "!AnimController().isOpeningAnim()"

    .line 36
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 40
    :cond_27
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 50
    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v0, :cond_3b

    .line 54
    const-string p0, "Cannot response as overview"

    .line 56
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 60
    :cond_3b
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 62
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    .line 66
    iget-boolean v0, v0, Lcom/android/launcher3/OplusDragLayer;->isLocationIcon:Z

    if-eqz v0, :cond_4b

    .line 70
    const-string p0, "Cannot response as isLocationIcon"

    .line 72
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 76
    :cond_4b
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 82
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    .line 86
    instance-of v0, v0, Lcom/android/launcher/LauncherCallbacksImp;

    if-eqz v0, :cond_6c

    .line 90
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    .line 94
    check-cast v0, Lcom/android/launcher/LauncherCallbacksImp;

    .line 96
    invoke-virtual {v0}, Lcom/android/launcher/LauncherCallbacksImp;->isOverlayScrolling()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 102
    const-string/jumbo p0, "normalAreaDetect isOverlayScrolling true, return!"

    .line 105
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 109
    :cond_6c
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 111
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 114
    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActivePointer:I

    .line 116
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_81

    .line 123
    const-string/jumbo p0, "index == INVALID_POINT"

    .line 126
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 130
    :cond_81
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 134
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    int-to-float p3, p3

    sub-float/2addr v3, p3

    .line 140
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    int-to-float v3, p4

    sub-float v3, v0, v3

    .line 147
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    .line 152
    invoke-static {p3, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_a0

    move p3, v7

    :cond_a0
    div-float/2addr v4, p3

    float-to-double v8, v4

    .line 163
    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float p3, v8

    const v4, 0x3f860a92

    cmpl-float p3, p3, v4

    .line 173
    const-string/jumbo v4, "normalAreaDetect: mActivityStarted=true"

    .line 176
    const-string v6, "TouchIntercept::WorkspacePullDownDetectController"

    if-gtz p3, :cond_bf

    .line 180
    iget-object p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 182
    invoke-virtual {p3}, Lcom/android/launcher/touch/PullDownAnimator;->isInit()Z

    move-result p3

    if-eqz p3, :cond_2ab

    .line 188
    iget-boolean p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownIsMove:Z

    if-eqz p3, :cond_2ab

    .line 192
    :cond_bf
    iget p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mScaledTouchSlop:I

    mul-int/lit8 p3, p3, 0x6

    .line 196
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v8

    .line 200
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lez v8, :cond_da

    .line 206
    iget p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mScaledTouchSlop:I

    mul-int/lit8 v9, p3, 0x5

    mul-int/2addr v9, p4

    .line 211
    div-int/2addr v9, v8

    const/high16 p4, 0x41480000    # 12.5f

    int-to-float p3, p3

    mul-float/2addr p3, p4

    int-to-float p4, v9

    sub-float/2addr p3, p4

    float-to-int p3, p3

    .line 219
    :cond_da
    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    .line 223
    invoke-virtual {p4, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 226
    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 228
    invoke-virtual {p4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p4

    .line 232
    iget-object v9, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 234
    invoke-virtual {v9}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 238
    invoke-virtual {v9}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v9

    .line 242
    invoke-virtual {v9}, Lcom/android/launcher/layoutparam/ConfigParam;->getDensity()F

    move-result v9

    div-float/2addr p4, v9

    .line 247
    iput p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityDpPerSecond:F

    int-to-float p3, p3

    const p4, 0x3dcccccd    # 0.1f

    mul-float/2addr p4, p3

    cmpl-float p4, v3, p4

    const/4 v9, 0x1

    if-lez p4, :cond_15a

    .line 259
    iget-boolean p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    if-eqz p4, :cond_15a

    .line 263
    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

    .line 265
    invoke-virtual {p4, p1}, Lcom/android/launcher/touch/BasePullDownContent;->cancelBubble(Lcom/android/launcher/Launcher;)V

    .line 268
    invoke-static {}, Lcom/android/launcher/touch/BasePullDownContent;->getSIsAppShelfEnable()Z

    move-result p4

    if-eqz p4, :cond_12d

    .line 274
    invoke-static {}, Lcom/android/overlay/OverlayUtils;->shouldShowSwipeDownShelfItem()Z

    move-result p4

    if-eqz p4, :cond_12d

    .line 280
    invoke-static {}, Lcom/android/launcher/touch/BasePullDownContent;->getSIsFirstPullInExpVersion()Z

    move-result p4

    if-eqz p4, :cond_12d

    .line 286
    sget-boolean p4, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz p4, :cond_12d

    .line 290
    sget-boolean p4, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p4, :cond_12d

    .line 294
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p4

    if-nez p4, :cond_12d

    move p4, v9

    goto :goto_12e

    :cond_12d
    move p4, v1

    .line 303
    :goto_12e
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v10

    if-eqz v10, :cond_13a

    .line 309
    const-string/jumbo v10, "isCanShowSlideDownDialog:"

    .line 312
    invoke-static {v10, v2, p4}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_13a
    if-eqz p4, :cond_15a

    .line 317
    iput-boolean v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    .line 319
    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->showDialog()V

    .line 322
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 324
    invoke-virtual {p0, v9}, Lcom/android/launcher/touch/PullDownAnimator;->setActivityStarted(Z)V

    .line 327
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result p0

    if-eqz p0, :cond_159

    .line 333
    sget-object p0, Lcom/oplus/basecommon/TouchLogger;->Companion:Lcom/oplus/basecommon/TouchLogger$Companion;

    .line 335
    invoke-virtual {p0}, Lcom/oplus/basecommon/TouchLogger$Companion;->getINSTANCE()Lcom/oplus/basecommon/TouchLogger;

    move-result-object p0

    .line 339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 343
    invoke-virtual {p0, p1, v6, v4}, Lcom/oplus/basecommon/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    :cond_159
    return v9

    .line 347
    :cond_15a
    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 349
    invoke-virtual {p4}, Lcom/android/launcher/touch/PullDownAnimator;->getPullDownAnimFraction()F

    move-result p4

    mul-float/2addr p4, p3

    div-float p4, v3, p4

    .line 356
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 358
    invoke-virtual {v1}, Lcom/android/launcher/touch/PullDownAnimator;->getBlurAnimThreshold()F

    move-result v1

    sub-float/2addr p4, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr p4, v1

    .line 367
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v10, 0x2

    if-ne v1, v10, :cond_1f5

    .line 374
    iget-boolean v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownIsMove:Z

    if-nez v1, :cond_1f5

    .line 378
    iget-boolean v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownCancel:Z

    if-nez v1, :cond_1f5

    .line 382
    iget-boolean v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    if-eqz v1, :cond_1f5

    cmpl-float v1, p4, v5

    if-lez v1, :cond_1f5

    .line 390
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 392
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    if-eqz v1, :cond_1d8

    .line 398
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 400
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d8

    .line 410
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 412
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    .line 420
    check-cast v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 422
    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;

    move-result-object v1

    if-eqz v1, :cond_1d8

    .line 428
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 430
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    .line 434
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    .line 438
    check-cast v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 440
    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;

    move-result-object v1

    .line 444
    invoke-virtual {v1}, Lcom/android/launcher3/search/IndicatorEntry;->getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    move-result-object v1

    if-eqz v1, :cond_1d8

    .line 450
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 452
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    .line 460
    check-cast v1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 462
    invoke-virtual {v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;

    move-result-object v1

    .line 466
    invoke-virtual {v1}, Lcom/android/launcher3/search/IndicatorEntry;->getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->resetForHomeGesture()V

    .line 473
    :cond_1d8
    iput-boolean v9, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownIsMove:Z

    .line 475
    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mStartAppDownY:F

    .line 477
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 479
    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->initAnimator()V

    .line 482
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 484
    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->dragStart()V

    .line 487
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_TO_SEARCH:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    .line 489
    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    .line 492
    invoke-static {}, Lcom/oplus/basecommon/util/LauncherBooster;->getGpu()Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;

    move-result-object v0

    .line 496
    invoke-static {v0}, Lcom/android/launcher3/util/LauncherBoosterExtKt;->requestEventInFoldExpanded(Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;)I

    move-result v0

    .line 500
    iput v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mGpuBoostFd:I

    .line 502
    :cond_1f5
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 504
    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->isInDragging()Z

    move-result v0

    if-eqz v0, :cond_20e

    .line 510
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

    .line 512
    invoke-virtual {v0}, Lcom/android/launcher/touch/BasePullDownContent;->isShowDialog()Z

    move-result v0

    if-nez v0, :cond_20e

    .line 518
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 520
    invoke-static {p4, v5, v7}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p4

    .line 524
    invoke-virtual {v0, p4}, Lcom/android/launcher/touch/PullDownAnimator;->onDrag(F)V

    .line 527
    :cond_20e
    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 529
    invoke-virtual {p4}, Lcom/android/launcher/touch/PullDownAnimator;->isInDragging()Z

    move-result p4

    if-eqz p4, :cond_2ab

    .line 535
    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 537
    invoke-virtual {p4}, Lcom/android/launcher/touch/PullDownAnimator;->isActivityStarted()Z

    move-result p4

    if-nez p4, :cond_2ab

    .line 543
    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

    .line 545
    invoke-virtual {p4}, Lcom/android/launcher/touch/BasePullDownContent;->isShowDialog()Z

    move-result p4

    if-nez p4, :cond_2ab

    .line 551
    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 553
    invoke-virtual {p4}, Lcom/android/launcher/touch/PullDownAnimator;->isRepeatStartSupport()Z

    move-result p4

    if-eqz p4, :cond_276

    .line 559
    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 561
    invoke-virtual {p4}, Lcom/android/launcher/touch/PullDownAnimator;->getDistanceThreshold()F

    move-result p4

    cmpl-float p4, v3, p4

    if-gtz p4, :cond_244

    .line 569
    iget p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityDpPerSecond:F

    .line 571
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 573
    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->getVelocityThreshold()F

    move-result v0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_276

    .line 581
    :cond_244
    iget-object p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 583
    invoke-virtual {p3, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 586
    iget-object p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 588
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->showDetectedType(Lcom/android/launcher/Launcher;)Z

    move-result p1

    .line 592
    invoke-virtual {p3, p1}, Lcom/android/launcher/touch/PullDownAnimator;->setActivityStarted(Z)V

    .line 595
    new-instance p1, Ljava/lang/StringBuilder;

    .line 597
    const-string/jumbo p3, "normalAreaDetect: search repeat start mode, ActivityStarted="

    .line 600
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    iget-object p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 605
    invoke-virtual {p3}, Lcom/android/launcher/touch/PullDownAnimator;->isActivityStarted()Z

    move-result p3

    .line 609
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 616
    invoke-static {v2, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 621
    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->isActivityStarted()Z

    move-result p1

    if-nez p1, :cond_2ab

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancel()V

    goto :goto_2ab

    .line 631
    :cond_276
    iget-object p4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 633
    invoke-virtual {p4}, Lcom/android/launcher/touch/PullDownAnimator;->isRepeatStartSupport()Z

    move-result p4

    if-nez p4, :cond_2ab

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p3, p4

    cmpl-float p3, v3, p3

    if-lez p3, :cond_2ab

    .line 646
    iget-object p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 648
    invoke-virtual {p3, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 651
    iget-object p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 653
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->showDetectedType(Lcom/android/launcher/Launcher;)Z

    move-result p1

    .line 657
    invoke-virtual {p3, p1}, Lcom/android/launcher/touch/PullDownAnimator;->setActivityStarted(Z)V

    .line 660
    new-instance p1, Ljava/lang/StringBuilder;

    .line 662
    const-string/jumbo p3, "normalAreaDetect: search only once start mode, ActivityStarted="

    .line 665
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    iget-object p3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 670
    invoke-virtual {p3}, Lcom/android/launcher/touch/PullDownAnimator;->isActivityStarted()Z

    move-result p3

    .line 674
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 681
    invoke-static {v2, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_2ab
    :goto_2ab
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 686
    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->isActivityStarted()Z

    move-result p1

    if-eqz p1, :cond_2c6

    .line 692
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result p1

    if-eqz p1, :cond_2c6

    .line 698
    sget-object p1, Lcom/oplus/basecommon/TouchLogger;->Companion:Lcom/oplus/basecommon/TouchLogger$Companion;

    .line 700
    invoke-virtual {p1}, Lcom/oplus/basecommon/TouchLogger$Companion;->getINSTANCE()Lcom/oplus/basecommon/TouchLogger;

    move-result-object p1

    .line 704
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    .line 708
    invoke-virtual {p1, p2, v6, v4}, Lcom/oplus/basecommon/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_2c6
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->isActivityStarted()Z

    move-result p0

    return p0
.end method

.method public static setGlobleSearchName(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-string v0, "WorkspacePullDownDetectController"

    .line 3
    const-string/jumbo v1, "search"

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 10
    check-cast p0, Landroid/app/SearchManager;

    .line 12
    :try_start_b
    invoke-virtual {p0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_f} :catch_31

    if-nez p0, :cond_18

    .line 18
    const-string/jumbo p0, "putGlobleSearchToSP -- No global search activity found, return!"

    .line 21
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v2, "putGlobleSearchToSP -- searchActivity: "

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    .line 47
    sput-object p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->sGlobalSearchActivityName:Ljava/lang/String;

    return-void

    :catch_31
    move-exception p0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo v2, "putGlobleSearchToSP -- e: "

    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private shouldOpenHiAssistant()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mSlideDownType:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ne v0, v1, :cond_f

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsHiAssistantSupport:Z

    .line 7
    .line 8
    if-eqz v0, :cond_f

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mHiAssistantAppEnable:Z

    .line 11
    .line 12
    if-eqz p0, :cond_f

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p0, 0x0

    .line 17
    :goto_10
    return p0
.end method

.method private shouldOpenShelf()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mSlideDownType:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_11

    .line 5
    .line 6
    iget-boolean p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsShelfSupport:Z

    .line 7
    .line 8
    if-eqz p0, :cond_11

    .line 9
    .line 10
    invoke-static {}, Lcom/android/launcher/touch/BasePullDownContent;->getSIsAppShelfEnable()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_11

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p0, 0x0

    .line 19
    :goto_12
    return p0
.end method

.method private showDetectedType(Lcom/android/launcher/Launcher;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/launcher/layoutparam/ConfigParam;->isMultiWindowMode()Z

    move-result v0

    .line 13
    const-string v1, "WorkspacePullDownDetectController"

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    .line 18
    const-string/jumbo p0, "in multi mode, do not show search bar!"

    .line 21
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 27
    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->isRepeatStartSupport()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 33
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 35
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 41
    const-string/jumbo p0, "launcher not resumed, do not show search bar!"

    .line 44
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 48
    :cond_2f
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 50
    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher3/BaseQuickstepLauncher;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 56
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 58
    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;->PULL_DOWN_TO_GLOBAL_SEARCH:Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;

    const/4 v3, 0x0

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/QuickstepTransitionManager;->endAppTransition(Lcom/android/quickstep/util/animation/SpringAnimConstants$ReasonEndTransition;ZLjava/util/function/Consumer;)V

    .line 68
    :cond_43
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 70
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/android/launcher3/stack/utils/StackViewHelper;->clearAnimatedViewWhenStackCreate(Lcom/android/launcher3/dragndrop/DragLayer;)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 79
    invoke-static {v0}, Lcom/android/launcher3/stack/utils/StackViewHelper;->clearSurfaceViewWhenStackCreate(Lcom/android/launcher3/views/ActivityContext;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->startTargetApp(Lcom/android/launcher/Launcher;)Z

    move-result p0

    return p0
.end method

.method private showDialog()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mSlideDownType:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher/touch/BasePullDownContent;->showDialog(Lcom/android/launcher/Launcher;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownDialogHasShowed(Landroid/content/Context;Z)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/launcher/touch/BasePullDownContent;->setSIsFirstPullInExpVersion(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private showSearchBar(Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)Z
    .registers 16

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomSearchGlobalDisabled(Landroid/content/Context;)Z

    move-result v0

    .line 9
    const-string v1, "WorkspacePullDownDetectController"

    if-eqz v0, :cond_14

    .line 13
    const-string/jumbo p0, "search box customize disabled"

    .line 16
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_14
    if-nez p4, :cond_4e

    .line 23
    new-instance p4, Landroid/os/Bundle;

    .line 25
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 28
    const-string/jumbo v0, "source"

    .line 31
    const-string/jumbo v2, "launcher-search"

    .line 34
    invoke-virtual {p4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 39
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 43
    iget-object v2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 45
    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/android/launcher/layoutparam/ConfigParam;->getDensity()F

    move-result v2

    div-float v2, v0, v2

    .line 59
    const-string/jumbo v3, "pull_search_speed_px"

    .line 62
    invoke-virtual {p4, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 65
    const-string/jumbo v0, "pull_search_speed_dp"

    .line 68
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 71
    const-string/jumbo v0, "pull_search_point_y"

    .line 74
    iget v2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mStartAppDownY:F

    .line 76
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_4e
    move-object v8, p4

    .line 80
    sget-object p4, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->sGlobalSearchActivityName:Ljava/lang/String;

    .line 82
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_6d

    .line 88
    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->setGlobleSearchName(Landroid/content/Context;)V

    .line 91
    sget-object p4, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->sGlobalSearchActivityName:Ljava/lang/String;

    .line 93
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_6d

    .line 99
    const-string/jumbo p2, "showSearchBar -- No global search activity found in searchManager, just start global Search by intent!"

    .line 102
    invoke-static {v1, p2}, Lcom/oplus/basecommon/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1, v8}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->startGlobalSearch(Lcom/android/launcher/Launcher;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 110
    :cond_6d
    sget-object p4, Lcom/android/common/util/StartActivityCookieHelper;->INSTANCE:Lcom/android/common/util/StartActivityCookieHelper;

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p4, v0}, Lcom/android/common/util/StartActivityCookieHelper;->setMStartItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 116
    sget-object p4, Lcom/oplus/basecommon/thread/OplusExecutors;->INSTANCE:Lcom/oplus/basecommon/thread/OplusExecutors;

    .line 118
    invoke-virtual {p4}, Lcom/oplus/basecommon/thread/OplusExecutors;->getUX_TASK_EXECUTOR()Lcom/oplus/basecommon/thread/OplusLooperExecutor;

    move-result-object p4

    .line 122
    new-instance v0, Lcom/android/launcher/touch/l;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v9, p5

    .line 130
    invoke-direct/range {v3 .. v9}, Lcom/android/launcher/touch/l;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 133
    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    const-string/jumbo p0, "showSearchBar, showing"

    .line 139
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_97

    .line 149
    invoke-static {p1}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->updateTaskbarNoOccludeState(Z)V

    .line 152
    :cond_97
    invoke-static {}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->getInstance()Lcom/android/statistics/ButtonGesturesStatisticsManager;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Lcom/android/statistics/ButtonGesturesStatisticsManager;->statsPullDownToSearch()V

    return p1
.end method

.method private showShelf(Lcom/android/launcher/Launcher;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v0

    .line 5
    const-string v1, "WorkspacePullDownDetectController"

    if-eqz v0, :cond_10

    .line 9
    const-string/jumbo p0, "split screen no shelf"

    .line 12
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 17
    :cond_10
    const-string/jumbo v0, "showShelf"

    .line 20
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 25
    const-string/jumbo v1, "oplus.intent.action.SHELF_MAIN"

    .line 28
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v1, "android.intent.category.DEFAULT"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "com.coloros.assistantscreen"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v2, "com.oplus.assistantscreen.shelf.activity.ShelfMainActivity"

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    new-instance v1, Landroid/os/Bundle;

    .line 53
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string/jumbo v2, "source"

    .line 59
    const-string/jumbo v3, "launcher-shelf"

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 67
    iget v2, v2, Lcom/android/launcher/touch/PullDownAnimator;->mProgress:F

    .line 69
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string v3, "alpha_start"

    .line 75
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 80
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 84
    iget-object v3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 86
    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lcom/android/launcher/layoutparam/ConfigParam;->getDensity()F

    move-result v3

    div-float v3, v2, v3

    .line 100
    const-string/jumbo v4, "pull_search_speed_px"

    .line 103
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 106
    const-string/jumbo v2, "pull_search_speed_dp"

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 121
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStartCardActivityHelper()Lcom/oplus/card/helper/StartCardActivityHelper;

    move-result-object v1

    .line 125
    invoke-virtual {v1, v0}, Lcom/oplus/card/helper/StartCardActivityHelper;->clearLastStart(Landroid/content/Intent;)V

    .line 128
    :cond_7f
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/touch/PullDownAnimator;->startShelf(Lcom/android/launcher/Launcher;Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private startGlobalSearch(Lcom/android/launcher/Launcher;Landroid/os/Bundle;)Z
    .registers 6

    .line 1
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_6
    const-string v0, "WorkspacePullDownDetectController"

    .line 9
    const-string/jumbo v1, "startGlobalSearch by intent"

    .line 12
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 17
    const-string v1, "android.search.action.GLOBAL_SEARCH"

    .line 19
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    const-string v1, "android.intent.category.DEFAULT"

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "com.heytap.quicksearchbox"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v2, "com.heytap.quicksearchbox.ui.activity.SearchHomeActivity"

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "app_data"

    .line 44
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 47
    sget-object p2, Lcom/oplus/basecommon/thread/OplusExecutors;->INSTANCE:Lcom/oplus/basecommon/thread/OplusExecutors;

    .line 49
    invoke-virtual {p2}, Lcom/oplus/basecommon/thread/OplusExecutors;->getUX_TASK_EXECUTOR()Lcom/oplus/basecommon/thread/OplusLooperExecutor;

    move-result-object p2

    .line 53
    new-instance v1, Lcom/android/launcher/touch/k;

    .line 55
    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher/touch/k;-><init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p2, v1}, Lcom/oplus/basecommon/thread/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private startTargetApp(Lcom/android/launcher/Launcher;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x100

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->shouldOpenHiAssistant()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_26

    .line 14
    .line 15
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    .line 22
    .line 23
    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$PullDownScene;->HIASSISTANT:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$PullDownScene;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->setPullDownScene(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$PullDownScene;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/android/launcher/touch/o;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, p0, v1}, Lcom/android/launcher/touch/o;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/oplus/leftscreen/OverlayUtils;->showHiAssistant(Lcom/android/launcher/Launcher;Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_26
    invoke-direct {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->shouldOpenShelf()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3e

    .line 44
    .line 45
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    .line 52
    .line 53
    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$PullDownScene;->SHELF:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$PullDownScene;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->setPullDownScene(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$PullDownScene;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->showShelf(Lcom/android/launcher/Launcher;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_3e
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    .line 70
    .line 71
    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$PullDownScene;->GLOBAL_SEARCH:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$PullDownScene;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->setPullDownScene(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$PullDownScene;)V

    .line 74
    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v7, 0x1

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    move-object v2, p0

    .line 81
    move-object v3, p1

    .line 82
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->showSearchBar(Lcom/android/launcher/Launcher;Ljava/lang/String;ZLandroid/os/Bundle;Z)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    return p0
.end method

.method private unRegisterOneHandedListener(Lcom/android/launcher/Launcher;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 3
    const-string v0, "WorkspacePullDownDetectController"

    .line 5
    const-string/jumbo v1, "unRegisterOneHandedModeListener"

    .line 8
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "one_handed_mode_enabled"

    .line 14
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 20
    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    .line 26
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedContentObserver:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 28
    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    :cond_1e
    return-void
.end method

.method private updateHiAssistantSupport()V
    .registers 4

    .line 1
    sget-object v0, Lcom/oplus/basecommon/thread/Executors;->THREAD_POOL_EXECUTOR:Lcom/oplus/dispatch/OCDExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/android/launcher/c1;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/launcher/c1;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/oplus/dispatch/OCDExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/recyclerview/widget/i;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/i;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public getPullDownAnimator()Lcom/android/launcher/touch/PullDownAnimator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPullDownContent()Lcom/android/launcher/touch/BasePullDownContent;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

    .line 2
    .line 3
    return-object p0
.end method

.method public final initPullDownDialog()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomSearchGlobalDisabled(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_23

    .line 16
    .line 17
    if-nez v0, :cond_23

    .line 18
    .line 19
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isPullDownDialogSearchTurnOff()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1b

    .line 26
    .line 27
    goto :goto_23

    .line 28
    :cond_1b
    new-instance v0, Lcom/android/launcher/touch/PullDownContentWithSearch;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/android/launcher/touch/PullDownContentWithSearch;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

    .line 34
    .line 35
    goto :goto_2a

    .line 36
    :cond_23
    :goto_23
    new-instance v0, Lcom/android/launcher/touch/ShelfContent;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/android/launcher/touch/ShelfContent;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

    .line 42
    .line 43
    :goto_2a
    return-void
.end method

.method public isOnehandedModeActivating(I)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    const/4 v1, 0x0

    .line 4
    const-string v2, "WorkspacePullDownDetectController"

    if-nez v0, :cond_e

    .line 8
    const-string/jumbo p0, "mOneHandedSettingsUtil is null, just return false"

    .line 11
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 15
    :cond_e
    iget v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mWindowHeight:I

    if-nez v0, :cond_19

    .line 19
    const-string/jumbo p0, "mWindowHeight is 0 ,just return false"

    .line 22
    invoke-static {v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 26
    :cond_19
    iget-boolean v3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsOneHandedModeEnabled:Z

    if-eqz v3, :cond_29

    sub-int/2addr v0, p1

    .line 31
    iget p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedGestureDomain:I

    if-ge v0, p0, :cond_29

    .line 35
    const-string p0, "OneHanded mode activated, skipping downY is "

    .line 37
    invoke-static {p1, p0, v2}, Lcom/android/common/config/m;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_29
    return v1
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;I)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "WorkspacePullDownDetectController"

    if-eq v1, v2, :cond_f7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_f7

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_23

    goto/16 :goto_f7

    .line 4
    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_81

    .line 5
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {v1}, Lcom/android/launcher/touch/PullDownAnimator;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_44

    .line 6
    const-string/jumbo p1, "onControllerInterceptTouchEvent:Can not intercept as have started activity and is paused"

    invoke-static {v3, p1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    return v0

    .line 8
    :cond_44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_60

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onControllerInterceptTouchEvent ACTION_DOWN position error ev: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 10
    :cond_60
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->initDragStates(Landroid/view/MotionEvent;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->canInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onControllerInterceptTouchEvent, mCanIntercept:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_81
    iget-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_8a

    return v0

    .line 14
    :cond_8a
    iget-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/OplusPagedViewImpl;->isFolderHandleEvent()Z

    move-result p2

    if-eqz p2, :cond_9d

    .line 15
    const-string/jumbo p0, "onControllerInterceptTouchEvent, mLauncher.getWorkspace().isFolderHandleEvent"

    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 16
    :cond_9d
    iget-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_ce

    iget-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/OplusWorkspace;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p2, v1, :cond_b2

    goto :goto_ce

    .line 17
    :cond_b2
    iget-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    iget v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownX:F

    float-to-int v1, v1

    iget v3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownY:F

    float-to-int v3, v3

    invoke-direct {p0, p2, p1, v1, v3}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->normalAreaDetect(Lcom/android/launcher/Launcher;Landroid/view/MotionEvent;II)Z

    move-result p1

    if-nez p1, :cond_cc

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->isInit()Z

    move-result p1

    if-eqz p1, :cond_cd

    iget-boolean p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownIsMove:Z

    if-eqz p0, :cond_cd

    :cond_cc
    move v0, v2

    :cond_cd
    return v0

    .line 18
    :cond_ce
    :goto_ce
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getPopupContainer"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mLauncher.getWorkspace().mToState:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 19
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace;->mToState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 21
    :cond_f7
    :goto_f7
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownIsMove:Z

    .line 23
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mCanIntercept:Ljava/lang/Boolean;

    .line 24
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->isInit()Z

    move-result p1

    if-nez p1, :cond_111

    iget-boolean p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownCancel:Z

    if-nez p1, :cond_111

    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->isSystemDisableAnimation()Z

    move-result p1

    if-eqz p1, :cond_131

    .line 25
    :cond_111
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 26
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    iget-object p2, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher/touch/PullDownAnimator;->dragEnd(F)V

    .line 27
    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_TO_SEARCH:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    .line 28
    invoke-static {}, Lcom/oplus/basecommon/util/LauncherBooster;->getGpu()Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mGpuBoostFd:I

    invoke-static {p1, p0}, Lcom/android/launcher3/util/LauncherBoosterExtKt;->releaseEventInFoldExpanded(Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;I)V

    .line 29
    :cond_131
    const-string/jumbo p0, "onControllerInterceptTouchEvent: MotionEvent.ACTION_UP || MotionEvent.ACTION_CANCEL || (ev.getActionIndex() == 0 && MotionEvent.ACTION_POINTER_UP)"

    invoke-static {v3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3c

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3c

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_20

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_20

    goto :goto_3c

    .line 33
    :cond_20
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 35
    iget v3, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownX:F

    float-to-int v3, v3

    .line 38
    iget v4, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mTouchDownY:F

    float-to-int v4, v4

    .line 41
    invoke-direct {p0, v1, p1, v3, v4}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->normalAreaDetect(Lcom/android/launcher/Launcher;Landroid/view/MotionEvent;II)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 47
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 49
    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->isInit()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 55
    iget-boolean p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownIsMove:Z

    if-eqz p0, :cond_3b

    :cond_3a
    move v0, v2

    :cond_3b
    return v0

    .line 61
    :cond_3c
    :goto_3c
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 63
    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->isInit()Z

    move-result p1

    if-nez p1, :cond_4e

    .line 69
    iget-boolean p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownCancel:Z

    if-nez p1, :cond_4e

    .line 73
    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->isSystemDisableAnimation()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 79
    :cond_4e
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 86
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 88
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 90
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 94
    invoke-virtual {p1, v1}, Lcom/android/launcher/touch/PullDownAnimator;->dragEnd(F)V

    .line 97
    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->WORKSPACE_TO_SEARCH:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    .line 99
    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    .line 102
    invoke-static {}, Lcom/oplus/basecommon/util/LauncherBooster;->getGpu()Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;

    move-result-object p1

    .line 106
    iget v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mGpuBoostFd:I

    .line 108
    invoke-static {p1, v1}, Lcom/android/launcher3/util/LauncherBoosterExtKt;->releaseEventInFoldExpanded(Lcom/oplus/basecommon/util/LauncherBooster$GpuBoost;I)V

    .line 111
    :cond_6e
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownIsMove:Z

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, "onControllerInterceptTouchEvent, mIsPullDownReady: "

    .line 120
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    iget-boolean p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownReady:Z

    .line 125
    const-string v1, "WorkspacePullDownDetectController"

    .line 127
    invoke-static {v1, p1, p0}, Landroidx/room/h;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/u;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x1

    if-nez p1, :cond_7

    move p1, v0

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 9
    :goto_8
    const-string/jumbo v1, "isNullLauncher = "

    .line 12
    const-string v2, "WorkspacePullDownDetectController"

    .line 14
    invoke-static {v1, v2, p1}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_29

    .line 19
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->registerOneHandedListener(Lcom/android/launcher/Launcher;)V

    .line 24
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 30
    const-string/jumbo v1, "shelf_or_search_quite_action_call_time"

    .line 33
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 37
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActionQuiteObserver:Lcom/android/launcher/touch/WorkspacePullDownDetectController$ActionQuiteContentObserver;

    .line 39
    invoke-static {p1, v1, v0, p0}, Lcom/oplus/basecommon/util/ContentResolverExtKt;->asyncRegisterContentObserverPurely(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_29
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/u;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v0, "onDestroy, mLauncher is null: "

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    const-string v1, "WorkspacePullDownDetectController"

    .line 18
    invoke-static {v1, p1, v0}, Landroidx/room/h;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 21
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_27

    .line 25
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->unRegisterOneHandedListener(Lcom/android/launcher/Launcher;)V

    .line 28
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 34
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActionQuiteObserver:Lcom/android/launcher/touch/WorkspacePullDownDetectController$ActionQuiteContentObserver;

    .line 36
    invoke-static {p1, p0}, Lcom/oplus/basecommon/util/ContentResolverExtKt;->asyncUnregisterObserverPurely(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    goto :goto_38

    .line 40
    :cond_27
    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/android/common/config/ContextFetcher;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 52
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mActionQuiteObserver:Lcom/android/launcher/touch/WorkspacePullDownDetectController$ActionQuiteContentObserver;

    .line 54
    invoke-static {p1, p0}, Lcom/oplus/basecommon/util/ContentResolverExtKt;->asyncUnregisterObserverPurely(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    :goto_38
    return-void
.end method

.method public onHomeKeyPressed(Lcom/android/launcher/Launcher;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/launcher/touch/BasePullDownContent;->dismissDialog()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/u;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/d;->onPause(Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v0, "onResume, showing = "

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 17
    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->isActivityStarted()Z

    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    const-string v0, "WorkspacePullDownDetectController"

    .line 30
    invoke-static {v0, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_20
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 35
    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->isInit()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 41
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_3f

    .line 45
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 51
    sget-object p1, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    .line 53
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 55
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    .line 59
    iget-object v1, v1, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher/guide/DrawerGuideManager;->showDrawerGuide(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    .line 64
    :cond_3f
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->onLauncherResume()V

    return-void
.end method

.method public bridge synthetic onStart(Landroidx/lifecycle/u;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/lifecycle/d;->onStart(Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStop(Landroidx/lifecycle/u;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownContent:Lcom/android/launcher/touch/BasePullDownContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/android/launcher/touch/BasePullDownContent;->cancelBubble(Lcom/android/launcher/Launcher;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public pullCancel()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mIsPullDownCancel:Z

    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eq v0, v1, :cond_1d

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v1, Lcom/android/common/util/o0;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-direct {v1, p0, v2}, Lcom/android/common/util/o0;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorIfNeeded()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public pullCancelForHomeGesture()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mPullDownAnimator:Lcom/android/launcher/touch/PullDownAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimAsHomeGesture()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isIndicatorEntryEnable()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1f

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->hasOplusBottomSearchBoxView(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_36

    .line 31
    .line 32
    :cond_1f
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mLauncher:Lcom/android/launcher/Launcher;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getIndicatorEntry()Lcom/android/launcher3/search/IndicatorEntry;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/android/launcher3/search/IndicatorEntry;->getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->resetForHomeGesture()V

    .line 53
    .line 54
    .line 55
    :cond_36
    return-void
.end method

.method public registerOneHandedListener(Lcom/android/launcher/Launcher;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 3
    const-string v0, "WorkspacePullDownDetectController"

    .line 5
    const-string/jumbo v1, "registerOneHandedModeListener"

    .line 8
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "one_handed_mode_enabled"

    .line 14
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 20
    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    .line 26
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mOneHandedContentObserver:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 28
    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    :cond_1e
    return-void
.end method

.method public setHiAssistantAppEnable(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->mHiAssistantAppEnable:Z

    .line 3
    const-string/jumbo p0, "setHiAssistantAppEnable, enable = "

    .line 6
    const-string v0, "WorkspacePullDownDetectController"

    .line 8
    invoke-static {p0, v0, p1}, Lcom/android/common/config/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setShelAppEnableState(Z)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/android/launcher/touch/BasePullDownContent;->setSIsAppShelfEnable(Z)V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v0, "setShelAppEnableState, enable = "

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    const-string p1, "WorkspacePullDownDetectController"

    .line 21
    invoke-static {p1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateShelfSupport()V
    .registers 4

    .line 1
    sget-object v0, Lcom/oplus/basecommon/thread/Executors;->THREAD_POOL_EXECUTOR:Lcom/oplus/dispatch/OCDExecutorService;

    .line 2
    .line 3
    new-instance v1, Landroidx/lifecycle/e0;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/e0;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/oplus/dispatch/OCDExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
