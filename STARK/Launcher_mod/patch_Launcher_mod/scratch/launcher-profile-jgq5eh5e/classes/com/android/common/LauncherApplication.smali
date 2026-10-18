.class public Lcom/android/common/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field private static final BINDER_MAX_THREAD:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static sAppContext:Landroid/content/Context;

.field private static sOrientationState:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/util/RecentsOrientedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOldConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/oplus/dispatch/WorkDispatch;->init()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/android/common/LauncherApplication;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/common/LauncherApplication;->lambda$onCreate$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/android/common/LauncherApplication;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/common/LauncherApplication;->lambda$onCreate$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/content/res/Configuration;Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/common/LauncherApplication;->lambda$onAppConfigChange$2(Landroid/content/res/Configuration;Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAppConfig()Landroid/content/res/Configuration;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/common/LauncherApplication;->sAppContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/common/LauncherApplication;->sAppContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/common/LauncherApplication;->sOrientationState:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/quickstep/util/RecentsOrientedState;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method private initCoverageService()V
    .registers 5

    .line 1
    const-string v0, "LauncherApplication"

    .line 3
    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCoverageBuildType()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 9
    :try_start_8
    const-string/jumbo v1, "initService start"

    .line 12
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v1, "com.oplus.autotest.coverageLib.CoverageService"

    .line 17
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 21
    const-string/jumbo v2, "initService"

    .line 24
    const-class v3, Landroid/content/Context;

    .line 26
    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 42
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 46
    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo p0, "initService done"

    .line 52
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_36} :catch_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_36} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_36} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_36} :catch_37

    goto :goto_77

    :catch_37
    move-exception p0

    goto :goto_3d

    :catch_39
    move-exception p0

    goto :goto_4f

    :catch_3b
    move-exception p0

    goto :goto_61

    .line 62
    :goto_3d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    const-string v2, "IllegalAccessException: "

    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 80
    :goto_4f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    const-string v2, "InvocationTargetException: "

    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 98
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v2, "initService exception caught : "

    .line 103
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    :goto_77
    return-void
.end method

.method private static synthetic lambda$onAppConfigChange$2(Landroid/content/res/Configuration;Lcom/android/launcher3/taskbar/OplusTaskbarManager;)V
    .registers 3

    .line 1
    const-string/jumbo v0, "onAppConfigChange"

    .line 4
    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/taskbar/OplusTaskbarManager;->onLauncherConfigChange(Landroid/content/res/Configuration;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->checkedException(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .registers 2

    .line 1
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/android/launcher3/allapps/branch/IBranchCommon;->initBranchManager(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private onAppConfigChange(Landroid/content/res/Configuration;)V
    .registers 14

    .line 1
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v0

    .line 5
    const-string v1, "LauncherApplication"

    if-eqz v0, :cond_1e

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v2, "onConfigurationChanged:newConfig="

    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/oplus/basecommon/util/FunctionsKt;->getPrintInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_1e
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 33
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 37
    invoke-static {v0}, Lcom/android/common/util/ScreenUtils;->setCurrentDisplayRotation(I)V

    .line 40
    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->startConfigCache()V

    .line 43
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarManager()Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 51
    new-instance v2, Lcom/oplus/quickstep/memory/b;

    const/4 v3, 0x1

    .line 54
    invoke-direct {v2, p1, v3}, Lcom/oplus/quickstep/memory/b;-><init>(Ljava/lang/Object;I)V

    .line 57
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 60
    invoke-static {p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->checkAndClearLastExpandItems(Landroid/content/res/Configuration;)V

    .line 63
    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lcom/android/common/config/ContextFetcher;->onAppConfigChange(Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4f

    .line 74
    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->fixDensityForContext(Landroid/content/Context;)V

    .line 77
    invoke-static {v2}, Lcom/android/common/util/DisplayUtils;->updateIdpIfNeeded(Z)Z

    .line 80
    :cond_4f
    invoke-static {p1, p0}, Lcom/android/common/util/UxConfigUtils;->onAppConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 83
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_5f

    .line 90
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 96
    :cond_5f
    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    .line 98
    invoke-virtual {v0, v3}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->setMFolderConfigurationChange(Z)V

    .line 101
    :cond_64
    iget-object v0, p0, Lcom/android/common/LauncherApplication;->mOldConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_6d

    .line 105
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    goto :goto_6e

    :cond_6d
    move v0, v2

    .line 111
    :goto_6e
    sget-object v4, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    .line 113
    invoke-virtual {v4}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v4

    .line 117
    check-cast v4, Lcom/android/launcher3/Launcher;

    .line 119
    instance-of v5, v4, Lcom/android/launcher/Launcher;

    .line 121
    const-string/jumbo v6, "onConfigurationChanged, diff = "

    if-eqz v5, :cond_d9

    move-object v7, v4

    .line 127
    check-cast v7, Lcom/android/launcher/Launcher;

    .line 129
    invoke-virtual {v7}, Lcom/android/launcher/Launcher;->getIntegrationUIManager()Lcom/oplus/quickstep/integration/ui/IntegrationUIManager;

    move-result-object v8

    if-eqz v8, :cond_d9

    .line 135
    iget-object v8, p0, Lcom/android/common/LauncherApplication;->mOldConfig:Landroid/content/res/Configuration;

    if-eqz v8, :cond_d9

    .line 139
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-static {v0}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v9, ", mOldConfig= "

    .line 159
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v9, p0, Lcom/android/common/LauncherApplication;->mOldConfig:Landroid/content/res/Configuration;

    .line 164
    invoke-static {v9}, Lcom/oplus/basecommon/util/FunctionsKt;->getPrintInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v9

    .line 168
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 175
    invoke-static {v1, v8}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    and-int/lit16 v8, v0, 0x1000

    if-nez v8, :cond_c9

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v8, v0

    if-eqz v8, :cond_bb

    goto :goto_c9

    .line 188
    :cond_bb
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v8

    if-eqz v8, :cond_d9

    .line 194
    invoke-virtual {v7}, Lcom/android/launcher/Launcher;->getIntegrationUIManager()Lcom/oplus/quickstep/integration/ui/IntegrationUIManager;

    move-result-object v7

    .line 198
    invoke-virtual {v7, p1}, Lcom/oplus/quickstep/integration/ui/IntegrationUIManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_d9

    .line 202
    :cond_c9
    :goto_c9
    const-string/jumbo v8, "onConfigurationChanged, density or fontScale changed, close flexible task view"

    .line 205
    invoke-static {v1, v8}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v7}, Lcom/android/launcher/Launcher;->getIntegrationUIManager()Lcom/oplus/quickstep/integration/ui/IntegrationUIManager;

    move-result-object v7

    .line 212
    invoke-virtual {v7}, Lcom/oplus/quickstep/integration/ui/IntegrationUIManager;->closeTaskViewWithoutAnim()V

    .line 215
    invoke-static {p0}, Lcom/airbnb/lottie/q;->b(Lcom/android/common/LauncherApplication;)V

    :cond_d9
    :goto_d9
    if-eqz v5, :cond_11a

    move-object v7, v4

    .line 221
    check-cast v7, Lcom/android/launcher/Launcher;

    and-int/lit16 v8, v0, 0x200

    if-eqz v8, :cond_e4

    move v8, v3

    goto :goto_e5

    :cond_e4
    move v8, v2

    .line 230
    :goto_e5
    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getCurScreenLockState()Lcom/android/keyguardservice/ScreenLockState;

    move-result-object v9

    .line 234
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v10

    if-eqz v10, :cond_109

    .line 240
    new-instance v10, Ljava/lang/StringBuilder;

    .line 242
    const-string/jumbo v11, "onConfigurationChanged, isUiModeChange = "

    .line 245
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    const-string v11, " ,curLockState ="

    .line 253
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 263
    invoke-static {v1, v10}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_109
    if-eqz v8, :cond_11a

    .line 268
    invoke-virtual {v9}, Lcom/android/keyguardservice/ScreenLockState;->isHandled()Z

    move-result v8

    if-eqz v8, :cond_11a

    .line 274
    invoke-virtual {v9}, Lcom/android/keyguardservice/ScreenLockState;->getLockState()I

    move-result v8

    if-ne v8, v3, :cond_11a

    .line 280
    invoke-virtual {v7, v3}, Lcom/android/launcher/Launcher;->setIsShowScreenWithoutUnLockAnim(Z)V

    .line 283
    :cond_11a
    iget-object v7, p0, Lcom/android/common/LauncherApplication;->mOldConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_175

    .line 287
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableInfo()Z

    move-result v7

    if-eqz v7, :cond_137

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    .line 295
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-static {v0}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-static {v1, v6}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_137
    invoke-static {v0}, Lcom/android/common/util/ScreenUtils;->isOrientationChange(I)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 318
    invoke-static {}, Lcom/android/launcher/rotation/ScreenRotationHelper;->getInstance()Lcom/android/launcher/rotation/ScreenRotationHelper;

    move-result-object v6

    .line 322
    invoke-virtual {v6, v3}, Lcom/android/launcher/rotation/ScreenRotationHelper;->setRotationChangedOnStop(Z)V

    .line 325
    :cond_144
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v3

    if-eqz v3, :cond_162

    if-eqz v5, :cond_162

    .line 333
    check-cast v4, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_162

    .line 337
    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    if-eqz v3, :cond_162

    .line 343
    invoke-static {v0}, Lcom/android/common/util/ScreenUtils;->containIdpChange(I)Z

    move-result v4

    if-eqz v4, :cond_162

    .line 349
    const-string/jumbo v4, "onAppConfigChange"

    .line 352
    invoke-virtual {v3, v4}, Lcom/android/launcher3/OplusHotseat;->onIdpChange(Ljava/lang/String;)V

    :cond_162
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_175

    .line 359
    const-string v3, "Locale changed, reset carrier two line setting"

    .line 361
    invoke-static {v1, v3}, Lcom/oplus/basecommon/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {v2}, Lcom/android/launcher3/OperatorFontCustomization;->resetCarrierTwoLineSettingToPublic(Z)V

    .line 367
    invoke-static {}, Lcom/android/launcher3/allapps/AllAppsLoaderHelper;->getInstance()Lcom/android/launcher3/allapps/AllAppsLoaderHelper;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsLoaderHelper;->onLocaleChanged()V

    .line 374
    :cond_175
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    if-eqz v1, :cond_184

    .line 384
    iget-object v2, p0, Lcom/android/common/LauncherApplication;->mOldConfig:Landroid/content/res/Configuration;

    .line 386
    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/LauncherModel;->handleAppConfigChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 389
    :cond_184
    invoke-static {v0}, Lcom/android/common/util/UxConfigUtils;->isOverlayChanged(I)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 395
    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    .line 397
    invoke-virtual {v0}, Lcom/oplus/launcher/overlay/RROverlayManager;->startCheckAvailable()V

    .line 400
    :cond_18f
    invoke-static {p1}, Lcom/android/quickstep/TaskViewUtils;->onAppConfigChange(Landroid/content/res/Configuration;)V

    .line 403
    iget-object v0, p0, Lcom/android/common/LauncherApplication;->mOldConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_19a

    .line 407
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_1a1

    .line 411
    :cond_19a
    new-instance v0, Landroid/content/res/Configuration;

    .line 413
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 416
    iput-object v0, p0, Lcom/android/common/LauncherApplication;->mOldConfig:Landroid/content/res/Configuration;

    :goto_1a1
    return-void
.end method

.method private static setAppContext(Landroid/content/Context;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/android/common/LauncherApplication;->sAppContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public static setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/common/LauncherApplication;->sOrientationState:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/android/common/LauncherApplication;->setAppContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/res/Configuration;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayDensity(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "attachBaseContext defaultDisplayDensity:"

    .line 14
    .line 15
    const-string v3, "LauncherApplication"

    .line 16
    .line 17
    invoke-static {v1, v2, v3}, Lcom/android/common/util/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-super {p0, v0}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lcom/android/common/LauncherApplication;->setAppContext(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchUtils;->removeBlockedProviders()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_51

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_51

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_51

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "LauncherApplication attachBaseContext "

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lcom/oplus/basecommon/util/FunctionsKt;->getPrintInfo(Landroid/content/Context;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v3, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_51
    sget-object v0, Lcom/android/launcher/startup/StartUpHandler;->Companion:Lcom/android/launcher/startup/StartUpHandler$Companion;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/launcher/startup/StartUpHandler$Companion;->getINSTANCE()Lcom/android/launcher/startup/StartUpHandler;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/android/launcher/startup/StartUpHandler;->builds()Lcom/android/launcher/startup/StartUpHandler;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lcom/android/launcher/startup/StartUpHandler;->onStart(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    sget-object p0, Lcom/android/common/util/TemporaryCacheHelper;->INSTANCE:Lcom/android/common/util/TemporaryCacheHelper;

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/common/util/TemporaryCacheHelper;->startTemporaryCache()V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/oplus/ext/core/ExtLoader;->init(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public getOldConfig()Landroid/content/res/Configuration;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/common/LauncherApplication;->mOldConfig:Landroid/content/res/Configuration;

    .line 2
    .line 3
    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8
    const-string v2, "LauncherApp#configChange"

    const-wide/16 v3, 0x8

    .line 12
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/android/common/LauncherApplication;->onAppConfigChange(Landroid/content/res/Configuration;)V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v2, "onFoldStateChange#LauncherApp#configChange cost :"

    .line 27
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v5, v0

    .line 31
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    const-string v0, "LauncherApplication"

    .line 40
    invoke-static {v0, p1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string p1, "LauncherApplication onConfigurationChanged"

    .line 45
    invoke-static {p0, p1}, Lcom/oplus/basecommon/log/LogUtils;->printContextLocal(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "LauncherApplication onConfigurationChanged "

    .line 78
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Lcom/oplus/basecommon/util/FunctionsKt;->getPrintInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_5e
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onCreate()V
    .registers 7

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 4
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 16
    invoke-static {v0}, Lcom/android/common/util/ScreenUtils;->setCurrentDisplayRotation(I)V

    .line 19
    invoke-static {}, Lcom/android/launcher/rotation/ScreenRotationHelper;->getInstance()Lcom/android/launcher/rotation/ScreenRotationHelper;

    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lcom/android/launcher/rotation/ScreenRotationHelper;->setRotation(I)V

    .line 26
    new-instance v0, Landroid/content/res/Configuration;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 39
    iput-object v0, p0, Lcom/android/common/LauncherApplication;->mOldConfig:Landroid/content/res/Configuration;

    .line 41
    invoke-static {}, Lcom/oplus/basecommon/thread/OplusExecutors;->getUI_HELPER_EXECUTOR()Lcom/oplus/basecommon/thread/OplusLooperExecutor;

    move-result-object v0

    .line 45
    new-instance v1, Landroidx/core/widget/b;

    const/16 v2, 0xa

    .line 49
    invoke-direct {v1, p0, v2}, Landroidx/core/widget/b;-><init>(Ljava/lang/Object;I)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/oplus/basecommon/thread/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 55
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_4d

    .line 59
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 61
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportAiEngine()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 67
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/android/launcher3/AiEngineFastStart;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/AiEngineFastStart;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/android/launcher3/AiEngineFastStart;->startWatching()V

    .line 78
    :cond_4d
    invoke-static {p0}, Lcom/android/launcher/layout/LayoutUtilsManager;->initLayoutArrangementType(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 93
    invoke-static {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->initLayoutDirection(I)V

    .line 96
    invoke-static {p0}, Lcom/oplus/launcher/overlay/RROverlayManager;->init(Landroid/content/Context;)V

    .line 99
    sget-object v0, Lcom/oplus/launcher/overlay/RROverlayManager;->INSTANCE:Lcom/oplus/launcher/overlay/RROverlayManager;

    .line 101
    invoke-virtual {v0}, Lcom/oplus/launcher/overlay/RROverlayManager;->initOverlayState()V

    .line 104
    invoke-static {}, Lcom/android/common/util/LaterInitHelper;->initOnWorker()V

    .line 107
    invoke-static {}, Lcom/oplus/basecommon/util/LauncherBooster;->getCpu()Lcom/oplus/basecommon/util/LauncherBooster$CpuBoost;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/oplus/basecommon/util/LauncherBooster$CpuBoost;->setUxImFlag()V

    .line 114
    invoke-static {}, Lcom/oplus/basecommon/util/LauncherBooster;->getCpu()Lcom/oplus/basecommon/util/LauncherBooster$CpuBoost;

    move-result-object v0

    .line 118
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v0, v2, v1}, Lcom/oplus/basecommon/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    .line 126
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 128
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isBinderPoolExpand()Z

    move-result v1

    if-eqz v1, :cond_8a

    const/16 v1, 0x1f

    .line 136
    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 139
    :cond_8a
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_99

    .line 143
    sget-object v1, Lcom/oplus/basecommon/thread/Executors;->THREAD_POOL_EXECUTOR:Lcom/oplus/dispatch/OCDExecutorService;

    .line 145
    new-instance v3, Landroidx/core/widget/c;

    const/4 v4, 0x7

    .line 148
    invoke-direct {v3, p0, v4}, Landroidx/core/widget/c;-><init>(Ljava/lang/Object;I)V

    .line 151
    invoke-virtual {v1, v3}, Lcom/oplus/dispatch/OCDExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 154
    :cond_99
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v1, :cond_a2

    .line 158
    sget-object v1, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendInject;

    .line 160
    invoke-virtual {v1, p0}, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;->init(Landroid/content/Context;)V

    .line 163
    :cond_a2
    invoke-static {p0}, Lcom/android/launcher/effect/EffectSetting;->initLauncherEffect(Landroid/content/Context;)V

    .line 166
    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    .line 169
    invoke-static {}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->c()Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;

    move-result-object v1

    .line 173
    invoke-virtual {v1, p0}, Lcom/coui/appcompat/darkmode/COUIDarkModeHelper;->a(Lcom/android/common/LauncherApplication;)V

    .line 176
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSDisableCard()Z

    move-result v1

    if-nez v1, :cond_ba

    .line 182
    sget-object v1, Lcom/oplus/card/di/DI;->INSTANCE:Lcom/oplus/card/di/DI;

    .line 184
    invoke-virtual {v1}, Lcom/oplus/card/di/DI;->load()V

    .line 187
    :cond_ba
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 193
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v1

    .line 197
    invoke-virtual {v1, p0}, Lcom/android/launcher3/card/CardPermissionManager;->initPermissionState(Landroid/content/Context;)V

    .line 200
    :cond_c7
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSDisableCard()Z

    move-result v1

    if-nez v1, :cond_d8

    .line 206
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v1

    if-nez v1, :cond_d8

    .line 212
    sget-object v1, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    .line 214
    invoke-virtual {v1, p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->setup(Landroid/app/Application;)V

    .line 217
    :cond_d8
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->sIsSupportDynamicDeepShortcut:Z

    if-eqz v1, :cond_e1

    .line 221
    sget-object v1, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    .line 223
    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->initHeytapMarketShortcut()V

    .line 226
    :cond_e1
    sget-object v1, Lcom/android/launcher3/dot/SmallAppUtils;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 228
    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 232
    check-cast v1, Lcom/android/launcher3/dot/SmallAppUtils;

    .line 234
    invoke-virtual {v1}, Lcom/android/launcher3/dot/SmallAppUtils;->registerObserverOnUIThread()V

    .line 237
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v1

    const/4 v3, 0x0

    .line 242
    const-class v4, Lcom/android/launcher/settings/LauncherTaskbarSettingActivity;

    .line 244
    const-string v5, "com.android.launcher"

    if-eqz v1, :cond_121

    .line 248
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_110

    .line 254
    new-instance v1, Landroid/content/ComponentName;

    .line 256
    const-class v4, Lcom/android/launcher/settings/LauncherTabletTaskbarSettingActivity;

    .line 258
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-direct {v1, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 269
    invoke-static {v4, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->enableTaskbarSettingActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    goto :goto_137

    .line 273
    :cond_110
    new-instance v1, Landroid/content/ComponentName;

    .line 275
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-direct {v1, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 286
    invoke-static {v4, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->enableTaskbarSettingActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    goto :goto_137

    .line 290
    :cond_121
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_137

    .line 296
    new-instance v1, Landroid/content/ComponentName;

    .line 298
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-direct {v1, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 309
    invoke-static {v4, v1, v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->enableTaskbarSettingActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 312
    :cond_137
    :goto_137
    invoke-direct {p0}, Lcom/android/common/LauncherApplication;->initCoverageService()V

    .line 315
    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->initAsync()V

    .line 318
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSDisableCard()Z

    move-result v0

    if-nez v0, :cond_156

    .line 324
    invoke-static {}, Lcom/android/launcher/UiConfig;->isSuzukiO()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 330
    invoke-static {}, Lcom/android/common/util/LightOsCardFeatureUtil;->has8GMemoryOrMore()Z

    move-result v0

    if-eqz v0, :cond_156

    .line 336
    :cond_14f
    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager;->initCardGroupSDK()V

    .line 343
    :cond_156
    sget-object v0, Lcom/android/launcher/monitor/StabilityMonitorHandler;->Companion:Lcom/android/launcher/monitor/StabilityMonitorHandler$Companion;

    .line 345
    invoke-virtual {v0}, Lcom/android/launcher/monitor/StabilityMonitorHandler$Companion;->getINSTANCE()Lcom/android/launcher/monitor/StabilityMonitorHandler;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/android/launcher/monitor/StabilityMonitorHandler;->builds()Lcom/android/launcher/monitor/StabilityMonitorHandler;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p0}, Lcom/android/launcher/monitor/StabilityMonitorHandler;->onStart(Landroid/content/Context;)V

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 364
    const-string/jumbo v1, "system_material_blur_enable"

    .line 367
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_177

    .line 373
    invoke-static {p0}, Lcom/oplus/posteffect/Blur;->initBlur(Landroid/content/Context;)V

    .line 376
    :cond_177
    invoke-static {p0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemHelper;->checkIfForceEnableSubscribeItem(Landroid/content/Context;)V

    .line 379
    sget-object v0, Lcom/android/launcher3/util/NoteWidgetOfflineHelper;->Companion:Lcom/android/launcher3/util/NoteWidgetOfflineHelper$Companion;

    .line 381
    invoke-virtual {v0}, Lcom/android/launcher3/util/NoteWidgetOfflineHelper$Companion;->getInstance()Lcom/android/launcher3/util/NoteWidgetOfflineHelper;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/NoteWidgetOfflineHelper;->register(Landroid/content/Context;)V

    .line 388
    invoke-static {}, Lcom/android/common/util/UxUtils;->reportHeapKeyThreadInExp()V

    .line 391
    const-string v0, "LauncherApplication onCreate"

    .line 393
    invoke-static {p0, v0}, Lcom/oplus/basecommon/log/LogUtils;->printContextLocal(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onTerminate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/android/common/util/FoldStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/common/util/FoldStateMonitor;->destroy()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->destroy()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportTTSatelliteDevice()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1a

    .line 19
    .line 20
    invoke-static {}, Lcom/android/launcher/model/SatelliteStateManage;->getInstance()Lcom/android/launcher/model/SatelliteStateManage;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/launcher/model/SatelliteStateManage;->unregisterSatelliteCallback()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    .line 28
    .line 29
    if-eqz v0, :cond_31

    .line 30
    .line 31
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportAiEngine()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_31

    .line 38
    .line 39
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/android/launcher3/AiEngineFastStart;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/AiEngineFastStart;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/android/launcher3/AiEngineFastStart;->stopWatching()V

    .line 48
    .line 49
    .line 50
    :cond_31
    sget-object v0, Lcom/android/launcher3/util/NoteWidgetOfflineHelper;->Companion:Lcom/android/launcher3/util/NoteWidgetOfflineHelper$Companion;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/launcher3/util/NoteWidgetOfflineHelper$Companion;->getInstance()Lcom/android/launcher3/util/NoteWidgetOfflineHelper;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/NoteWidgetOfflineHelper;->unregister(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/android/launcher3/allapps/AllAppsLoaderHelper;->getInstance()Lcom/android/launcher3/allapps/AllAppsLoaderHelper;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsLoaderHelper;->clear()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LauncherApplication#onTrimMemory("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ")"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-wide/16 v1, 0x8

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "LauncherApplication#onTrimMemory, level="

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "LauncherApplication"

    .line 43
    .line 44
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
