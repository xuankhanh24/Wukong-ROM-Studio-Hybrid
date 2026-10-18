.class public final Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;
.super Ljava/lang/Object;
.source "ExpandSwitchHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u00020\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u0012\u0004\u0008\u0016\u0010\u0003R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;",
        "",
        "<init>",
        "()V",
        "Lm9/n;",
        "registerSpChangeListener",
        "unregisterSpChangeListener",
        "switchExpandHotseatIfNeeded",
        "onExpandSwitchStateChange",
        "removeExpandViews",
        "",
        "isSwitchOn",
        "()Z",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "itemInfo",
        "expandSwitchOffAndRemoveDirtyData",
        "(Lcom/android/launcher3/model/data/ItemInfo;)Z",
        "",
        "TAG",
        "Ljava/lang/String;",
        "foldedScreenSwitchStateChanged",
        "Z",
        "getFoldedScreenSwitchStateChanged$annotations",
        "Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;",
        "mTaskbarSettingsConfig$delegate",
        "Lm9/c;",
        "getMTaskbarSettingsConfig",
        "()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;",
        "mTaskbarSettingsConfig",
        "Lcom/android/launcher3/util/SettingsCache$OnChangeListener;",
        "mOnSettingsChangeListener",
        "Lcom/android/launcher3/util/SettingsCache$OnChangeListener;",
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
.field public static final INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

.field private static final TAG:Ljava/lang/String; = "ExpandSwitchHelper"

.field private static foldedScreenSwitchStateChanged:Z

.field private static final mOnSettingsChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private static final mTaskbarSettingsConfig$delegate:Lm9/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    .line 7
    .line 8
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper$mTaskbarSettingsConfig$2;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper$mTaskbarSettingsConfig$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/a;->b(Lkotlin/jvm/functions/Function0;)Lm9/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mTaskbarSettingsConfig$delegate:Lm9/c;

    .line 15
    .line 16
    new-instance v0, Lcom/android/launcher3/hotseat/expand/l;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mOnSettingsChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Z)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mOnSettingsChangeListener$lambda$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->onExpandSwitchStateChange$lambda$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final expandSwitchOffAndRemoveDirtyData(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string/jumbo v0, "itemInfo"

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v0

    if-nez v0, :cond_33

    .line 13
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 19
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 25
    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    if-eqz v0, :cond_27

    .line 29
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 33
    filled-new-array {p0}, [Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 40
    :cond_27
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandDividerItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, 0x0

    .line 47
    invoke-static {p0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    :cond_31
    const/4 p0, 0x1

    return p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic getFoldedScreenSwitchStateChanged$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method private final getMTaskbarSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
    .registers 1

    .line 1
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mTaskbarSettingsConfig$delegate:Lm9/c;

    .line 2
    .line 3
    invoke-interface {p0}, Lm9/c;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final isSwitchOn()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->getMTaskbarSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private static final mOnSettingsChangeListener$lambda$0(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result p0

    .line 5
    const-string v0, "ExpandSwitchHelper"

    .line 7
    const-string v1, "Hotseat_expand"

    if-nez p0, :cond_18

    .line 11
    const-string p0, "expand switch off to clear lastFinalShownExpandDataList"

    .line 13
    invoke-static {v1, v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    .line 18
    invoke-virtual {p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLastFinalShownExpandDataList()Ljava/util/ArrayList;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 25
    :cond_18
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p0

    if-eqz p0, :cond_28

    .line 31
    const-string/jumbo p0, "mark to switch expand dock on/off when back to large screen mode"

    .line 34
    invoke-static {v1, v0, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 38
    sput-boolean p0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->foldedScreenSwitchStateChanged:Z

    goto :goto_2b

    .line 41
    :cond_28
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->onExpandSwitchStateChange()V

    :goto_2b
    return-void
.end method

.method public static final onExpandSwitchStateChange()V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->isSwitchOn()Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v1

    .line 9
    const-string v2, "ExpandSwitchHelper"

    .line 11
    const-string v3, "Hotseat_expand"

    if-eqz v1, :cond_14

    .line 15
    const-string/jumbo v1, "onChange->dock expand switch change,switchOn:"

    .line 18
    invoke-static {v1, v3, v2, v0}, Lcom/android/common/logcontroller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_14
    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 24
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    .line 26
    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getEnableUpdateExpandFlag()Z

    move-result v0

    const/4 v4, 0x1

    .line 31
    const-string v5, "getAppContext(...)"

    if-eqz v0, :cond_2d

    .line 35
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v0, v4, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    goto :goto_42

    .line 46
    :cond_2d
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {v0, v1, v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    goto :goto_42

    .line 57
    :cond_38
    sget-object v0, Lcom/oplus/basecommon/thread/Executors;->MAIN_EXECUTOR:Lcom/oplus/basecommon/thread/OplusLooperExecutor;

    .line 59
    new-instance v4, Lcom/android/launcher3/hotseat/expand/k;

    .line 61
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {v0, v4}, Lcom/oplus/basecommon/thread/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 67
    :goto_42
    sput-boolean v1, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->foldedScreenSwitchStateChanged:Z

    .line 69
    const-string/jumbo v0, "reset isNeedUpdateSwitch to false"

    .line 72
    invoke-static {v3, v2, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onExpandSwitchStateChange$lambda$1()V
    .registers 1

    .line 1
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->removeExpandViews()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final registerSpChangeListener()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->getMTaskbarSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mOnSettingsChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->registerTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final removeExpandViews()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 8
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 14
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    goto :goto_13

    :cond_12
    move-object p0, v0

    :goto_13
    if-nez p0, :cond_16

    return-void

    .line 23
    :cond_16
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasExpandItemOrDividerInBgData()Z

    move-result v1

    if-nez v1, :cond_27

    .line 29
    const-string p0, "ExpandSwitchHelper"

    .line 31
    const-string/jumbo v0, "onExpandSwitchStateChange,no expand item disable,return"

    .line 34
    const-string v1, "Hotseat_expand"

    .line 36
    invoke-static {v1, p0, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_27
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getHotseatExpandViews()Ljava/util/ArrayList;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 52
    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    if-eqz v2, :cond_6b

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 61
    check-cast v2, Landroid/view/View;

    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 67
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    .line 76
    iget-object v3, v3, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 82
    filled-new-array {v4}, [Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v6

    .line 86
    invoke-virtual {v3, v5, v6}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 95
    invoke-virtual {v3, v2}, Lcom/android/launcher3/OplusHotseat;->removeView(Landroid/view/View;)V

    .line 98
    :cond_61
    iget v2, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_2f

    .line 104
    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setExpandDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    goto :goto_2f

    .line 108
    :cond_6b
    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getHotseatNormalItemViews()Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 118
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->hasSubscribeDividerView()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 124
    invoke-static {}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->getSubscribeDividerView()Lcom/android/launcher3/hotseat/HotseatDividerView;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v2

    .line 132
    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    .line 139
    new-array v5, v5, [Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_93

    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    goto :goto_94

    :cond_93
    move-object v6, v0

    .line 149
    :goto_94
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 153
    aput-object v6, v5, v3

    .line 155
    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v2

    if-eqz v2, :cond_a6

    .line 164
    invoke-virtual {v2, v1}, Lcom/android/launcher3/OplusHotseat;->removeView(Landroid/view/View;)V

    .line 167
    :cond_a6
    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->setSubscribeDividerView(Lcom/android/launcher3/hotseat/HotseatDividerView;)V

    .line 170
    :cond_a9
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-eqz p0, :cond_b2

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusHotseat;->onSubscribeItemChange(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_b2
    return-void
.end method

.method public static final switchExpandHotseatIfNeeded()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 7
    sget-boolean v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->foldedScreenSwitchStateChanged:Z

    if-eqz v0, :cond_1b

    .line 11
    invoke-static {}, Lcom/android/common/util/DisplayUtils;->isLauncherMatchFoldingMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 17
    const-string v0, "Hotseat_expand"

    .line 19
    const-string/jumbo v1, "start to switch expand dock on/off when back to large screen mode"

    .line 22
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->onExpandSwitchStateChange()V

    :cond_1b
    return-void
.end method

.method public static final unregisterSpChangeListener()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->getMTaskbarSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->mOnSettingsChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->unregisterTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
