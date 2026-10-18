.class public final Lcom/android/launcher3/hotseat/expand/ExpandConfig;
.super Ljava/lang/Object;
.source "ExpandConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010*\u001a\u00020\u00042\u0008\u0008\u0002\u0010+\u001a\u00020,H\u0007J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0004H\u0002J\u001a\u00100\u001a\u00020\u00042\u0006\u0010+\u001a\u00020,2\u0008\u0008\u0002\u00101\u001a\u00020,H\u0007J\u0006\u00102\u001a\u00020\u0004J\u0012\u00103\u001a\u00020\u00042\u0008\u0008\u0002\u0010+\u001a\u00020,H\u0002J\u001c\u00104\u001a\u00020,2\u0008\u00105\u001a\u0004\u0018\u00010\u000f2\u0008\u00106\u001a\u0004\u0018\u00010\u000fH\u0007J\u0012\u00107\u001a\u00020,2\u0008\u00105\u001a\u0004\u0018\u00010\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u001a\u0010 \u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008!\u0010\u0002\u001a\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008%\u0010\u0002\u001a\u0004\u0008&\u0010#R\u001a\u0010\'\u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008(\u0010\u0002\u001a\u0004\u0008)\u0010#\u00a8\u00068"
    }
    d2 = {
        "Lcom/android/launcher3/hotseat/expand/ExpandConfig;",
        "",
        "()V",
        "ALL_ICON_COUNT_6",
        "",
        "ALL_ICON_COUNT_7",
        "ALL_ICON_COUNT_8",
        "ALL_ICON_COUNT_9",
        "EXPAND_ICON_COUNT_1",
        "EXPAND_ICON_COUNT_2",
        "EXPAND_ITEM_MAX_COUNT",
        "EXPAND_ITEM_MAX_COUNT_FOLD_SCREEN",
        "EXPAND_ITEM_MAX_COUNT_TABLET_GES",
        "EXPAND_ITEM_MAX_COUNT_TABLET_NAV",
        "EXPAND_ITEM_START_TYPE_ACTIVITY",
        "",
        "EXPAND_ITEM_START_TYPE_BROADCAST",
        "EXPAND_ITEM_START_TYPE_SERVICE",
        "EXPAND_SOURCE_DEFAULT",
        "EXPAND_TYPE_APP_CONNECT",
        "EXPAND_TYPE_MULTI_RECOMMEND",
        "EXPAND_TYPE_RECENT_TASK",
        "EXPAND_TYPE_SPLIT_SCREEN",
        "GET_RECENT_TASK_MAX_COUNT",
        "HOTSEAT_ITEM_MAX_DIVIDER_COUNT",
        "SMALL_TABLET_THRESHOLD",
        "TAG",
        "appConnectPackageName",
        "getAppConnectPackageName",
        "()Ljava/lang/String;",
        "appConnectPackageNameNew",
        "getAppConnectPackageNameNew",
        "hotseatNormalItemMaxCount",
        "getHotseatNormalItemMaxCount$annotations",
        "getHotseatNormalItemMaxCount",
        "()I",
        "tabletHotseatIconMaxCountGes",
        "getTabletHotseatIconMaxCountGes$annotations",
        "getTabletHotseatIconMaxCountGes",
        "tabletHotseatIconMaxCountNavibar",
        "getTabletHotseatIconMaxCountNavibar$annotations",
        "getTabletHotseatIconMaxCountNavibar",
        "getExpandItemMaxCount",
        "hasNavigationBar",
        "",
        "getExpandItemMaxCountForNormalDevice",
        "getExpandItemMaxCountForSmallTablet",
        "allIconCount",
        "getHotseatNormalItemsMaxCountBy",
        "isInSimpleMode",
        "getRecentTaskMaxCount",
        "getTabletDockerIconCount",
        "isAvailableCallingHotseatExpand",
        "pkg",
        "arg",
        "isLegalCallingSource",
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
.field public static final ALL_ICON_COUNT_6:I = 0x6

.field public static final ALL_ICON_COUNT_7:I = 0x7

.field public static final ALL_ICON_COUNT_8:I = 0x8

.field public static final ALL_ICON_COUNT_9:I = 0x9

.field public static final EXPAND_ICON_COUNT_1:I = 0x1

.field public static final EXPAND_ICON_COUNT_2:I = 0x2

.field public static final EXPAND_ITEM_MAX_COUNT:I = 0x5

.field public static final EXPAND_ITEM_MAX_COUNT_FOLD_SCREEN:I = 0x5

.field public static final EXPAND_ITEM_MAX_COUNT_TABLET_GES:I = 0x5

.field public static final EXPAND_ITEM_MAX_COUNT_TABLET_NAV:I = 0x3

.field public static final EXPAND_ITEM_START_TYPE_ACTIVITY:Ljava/lang/String; = "startActivity"

.field public static final EXPAND_ITEM_START_TYPE_BROADCAST:Ljava/lang/String; = "sendBroadcast"

.field public static final EXPAND_ITEM_START_TYPE_SERVICE:Ljava/lang/String; = "startService"

.field public static final EXPAND_SOURCE_DEFAULT:I = 0x0

.field public static final EXPAND_TYPE_APP_CONNECT:I = 0x2

.field public static final EXPAND_TYPE_MULTI_RECOMMEND:I = 0x3

.field public static final EXPAND_TYPE_RECENT_TASK:I = 0x1

.field public static final EXPAND_TYPE_SPLIT_SCREEN:I = 0x4

.field public static final GET_RECENT_TASK_MAX_COUNT:I = 0xa

.field public static final HOTSEAT_ITEM_MAX_DIVIDER_COUNT:I = 0x2

.field public static final INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandConfig;

.field public static final SMALL_TABLET_THRESHOLD:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExpandConfig"

.field private static final appConnectPackageName:Ljava/lang/String;

.field private static final appConnectPackageNameNew:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/launcher3/hotseat/expand/ExpandConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandConfig;

    .line 7
    .line 8
    sget v0, Lcom/android/common/util/BrandComponentUtils;->PACKAGE_APP_CONNECT:I

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_23

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v0, v4, v2, v1, v3}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCompactPackageName$default(Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move-object v0, v3

    .line 37
    :goto_24
    sput-object v0, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->appConnectPackageName:Ljava/lang/String;

    .line 38
    .line 39
    sget v0, Lcom/android/common/util/BrandComponentUtils;->PACKAGE_APP_CONNECT_NEW:I

    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3e

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v0, v4, v2, v1, v3}, Lcom/android/launcher3/hotseat/expand/ExpandUtils;->getCompactPackageName$default(Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :cond_3e
    sput-object v3, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->appConnectPackageNameNew:Ljava/lang/String;

    .line 64
    .line 65
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

.method public static final getExpandItemMaxCount()I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getExpandItemMaxCount$default(ZILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final getExpandItemMaxCount(Z)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandConfig;

    invoke-direct {v0, p0}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getExpandItemMaxCountForNormalDevice(Z)I

    move-result p0

    goto :goto_28

    .line 4
    :cond_d
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5
    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandConfig;

    invoke-direct {v0, p0}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getTabletDockerIconCount(Z)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_22

    .line 6
    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getExpandItemMaxCountForSmallTablet(I)I

    move-result p0

    goto :goto_28

    .line 7
    :cond_22
    invoke-direct {v0, p0}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getExpandItemMaxCountForNormalDevice(Z)I

    move-result p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public static synthetic getExpandItemMaxCount$default(ZILjava/lang/Object;)I
    .registers 3

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_8

    .line 4
    .line 5
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getExpandItemMaxCount(Z)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getExpandItemMaxCountForNormalDevice(Z)I
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p1, :cond_11

    .line 10
    .line 11
    sget p1, Lcom/android/launcher3/R$integer;->expand_item_max_count_tablet_nav:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    goto :goto_17

    .line 18
    :cond_11
    sget p1, Lcom/android/launcher3/R$integer;->expand_item_max_count_tablet_ges:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    :goto_17
    return p0
.end method

.method private final getExpandItemMaxCountForSmallTablet(I)I
    .registers 2

    .line 1
    const/4 p0, 0x1

    .line 2
    packed-switch p1, :pswitch_data_8

    .line 3
    .line 4
    .line 5
    goto :goto_6

    .line 6
    :pswitch_5
    const/4 p0, 0x2

    .line 7
    :goto_6
    :pswitch_6
    return p0

    .line 8
    nop

    .line 9
    :pswitch_data_8
    .packed-switch 0x6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static final getHotseatNormalItemMaxCount()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getHotseatNormalItemsMaxCountBy(ZZ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static synthetic getHotseatNormalItemMaxCount$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getHotseatNormalItemsMaxCountBy(Z)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getHotseatNormalItemsMaxCountBy$default(ZZILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final getHotseatNormalItemsMaxCountBy(ZZ)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_4

    const/4 p0, 0x3

    goto :goto_1d

    .line 2
    :cond_4
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 3
    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandConfig;

    invoke-direct {p1, p0}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getTabletDockerIconCount(Z)I

    move-result p1

    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getExpandItemMaxCount(Z)I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->getSubscribeItemCount()I

    move-result p0

    sub-int p0, p1, p0

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x5

    :goto_1d
    return p0
.end method

.method public static synthetic getHotseatNormalItemsMaxCountBy$default(ZZILjava/lang/Object;)I
    .registers 4

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_c

    .line 4
    .line 5
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    :cond_c
    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getHotseatNormalItemsMaxCountBy(ZZ)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private final getTabletDockerIconCount(Z)I
    .registers 2

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getTabletHotseatIconMaxCountNavibar()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getTabletHotseatIconMaxCountGes()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    :goto_b
    return p0
.end method

.method public static synthetic getTabletDockerIconCount$default(Lcom/android/launcher3/hotseat/expand/ExpandConfig;ZILjava/lang/Object;)I
    .registers 4

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_8

    .line 4
    .line 5
    invoke-static {}, Lcom/android/launcher3/util/DisplayController;->hasNavigationBar()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getTabletDockerIconCount(Z)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final getTabletHotseatIconMaxCountGes()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/android/launcher3/R$integer;->table_hotseat_max_icon_num_ges:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public static synthetic getTabletHotseatIconMaxCountGes$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getTabletHotseatIconMaxCountNavibar()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/android/launcher3/R$integer;->table_hotseat_max_icon_num_navi_bar:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public static synthetic getTabletHotseatIconMaxCountNavibar$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    return-void
.end method

.method public static final isAvailableCallingHotseatExpand(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    const/4 v1, 0x0

    .line 6
    const-string v2, "ExpandConfig"

    .line 8
    const-string v3, "Hotseat_expand"

    if-nez v0, :cond_12

    .line 12
    const-string/jumbo p0, "isAvailableCallingHotseatExpand false,not support hotseat expand"

    .line 15
    invoke-static {v3, v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 19
    :cond_12
    invoke-static {p0}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->isLegalCallingSource(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 25
    const-string/jumbo p0, "isAvailableCallingHotseatExpand false,not Legal calling pkg"

    .line 28
    invoke-static {v3, v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 32
    :cond_1f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 38
    const-string/jumbo p0, "isAvailableCallingHotseatExpand false,arg is null"

    .line 41
    invoke-static {v3, v2, p0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2c
    const/4 p0, 0x1

    return p0
.end method

.method public static final isLegalCallingSource(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method


# virtual methods
.method public final getAppConnectPackageName()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->appConnectPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAppConnectPackageNameNew()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object p0, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->appConnectPackageNameNew:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRecentTaskMaxCount()I
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_14

    .line 9
    .line 10
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getHotseatNormalItemMaxCount()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {v3, v2, v1}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getExpandItemMaxCount$default(ZILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int v3, v0, p0

    .line 19
    .line 20
    goto :goto_24

    .line 21
    :cond_14
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_24

    .line 26
    .line 27
    invoke-static {p0, v3, v2, v1}, Lcom/android/launcher3/hotseat/expand/ExpandConfig;->getTabletDockerIconCount$default(Lcom/android/launcher3/hotseat/expand/ExpandConfig;ZILjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribeDataManager;->getSubscribeItemCount()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sub-int v3, p0, v0

    .line 36
    .line 37
    :cond_24
    :goto_24
    return v3
.end method
