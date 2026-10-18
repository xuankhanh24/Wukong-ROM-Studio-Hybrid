.class public final Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;
.super Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;
.source "OplusRecentsViewStateControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController<",
        "Lcom/android/quickstep/views/LauncherRecentsView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 F2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001FB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00140\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001d\u0010\u0018\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00170\u0013H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u001f\u0010 \u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u001f\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008%\u0010&J?\u0010*\u001a\u00020\t2\u000e\u0010\"\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00172\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010)\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010,\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008,\u0010\u000bJ/\u0010/\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020-H\u0002\u00a2\u0006\u0004\u0008/\u00100J\u001f\u00101\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00081\u0010!J\u0017\u00102\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00082\u0010\u000bJ/\u00107\u001a\u0002062\u0006\u00103\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u00104\u001a\u00020\'2\u0006\u00105\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u00087\u00108J9\u0010>\u001a\u00020=2\u0006\u00103\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u00109\u001a\u00020\'2\u0006\u0010:\u001a\u00020\'2\u0008\u0010<\u001a\u0004\u0018\u00010;H\u0002\u00a2\u0006\u0004\u0008>\u0010?J)\u0010A\u001a\u00020@2\u0006\u00103\u001a\u00020\u00022\u0006\u00109\u001a\u00020\'2\u0008\u0010<\u001a\u0004\u0018\u00010;H\u0002\u00a2\u0006\u0004\u0008A\u0010BR\u0016\u0010C\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010E\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010D\u00a8\u0006G"
    }
    d2 = {
        "Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;",
        "Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;",
        "Lcom/android/quickstep/views/LauncherRecentsView;",
        "Lcom/android/launcher3/BaseQuickstepLauncher;",
        "launcher",
        "<init>",
        "(Lcom/android/launcher3/BaseQuickstepLauncher;)V",
        "Lcom/android/launcher3/LauncherState;",
        "state",
        "Lm9/n;",
        "setState",
        "(Lcom/android/launcher3/LauncherState;)V",
        "toState",
        "Lcom/android/launcher3/states/StateAnimationConfig;",
        "config",
        "Lcom/android/launcher3/anim/PendingAnimation;",
        "setter",
        "setStateWithAnimationInternal",
        "(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V",
        "Landroid/util/FloatProperty;",
        "Lcom/android/quickstep/views/RecentsView;",
        "getTaskModalnessProperty",
        "()Landroid/util/FloatProperty;",
        "Lcom/android/quickstep/views/OplusRecentsViewImpl;",
        "getContentAlphaProperty",
        "",
        "isGridProgressToOverView",
        "()Z",
        "fromState",
        "ignoreUpdateState",
        "(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Z",
        "interceptSomeUIUpdate",
        "startWallpaperAnimation",
        "(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V",
        "recentsView",
        "createAlignRunningTaskViewAnimationWhenExitRecentsIfNeed",
        "(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/anim/PendingAnimation;)V",
        "resetFolderShowState",
        "()V",
        "",
        "alpha",
        "isStack",
        "addToOverviewContentAlphaAnim",
        "(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/anim/PendingAnimation;FLcom/android/launcher3/states/StateAnimationConfig;Z)V",
        "enterRecents",
        "",
        "scaleAndOffset",
        "addDockViewStateChangeAnim",
        "(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;[F)V",
        "resetRecentScroll",
        "updateSystemUiState",
        "recentView",
        "defaultFinalOffset",
        "isSupportInterrupt",
        "",
        "createStackLayoutExitAnim",
        "(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/states/StateAnimationConfig;FZ)Ljava/lang/Object;",
        "animRunFinalOffset",
        "animEndFinalOffset",
        "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
        "recentViewScrollChangeListener",
        "Landroid/animation/Animator;",
        "createStackLayoutExitAnimator",
        "(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/states/StateAnimationConfig;FFLandroid/view/ViewTreeObserver$OnScrollChangedListener;)Landroid/animation/Animator;",
        "Lcom/android/quickstep/util/animation/SpringAnimation;",
        "createStackLayoutExitSpringAnimation",
        "(Lcom/android/quickstep/views/LauncherRecentsView;FLandroid/view/ViewTreeObserver$OnScrollChangedListener;)Lcom/android/quickstep/util/animation/SpringAnimation;",
        "mIsInRecents",
        "Z",
        "mCanEndContentAlphaAnim",
        "Companion",
        "OplusLauncher_OPPOPallDomesticAallRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$Companion;

.field private static final MIN_RECENT_DIFF:F = 0.01f

.field private static final TAG:Ljava/lang/String; = "OplusRecentsViewStateController"


# instance fields
.field private mCanEndContentAlphaAnim:Z

.field private mIsInRecents:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->Companion:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "launcher"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->mCanEndContentAlphaAnim:Z

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZZ[FLjava/lang/Boolean;)V
    .registers 5

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->setStateWithAnimationInternal$lambda$8(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZZ[FLjava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getMCanEndContentAlphaAnim$p(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->mCanEndContentAlphaAnim:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMLauncher$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/launcher3/BaseQuickstepLauncher;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMRecentsView$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/quickstep/views/RecentsView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$resetFolderShowState(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->resetFolderShowState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$resetRecentScroll(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->resetRecentScroll(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setMCanEndContentAlphaAnim$p(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->mCanEndContentAlphaAnim:Z

    .line 2
    .line 3
    return-void
.end method

.method private final addDockViewStateChangeAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;[F)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 2
    .line 3
    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->isCurrentSupported()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->runningPendingAnimation()Lcom/android/launcher3/anim/PendingAnimation;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    if-eqz v3, :cond_19

    .line 23
    .line 24
    move v3, v5

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    move v3, v4

    .line 27
    :goto_1a
    if-nez v3, :cond_7b

    .line 28
    .line 29
    if-nez v2, :cond_1f

    .line 30
    .line 31
    goto :goto_7b

    .line 32
    :cond_1f
    iget-boolean v2, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    .line 33
    .line 34
    if-eqz v2, :cond_2f

    .line 35
    .line 36
    sget-object v2, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    .line 37
    .line 38
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2f

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockViewVisible(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->clearEnterAnim()V

    .line 49
    .line 50
    .line 51
    :goto_32
    iget-boolean v0, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    .line 52
    .line 53
    if-eqz v0, :cond_4b

    .line 54
    .line 55
    sget-object v0, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    .line 56
    .line 57
    aget p4, p4, v5

    .line 58
    .line 59
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    invoke-virtual {v0, v1, p4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 64
    .line 65
    .line 66
    new-instance p4, Lcom/android/launcher3/card/q;

    .line 67
    .line 68
    const/4 v0, 0x3

    .line 69
    invoke-direct {p4, p0, v0}, Lcom/android/launcher3/card/q;-><init>(Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p4}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 73
    .line 74
    .line 75
    goto :goto_6e

    .line 76
    :cond_4b
    sget-object v0, Lcom/oplus/quickstep/dock/DockView;->ADJACENT_DOCK_VIEW_OFFSET:Landroid/util/FloatProperty;

    .line 77
    .line 78
    aget p4, p4, v5

    .line 79
    .line 80
    const/4 v2, 0x7

    .line 81
    sget-object v3, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    .line 82
    .line 83
    invoke-virtual {p2, v2, v3}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p3, v1, v0, p4, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 91
    .line 92
    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    sget-object p4, Lcom/oplus/quickstep/relay/data/RelayState$ExitRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$ExitRecent;

    .line 99
    .line 100
    invoke-virtual {p0, p4}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewStateChangeAnim$1$3;

    .line 104
    .line 105
    invoke-direct {p0, v1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addDockViewStateChangeAnim$1$3;-><init>(Lcom/oplus/quickstep/dock/DockView;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 109
    .line 110
    .line 111
    :goto_6e
    const/4 v5, 0x0

    .line 112
    const-string v8, "STATE_CHANGE_WITH_ANIM"

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    const/high16 v4, 0x40000000    # 2.0f

    .line 116
    .line 117
    move-object v2, p1

    .line 118
    move-object v6, p3

    .line 119
    move-object v7, p2

    .line 120
    invoke-virtual/range {v1 .. v8}, Lcom/oplus/quickstep/dock/DockView;->prepareEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_7b
    :goto_7b
    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockViewVisible(Z)V

    .line 125
    .line 126
    .line 127
    iget-object p3, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 128
    .line 129
    check-cast p3, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 130
    .line 131
    invoke-virtual {p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    if-eqz p3, :cond_8b

    .line 136
    .line 137
    invoke-virtual {p3, p1}, Lcom/oplus/quickstep/dock/DockView;->updateLastState(Lcom/android/launcher3/LauncherState;)V

    .line 138
    .line 139
    .line 140
    :cond_8b
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 141
    .line 142
    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    sget-object p3, Lcom/oplus/quickstep/relay/data/RelayState$ExitRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$ExitRecent;

    .line 149
    .line 150
    invoke-virtual {p0, p3}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    .line 151
    .line 152
    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string p3, "addDockViewStateChangeAnim isRunningPendingAnimation: "

    .line 156
    .line 157
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p3, ", isCurrentSupport: "

    .line 164
    .line 165
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string p3, ", toState:"

    .line 172
    .line 173
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    const-string p3, "OplusRecentsViewStateController"

    .line 184
    .line 185
    invoke-static {p3, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/oplus/quickstep/dock/DockView;->getDockViewController()Lcom/oplus/quickstep/dock/DockViewController;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-eqz p0, :cond_cf

    .line 193
    .line 194
    const-string p3, "STATE_CHANGE_WITH_ANIM"

    .line 195
    .line 196
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/quickstep/dock/DockViewController;->gotoState(Lcom/android/launcher3/states/OPlusBaseState;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)Landroid/animation/Animator;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    if-eqz p0, :cond_cf

    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    .line 206
    .line 207
    .line 208
    :cond_cf
    return-void
.end method

.method private static final addDockViewStateChangeAnim$lambda$23$lambda$22(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    const-string/jumbo p1, "this$0"

    .line 4
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 9
    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 11
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object p0

    .line 15
    sget-object p1, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;

    .line 17
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    return-void
.end method

.method private final addToOverviewContentAlphaAnim(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/anim/PendingAnimation;FLcom/android/launcher3/states/StateAnimationConfig;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/launcher3/anim/PendingAnimation;",
            "F",
            "Lcom/android/launcher3/states/StateAnimationConfig;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->getContentAlphaProperty()Landroid/util/FloatProperty;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [F

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput p3, v2, v3

    .line 10
    .line 11
    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 p3, 0x9

    .line 16
    .line 17
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    .line 18
    .line 19
    invoke-virtual {p4, p3, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p1, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 27
    .line 28
    .line 29
    new-instance p3, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addToOverviewContentAlphaAnim$stackScrollRunnable$1;

    .line 30
    .line 31
    invoke-direct {p3, p5, p1, p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$addToOverviewContentAlphaAnim$stackScrollRunnable$1;-><init>(ZLandroid/animation/ObjectAnimator;Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)V

    .line 32
    .line 33
    .line 34
    if-eqz p5, :cond_2b

    .line 35
    .line 36
    new-instance p0, Lcom/android/launcher3/stack/view/q;

    .line 37
    .line 38
    invoke-direct {p0, p3, v1}, Lcom/android/launcher3/stack/view/q;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    return-void
.end method

.method private static final addToOverviewContentAlphaAnim$lambda$20(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 1
    const-string v0, "$tmp0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->addToOverviewContentAlphaAnim$lambda$20(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->addDockViewStateChangeAnim$lambda$23$lambda$22(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final createAlignRunningTaskViewAnimationWhenExitRecentsIfNeed(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 11

    .line 1
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->enableTaskViewInterruptSpringAnim()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getOplusSwipeUpHandler()Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getShowRunningTaskActWithSequenceGuarded()Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-eqz v1, :cond_6f

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getStateCallback()Lcom/android/quickstep/MultiStateCallback;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget v6, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    .line 23
    .line 24
    invoke-virtual {p0, v6}, Lcom/android/quickstep/MultiStateCallback;->hasStates(I)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_39

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->isScreenshotCapturedCompleted()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_24

    .line 35
    .line 36
    goto :goto_39

    .line 37
    :cond_24
    const/4 p0, 0x0

    .line 38
    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->screenshotForInterrupt(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getStateCallback()Lcom/android/quickstep/MultiStateCallback;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v7, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$createAlignRunningTaskViewAnimationWhenExitRecentsIfNeed$lambda$18$$inlined$runAfterScreenshotCaptured$default$1;

    .line 46
    .line 47
    move-object v0, v7

    .line 48
    move-object v2, p1

    .line 49
    move-object v3, p1

    .line 50
    move-object v4, p2

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$createAlignRunningTaskViewAnimationWhenExitRecentsIfNeed$lambda$18$$inlined$runAfterScreenshotCaptured$default$1;-><init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/anim/PendingAnimation;Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v6, v7}, Lcom/android/quickstep/MultiStateCallback;->runOnceAtState(ILjava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    goto :goto_6f

    .line 58
    :cond_39
    :goto_39
    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getToRecentsAnimRecord()Lcom/android/quickstep/util/ToRecentsAnimationRecord;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz p0, :cond_6f

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/AnimationRecord;->isRectFSpringAnimRunning()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_46

    .line 69
    .line 70
    goto :goto_47

    .line 71
    :cond_46
    const/4 p0, 0x0

    .line 72
    :goto_47
    if-eqz p0, :cond_6f

    .line 73
    .line 74
    const/4 v0, 0x4

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/ToRecentsAnimationRecord;->addDetectedInteractionFlag(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentInterruptSpringCtrl()Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;->alignRunningTaskViewWithAnimation(Lcom/android/quickstep/util/ToRecentsAnimationRecord;)Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_6c

    .line 87
    .line 88
    invoke-virtual {p2, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Lcom/android/quickstep/util/animation/SpringAnimation;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/quickstep/util/animation/AnimationRecord;->getAnimatorSet()Lcom/android/quickstep/util/animation/MultiAnimatorSet;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/animation/MultiAnimatorSet;->end(I)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$createAlignRunningTaskViewAnimationWhenExitRecentsIfNeed$1$1$2$1$1;

    .line 102
    .line 103
    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$createAlignRunningTaskViewAnimationWhenExitRecentsIfNeed$1$1$2$1$1;-><init>(Lcom/android/quickstep/util/ToRecentsAnimationRecord;Lcom/android/quickstep/views/LauncherRecentsView;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 107
    .line 108
    .line 109
    :cond_6c
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->resetRunningTaskViewId()V

    .line 110
    .line 111
    .line 112
    :cond_6f
    :goto_6f
    return-void
.end method

.method private final createStackLayoutExitAnim(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/states/StateAnimationConfig;FZ)Ljava/lang/Object;
    .registers 24

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    sget-object v3, Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;->INSTANCE:Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;

    .line 5
    .line 6
    invoke-virtual {v3, v1}, Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;->cancel(Lcom/android/quickstep/views/RecentsView;)V

    .line 7
    .line 8
    .line 9
    sget-object v3, Lcom/oplus/quickstep/utils/VirtualBtnToRecentContinuationHelper;->INSTANCE:Lcom/oplus/quickstep/utils/VirtualBtnToRecentContinuationHelper;

    .line 10
    .line 11
    invoke-virtual {v3, v1}, Lcom/oplus/quickstep/utils/VirtualBtnToRecentContinuationHelper;->cancel(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, v1, Lcom/oplus/quickstep/views/StackPagedViewEx;->mScroller:Lcom/android/launcher3/util/OverScroller;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_18

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->endScrollerAnimation()V

    .line 23
    .line 24
    .line 25
    :cond_18
    const/4 v3, 0x0

    .line 26
    if-eqz p4, :cond_32

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentInterruptSpringCtrl()Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;->getTileToStackSpringAnim()Lcom/oplus/quickstep/anim/recents/RecentTaskListSpringAnim;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_32

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/oplus/quickstep/anim/recents/RecentTaskListSpringAnim;->isRunning()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2c

    .line 43
    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move-object v4, v3

    .line 46
    :goto_2d
    if-eqz v4, :cond_32

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Lcom/oplus/quickstep/anim/recents/RecentTaskListSpringAnim;->cancel(Z)V

    .line 49
    .line 50
    .line 51
    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    const/high16 v6, 0x3f800000    # 1.0f

    .line 60
    .line 61
    cmpg-float v7, v4, v6

    .line 62
    .line 63
    if-nez v7, :cond_46

    .line 64
    .line 65
    cmpg-float v7, v5, v6

    .line 66
    .line 67
    if-nez v7, :cond_46

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    goto :goto_4d

    .line 71
    :cond_46
    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 75
    .line 76
    .line 77
    move v6, v2

    .line 78
    :goto_4d
    invoke-static {v1, v3, v2, v3}, Lcom/oplus/basecommon/util/ViewUtilsKt;->getAreaOnScreen$default(Landroid/view/View;Landroid/graphics/RectF;ILjava/lang/Object;)Landroid/graphics/RectF;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    new-instance v8, Landroid/graphics/RectF;

    .line 83
    .line 84
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v9, Landroid/graphics/RectF;

    .line 88
    .line 89
    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v10, Landroid/graphics/RectF;

    .line 93
    .line 94
    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v11, Landroid/graphics/RectF;

    .line 98
    .line 99
    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    const v13, 0x7fffffff

    .line 107
    .line 108
    .line 109
    const/4 v14, 0x0

    .line 110
    :goto_6d
    const-string v3, "; rvAreaOnScreen:"

    .line 111
    .line 112
    const-string v0, "OplusRecentsViewStateController"

    .line 113
    .line 114
    if-ge v14, v12, :cond_11f

    .line 115
    .line 116
    invoke-virtual {v1, v14}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    instance-of v15, v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 121
    .line 122
    if-eqz v15, :cond_7e

    .line 123
    .line 124
    check-cast v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 125
    .line 126
    goto :goto_7f

    .line 127
    :cond_7e
    const/4 v2, 0x0

    .line 128
    :goto_7f
    if-nez v2, :cond_82

    .line 129
    .line 130
    goto :goto_8b

    .line 131
    :cond_82
    invoke-static {v2, v8}, Lcom/oplus/basecommon/util/ViewUtilsKt;->getAreaOnScreen(Landroid/view/View;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDispatchDrawVisible()Z

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    if-nez v15, :cond_92

    .line 139
    .line 140
    :goto_8b
    move/from16 v18, v5

    .line 141
    .line 142
    move/from16 v17, v12

    .line 143
    .line 144
    :cond_8f
    :goto_8f
    const/4 v0, 0x1

    .line 145
    goto/16 :goto_114

    .line 146
    .line 147
    :cond_92
    invoke-static {v7, v8}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 148
    .line 149
    .line 150
    move-result v15

    .line 151
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableVerbose()Z

    .line 152
    .line 153
    .line 154
    move-result v17

    .line 155
    if-eqz v17, :cond_d2

    .line 156
    .line 157
    move/from16 v17, v12

    .line 158
    .line 159
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 160
    .line 161
    .line 162
    move-result v12

    .line 163
    move/from16 v18, v5

    .line 164
    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, "-"

    .line 174
    .line 175
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, "; tvAreaOnScreen:"

    .line 188
    .line 189
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, "; tvAlpha:"

    .line 196
    .line 197
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_d6

    .line 211
    :cond_d2
    move/from16 v18, v5

    .line 212
    .line 213
    move/from16 v17, v12

    .line 214
    .line 215
    :goto_d6
    if-eqz v15, :cond_dd

    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    goto :goto_de

    .line 222
    :cond_dd
    const/4 v0, 0x0

    .line 223
    :goto_de
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getMultiAlpha()Lcom/android/launcher3/util/OplusMultiValueAlpha;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const/4 v3, 0x7

    .line 228
    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    .line 233
    .line 234
    .line 235
    if-eqz v15, :cond_f2

    .line 236
    .line 237
    if-ge v14, v13, :cond_f2

    .line 238
    .line 239
    invoke-virtual {v11, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 240
    .line 241
    .line 242
    move v13, v14

    .line 243
    :cond_f2
    invoke-virtual {v10}, Landroid/graphics/RectF;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_8f

    .line 248
    .line 249
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    int-to-float v0, v0

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    int-to-float v1, v1

    .line 259
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    int-to-float v3, v3

    .line 264
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    int-to-float v2, v2

    .line 269
    invoke-virtual {v9, v0, v1, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v10, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_8f

    .line 276
    .line 277
    :goto_114
    add-int/2addr v14, v0

    .line 278
    move-object/from16 v1, p1

    .line 279
    .line 280
    move v2, v0

    .line 281
    move/from16 v12, v17

    .line 282
    .line 283
    move/from16 v5, v18

    .line 284
    .line 285
    const/4 v3, 0x0

    .line 286
    goto/16 :goto_6d

    .line 287
    .line 288
    :cond_11f
    move/from16 v18, v5

    .line 289
    .line 290
    move-object/from16 v1, p1

    .line 291
    .line 292
    if-eqz v6, :cond_12d

    .line 293
    .line 294
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 295
    .line 296
    .line 297
    move/from16 v2, v18

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 300
    .line 301
    .line 302
    :cond_12d
    invoke-virtual {v9}, Landroid/graphics/RectF;->isEmpty()Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    const-string v4, "; headTVArea:"

    .line 307
    .line 308
    const-string v5, "; firstTVArea:"

    .line 309
    .line 310
    const-string v6, "; tvOriginalArea:"

    .line 311
    .line 312
    if-nez v2, :cond_2ae

    .line 313
    .line 314
    invoke-virtual {v10}, Landroid/graphics/RectF;->isEmpty()Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-nez v2, :cond_2ae

    .line 319
    .line 320
    invoke-virtual {v11}, Landroid/graphics/RectF;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_147

    .line 325
    .line 326
    goto/16 :goto_2ae

    .line 327
    .line 328
    :cond_147
    iget-object v2, v1, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 329
    .line 330
    instance-of v2, v2, Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    .line 331
    .line 332
    if-eqz v2, :cond_171

    .line 333
    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-eqz v2, :cond_171

    .line 339
    .line 340
    iget v2, v11, Landroid/graphics/RectF;->left:F

    .line 341
    .line 342
    iget v8, v9, Landroid/graphics/RectF;->left:F

    .line 343
    .line 344
    sub-float/2addr v2, v8

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    int-to-float v8, v8

    .line 350
    div-float/2addr v2, v8

    .line 351
    add-float v2, v2, p3

    .line 352
    .line 353
    iget v8, v10, Landroid/graphics/RectF;->left:F

    .line 354
    .line 355
    iget v12, v9, Landroid/graphics/RectF;->left:F

    .line 356
    .line 357
    sub-float/2addr v8, v12

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 359
    .line 360
    .line 361
    move-result v12

    .line 362
    :goto_169
    int-to-float v12, v12

    .line 363
    div-float/2addr v8, v12

    .line 364
    add-float v8, v8, p3

    .line 365
    .line 366
    move v12, v8

    .line 367
    move v8, v2

    .line 368
    goto/16 :goto_210

    .line 369
    .line 370
    :cond_171
    iget-object v2, v1, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 371
    .line 372
    instance-of v2, v2, Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    .line 373
    .line 374
    if-eqz v2, :cond_194

    .line 375
    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-nez v2, :cond_194

    .line 381
    .line 382
    iget v2, v9, Landroid/graphics/RectF;->right:F

    .line 383
    .line 384
    iget v8, v11, Landroid/graphics/RectF;->right:F

    .line 385
    .line 386
    sub-float/2addr v2, v8

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 388
    .line 389
    .line 390
    move-result v8

    .line 391
    int-to-float v8, v8

    .line 392
    div-float/2addr v2, v8

    .line 393
    add-float v2, v2, p3

    .line 394
    .line 395
    iget v8, v9, Landroid/graphics/RectF;->right:F

    .line 396
    .line 397
    iget v12, v10, Landroid/graphics/RectF;->right:F

    .line 398
    .line 399
    sub-float/2addr v8, v12

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 401
    .line 402
    .line 403
    move-result v12

    .line 404
    goto :goto_169

    .line 405
    :cond_194
    iget-object v2, v1, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 406
    .line 407
    instance-of v2, v2, Lcom/android/launcher3/touch/SeascapePagedViewHandler;

    .line 408
    .line 409
    if-eqz v2, :cond_1b7

    .line 410
    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-nez v2, :cond_1b7

    .line 416
    .line 417
    iget v2, v9, Landroid/graphics/RectF;->bottom:F

    .line 418
    .line 419
    iget v8, v11, Landroid/graphics/RectF;->bottom:F

    .line 420
    .line 421
    sub-float/2addr v2, v8

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    int-to-float v8, v8

    .line 427
    div-float/2addr v2, v8

    .line 428
    add-float v2, v2, p3

    .line 429
    .line 430
    iget v8, v9, Landroid/graphics/RectF;->bottom:F

    .line 431
    .line 432
    iget v12, v10, Landroid/graphics/RectF;->bottom:F

    .line 433
    .line 434
    sub-float/2addr v8, v12

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 436
    .line 437
    .line 438
    move-result v12

    .line 439
    goto :goto_169

    .line 440
    :cond_1b7
    iget-object v2, v1, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 441
    .line 442
    instance-of v2, v2, Lcom/android/launcher3/touch/SeascapePagedViewHandler;

    .line 443
    .line 444
    if-eqz v2, :cond_1da

    .line 445
    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-eqz v2, :cond_1da

    .line 451
    .line 452
    iget v2, v11, Landroid/graphics/RectF;->top:F

    .line 453
    .line 454
    iget v8, v9, Landroid/graphics/RectF;->top:F

    .line 455
    .line 456
    sub-float/2addr v2, v8

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 458
    .line 459
    .line 460
    move-result v8

    .line 461
    int-to-float v8, v8

    .line 462
    div-float/2addr v2, v8

    .line 463
    add-float v2, v2, p3

    .line 464
    .line 465
    iget v8, v10, Landroid/graphics/RectF;->top:F

    .line 466
    .line 467
    iget v12, v9, Landroid/graphics/RectF;->top:F

    .line 468
    .line 469
    sub-float/2addr v8, v12

    .line 470
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 471
    .line 472
    .line 473
    move-result v12

    .line 474
    goto :goto_169

    .line 475
    :cond_1da
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->isRtl()Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-eqz v2, :cond_1f8

    .line 480
    .line 481
    iget v2, v11, Landroid/graphics/RectF;->top:F

    .line 482
    .line 483
    iget v8, v9, Landroid/graphics/RectF;->top:F

    .line 484
    .line 485
    sub-float/2addr v2, v8

    .line 486
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 487
    .line 488
    .line 489
    move-result v8

    .line 490
    int-to-float v8, v8

    .line 491
    div-float/2addr v2, v8

    .line 492
    add-float v2, v2, p3

    .line 493
    .line 494
    iget v8, v10, Landroid/graphics/RectF;->top:F

    .line 495
    .line 496
    iget v12, v9, Landroid/graphics/RectF;->top:F

    .line 497
    .line 498
    sub-float/2addr v8, v12

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 500
    .line 501
    .line 502
    move-result v12

    .line 503
    goto/16 :goto_169

    .line 504
    .line 505
    :cond_1f8
    iget v2, v9, Landroid/graphics/RectF;->bottom:F

    .line 506
    .line 507
    iget v8, v11, Landroid/graphics/RectF;->bottom:F

    .line 508
    .line 509
    sub-float/2addr v2, v8

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 511
    .line 512
    .line 513
    move-result v8

    .line 514
    int-to-float v8, v8

    .line 515
    div-float/2addr v2, v8

    .line 516
    add-float v2, v2, p3

    .line 517
    .line 518
    iget v8, v9, Landroid/graphics/RectF;->bottom:F

    .line 519
    .line 520
    iget v12, v10, Landroid/graphics/RectF;->bottom:F

    .line 521
    .line 522
    sub-float/2addr v8, v12

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 524
    .line 525
    .line 526
    move-result v12

    .line 527
    goto/16 :goto_169

    .line 528
    .line 529
    :goto_210
    sget-object v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 530
    .line 531
    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isLaunchFromButtonRunning()Z

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    if-eqz v2, :cond_238

    .line 536
    .line 537
    invoke-static {}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getRecentLaunchFromButtonAnimatorSet()Landroid/animation/AnimatorSet;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    if-eqz v2, :cond_22e

    .line 542
    .line 543
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 544
    .line 545
    .line 546
    move-result v14

    .line 547
    if-eqz v14, :cond_227

    .line 548
    .line 549
    move-object/from16 v16, v2

    .line 550
    .line 551
    goto :goto_229

    .line 552
    :cond_227
    const/16 v16, 0x0

    .line 553
    .line 554
    :goto_229
    if-eqz v16, :cond_22e

    .line 555
    .line 556
    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->cancel()V

    .line 557
    .line 558
    .line 559
    :cond_22e
    new-instance v2, Lcom/android/quickstep/uioverrides/d;

    .line 560
    .line 561
    invoke-direct {v2, v1}, Lcom/android/quickstep/uioverrides/d;-><init>(Lcom/android/quickstep/views/LauncherRecentsView;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/RecentsView;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 565
    .line 566
    .line 567
    move-object v14, v2

    .line 568
    goto :goto_239

    .line 569
    :cond_238
    const/4 v14, 0x0

    .line 570
    :goto_239
    if-eqz p4, :cond_242

    .line 571
    .line 572
    iget v2, v1, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    .line 573
    .line 574
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    goto :goto_24c

    .line 579
    :cond_242
    invoke-static {}, Lcom/android/quickstep/views/RecentsView;->getAdjacentPageHorizontalOffsetProperty()Landroid/util/FloatProperty;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-virtual {v2, v1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    check-cast v2, Ljava/lang/Float;

    .line 588
    .line 589
    :goto_24c
    iget-object v15, v1, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 590
    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    move-object/from16 v16, v14

    .line 594
    .line 595
    const-string v14, "createStackLayoutExitAnim; "

    .line 596
    .line 597
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v2, "; animEndFinalOffset:"

    .line 604
    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    const-string v2, "; animRunFinalOffset:"

    .line 612
    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const-string v2, "; "

    .line 644
    .line 645
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    const-string v2, "; indexOfHeadInScreenTaskView:"

    .line 652
    .line 653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-static {v1, v13, v0}, Lcom/android/common/util/p2;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 657
    .line 658
    .line 659
    if-eqz p4, :cond_29f

    .line 660
    .line 661
    move-object/from16 v0, p0

    .line 662
    .line 663
    move-object/from16 v1, p1

    .line 664
    .line 665
    move-object/from16 v5, v16

    .line 666
    .line 667
    invoke-direct {v0, v1, v8, v5}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->createStackLayoutExitSpringAnimation(Lcom/android/quickstep/views/LauncherRecentsView;FLandroid/view/ViewTreeObserver$OnScrollChangedListener;)Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    goto :goto_2ad

    .line 672
    :cond_29f
    move-object/from16 v0, p0

    .line 673
    .line 674
    move-object/from16 v1, p1

    .line 675
    .line 676
    move-object/from16 v5, v16

    .line 677
    .line 678
    move-object/from16 v2, p2

    .line 679
    .line 680
    move v3, v8

    .line 681
    move v4, v12

    .line 682
    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->createStackLayoutExitAnimator(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/states/StateAnimationConfig;FFLandroid/view/ViewTreeObserver$OnScrollChangedListener;)Landroid/animation/Animator;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    :goto_2ad
    return-object v0

    .line 687
    :cond_2ae
    :goto_2ae
    new-instance v2, Ljava/lang/StringBuilder;

    .line 688
    .line 689
    const-string v3, "createStackLayoutExitAnim fail; rvAreaOnScreen:"

    .line 690
    .line 691
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    invoke-static {v0, v2}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    if-eqz p4, :cond_2e3

    .line 723
    .line 724
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentInterruptSpringCtrl()Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    sget-object v1, Lcom/oplus/quickstep/anim/recents/RecentInterruptAnimConfig$AnimationScene$ExitRecent;->INSTANCE:Lcom/oplus/quickstep/anim/recents/RecentInterruptAnimConfig$AnimationScene$ExitRecent;

    .line 729
    .line 730
    const/4 v4, 0x2

    .line 731
    const/4 v5, 0x0

    .line 732
    const/4 v2, 0x0

    .line 733
    move/from16 v3, p3

    .line 734
    .line 735
    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;->getAdjacentPageOffsetSpringAnim$default(Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;Lcom/oplus/quickstep/anim/recents/RecentInterruptAnimConfig$AnimationScene;FFILjava/lang/Object;)Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    return-object v0

    .line 740
    :cond_2e3
    invoke-static {}, Lcom/android/quickstep/views/RecentsView;->getAdjacentPageHorizontalOffsetProperty()Landroid/util/FloatProperty;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    const/4 v2, 0x1

    .line 745
    new-array v2, v2, [F

    .line 746
    .line 747
    const/4 v3, 0x0

    .line 748
    aput p3, v2, v3

    .line 749
    .line 750
    invoke-static {v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    .line 755
    .line 756
    move-object/from16 v2, p2

    .line 757
    .line 758
    const/4 v3, 0x7

    .line 759
    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 764
    .line 765
    .line 766
    const-string v1, "apply(...)"

    .line 767
    .line 768
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    return-object v0
.end method

.method private static final createStackLayoutExitAnim$lambda$29(Lcom/android/quickstep/views/LauncherRecentsView;)V
    .registers 2

    .line 1
    const-string v0, "$recentView"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->isAutoFocusToNextPageInOverviewAnimatorStarted:Z

    .line 7
    .line 8
    if-eqz v0, :cond_12

    .line 9
    .line 10
    iget-object v0, p0, Lcom/oplus/quickstep/views/StackPagedViewEx;->mScroller:Lcom/android/launcher3/util/OverScroller;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_12

    .line 17
    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    if-eqz p0, :cond_18

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->endScrollerAnimation()V

    .line 23
    .line 24
    .line 25
    :cond_18
    return-void
.end method

.method private final createStackLayoutExitAnimator(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/states/StateAnimationConfig;FFLandroid/view/ViewTreeObserver$OnScrollChangedListener;)Landroid/animation/Animator;
    .registers 9

    .line 1
    invoke-static {}, Lcom/android/quickstep/views/RecentsView;->getAdjacentPageHorizontalOffsetProperty()Landroid/util/FloatProperty;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 9
    aput p3, v1, v2

    .line 11
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 15
    const-string/jumbo v0, "ofFloat(...)"

    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 22
    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    .line 24
    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    .line 28
    invoke-virtual {p3, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    new-instance p2, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$createStackLayoutExitAnimator$1;

    .line 33
    invoke-direct {p2, p1, p4, p5, p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$createStackLayoutExitAnimator$1;-><init>(Lcom/android/quickstep/views/LauncherRecentsView;FLandroid/view/ViewTreeObserver$OnScrollChangedListener;Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)V

    .line 36
    invoke-virtual {p3, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p3
.end method

.method private final createStackLayoutExitSpringAnimation(Lcom/android/quickstep/views/LauncherRecentsView;FLandroid/view/ViewTreeObserver$OnScrollChangedListener;)Lcom/android/quickstep/util/animation/SpringAnimation;
    .registers 10

    .line 1
    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentInterruptSpringCtrl()Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/oplus/quickstep/anim/recents/RecentInterruptAnimConfig$AnimationScene$ExitRecent;->INSTANCE:Lcom/oplus/quickstep/anim/recents/RecentInterruptAnimConfig$AnimationScene$ExitRecent;

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;->getAdjacentPageOffsetSpringAnim$default(Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;Lcom/oplus/quickstep/anim/recents/RecentInterruptAnimConfig$AnimationScene;FFILjava/lang/Object;)Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "OplusRecentsViewStateController"

    .line 16
    .line 17
    const-string v1, "StackLayoutExitAnim onAnimationStart"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-static {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRecentGoHomeTaskAnimRunning(Z)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$createStackLayoutExitSpringAnimation$endListener$1;

    .line 27
    .line 28
    invoke-direct {v0, p1, p3, p0, p2}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$createStackLayoutExitSpringAnimation$endListener$1;-><init>(Lcom/android/quickstep/views/LauncherRecentsView;Landroid/view/ViewTreeObserver$OnScrollChangedListener;Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Lcom/android/quickstep/util/animation/SpringAnimation;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Lcom/android/quickstep/util/animation/DynamicAnimation;->addEndListener(Lcom/android/quickstep/util/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/quickstep/util/animation/DynamicAnimation;

    .line 32
    .line 33
    .line 34
    return-object p2
.end method

.method public static synthetic d(Lcom/android/quickstep/views/LauncherRecentsView;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->setStateWithAnimationInternal$lambda$13$lambda$11(Lcom/android/quickstep/views/LauncherRecentsView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/views/LauncherRecentsView;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->createStackLayoutExitAnim$lambda$29(Lcom/android/quickstep/views/LauncherRecentsView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final enterRecents(Lcom/android/launcher3/LauncherState;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_11

    .line 9
    .line 10
    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1a

    .line 17
    .line 18
    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 19
    .line 20
    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 21
    .line 22
    if-eqz v0, :cond_1a

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->updateUseAbsoluteScrollX(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->mIsInRecents:Z

    .line 30
    .line 31
    if-ne v0, p1, :cond_21

    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    iput-boolean p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->mIsInRecents:Z

    .line 35
    .line 36
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_4d

    .line 44
    .line 45
    sput-boolean v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isQuickSwitchStateAnimationRunning:Z

    .line 46
    .line 47
    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 50
    .line 51
    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcom/android/quickstep/RecentsModel;

    .line 62
    .line 63
    invoke-static {}, Lcom/android/statistics/RecentStatisticsManager;->getInstance()Lcom/android/statistics/RecentStatisticsManager;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Lcom/android/quickstep/uioverrides/a;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/uioverrides/a;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;I)I

    .line 75
    .line 76
    .line 77
    goto :goto_54

    .line 78
    :cond_4d
    invoke-static {}, Lcom/android/statistics/RecentStatisticsManager;->getInstance()Lcom/android/statistics/RecentStatisticsManager;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lcom/android/statistics/RecentStatisticsManager;->statLaunch()V

    .line 83
    .line 84
    .line 85
    :goto_54
    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->setState$lambda$6$lambda$4(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final ignoreUpdateState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz p2, :cond_12

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 16
    .line 17
    move p1, v2

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move p1, v1

    .line 20
    :goto_13
    sget-object p2, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewFullscreenProgress()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sub-float/2addr p2, v0

    .line 41
    invoke-static {p2}, Landroid/util/MathUtils;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const v0, 0x3c23d70a    # 0.01f

    .line 46
    .line 47
    .line 48
    cmpg-float p2, p2, v0

    .line 49
    .line 50
    if-gez p2, :cond_35

    .line 51
    .line 52
    move p2, v2

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move p2, v1

    .line 55
    :goto_36
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 56
    .line 57
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 62
    .line 63
    if-ne p0, v0, :cond_42

    .line 64
    .line 65
    move p0, v2

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move p0, v1

    .line 68
    :goto_43
    if-eqz p1, :cond_4a

    .line 69
    .line 70
    if-eqz p2, :cond_4a

    .line 71
    .line 72
    if-eqz p0, :cond_4a

    .line 73
    .line 74
    move v1, v2

    .line 75
    :cond_4a
    return v1
.end method

.method private final interceptSomeUIUpdate(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Z
    .registers 8

    .line 1
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isAppToHomeSwipeToRecentTogetherRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "OplusRecentsViewStateController"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_22

    .line 11
    .line 12
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 13
    .line 14
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1b

    .line 19
    .line 20
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 21
    .line 22
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_22

    .line 27
    .line 28
    :cond_1b
    const-string/jumbo p0, "interceptSomeUIUpdate: isAppToHomeRunning"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 36
    .line 37
    instance-of v3, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 38
    .line 39
    if-eqz v3, :cond_2b

    .line 40
    .line 41
    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 42
    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 v0, 0x0

    .line 45
    :goto_2c
    if-eqz v0, :cond_35

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isLaunchIconAnimStarted()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ne v0, v2, :cond_35

    .line 52
    .line 53
    goto :goto_3f

    .line 54
    :cond_35
    invoke-static {}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOpeningAnim()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4e

    .line 63
    .line 64
    :goto_3f
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 65
    .line 66
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4e

    .line 71
    .line 72
    const-string/jumbo p0, "interceptSomeUIUpdate: isOpeningAnimation"

    .line 73
    .line 74
    .line 75
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return v2

    .line 79
    :cond_4e
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 80
    .line 81
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v3, 0x0

    .line 86
    if-eqz v0, :cond_61

    .line 87
    .line 88
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 89
    .line 90
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_61

    .line 95
    .line 96
    move v0, v2

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    move v0, v3

    .line 99
    :goto_62
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 100
    .line 101
    check-cast v4, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 102
    .line 103
    if-eqz v4, :cond_7d

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentInterruptSpringCtrl()Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v4, :cond_7d

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;->isTileOrStackTransitionAnimRunning()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-ne v4, v2, :cond_7d

    .line 116
    .line 117
    if-nez v0, :cond_7d

    .line 118
    .line 119
    const-string/jumbo p0, "interceptSomeUIUpdate: isTileOrStackTransitionAnimRunning"

    .line 120
    .line 121
    .line 122
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return v2

    .line 126
    :cond_7d
    sget-object v0, Lcom/android/quickstep/interrupt/manager/SlideUpInterruptManager;->INSTANCE:Lcom/android/quickstep/interrupt/manager/SlideUpInterruptManager;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/android/quickstep/interrupt/manager/SlideUpInterruptManager;->getInterruptHelper()Lcom/android/quickstep/interrupt/helper/BaseInterruptHelper;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 133
    .line 134
    invoke-virtual {v0, v4}, Lcom/android/quickstep/interrupt/helper/BaseInterruptHelper;->shouldBlockStateMachineRecentsScale(Lcom/android/quickstep/views/RecentsView;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_92

    .line 139
    .line 140
    const-string/jumbo p0, "interceptSomeUIUpdate: cardFirstRecentsScaleBlocked"

    .line 141
    .line 142
    .line 143
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return v2

    .line 147
    :cond_92
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 148
    .line 149
    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 154
    .line 155
    if-ne p0, v0, :cond_9e

    .line 156
    .line 157
    move p0, v2

    .line 158
    goto :goto_9f

    .line 159
    :cond_9e
    move p0, v3

    .line 160
    :goto_9f
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportMultiTapMenu()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_c0

    .line 167
    .line 168
    if-eqz p0, :cond_c0

    .line 169
    .line 170
    sget-object p0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 171
    .line 172
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-eqz p0, :cond_c0

    .line 177
    .line 178
    sget-object p0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    .line 179
    .line 180
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-eqz p0, :cond_c0

    .line 185
    .line 186
    const-string/jumbo p0, "interceptSomeUIUpdate: isTapMenuBackgroundToQuickSwitch"

    .line 187
    .line 188
    .line 189
    invoke-static {v1, p0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return v2

    .line 193
    :cond_c0
    return v3
.end method

.method private final isGridProgressToOverView()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/oplus/quickstep/delegates/RecentsViewUtils;->isGridLayout(Lcom/android/quickstep/views/RecentsView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3e

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3e

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "getDragLayer(...)"

    .line 25
    .line 26
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-class v0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->findTouchController(Ljava/lang/Class;)Lcom/android/launcher3/util/TouchController;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentTouchController;

    .line 36
    .line 37
    if-eqz p0, :cond_2b

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->isPossibleGotoOverview()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v0, v1

    .line 45
    :goto_2c
    if-eqz v0, :cond_3e

    .line 46
    .line 47
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->getHelper()Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_3e

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->getMIsGridAnimationStarted()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3e

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    :cond_3e
    return v1
.end method

.method private final resetFolderShowState()V
    .registers 5

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 3
    invoke-static {p0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_13

    goto :goto_39

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v3, "resetFolderShowState: floder is open and alpha is "

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, " and reset 1f"

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v2, ""

    .line 46
    const-string v3, "OplusRecentsViewStateController"

    .line 48
    invoke-static {v2, v3, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_39
    :goto_39
    return-void
.end method

.method private final resetRecentScroll(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V
    .registers 10

    .line 1
    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 12
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 18
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/launcher3/LauncherState;

    goto :goto_19

    :cond_18
    move-object v2, v1

    .line 26
    :goto_19
    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_3b

    if-eqz v0, :cond_31

    .line 37
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 43
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/launcher3/LauncherState;

    goto :goto_32

    :cond_31
    move-object v2, v1

    .line 51
    :goto_32
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v2, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v2, v4

    .line 61
    :goto_3c
    sget-object v5, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 63
    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isInGoRecentsAnim()Z

    move-result v6

    if-eqz v6, :cond_56

    if-eqz v2, :cond_56

    .line 71
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 77
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 79
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    goto/16 :goto_ce

    .line 87
    :cond_56
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 89
    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 91
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v2

    if-nez v2, :cond_ce

    .line 97
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 99
    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 101
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentAnimateDragging()Z

    move-result v2

    if-nez v2, :cond_ce

    .line 107
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 109
    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 111
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGustureActive()Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_ce

    .line 118
    :cond_75
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 120
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 126
    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    .line 128
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 134
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 136
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 142
    sget-object v1, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 144
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 150
    :cond_95
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 152
    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 154
    invoke-virtual {v1}, Lcom/oplus/quickstep/views/StackPagedViewEx;->isPageInTransition()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 160
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 162
    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 164
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->forceFinishScroller()V

    .line 167
    :cond_a6
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 173
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 179
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_bf

    .line 185
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 187
    check-cast p1, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 189
    invoke-virtual {p1, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setIgnoreLoadTaskListWhenRest(Z)V

    .line 192
    :cond_bf
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 194
    check-cast p1, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 196
    invoke-virtual {p1}, Lcom/android/quickstep/views/LauncherRecentsView;->reset()V

    .line 199
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 201
    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 203
    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setHasReset(Z)V

    :cond_cd
    return-void

    .line 207
    :cond_ce
    :goto_ce
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result p1

    if-eqz p1, :cond_158

    if-eqz v0, :cond_e3

    .line 215
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_e3

    .line 221
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    .line 225
    check-cast p1, Lcom/android/launcher3/LauncherState;

    goto :goto_e4

    :cond_e3
    move-object p1, v1

    :goto_e4
    if-eqz v0, :cond_f3

    .line 231
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_f3

    .line 237
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    move-object v1, v0

    .line 242
    check-cast v1, Lcom/android/launcher3/LauncherState;

    .line 244
    :cond_f3
    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isInGoRecentsAnim()Z

    move-result v0

    .line 248
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 250
    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 252
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v2

    .line 256
    iget-object v3, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 258
    check-cast v3, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 260
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentAnimateDragging()Z

    move-result v3

    .line 264
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 266
    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 268
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGustureActive()Z

    move-result p0

    const/16 v4, 0xa

    .line 274
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    .line 280
    const-string/jumbo v6, "resetRecentScroll stateManager toState:"

    .line 283
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    const-string p2, ", lastState: "

    .line 291
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    const-string p1, " , state: "

    .line 299
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    const-string p1, " , isInGoRecentsAnim: "

    .line 307
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 313
    const-string p1, " , springAnimToRecent: "

    .line 315
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string p1, " , recentAnimateDragging: "

    .line 320
    const-string p2, " , isGestureActive: "

    .line 322
    invoke-static {v5, v2, p1, v3, p2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 325
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 328
    const-string p0, " "

    .line 330
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 340
    const-string p1, "OplusRecentsViewStateController"

    .line 342
    invoke-static {p1, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_158
    return-void
.end method

.method private static final setState$lambda$6$lambda$4(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .registers 4

    .line 1
    const-string v0, "$state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final setStateWithAnimationInternal$lambda$13$lambda$11(Lcom/android/quickstep/views/LauncherRecentsView;)V
    .registers 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->loadVisibleTaskData(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final setStateWithAnimationInternal$lambda$8(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZZ[FLjava/lang/Boolean;)V
    .registers 5

    .line 1
    const-string/jumbo p4, "this$0"

    .line 4
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p4, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 9
    check-cast p4, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 11
    invoke-virtual {p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTaskVisuals()V

    if-eqz p1, :cond_1f

    .line 16
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 18
    check-cast p0, Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 p1, 0x1

    if-eqz p2, :cond_1a

    .line 23
    aget p1, p3, p1

    neg-float p1, p1

    goto :goto_1c

    .line 27
    :cond_1a
    aget p1, p3, p1

    .line 29
    :goto_1c
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1f
    return-void
.end method

.method private final startWallpaperAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V
    .registers 10

    .line 1
    sget-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    .line 3
    invoke-virtual {v0}, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 9
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 11
    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_11

    .line 15
    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_f3

    .line 21
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAssistantScreenVisible()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 27
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 29
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getForceNotScaleWallpaperByLaunchTask()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    .line 36
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getForceNotScaleWallpaperByDragDown()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v2

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v1, 0x1

    .line 46
    :goto_2d
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getForceNotScaleWallpaperByDragDown()Z

    move-result v3

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v5, "startWallpaperAnimation: fromState="

    .line 55
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v5, ", toState="

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    const-string v5, ", forceNotExecuteRecentExit="

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v5, ", forceNotScaleWallpaperByDragDown = "

    .line 76
    const-string v6, "OplusRecentsViewStateController"

    .line 78
    invoke-static {v4, v1, v5, v3, v6}, Lcom/android/common/config/j;->b(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 81
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 85
    const-string v4, "app_recent_enter"

    .line 87
    const-string v5, "app_recent_exit"

    if-nez v3, :cond_b5

    .line 91
    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 93
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 99
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    .line 105
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    goto/16 :goto_ea

    .line 110
    :cond_6d
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 116
    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 118
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    if-nez v1, :cond_8d

    .line 126
    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->needInterceptWallpaperAnim()Z

    move-result p1

    if-nez p1, :cond_ea

    .line 132
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    .line 138
    invoke-virtual {p0, v2, v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    goto :goto_ea

    .line 142
    :cond_8d
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->enableRecentsViewSpringRectAnim()Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 148
    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 150
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ea

    .line 156
    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 158
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ea

    if-nez v1, :cond_ea

    .line 166
    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->needInterceptWallpaperAnim()Z

    move-result p1

    if-nez p1, :cond_ea

    .line 172
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    .line 178
    invoke-virtual {p0, v2, v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    goto :goto_ea

    .line 182
    :cond_b5
    sget-object p2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 184
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 190
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 192
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    .line 196
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    goto :goto_ea

    .line 200
    :cond_c7
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 202
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 208
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 210
    check-cast p1, Lcom/android/launcher/Launcher;

    .line 212
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    .line 220
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 226
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    .line 232
    invoke-virtual {p0, v2, v5}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    .line 235
    :cond_ea
    :goto_ea
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getForceNotScaleWallpaperByDragDown()Z

    move-result p0

    if-eqz p0, :cond_f3

    .line 241
    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setForceNotScaleWallpaperByDragDown(Z)V

    :cond_f3
    return-void
.end method

.method private final updateSystemUiState(Lcom/android/launcher3/LauncherState;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 12
    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v1, :cond_1f

    .line 25
    .line 26
    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1f

    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v1, v3

    .line 33
    :goto_20
    iget-object v4, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 34
    .line 35
    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sget-object v5, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 40
    .line 41
    if-ne v4, v5, :cond_2c

    .line 42
    .line 43
    move v4, v2

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v4, v3

    .line 46
    :goto_2d
    sget-object v5, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 47
    .line 48
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_39

    .line 53
    .line 54
    iget-boolean v6, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    .line 55
    .line 56
    if-nez v6, :cond_4b

    .line 57
    .line 58
    :cond_39
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_41

    .line 63
    .line 64
    if-nez v1, :cond_4b

    .line 65
    .line 66
    :cond_41
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 67
    .line 68
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_6d

    .line 73
    .line 74
    if-eqz v4, :cond_6d

    .line 75
    .line 76
    :cond_4b
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 77
    .line 78
    instance-of v0, p1, Lcom/android/launcher/Launcher;

    .line 79
    .line 80
    if-eqz v0, :cond_54

    .line 81
    .line 82
    check-cast p1, Lcom/android/launcher/Launcher;

    .line 83
    .line 84
    goto :goto_55

    .line 85
    :cond_54
    const/4 p1, 0x0

    .line 86
    :goto_55
    if-eqz p1, :cond_62

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_62

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isStatusBarWpBright()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move p1, v3

    .line 100
    :goto_63
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    .line 107
    .line 108
    .line 109
    goto :goto_b3

    .line 110
    :cond_6d
    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    .line 111
    .line 112
    if-eqz v0, :cond_a9

    .line 113
    .line 114
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_a9

    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 131
    .line 132
    and-int/lit8 p1, p1, 0x30

    .line 133
    .line 134
    const/16 v0, 0x20

    .line 135
    .line 136
    if-ne p1, v0, :cond_8b

    .line 137
    .line 138
    move p1, v2

    .line 139
    goto :goto_8c

    .line 140
    :cond_8b
    move p1, v3

    .line 141
    :goto_8c
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 142
    .line 143
    sget v1, Lcom/android/launcher3/R$color;->launcher_all_apps_container_background_color:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-static {v0}, Lcom/oplus/basecommon/util/ColorUtils;->isColorDark(I)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_9e

    .line 154
    .line 155
    if-nez p1, :cond_9e

    .line 156
    .line 157
    move p1, v2

    .line 158
    goto :goto_9f

    .line 159
    :cond_9e
    move p1, v3

    .line 160
    :goto_9f
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    .line 167
    .line 168
    .line 169
    goto :goto_b3

    .line 170
    :cond_a9
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroid/view/Window;->getNavigationBarColor()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    :goto_b3
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/view/Window;->getNavigationBarColor()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eq p1, v3, :cond_ca

    .line 191
    .line 192
    if-eqz v4, :cond_ca

    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 201
    .line 202
    .line 203
    :cond_ca
    return-void
.end method


# virtual methods
.method public getContentAlphaProperty()Landroid/util/FloatProperty;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;>;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getCONTENT_ALPHA_PROPERTY()Landroid/util/FloatProperty;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTaskModalnessProperty()Landroid/util/FloatProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView<",
            "**>;>;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/android/quickstep/views/RecentsView;->TASK_MODALNESS:Landroid/util/FloatProperty;

    .line 2
    .line 3
    const-string v0, "TASK_MODALNESS"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const-string/jumbo v1, "state"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->updateSystemUiState(Lcom/android/launcher3/LauncherState;)V

    .line 3
    iget-object v1, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v9, v1}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/LauncherState;

    .line 5
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v10, v9}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->interceptSomeUIUpdate(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Z

    move-result v11

    .line 6
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v2

    sget-object v12, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v2, v12, :cond_33

    const/4 v15, 0x1

    goto :goto_34

    :cond_33
    const/4 v15, 0x0

    .line 7
    :goto_34
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v2

    const/16 v16, 0x0

    const-string v8, "OplusRecentsViewStateController"

    const-string v7, ""

    if-eqz v2, :cond_9d

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v3, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v3}, Lcom/oplus/quickstep/views/StackPagedViewEx;->isPageInTransition()Z

    move-result v3

    .line 10
    iget-object v4, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v4, Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz v4, :cond_5b

    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isLaunchIconAnimStarted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_5d

    :cond_5b
    move-object/from16 v4, v16

    .line 11
    :goto_5d
    invoke-static {}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOpeningAnim()Z

    move-result v5

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "setState(), to="

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", from="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", scaleAndOffset="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", isRecentInTransition="

    const-string v14, ", isInterceptSomeUIUpdate="

    .line 13
    invoke-static {v2, v13, v14, v6, v3}, Lcom/android/launcher/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 14
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", launchIconAnimStarted="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isOpeningAnim="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isGesture="

    .line 15
    invoke-static {v6, v5, v2, v15}, Lcom/android/common/util/f3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v7, v8, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_9d
    sget-object v13, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v3, v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v3, :cond_b5

    .line 18
    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v2, v2, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    iget-object v2, v2, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/quickstep/OplusRecentTasksListImpl;->setNeedRestoreFullscreenTask(Z)V

    .line 19
    :cond_b5
    invoke-direct {v0, v10, v9}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->resetRecentScroll(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    .line 20
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-direct {v0, v10, v9}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->ignoreUpdateState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 21
    const-string/jumbo v0, "ignoreUpdateState"

    invoke-static {v7, v8, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_cb
    sget-object v14, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v11, :cond_119

    .line 23
    sget-object v2, Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;->INSTANCE:Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;->isAppSwipeToRecentContinuationRunning()Z

    move-result v2

    if-nez v2, :cond_119

    .line 24
    sget-boolean v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isHomeToRecentRunningWithTaskSwipe:Z

    if-nez v2, :cond_119

    .line 25
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentInterruptSpringCtrl()Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;->getRecentsViewScaleAnimator()Lcom/oplus/quickstep/anim/recents/ProgressSpringAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/anim/recents/ProgressSpringAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 26
    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_119

    .line 27
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentInterruptSpringCtrl()Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;->getRecentsViewScaleAnimator()Lcom/oplus/quickstep/anim/recents/ProgressSpringAnimator;

    move-result-object v3

    .line 29
    invoke-virtual {v2, v3, v6}, Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;->updateProgressAnimatorProgress(Lcom/oplus/quickstep/anim/recents/ProgressSpringAnimator;F)V

    goto :goto_119

    .line 30
    :cond_10b
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v4, 0x0

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    :cond_119
    :goto_119
    if-nez v11, :cond_155

    .line 31
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->enableTaskViewInterruptSpringAnim()Z

    move-result v2

    if-eqz v2, :cond_145

    .line 32
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentInterruptSpringCtrl()Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;->getAdjacentPageOffsetAnimator()Lcom/oplus/quickstep/anim/recents/ProgressSpringAnimator;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lcom/oplus/quickstep/anim/recents/ProgressSpringAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 34
    invoke-virtual {v2}, Lcom/oplus/quickstep/anim/recents/ProgressSpringAnimator;->getSpringAnimation()Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_155

    :cond_13e
    const/4 v3, 0x1

    .line 35
    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lcom/oplus/quickstep/anim/recents/ProgressSpringAnimator;->setProgress(F)V

    goto :goto_155

    :cond_145
    const/4 v3, 0x1

    .line 36
    invoke-static {}, Lcom/android/quickstep/views/RecentsView;->getAdjacentPageHorizontalOffsetProperty()Landroid/util/FloatProperty;

    move-result-object v2

    iget-object v4, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 37
    :cond_155
    :goto_155
    new-instance v5, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v5}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    .line 38
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isLightEnterRecentsAnimation()Z

    move-result v1

    if-eqz v1, :cond_168

    .line 39
    iget v1, v5, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v5, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    .line 40
    :cond_168
    iget-object v1, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v1

    if-eqz v1, :cond_1fa

    .line 41
    iget-boolean v2, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v2, :cond_18b

    .line 42
    sget-object v2, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    invoke-virtual {v2}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    move-result v2

    if-nez v2, :cond_18b

    .line 43
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v2

    sget-object v3, Lcom/oplus/quickstep/relay/data/RelayState$ExitRecentImmediately;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$ExitRecentImmediately;

    invoke-virtual {v2, v3}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    .line 44
    :cond_18b
    invoke-static {v5}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 45
    sget-object v2, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    move-object/from16 v17, v2

    goto :goto_198

    :cond_196
    move-object/from16 v17, v16

    .line 46
    :goto_198
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 47
    invoke-static {v10}, Lcom/oplus/quickstep/dock/DockViewUtilKt;->isEnter(Lcom/android/launcher3/states/OPlusBaseState;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/dock/DockViewUtilKt;->isEnter(Lcom/android/launcher3/states/OPlusBaseState;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v11, :cond_1b9

    if-nez v2, :cond_1b9

    if-nez v3, :cond_1af

    goto :goto_1b9

    :cond_1af
    move-object/from16 v20, v5

    move/from16 v18, v6

    move-object/from16 v21, v7

    move/from16 v17, v15

    move-object v15, v8

    goto :goto_1de

    .line 48
    :cond_1b9
    :goto_1b9
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->hasFirstLoaded()Z

    move-result v2

    if-eqz v2, :cond_1af

    const/4 v3, 0x1

    const/high16 v4, 0x40400000    # 3.0f

    const/16 v18, 0x0

    .line 49
    const-string v19, "STATE_CHANGE"

    move-object/from16 v2, p1

    move-object/from16 v20, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, v17

    move-object/from16 v21, v7

    move-object/from16 v7, v20

    move/from16 v17, v15

    move-object v15, v8

    move-object/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/quickstep/dock/DockView;->prepareEnterOrExitAnimation(Lcom/android/launcher3/LauncherState;ZFZLcom/android/launcher3/anim/PropertySetter;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/String;)V

    .line 50
    :goto_1de
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_203

    .line 51
    sget-object v1, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    move-result v1

    if-nez v1, :cond_203

    .line 52
    iget-object v1, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRelayInteraction()Lcom/oplus/quickstep/relay/RecentRelayInteraction;

    move-result-object v1

    sget-object v2, Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;->INSTANCE:Lcom/oplus/quickstep/relay/data/RelayState$EnterRecent;

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/relay/RecentRelayInteraction;->update(Lcom/oplus/quickstep/relay/data/RelayState;)V

    goto :goto_203

    :cond_1fa
    move-object/from16 v20, v5

    move/from16 v18, v6

    move-object/from16 v21, v7

    move/from16 v17, v15

    move-object v15, v8

    .line 53
    :cond_203
    :goto_203
    iget-object v1, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    if-nez v11, :cond_20c

    .line 54
    invoke-direct {v0, v9, v10}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->startWallpaperAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    .line 55
    :cond_20c
    sget-object v2, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_219

    const/4 v3, 0x1

    .line 56
    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setLogLoadVisibleTaskData(Z)V

    goto :goto_21a

    :cond_219
    const/4 v3, 0x1

    .line 57
    :goto_21a
    invoke-virtual {v1, v9, v10}, Lcom/android/quickstep/views/RecentsView;->toggleHideStatusBar(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    if-nez v11, :cond_22b

    .line 58
    sget-object v4, Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;->INSTANCE:Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;

    new-instance v5, Lcom/android/quickstep/uioverrides/b;

    move-object/from16 v6, v20

    invoke-direct {v5, v1, v9, v6}, Lcom/android/quickstep/uioverrides/b;-><init>(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;)V

    invoke-virtual {v4, v3, v5}, Lcom/oplus/quickstep/utils/AppSwipeToRecentContinuationHelper;->pendingExecuteAfterContinuation(ZLjava/lang/Runnable;)V

    :cond_22b
    const/4 v6, 0x0

    .line 59
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 60
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 61
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Setting SAME state["

    if-eqz v3, :cond_262

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_262

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v3, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v3}, Lcom/oplus/quickstep/views/StackPagedViewEx;->isPageInTransition()Z

    move-result v3

    if-eqz v3, :cond_262

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], maybe from reapplyState, and should NOT change contentAlpha while PageInTransition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v21

    .line 63
    invoke-static {v5, v15, v3}, Lcom/oplus/basecommon/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d2

    :cond_262
    move-object/from16 v5, v21

    .line 64
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getCurrentGestureState()Lcom/android/quickstep/GestureState;

    move-result-object v3

    if-eqz v3, :cond_26e

    invoke-virtual {v3}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v16

    :cond_26e
    move-object/from16 v3, v16

    sget-object v7, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v3, v7, :cond_2a9

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a9

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a9

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v3

    if-eqz v3, :cond_2a9

    iget-boolean v3, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v3, :cond_2a9

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], and swipe to home"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v15, v3}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d2

    .line 66
    :cond_2a9
    invoke-virtual {v14}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isOverviewToggleInterruptOpenAnim()Z

    move-result v3

    if-eqz v3, :cond_2b6

    .line 67
    const-string/jumbo v3, "isOverviewToggleInterruptOpenAnim do not change ContentAlpha"

    .line 68
    invoke-static {v5, v15, v3}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d2

    :cond_2b6
    if-eqz v11, :cond_2bf

    .line 69
    const-string/jumbo v3, "isAppToHomeSwipeToRecentTogetherRunning do not change ContentAlpha"

    invoke-static {v5, v15, v3}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d2

    .line 70
    :cond_2bf
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v3

    iget-boolean v4, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v4, :cond_2ca

    move/from16 v4, v18

    goto :goto_2cb

    :cond_2ca
    move v4, v6

    :goto_2cb
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 71
    :goto_2d2
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_321

    if-nez v11, :cond_321

    .line 72
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/graphics/Scrim;->getScrimProgress()F

    move-result v2

    .line 73
    iget-object v4, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v9, v4}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v4

    cmpg-float v7, v2, v4

    if-nez v7, :cond_309

    .line 74
    const-string/jumbo v3, "setState scrimProgress ignore update currentValue "

    const-string v7, "  toValue "

    const-string v8, " "

    .line 75
    invoke-static {v3, v2, v7, v4, v8}, Landroidx/appcompat/widget/q;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v5, v15, v2}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_321

    .line 77
    :cond_309
    sget-object v2, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    iget-object v5, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 78
    :cond_321
    :goto_321
    iget-boolean v2, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v2, :cond_3bf

    .line 79
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    .line 80
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_335

    .line 81
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RecentsBooster;->openCpu()V

    .line 82
    :cond_335
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    .line 83
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_413

    .line 84
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v9, v2}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v2

    .line 85
    sget-object v3, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v4, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v5, 0x0

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 86
    sget-object v2, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->getTaskModalnessProperty()Landroid/util/FloatProperty;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewModalness()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->isGridProgressToOverView()Z

    move-result v2

    if-nez v2, :cond_413

    .line 89
    sget-object v2, Lcom/android/quickstep/OplusBaseTouchInteractionService;->Companion:Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

    invoke-virtual {v2}, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;->getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;

    move-result-object v2

    if-eqz v2, :cond_388

    iget-object v2, v2, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    if-eqz v2, :cond_388

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->isSimulateSlideToRecents()Z

    move-result v14

    goto :goto_389

    :cond_388
    const/4 v14, 0x0

    .line 90
    :goto_389
    iget-object v2, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v2

    if-eq v2, v12, :cond_3a5

    .line 91
    invoke-static {}, Lcom/oplus/quickstep/utils/OplusSimulateEventUtil;->realSimulateUpSupportedFromMenuKey()Z

    move-result v2

    if-eqz v2, :cond_399

    if-nez v14, :cond_3a5

    .line 92
    :cond_399
    sget-object v2, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_413

    .line 93
    :cond_3a5
    sget-object v2, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 94
    iget-object v4, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    invoke-interface {v9, v4}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v4

    if-eqz v4, :cond_3b7

    move/from16 v6, v18

    :cond_3b7
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_413

    .line 96
    :cond_3bf
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getClearAllButton()Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->cancelRotateAnimation(Lcom/android/launcher3/LauncherState;)V

    .line 97
    const-string/jumbo v2, "setState"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    .line 98
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    .line 99
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeCpu()V

    if-eqz v17, :cond_3ed

    .line 100
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ed

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ed

    .line 101
    invoke-static {v3}, Lcom/oplus/quickstep/utils/TaskStackLayoutAlgorithm;->setIsTransToStackLayout(Z)V

    .line 102
    :cond_3ed
    new-instance v2, Landroidx/core/view/f0;

    invoke-direct {v2, v1}, Landroidx/core/view/f0;-><init>(Landroid/view/ViewGroup;)V

    .line 103
    sget-object v3, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setState$lambda$6$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setState$lambda$6$$inlined$filterIsInstance$1;

    invoke-static {v2, v3}, Lkotlin/sequences/r;->i(Lkotlin/sequences/j;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/g;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v3, Lkotlin/sequences/g$a;

    invoke-direct {v3, v2}, Lkotlin/sequences/g$a;-><init>(Lkotlin/sequences/g;)V

    .line 105
    :goto_403
    invoke-virtual {v3}, Lkotlin/sequences/g$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_413

    invoke-virtual {v3}, Lkotlin/sequences/g$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 106
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->clearSnapshotShadow()V

    goto :goto_403

    .line 107
    :cond_413
    :goto_413
    sget-object v2, Lcom/android/common/util/OplusLauncherAnimUtils;->Companion:Lcom/android/common/util/OplusLauncherAnimUtils$Companion;

    iget-object v3, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string/jumbo v4, "mLauncher"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/common/util/OplusLauncherAnimUtils$Companion;->areAnimatorsEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_431

    .line 108
    iget-boolean v2, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v2, :cond_42b

    .line 109
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockViewVisible(Z)V

    goto :goto_431

    .line 110
    :cond_42b
    const-string/jumbo v3, "setState#AnimatorsDisabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    .line 111
    :cond_431
    :goto_431
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->enterRecents(Lcom/android/launcher3/LauncherState;)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewFullscreenProgress()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setFullscreenProgress(F)V

    .line 113
    iget-boolean v0, v9, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setForceHideEmptyMessage(Z)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 28

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 9
    const-string/jumbo v0, "toState"

    .line 12
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-string v0, "config"

    .line 17
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "setter"

    .line 23
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 28
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 38
    invoke-static {}, Lcom/oplus/quickstep/panorama/PanoramaUtil;->supportPanoramic()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 44
    sget-object v1, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 52
    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 54
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 60
    invoke-virtual/range {p0 .. p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void

    .line 64
    :cond_3f
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->updateSystemUiState(Lcom/android/launcher3/LauncherState;)V

    .line 67
    iget-object v1, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 69
    invoke-virtual {v7, v1}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScaleAndOffset(Lcom/android/launcher3/Launcher;)[F

    move-result-object v10

    .line 73
    iget-object v1, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 75
    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v1

    .line 79
    sget-object v11, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v1, v11, :cond_56

    move v14, v12

    goto :goto_57

    :cond_56
    move v14, v13

    .line 88
    :goto_57
    iget-object v1, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 90
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/android/launcher/layoutparam/ConfigParam;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 104
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->config()Lcom/android/launcher/layoutparam/ConfigParam;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/android/launcher/layoutparam/ConfigParam;->isMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 114
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 116
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    move v1, v12

    goto :goto_7c

    :cond_7b
    move v1, v13

    .line 125
    :goto_7c
    iget-object v2, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 127
    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v12, :cond_88

    move v2, v12

    goto :goto_89

    :cond_88
    move v2, v13

    .line 138
    :goto_89
    invoke-static {v10}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    const-string/jumbo v5, "setStateWithAnimationInternal(), toState="

    .line 147
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    const-string v5, ", from="

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v5, ", scaleAndOffset="

    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v5, ", isNoButton="

    .line 168
    const-string v15, ", willRotate="

    .line 170
    invoke-static {v3, v5, v15, v4, v14}, Lcom/android/launcher/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 173
    const-string v3, ", isRtl="

    .line 175
    invoke-static {v4, v1, v3, v2}, Lcom/android/common/util/f3;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 179
    const-string v4, ""

    .line 181
    const-string v5, "OplusRecentsViewStateController"

    .line 183
    invoke-static {v4, v5, v3}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    .line 188
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d0

    .line 194
    iget-object v4, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 196
    instance-of v15, v4, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v15, :cond_d0

    .line 200
    check-cast v4, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 202
    iget-object v4, v4, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    .line 204
    iget-object v4, v4, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    .line 206
    invoke-virtual {v4, v13}, Lcom/android/quickstep/OplusRecentTasksListImpl;->setNeedRestoreFullscreenTask(Z)V

    .line 209
    :cond_d0
    sget-object v15, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    .line 211
    invoke-virtual {v15, v13}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    .line 214
    iget-boolean v4, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v4, :cond_e9

    .line 218
    sget-object v4, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    .line 220
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e9

    .line 226
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e9

    move v4, v12

    goto :goto_ea

    :cond_e9
    move v4, v13

    :goto_ea
    if-eqz v4, :cond_f1

    .line 237
    iget-object v12, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 239
    invoke-static {v12}, Lcom/oplus/quickstep/utils/tilecardfirst/policy/TileCardFirstTargetVisibilityPolicy;->releaseRunningTaskAlphaForRecentsExit(Lcom/android/quickstep/views/RecentsView;)V

    :cond_f1
    if-eqz v1, :cond_115

    .line 244
    iget-object v0, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v1

    .line 250
    iget-boolean v3, v7, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v3, :cond_100

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_101

    :cond_100
    const/4 v12, 0x0

    :goto_101
    const/16 v3, 0x9

    .line 260
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    .line 262
    invoke-virtual {v8, v3, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 266
    invoke-virtual {v9, v0, v1, v12, v3}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    .line 269
    new-instance v0, Lcom/android/quickstep/uioverrides/c;

    .line 271
    invoke-direct {v0, v6, v14, v2, v10}, Lcom/android/quickstep/uioverrides/c;-><init>(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZZ[F)V

    .line 274
    invoke-virtual {v9, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    return-void

    .line 278
    :cond_115
    iget-object v1, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    move-object v2, v1

    .line 281
    check-cast v2, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 283
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelRotateAnim()V

    .line 286
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 289
    invoke-direct {v6, v7, v0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->startWallpaperAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    .line 292
    invoke-virtual {v2, v7, v0}, Lcom/android/quickstep/views/RecentsView;->toggleHideStatusBar(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    .line 295
    iget-object v1, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 297
    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v1

    .line 301
    sget-object v12, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v1, v12, :cond_132

    const/4 v12, 0x1

    goto :goto_133

    :cond_132
    move v12, v13

    .line 308
    :goto_133
    sget-object v1, Lcom/android/quickstep/interrupt/manager/SlideUpInterruptManager;->INSTANCE:Lcom/android/quickstep/interrupt/manager/SlideUpInterruptManager;

    .line 310
    invoke-virtual {v1}, Lcom/android/quickstep/interrupt/manager/SlideUpInterruptManager;->getInterruptHelper()Lcom/android/quickstep/interrupt/helper/BaseInterruptHelper;

    move-result-object v1

    .line 314
    iget-object v13, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 316
    invoke-virtual {v1, v13}, Lcom/android/quickstep/interrupt/helper/BaseInterruptHelper;->shouldBlockStateMachineRecentsScale(Lcom/android/quickstep/views/RecentsView;)Z

    move-result v1

    if-nez v1, :cond_184

    if-eqz v12, :cond_172

    .line 324
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 326
    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSupportMultiTapMenu()Z

    move-result v1

    if-eqz v1, :cond_172

    .line 332
    iget-boolean v1, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v1, :cond_172

    .line 336
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_172

    .line 342
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 344
    invoke-virtual {v1, v2}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 348
    check-cast v3, Ljava/lang/Float;

    move/from16 v16, v12

    const/4 v13, 0x0

    .line 353
    aget v12, v10, v13

    .line 355
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v3

    if-nez v3, :cond_175

    .line 361
    aget v3, v10, v13

    .line 363
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 367
    invoke-virtual {v1, v2, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_186

    :cond_172
    move/from16 v16, v12

    const/4 v13, 0x0

    .line 374
    :cond_175
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 376
    aget v3, v10, v13

    const/4 v12, 0x6

    .line 379
    sget-object v13, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 381
    invoke-virtual {v8, v12, v13}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v12

    .line 385
    invoke-virtual {v9, v2, v1, v3, v12}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    goto :goto_186

    :cond_184
    move/from16 v16, v12

    .line 391
    :goto_186
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 393
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_196

    .line 399
    sget-object v3, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 401
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a6

    .line 407
    :cond_196
    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 409
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a6

    .line 415
    sget-object v3, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 417
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    .line 423
    :cond_1a6
    sget-object v3, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 425
    invoke-virtual {v3}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    move-result v3

    if-eqz v3, :cond_1e0

    .line 431
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 434
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1bd

    :cond_1ba
    const/4 v3, 0x1

    .line 444
    aget v4, v10, v3

    .line 446
    :goto_1bd
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->enableTaskViewInterruptSpringAnim()Z

    move-result v3

    .line 450
    invoke-direct {v6, v2, v8, v4, v3}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->createStackLayoutExitAnim(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/states/StateAnimationConfig;FZ)Ljava/lang/Object;

    move-result-object v3

    .line 454
    instance-of v4, v3, Landroid/animation/Animator;

    if-eqz v4, :cond_1cf

    .line 458
    check-cast v3, Landroid/animation/Animator;

    .line 460
    invoke-virtual {v9, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    goto :goto_1d8

    .line 464
    :cond_1cf
    instance-of v4, v3, Lcom/android/quickstep/util/animation/SpringAnimation;

    if-eqz v4, :cond_1d8

    .line 468
    check-cast v3, Lcom/android/quickstep/util/animation/SpringAnimation;

    .line 470
    invoke-virtual {v9, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Lcom/android/quickstep/util/animation/SpringAnimation;)V

    .line 473
    :cond_1d8
    :goto_1d8
    invoke-direct {v6, v2, v9}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->createAlignRunningTaskViewAnimationWhenExitRecentsIfNeed(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/anim/PendingAnimation;)V

    :goto_1db
    move/from16 v17, v14

    const/4 v12, 0x1

    goto/16 :goto_28d

    .line 481
    :cond_1e0
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v3

    if-eqz v3, :cond_1f0

    const/4 v3, 0x1

    .line 488
    aget v4, v10, v3

    .line 490
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 493
    invoke-static {v4, v2, v7, v9}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->transXForRecentView(FLcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/PropertySetter;)V

    goto :goto_1db

    :cond_1f0
    const/4 v3, 0x0

    .line 498
    iput-boolean v3, v6, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->mCanEndContentAlphaAnim:Z

    .line 500
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->enableTaskViewInterruptSpringAnim()Z

    move-result v3

    if-eqz v3, :cond_204

    .line 506
    iget-object v3, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 508
    check-cast v3, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 510
    iget v3, v3, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    .line 512
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_20e

    .line 517
    :cond_204
    invoke-static {}, Lcom/android/quickstep/views/RecentsView;->getAdjacentPageHorizontalOffsetProperty()Landroid/util/FloatProperty;

    move-result-object v3

    .line 521
    invoke-virtual {v3, v2}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 525
    check-cast v3, Ljava/lang/Float;

    .line 527
    :goto_20e
    new-instance v12, Lcom/oplus/quickstep/utils/OplusValueAnimator$AnimParam;

    const/4 v13, 0x1

    .line 530
    aget v17, v10, v13

    .line 532
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move/from16 v17, v14

    .line 538
    new-instance v14, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$animParam$1;

    .line 540
    invoke-direct {v14, v3, v6, v4, v2}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$animParam$1;-><init>(Ljava/lang/Float;Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZLcom/android/quickstep/views/LauncherRecentsView;)V

    .line 543
    invoke-direct {v12, v3, v13, v14}, Lcom/oplus/quickstep/utils/OplusValueAnimator$AnimParam;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/oplus/quickstep/utils/OplusValueAnimator$ValueApplicator;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/anim/PendingAnimation;->getDuration()J

    move-result-wide v13

    .line 550
    invoke-virtual {v12, v13, v14}, Lcom/oplus/quickstep/utils/OplusValueAnimator$AnimParam;->setDuration(J)V

    .line 553
    iget-object v3, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 555
    check-cast v3, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 557
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPanoramaLayoutChildCount()I

    move-result v3

    if-lez v3, :cond_23f

    .line 563
    iget-boolean v3, v7, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v3, :cond_23f

    .line 567
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    .line 572
    invoke-direct {v3, v14, v13, v14, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_252

    :cond_23f
    const/high16 v14, 0x3f800000    # 1.0f

    .line 578
    new-instance v3, Lcom/oplus/quickstep/utils/RecordInputInterpolator;

    const/4 v13, 0x7

    .line 581
    sget-object v14, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_4:Landroid/view/animation/Interpolator;

    .line 583
    invoke-virtual {v8, v13, v14}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v13

    .line 587
    const-string v14, "getInterpolator(...)"

    .line 589
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-direct {v3, v13}, Lcom/oplus/quickstep/utils/RecordInputInterpolator;-><init>(Landroid/animation/TimeInterpolator;)V

    .line 595
    :goto_252
    invoke-virtual {v12, v3}, Lcom/oplus/quickstep/utils/OplusValueAnimator$AnimParam;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 598
    sget-object v3, Lcom/oplus/quickstep/utils/OplusValueAnimator;->Companion:Lcom/oplus/quickstep/utils/OplusValueAnimator$Companion;

    .line 600
    const-string/jumbo v13, "recent_offset_in_state_switch"

    .line 603
    invoke-virtual {v3, v13, v12}, Lcom/oplus/quickstep/utils/OplusValueAnimator$Companion;->generateAnim(Ljava/lang/String;Lcom/oplus/quickstep/utils/OplusValueAnimator$AnimParam;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 607
    invoke-virtual {v9, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 610
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->enableTaskViewInterruptSpringAnim()Z

    move-result v3

    if-eqz v3, :cond_284

    if-eqz v4, :cond_284

    .line 618
    iget-object v3, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 620
    check-cast v3, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 622
    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getRecentInterruptSpringCtrl()Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;

    move-result-object v18

    .line 626
    sget-object v19, Lcom/oplus/quickstep/anim/recents/RecentInterruptAnimConfig$AnimationScene$ExitRecent;->INSTANCE:Lcom/oplus/quickstep/anim/recents/RecentInterruptAnimConfig$AnimationScene$ExitRecent;

    const/4 v12, 0x1

    .line 629
    aget v21, v10, v12

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x2

    .line 637
    invoke-static/range {v18 .. v23}, Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;->getAdjacentPageOffsetSpringAnim$default(Lcom/oplus/quickstep/utils/TaskViewInterruptSpringAnimController;Lcom/oplus/quickstep/anim/recents/RecentInterruptAnimConfig$AnimationScene;FFILjava/lang/Object;)Lcom/android/quickstep/util/animation/SpringAnimation;

    move-result-object v3

    .line 641
    invoke-virtual {v9, v3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Lcom/android/quickstep/util/animation/SpringAnimation;)V

    goto :goto_285

    :cond_284
    const/4 v12, 0x1

    :goto_285
    if-eqz v4, :cond_28d

    .line 648
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 651
    invoke-direct {v6, v2, v9}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->createAlignRunningTaskViewAnimationWhenExitRecentsIfNeed(Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 654
    :cond_28d
    :goto_28d
    sget-object v3, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;

    .line 656
    invoke-virtual {v3}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    move-result v4

    if-eqz v4, :cond_2dd

    .line 662
    iget-boolean v4, v7, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v4, :cond_2dd

    .line 666
    sget-object v4, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    .line 668
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2dd

    .line 674
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getTaskViewCount()I

    move-result v4

    if-lez v4, :cond_2dd

    .line 680
    sget-object v4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    .line 682
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2dd

    .line 688
    invoke-virtual {v2}, Lcom/oplus/quickstep/views/StackPagedViewEx;->getCurrentPage()I

    move-result v4

    if-eqz v4, :cond_2ba

    const/4 v4, 0x0

    .line 695
    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    goto :goto_2dd

    :cond_2ba
    const/4 v4, 0x0

    .line 700
    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v13

    if-eqz v13, :cond_2dd

    .line 706
    iget-object v4, v2, Lcom/oplus/quickstep/views/StackPagedViewEx;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 708
    instance-of v4, v4, Lcom/android/launcher3/touch/PortraitPagedViewHandler;

    if-eqz v4, :cond_2cd

    .line 712
    invoke-virtual {v13}, Lcom/android/quickstep/views/TaskView;->getLayoutOffsetX()F

    move-result v4

    :goto_2cb
    const/4 v14, 0x0

    goto :goto_2d2

    .line 718
    :cond_2cd
    invoke-virtual {v13}, Lcom/android/quickstep/views/TaskView;->getLayoutOffsetY()F

    move-result v4

    goto :goto_2cb

    :goto_2d2
    cmpg-float v4, v4, v14

    if-nez v4, :cond_2d7

    const/4 v13, 0x0

    :cond_2d7
    if-eqz v13, :cond_2dd

    const/4 v4, 0x0

    .line 731
    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setCurrentPage(I)V

    .line 734
    :cond_2dd
    :goto_2dd
    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    const/16 v13, 0x8

    .line 738
    sget-object v14, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 740
    invoke-virtual {v8, v13, v14}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v13

    const/4 v14, 0x0

    .line 745
    invoke-virtual {v9, v2, v4, v14, v13}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    .line 748
    iget-boolean v4, v7, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v4, :cond_2f2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2f3

    :cond_2f2
    move v4, v14

    .line 756
    :goto_2f3
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .line 760
    const-string/jumbo v12, "mRecentsView"

    if-eqz v13, :cond_304

    .line 765
    sget-object v13, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 767
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_314

    .line 773
    :cond_304
    sget-object v13, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    .line 775
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_314

    .line 781
    sget-object v13, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 783
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_321

    .line 789
    :cond_314
    invoke-virtual {v3}, Lcom/oplus/quickstep/common/settingsvalue/CommonSettingsValueProxy$Companion;->isStackLayout()Z

    move-result v3

    if-eqz v3, :cond_321

    .line 795
    const-string v0, "StackLayout exit no need alpha"

    .line 797
    invoke-static {v5, v0}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31f
    move-object v13, v2

    goto :goto_367

    .line 802
    :cond_321
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->isLightRecentAnim(Lcom/android/launcher3/states/StateAnimationConfig;)Z

    move-result v3

    if-eqz v3, :cond_32e

    .line 808
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 811
    invoke-static {v4, v2, v9}, Lcom/android/launcher3/anim/light/RecentsLightAnimUtil;->alphaForRecentView(FLcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PropertySetter;)V

    goto :goto_31f

    .line 815
    :cond_32e
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33c

    .line 821
    sget-object v1, Lcom/android/launcher3/LauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    .line 823
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_348

    .line 829
    :cond_33c
    invoke-virtual {v15}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isOverviewToggleInterruptOpenAnim()Z

    move-result v0

    if-eqz v0, :cond_350

    .line 835
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_350

    .line 841
    :cond_348
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->getContentAlphaProperty()Landroid/util/FloatProperty;

    move-result-object v0

    .line 845
    invoke-virtual {v0, v2, v4}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    goto :goto_31f

    .line 849
    :cond_350
    iget-object v0, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 851
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .line 855
    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    .line 857
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isStack()Z

    move-result v5

    move-object/from16 v0, p0

    move-object v13, v2

    move-object/from16 v2, p3

    move v3, v4

    move-object/from16 v4, p2

    .line 869
    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->addToOverviewContentAlphaAnim(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/launcher3/anim/PendingAnimation;FLcom/android/launcher3/states/StateAnimationConfig;Z)V

    .line 872
    :goto_367
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 875
    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->addDockViewStateChangeAnim(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;[F)V

    const/4 v0, 0x0

    .line 879
    invoke-virtual {v13, v7, v0, v8}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->playClearAllEnterAnimation(Lcom/android/launcher3/LauncherState;ZLcom/android/launcher3/states/StateAnimationConfig;)V

    .line 882
    iget-boolean v1, v7, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v1, :cond_393

    .line 886
    iget-object v1, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 888
    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 890
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_386

    .line 896
    iget-object v1, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 898
    check-cast v1, Lcom/android/quickstep/views/LauncherRecentsView;

    .line 900
    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setVisibility(I)V

    .line 903
    :cond_386
    new-instance v1, Lcom/android/launcher/controller/g;

    const/4 v2, 0x3

    .line 906
    invoke-direct {v1, v13, v2}, Lcom/android/launcher/controller/g;-><init>(Ljava/lang/Object;I)V

    .line 909
    invoke-virtual {v9, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 912
    invoke-virtual {v13}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelRemoveAllViewsTask()V

    goto :goto_3d5

    .line 916
    :cond_393
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 919
    invoke-virtual {v15, v13}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->cancelLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    .line 922
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->enableRecentsViewSpringRectAnim()Z

    move-result v1

    if-nez v1, :cond_3af

    .line 928
    iget-object v1, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 930
    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v1

    if-eq v1, v11, :cond_3af

    .line 936
    iget-object v1, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 938
    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    invoke-virtual {v15, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->hideCurrentTaskViewSimulatorWhenSetState(Lcom/android/quickstep/views/RecentsView;)V

    .line 944
    :cond_3af
    new-instance v1, Landroidx/core/view/f0;

    .line 946
    invoke-direct {v1, v13}, Landroidx/core/view/f0;-><init>(Landroid/view/ViewGroup;)V

    .line 949
    sget-object v2, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$lambda$13$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$lambda$13$$inlined$filterIsInstance$1;

    .line 951
    invoke-static {v1, v2}, Lkotlin/sequences/r;->i(Lkotlin/sequences/j;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/g;

    move-result-object v1

    .line 955
    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>"

    .line 958
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 961
    new-instance v2, Lkotlin/sequences/g$a;

    .line 963
    invoke-direct {v2, v1}, Lkotlin/sequences/g$a;-><init>(Lkotlin/sequences/g;)V

    .line 966
    :goto_3c5
    invoke-virtual {v2}, Lkotlin/sequences/g$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d5

    .line 972
    invoke-virtual {v2}, Lkotlin/sequences/g$a;->next()Ljava/lang/Object;

    move-result-object v1

    .line 976
    check-cast v1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    .line 978
    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->clearSnapshotShadow()V

    goto :goto_3c5

    .line 982
    :cond_3d5
    :goto_3d5
    sget-object v1, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    .line 984
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e4

    .line 990
    iget-boolean v1, v7, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v1, :cond_3e2

    goto :goto_3e4

    :cond_3e2
    move v12, v0

    goto :goto_3e5

    :cond_3e4
    :goto_3e4
    const/4 v12, 0x1

    .line 998
    :goto_3e5
    invoke-virtual {v13, v12}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setForceHideEmptyMessage(Z)V

    .line 1001
    sget-object v0, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    .line 1003
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewFullscreenProgress()F

    move-result v1

    .line 1007
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 1009
    invoke-virtual {v9, v13, v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    .line 1012
    iget-object v0, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1014
    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    .line 1017
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    check-cast v0, Lcom/android/launcher/Launcher;

    .line 1022
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getRecentContainer()Lcom/android/launcher3/RecentContainerView;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Lcom/android/launcher3/RecentContainerView;->getMOverviewScrim()Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object v0

    .line 1030
    sget-object v1, Lcom/android/launcher3/graphics/OplusOverviewScrim;->Companion:Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;

    const/4 v3, 0x2

    .line 1033
    invoke-virtual {v1, v3}, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;->getScrimProgressWithChannel(I)Landroid/util/FloatProperty;

    move-result-object v1

    .line 1037
    iget-object v3, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1039
    invoke-virtual {v7, v3}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result v3

    const/16 v4, 0xb

    .line 1045
    invoke-virtual {v8, v4, v2}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 1049
    invoke-virtual {v9, v0, v1, v3, v2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    .line 1052
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_427

    .line 1058
    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_445

    .line 1064
    :cond_427
    iget-object v0, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1066
    check-cast v0, Lcom/android/launcher/Launcher;

    .line 1068
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1072
    invoke-interface {v7, v0}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    .line 1076
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    if-eqz v0, :cond_43a

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_43b

    :cond_43a
    move v12, v14

    :goto_43b
    if-eqz v0, :cond_440

    .line 1086
    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->GESTURE_TO_RECNETS:Landroid/view/animation/Interpolator;

    goto :goto_442

    .line 1089
    :cond_440
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    .line 1091
    :goto_442
    invoke-virtual {v9, v13, v1, v12, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    .line 1094
    :cond_445
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->enterRecents(Lcom/android/launcher3/LauncherState;)V

    .line 1097
    iget-object v0, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1099
    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v5

    .line 1103
    iget-object v0, v6, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    .line 1105
    check-cast v0, Lcom/android/launcher/Launcher;

    .line 1107
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 1111
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    move-object v8, v0

    .line 1116
    check-cast v8, Lcom/android/launcher3/LauncherState;

    .line 1118
    new-instance v10, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$5;

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v3, p0

    move-object v4, v13

    move-object v6, v8

    move/from16 v7, v16

    .line 1131
    invoke-direct/range {v0 .. v7}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$5;-><init>(Lcom/android/launcher3/LauncherState;ZLcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/launcher3/LauncherState;Z)V

    .line 1134
    invoke-virtual {v9, v10}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
