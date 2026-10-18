.class public final Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;
.super Lcom/android/systemui/navigationbar/otherbusiness/circlesearch/OplusCircleToSearchManagerEx;
.source "go/retraceme 77e43dc1e771046d0e54c6e66a65da18054a335b251528f697f8c501f743650e"

# interfaces
.implements Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController$HomeHandleTouchEvent;


# static fields
.field public static final Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$Companion;

.field private static final KEY_LAUNCHER_CIRCLE_TO_SEARCH_METADATA:Ljava/lang/String; = "com.android.launcher.circle_to_search.recent_animation_finish"

.field private static final PACKAGENAME_LAUNCHER:Ljava/lang/String; = "com.android.launcher"

.field public static final TAG:Ljava/lang/String; = "OplusCircleToSearchManagerExImpl"

.field public static sInstance:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;


# instance fields
.field private assistCallback:Ljava/lang/Runnable;

.field private final assistListener:Lcom/oplusos/systemui/common/observer/IObserverListener;

.field private final context:Landroid/content/Context;

.field private final cornerAssistListener:Lcom/oplusos/systemui/common/observer/IObserverListener;

.field public isSplitScreenMinimized:Z

.field private final oplusCircleToSearchDialogManager:Lcom/oplus/systemui/circlesearch/OplusCircleToSearchDialogManager;

.field private final settingsObserverListener$delegate:Lkotlin/Lazy;

.field private final splitScreenObserver:Lcom/oplus/app/OplusSplitScreenObserver;

.field private supportTriggerWhenRecentAnimationFinish:Ljava/lang/Boolean;

.field private final sysUiState:Lcom/android/systemui/model/SysUiState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$Companion;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$Companion;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    sget-object v0, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sContext:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    :cond_8
    const/4 v1, 0x0

    :try_start_9
    const-class v2, Lcom/android/systemui/model/SysUiState;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/model/SysUiState;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_12

    move-object v1, v2

    :catchall_12
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/model/SysUiState;Lcom/oplus/systemui/circlesearch/OplusCircleToSearchDialogManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/model/SysUiState;Lcom/oplus/systemui/circlesearch/OplusCircleToSearchDialogManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/model/SysUiState;Lcom/oplus/systemui/circlesearch/OplusCircleToSearchDialogManager;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/otherbusiness/circlesearch/OplusCircleToSearchManagerEx;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->sysUiState:Lcom/android/systemui/model/SysUiState;

    .line 8
    iput-object p3, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->oplusCircleToSearchDialogManager:Lcom/oplus/systemui/circlesearch/OplusCircleToSearchDialogManager;

    .line 10
    new-instance p1, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$assistListener$1;

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p0, p2}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$assistListener$1;-><init>(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;I)V

    .line 16
    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->assistListener:Lcom/oplusos/systemui/common/observer/IObserverListener;

    .line 18
    new-instance p1, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$assistListener$1;

    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-direct {p1, p0, p2}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$assistListener$1;-><init>(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;I)V

    .line 24
    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->cornerAssistListener:Lcom/oplusos/systemui/common/observer/IObserverListener;

    .line 26
    new-instance p1, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$splitScreenObserver$1;

    .line 28
    invoke-direct {p1, p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$splitScreenObserver$1;-><init>(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;)V

    .line 31
    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->splitScreenObserver:Lcom/oplus/app/OplusSplitScreenObserver;

    .line 33
    new-instance p1, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2;

    .line 35
    invoke-direct {p1, p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2;-><init>(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;)V

    .line 38
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->settingsObserverListener$delegate:Lkotlin/Lazy;

    .line 44
    return-void
.end method

.method public static final synthetic access$getAssistCallback$p(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->assistCallback:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method private final getSettingsObserverListener()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2$1;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->settingsObserverListener$delegate:Lkotlin/Lazy;

    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2$1;

    .line 9
    return-object p0
.end method

.method public static isAllowedToStart()Z
    .registers 5

    invoke-static {}, Lcom/oplus/systemui/navigationbar/utils/NavBarUtils;->isGestureSideMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->getState()I

    move-result v0

    if-ne v0, v2, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    sget-boolean v3, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sIsSupportCircleToSearchNavbarHidden:Z

    if-eqz v3, :cond_2f

    invoke-static {}, Lcom/oplus/systemui/navigationbar/utils/NavBarUtils;->isGestureSideMode()Z

    move-result v3

    if-nez v3, :cond_2f

    sget-object v3, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;

    invoke-virtual {v3}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->getState()I

    move-result v3

    if-ne v3, v2, :cond_2f

    move v3, v2

    goto :goto_30

    :cond_2f
    move v3, v1

    :goto_30
    sget-boolean v4, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sIsSupportCircleToSearch:Z

    if-eqz v4, :cond_41

    if-nez v0, :cond_38

    if-eqz v3, :cond_41

    :cond_38
    invoke-static {}, Lcom/oplusos/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/oplusos/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oplusos/systemui/common/observer/ChildrenModeObserver;->mIsChildrenMode:Z

    if-nez v0, :cond_41

    move v1, v2

    :cond_41
    return v1
.end method


# virtual methods
.method public interceptStartAssistInternal(Landroid/os/Bundle;)Z
    .registers 7

    .line 1
    sget-boolean v0, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sIsSupportCircleToSearch:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_42

    .line 6
    const-string v0, "invocation_type"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 11
    move-result p1

    .line 12
    const-string v0, "interceptStartAssistInternal invocationType="

    .line 14
    const-string v2, "NavBar"

    .line 16
    const-string v3, "OplusCircleToSearchManagerExImpl"

    .line 18
    const/16 v4, 0x8

    .line 20
    nop

    .line 23
    const/4 v0, 0x5

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq p1, v0, :cond_3a

    .line 27
    if-eq p1, v4, :cond_30

    .line 29
    const/16 v0, 0x3e8

    .line 31
    if-eq p1, v0, :cond_1f

    .line 33
    goto :goto_42

    .line 34
    :cond_1f
    const/4 p1, 0x4

    .line 35
    invoke-virtual {p0, p1}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->startCircleToSearch(I)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_41

    .line 41
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    .line 43
    invoke-static {p0}, Lcom/oplus/systemui/navigationbar/gesture/VibrationHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/systemui/navigationbar/gesture/VibrationHelper;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/gesture/VibrationHelper;->onPerformHapticFeedback()V

    .line 50
    return v2

    .line 51
    :cond_30
    invoke-static {}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->isAllowedToStart()Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_41

    .line 57
    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->startCircleToSearchWithNavHandle()V

    .line 60
    return v2

    .line 61
    :cond_3a
    sget-boolean p1, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sIsSupportCircleToSearchNavbarHidden:Z

    .line 63
    if-nez p1, :cond_41

    .line 65
    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->startCircleToSearchWithHomeKey()V

    .line 68
    :cond_41
    return v2

    .line 69
    :cond_42
    :goto_42
    return v1
.end method

.method public final isSupportTriggerWhenRecentAnimationFinish()Ljava/lang/Boolean;
    .registers 8

    .line 1
    const-string v0, "OplusCircleToSearchManagerExImpl"

    .line 3
    const-string v1, "NavBar"

    .line 5
    const-string v2, "isSupportTriggerWhenRecentAnimationFinish "

    .line 7
    iget-object v3, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->supportTriggerWhenRecentAnimationFinish:Ljava/lang/Boolean;

    .line 9
    if-eqz v3, :cond_b

    .line 11
    return-object v3

    .line 12
    :cond_b
    const/16 v3, 0x8

    .line 14
    :try_start_d
    iget-object v4, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    .line 16
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    move-result-object v4

    .line 20
    const-string v5, "com.android.launcher"

    .line 22
    const/16 v6, 0x80

    .line 24
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 27
    move-result-object v4

    .line 28
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 30
    const-string v5, "com.android.launcher.circle_to_search.recent_animation_finish"

    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    move-result v4

    .line 37
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object v4

    .line 41
    iput-object v4, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->supportTriggerWhenRecentAnimationFinish:Ljava/lang/Boolean;

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    invoke-static {v3, v1, v0, v2}, Lcom/oplusos/systemui/common/util/LogUtil;->d$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_39} :catch_3a

    .line 58
    goto :goto_3f

    .line 59
    :catch_3a
    const-string v2, "failed to get metadata com.android.launcher.circle_to_search.recent_animation_finish"

    .line 61
    invoke-static {v3, v1, v0, v2}, Lcom/oplusos/systemui/common/util/LogUtil;->e$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_3f
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->supportTriggerWhenRecentAnimationFinish:Ljava/lang/Boolean;

    .line 66
    return-object p0
.end method

.method public final onLongPressCancel()V
    .registers 5

    .line 1
    const-string v0, "OplusCircleToSearchManagerExImpl"

    .line 3
    const-string/jumbo v1, "onLongPressCancel"

    .line 5
    const-string v2, "NavBar"

    const/16 v3, 0x8

    .line 9
    invoke-static {v3, v2, v0, v1}, Lcom/oplusos/systemui/common/util/LogUtil;->d$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-boolean v0, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sIsSupportCircleToSearchNavbarHidden:Z

    if-eqz v0, :cond_1d

    .line 16
    sget-object v0, Lcom/oplus/systemui/navigationbar/utils/OplusNavBarVibrationHelper;->Companion:Lcom/oplus/systemui/navigationbar/utils/OplusNavBarVibrationHelper$Companion;

    .line 18
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    .line 20
    invoke-virtual {v0, p0}, Lcom/oplus/systemui/navigationbar/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 24
    check-cast p0, Lcom/oplus/systemui/navigationbar/utils/OplusNavBarVibrationHelper;

    .line 26
    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/utils/OplusNavBarVibrationHelper;->cancelVibrate()V

    :cond_1d
    return-void
.end method

.method public final onLongPressed()V
    .registers 1

    invoke-static {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;->onLongPressed(Ljava/lang/Object;)V

    return-void
.end method

.method public final onShowPress()V
    .registers 5

    .line 1
    const-string v0, "OplusCircleToSearchManagerExImpl"

    .line 3
    const-string/jumbo v1, "onShowPress"

    .line 5
    const-string v2, "NavBar"

    const/16 v3, 0x8

    .line 9
    invoke-static {v3, v2, v0, v1}, Lcom/oplusos/systemui/common/util/LogUtil;->d$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-boolean v0, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sIsSupportCircleToSearchNavbarHidden:Z

    if-eqz v0, :cond_1d

    .line 16
    sget-object v0, Lcom/oplus/systemui/navigationbar/utils/OplusNavBarVibrationHelper;->Companion:Lcom/oplus/systemui/navigationbar/utils/OplusNavBarVibrationHelper$Companion;

    .line 18
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    .line 20
    invoke-virtual {v0, p0}, Lcom/oplus/systemui/navigationbar/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 24
    check-cast p0, Lcom/oplus/systemui/navigationbar/utils/OplusNavBarVibrationHelper;

    .line 26
    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/utils/OplusNavBarVibrationHelper;->performVibrate()V

    :cond_1d
    return-void
.end method

.method public registerObservers(Ljava/lang/Runnable;)V
    .registers 8

    sput-object p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->sInstance:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sIsSupportCircleToSearch:Z

    const-string v0, "OplusCTS"

    const-string/jumbo v1, "registerObservers: initializing CTS observers and listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->assistCallback:Ljava/lang/Runnable;

    :try_start_f
    sget-object v0, Lcom/oplus/systemui/navigationbar/observer/NavStateObserver;->INSTANCE:Lcom/oplus/systemui/navigationbar/observer/NavStateObserver;

    invoke-direct {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->getSettingsObserverListener()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->addListener(Lcom/oplusos/systemui/common/observer/IObserverListener;)V

    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->getSettingsObserverListener()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->addListener(Lcom/oplusos/systemui/common/observer/IObserverListener;)V

    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->getSettingsObserverListener()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->addListener(Lcom/oplusos/systemui/common/observer/IObserverListener;)V

    invoke-static {}, Lcom/oplusos/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/oplusos/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->getSettingsObserverListener()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->addListener(Lcom/oplusos/systemui/common/observer/IObserverListener;)V

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->splitScreenObserver:Lcom/oplus/app/OplusSplitScreenObserver;

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->registerSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureAssistObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureAssistObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureAssistObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureAssistObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->registerForUserSwitch(Landroid/content/Context;Z)V
    :try_end_73
    .catchall {:try_start_f .. :try_end_73} :catchall_74

    goto :goto_7c

    :catchall_74
    move-exception v0

    const-string v1, "OplusCTS"

    const-string v2, "registerObservers: exception during observer registration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7c
    invoke-static {}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->isAllowedToStart()Z

    move-result v0

    if-eqz v0, :cond_88

    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;->INSTANCE:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;

    invoke-virtual {v0, p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;->addHomeHandlerLongClickListener(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController$HomeHandleTouchEvent;)V

    goto :goto_8d

    :cond_88
    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;->INSTANCE:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;

    invoke-virtual {v0, p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;->removeHomeHandlerLongClickListener(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController$HomeHandleTouchEvent;)V

    :goto_8d
    :try_start_8d
    iget-object v0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->assistCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_a7

    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->assistListener:Lcom/oplusos/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->addListener(Lcom/oplusos/systemui/common/observer/IObserverListener;)V

    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureAssistObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureAssistObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureAssistObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureAssistObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->assistListener:Lcom/oplusos/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->addListener(Lcom/oplusos/systemui/common/observer/IObserverListener;)V

    :cond_a7
    iget-object v0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->oplusCircleToSearchDialogManager:Lcom/oplus/systemui/circlesearch/OplusCircleToSearchDialogManager;

    if-eqz v0, :cond_ae

    invoke-virtual {v0}, Lcom/oplus/systemui/circlesearch/OplusCircleToSearchDialogManager;->registerObservers()V

    :cond_ae
    invoke-static {}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchUtils;->isCircleToSearchVirtualCornerAssistEnable()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->setInputInjectorScreenSize()V

    goto :goto_cc

    :cond_b8
    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->cornerAssistListener:Lcom/oplusos/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->addListener(Lcom/oplusos/systemui/common/observer/IObserverListener;)V
    :try_end_c3
    .catchall {:try_start_8d .. :try_end_c3} :catchall_c4

    goto :goto_cc

    :catchall_c4
    move-exception v0

    const-string v1, "OplusCTS"

    const-string v2, "registerObservers: exception during assist registration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_cc
    const-string v0, "OplusCTS"

    const-string v1, "registerObservers: complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setInputInjectorScreenSize()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchUtils;->isCircleToSearchVirtualCornerAssistEnable()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 7
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 9
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    .line 14
    const-string/jumbo v1, "window"

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 21
    instance-of v1, p0, Landroid/view/WindowManager;

    if-eqz v1, :cond_1b

    .line 25
    check-cast p0, Landroid/view/WindowManager;

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-eqz p0, :cond_27

    .line 31
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    :cond_27
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 42
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lez p0, :cond_4d

    if-lez v0, :cond_4d

    .line 48
    invoke-static {}, Lcom/oplus/systemui/navigationbar/gesture/OplusInputInjector;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/OplusInputInjector;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 54
    iget-object v1, v1, Lcom/oplus/systemui/navigationbar/gesture/OplusInputInjector;->mScreenRegion:Landroid/graphics/RectF;

    int-to-float v2, p0

    int-to-float v3, v0

    const/4 v4, 0x0

    .line 59
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 62
    :cond_3d
    const-string/jumbo v1, "set screen size for input injector Width: "

    .line 64
    const-string v2, " Height: "

    .line 66
    const-string p0, ""

    .line 70
    const-string v0, "NavBar"

    .line 72
    const-string v1, "OplusCircleToSearchManagerExImpl"

    const/16 v2, 0x8

    .line 76
    invoke-static {v2, v0, v1, p0}, Lcom/oplusos/systemui/common/util/LogUtil;->d$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method public final startCircleToSearch(I)Z
    .registers 9

    iget-object v0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->sysUiState:Lcom/android/systemui/model/SysUiState;

    if-eqz v0, :cond_1c

    :try_start_4
    invoke-interface {v0}, Lcom/android/systemui/model/SysUiState;->getFlags()J

    move-result-wide v1

    const-wide/16 v3, 0x248

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    const-wide/16 v3, 0x804

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1c

    const/4 p0, 0x0

    return p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    iget-boolean v0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->isSplitScreenMinimized:Z

    if-nez v0, :cond_65

    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    if-nez p0, :cond_26

    sget-object p0, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sContext:Landroid/content/Context;

    :cond_26
    if-nez p0, :cond_2c

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p0

    :cond_2c
    if-nez p0, :cond_30

    const/4 p0, 0x0

    return p0

    :cond_30
    const-class v0, Landroid/app/contextualsearch/ContextualSearchManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/contextualsearch/ContextualSearchManager;

    if-nez p0, :cond_3c

    const/4 p0, 0x0

    return p0

    :cond_3c
    const-string v0, "OplusCTS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startCircleToSearch: invoking startContextualSearch, type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4f
    invoke-static {p0, p1}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;->startContextualSearch(Ljava/lang/Object;I)Z

    move-result p0

    return p0
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p0

    const-string p1, "OplusCTS"

    const-string v0, "startCircleToSearch: startContextualSearch THREW EXCEPTION:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    :cond_65
    const/4 p0, 0x0

    return p0
.end method

.method public final startCircleToSearchWithHomeKey()V
    .registers 6

    .line 1
    sget-boolean v0, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sIsSupportCircleToSearch:Z

    if-nez v0, :cond_5

    return-void

    .line 6
    :cond_5
    invoke-static {}, Lcom/oplus/systemui/navigationbar/utils/NavBarUtils;->isVirtualKeyMode()Z

    move-result v0

    .line 10
    const-string v1, "OplusCircleToSearchManagerExImpl"

    .line 12
    const-string v2, "NavBar"

    const/16 v3, 0x8

    if-nez v0, :cond_18

    .line 18
    const-string/jumbo p0, "startCircleToSearchWithHomeKey not virtual key mode"

    .line 21
    invoke-static {v3, v2, v1, p0}, Lcom/oplusos/systemui/common/util/LogUtil;->d$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_18
    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;

    .line 27
    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->getState()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3a

    const/4 v0, 0x2

    .line 39
    invoke-virtual {p0, v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->startCircleToSearch(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 45
    sget-boolean v0, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sIsSupportCircleToSearchNavbarHidden:Z

    if-nez v0, :cond_39

    .line 49
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    .line 51
    invoke-static {p0}, Lcom/oplus/systemui/navigationbar/gesture/VibrationHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/systemui/navigationbar/gesture/VibrationHelper;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/gesture/VibrationHelper;->onPerformHapticFeedback()V

    :cond_39
    return-void

    .line 59
    :cond_3a
    const-string/jumbo p0, "startCircleToSearchWithHomeKey not support c2s switch"

    .line 62
    invoke-static {v3, v2, v1, p0}, Lcom/oplusos/systemui/common/util/LogUtil;->d$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final startCircleToSearchWithNavHandle()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->startCircleToSearch(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-boolean v0, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sIsSupportCircleToSearchNavbarHidden:Z

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->context:Landroid/content/Context;

    if-nez p0, :cond_11

    sget-object p0, Lcom/oplusos/systemui/common/feature/CustomizeFeatureOption;->sContext:Landroid/content/Context;

    :cond_11
    if-eqz p0, :cond_1a

    :try_start_13
    invoke-static {p0}, Lcom/oplus/systemui/navigationbar/gesture/VibrationHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/systemui/navigationbar/gesture/VibrationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/gesture/VibrationHelper;->onPerformHapticFeedback()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    :catchall_1a
    :cond_1a
    return-void
.end method

.method public updateInsetsTouchability(Landroid/view/ViewTreeObserver$InternalInsetsInfo;Landroid/graphics/Region;)Z
    .registers 8

    .line 1
    invoke-static {}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchUtils;->isCircleToSearchVirtualCornerAssistEnable()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x3

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 17
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 23
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 29
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 31
    invoke-virtual {p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 35
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 37
    new-instance v3, Landroid/graphics/RegionIterator;

    .line 39
    invoke-direct {v3, p2}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 42
    new-instance p2, Landroid/graphics/Rect;

    .line 44
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 47
    :cond_2e
    :goto_2e
    invoke-virtual {v3, p2}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 53
    iget v4, p2, Landroid/graphics/Rect;->left:I

    if-ge v4, p0, :cond_39

    move p0, v4

    .line 58
    :cond_39
    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-le v4, v0, :cond_3e

    move v0, v4

    .line 63
    :cond_3e
    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-ge v4, v1, :cond_43

    move v1, v4

    .line 68
    :cond_43
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-le v4, v2, :cond_2e

    move v2, v4

    goto :goto_2e

    .line 74
    :cond_49
    iget-object p2, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 76
    new-instance v3, Landroid/graphics/Region;

    .line 78
    invoke-direct {v3, p0, v1, v0, v2}, Landroid/graphics/Region;-><init>(IIII)V

    .line 81
    invoke-virtual {p2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 84
    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo p2, "updateInsetsTouchability "

    .line 91
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    const-string p1, "NavBar"

    .line 103
    const-string p2, "OplusCircleToSearchManagerExImpl"

    const/16 v0, 0x8

    .line 107
    invoke-static {v0, p1, p2, p0}, Lcom/oplusos/systemui/common/util/LogUtil;->d$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
