.class public final Lcom/wukong/manager/WukongHmaPolicyBridge;
.super Ljava/lang/Object;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;,
        Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;,
        Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;,
        Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;,
        Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;,
        Lcom/wukong/manager/WukongHmaPolicyBridge$UidPackages;,
        Lcom/wukong/manager/WukongHmaPolicyBridge$PolicyUpdateReceiver;,
        Lcom/wukong/manager/WukongHmaPolicyBridge$PackageUpdateReceiver;,
        Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;,
        Lcom/wukong/manager/WukongHmaPolicyBridge$ShortcutHostReceiver;
    }
.end annotation


# static fields
.field private static final ACCESS_CONFIG_PERMISSION:Ljava/lang/String; = "com.wukong.manager.permission.P0"

.field private static final ACTION_MAINTENANCE_TARGET:Ljava/lang/String; = "com.wukong.manager.action.MAINTENANCE_TARGET"

.field private static final ACTION_P1_CHANGED:Ljava/lang/String; = "com.wukong.manager.action.P1_CHANGED"

.field private static final ACTION_P1_SYNC:Ljava/lang/String; = "com.wukong.manager.action.P1_SYNC"

.field private static final APP_LIST_MODE_BLACKLIST:Ljava/lang/String; = "blacklist"

.field private static final APP_LIST_MODE_WHITELIST:Ljava/lang/String; = "whitelist"

.field private static final AUTHORITY:Ljava/lang/String; = "com.wukong.manager.p1"

.field private static final EXTRA_CONFIG_VERSION:Ljava/lang/String; = "configVersion"

.field private static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field private static final EXTRA_FAILED_COUNT:Ljava/lang/String; = "failedCount"

.field private static final EXTRA_HMA_ACCESSIBILITY:Ljava/lang/String; = "hmaAccessibility"

.field private static final EXTRA_HMA_APP_LIST_MODE:Ljava/lang/String; = "hmaAppListMode"

.field private static final EXTRA_HMA_DEV_OPTIONS:Ljava/lang/String; = "hmaDevOptions"

.field private static final EXTRA_HMA_ENABLED:Ljava/lang/String; = "hmaEnabled"

.field private static final EXTRA_HMA_EXTRA_HIDDEN_PACKAGES:Ljava/lang/String; = "hmaExtraHiddenPackages"

.field private static final EXTRA_HMA_EXTRA_VISIBLE_PACKAGES:Ljava/lang/String; = "hmaExtraVisiblePackages"

.field private static final EXTRA_HMA_PACKAGES:Ljava/lang/String; = "hmaPackages"

.field private static final EXTRA_HMA_RULE_FLAGS:Ljava/lang/String; = "hmaRuleFlags"

.field private static final EXTRA_HMA_RULE_HIDDEN_PACKAGES:Ljava/lang/String; = "hmaRuleHiddenPackages"

.field private static final EXTRA_HMA_RULE_PACKAGES:Ljava/lang/String; = "hmaRulePackages"

.field private static final EXTRA_HMA_RULE_VISIBLE_PACKAGES:Ljava/lang/String; = "hmaRuleVisiblePackages"

.field private static final EXTRA_HMA_WHITELIST_APP_LIST:Ljava/lang/String; = "hmaWhitelistAppList"

.field private static final EXTRA_LOG:Ljava/lang/String; = "log"

.field private static final EXTRA_MAINTENANCE_REMOVED_COUNT:Ljava/lang/String; = "maintenanceRemovedCount"

.field private static final EXTRA_TARGET_PATH:Ljava/lang/String; = "targetPath"

.field private static final FIRST_APPLICATION_UID:I = 0x2710

.field private static final FLAG_ACCESSIBILITY:I = 0x4

.field private static final FLAG_APP_LIST_BLACKLIST:I = 0x8

.field private static final FLAG_APP_LIST_PRIVACY:I = 0x1

.field private static final FLAG_DEV_OPTIONS:I = 0x2

.field private static final IDENTITY_PACKAGE_METHODS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAINTENANCE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final MAINTENANCE_RECEIVER:Landroid/content/BroadcastReceiver;

.field private static final MAINTENANCE_RESULT_ERROR:I = 0x2

.field private static final MAINTENANCE_RESULT_OK:I = 0x1

.field private static final MANAGER_PACKAGE:Ljava/lang/String; = "com.wukong.manager"

.field private static final MAX_MAINTENANCE_LOG_LENGTH:I = 0x4000

.field private static final MAX_MAINTENANCE_PATH_LENGTH:I = 0x13f

.field private static final METHOD_GET_SPOOF_SNAPSHOT:Ljava/lang/String; = "get_spoof_snapshot"

.field private static final NAMESPACE_GLOBAL:Ljava/lang/String; = "global"

.field private static final NAMESPACE_SECURE:Ljava/lang/String; = "secure"

.field private static final NAMESPACE_SYSTEM:Ljava/lang/String; = "system"

.field private static final PACKAGE_STATE_NAME_METHODS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_STATE_SYSTEM_METHODS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_UPDATE_RECEIVER:Landroid/content/BroadcastReceiver;

.field private static final POLICY_UPDATE_RECEIVER:Landroid/content/BroadcastReceiver;

.field private static final POWERD_SOCKET:Ljava/lang/String; = "wukong_system_power"

.field private static final RULES:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTINGS_AUTHORITY:Ljava/lang/String; = "settings"

.field private static final SETTINGS_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field private static final SHORTCUT_HOST_RECEIVER:Landroid/content/BroadcastReceiver;

.field private static final SHORTCUT_HOST_TYPE:Ljava/lang/String; = "wukong_control_center"

.field private static final SNAPSHOT_FAILURE_BACKOFF_MS:J = 0x2710L

.field private static final SYSTEM_SERVER_SYNC_RETRY_MS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "WukongHmaPolicy"

.field private static final UID_PACKAGES:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/wukong/manager/WukongHmaPolicyBridge$UidPackages;",
            ">;"
        }
    .end annotation
.end field

.field private static final UID_PACKAGE_CACHE_TTL_MS:J = 0xea60L

.field private static final UID_POLICIES:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final UID_ROOT:I = 0x0

.field private static final UID_SHELL:I = 0x7d0

.field private static final UID_SYSTEM:I = 0x3e8

.field private static sConfigVersion:J

.field private static volatile sGetPackageManagerMethod:Ljava/lang/reflect/Method;

.field private static volatile sGetPackagesForUidMethod:Ljava/lang/reflect/Method;

.field private static sHmaEnabled:Z

.field private static sLastFailureUptime:J

.field private static sLoaded:Z

.field private static volatile sPolicyActive:Z

.field private static volatile sPolicySnapshot:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

.field private static volatile sPolicyStateKnown:Z

.field private static sReceiverRegistered:Z

.field private static volatile sRuleSnapshot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSystemServerSyncRequested:Z

.field private static volatile sSystemServerSyncRequestedUptime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->RULES:Ljava/util/LinkedHashMap;

    .line 93
    new-instance v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicyUpdateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicyUpdateReceiver;-><init>(Lcom/wukong/manager/WukongHmaPolicyBridge$1;)V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->POLICY_UPDATE_RECEIVER:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PackageUpdateReceiver;

    invoke-direct {v0, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge$PackageUpdateReceiver;-><init>(Lcom/wukong/manager/WukongHmaPolicyBridge$1;)V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->PACKAGE_UPDATE_RECEIVER:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;

    invoke-direct {v0, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;-><init>(Lcom/wukong/manager/WukongHmaPolicyBridge$1;)V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->MAINTENANCE_RECEIVER:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Lcom/wukong/manager/WukongHmaPolicyBridge$ShortcutHostReceiver;

    invoke-direct {v0, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge$ShortcutHostReceiver;-><init>(Lcom/wukong/manager/WukongHmaPolicyBridge$1;)V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->SHORTCUT_HOST_RECEIVER:Landroid/content/BroadcastReceiver;

    .line 99
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->MAINTENANCE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->UID_PACKAGES:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->UID_POLICIES:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->IDENTITY_PACKAGE_METHODS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->PACKAGE_STATE_NAME_METHODS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->PACKAGE_STATE_SYSTEM_METHODS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sRuleSnapshot:Ljava/util/Map;

    .line 106
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->EMPTY:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicySnapshot:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    const-wide/high16 v0, -0x8000000000000000L

    .line 109
    sput-wide v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sConfigVersion:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 39
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->MAINTENANCE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 39
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->UID_PACKAGES:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 39
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->UID_POLICIES:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/Object;
    .registers 1

    .line 39
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .line 39
    sget-boolean v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLoaded:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .registers 1

    .line 39
    sput-boolean p0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequested:Z

    return p0
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .registers 1

    .line 39
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->registerManagerShortcutHost(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Landroid/content/Context;I)V
    .registers 2

    .line 39
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->scheduleShortcutHostRegistration(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$600(Landroid/os/Bundle;)V
    .registers 1

    .line 39
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->applySnapshot(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;)Z
    .registers 1

    .line 39
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isSystemServerContext(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Ljava/lang/String;Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 3

    .line 39
    invoke-static {p0, p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->executeMaintenanceTarget(Ljava/lang/String;Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 4

    .line 1317
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x4000

    if-lt v0, v1, :cond_9

    return-void

    .line 1320
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/16 v0, 0xa

    .line 1321
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1323
    :cond_14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v1, v0

    .line 1324
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_23

    .line 1325
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_23
    const/4 v0, 0x0

    .line 1327
    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendMaintenanceSummary(Ljava/lang/StringBuilder;Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;)V
    .registers 4

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DONE] removed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;->removedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;->failedCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private static applySnapshot(Landroid/os/Bundle;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 570
    :cond_3
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->updateCacheLocked(Landroid/os/Bundle;J)V

    .line 572
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private static boolAt([ZI)Z
    .registers 3

    if-eqz p0, :cond_d

    if-ltz p1, :cond_d

    .line 1034
    array-length v0, p0

    if-ge p1, v0, :cond_d

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private static booleanFromPackageState(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 883
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 884
    sget-object v2, Lcom/wukong/manager/WukongHmaPolicyBridge;->PACKAGE_STATE_SYSTEM_METHODS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_20

    .line 886
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 887
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 888
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_20
    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 891
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_31

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_31

    if-eqz p0, :cond_31

    return v4

    :catchall_31
    :cond_31
    return v0
.end method

.method private static containsPackage(Ljava/util/List;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 1073
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_20

    :cond_a
    move v1, v0

    .line 1076
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1077
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_20
    :goto_20
    return v0
.end method

.method private static containsPackage([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1b

    .line 1085
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1b

    .line 1088
    :cond_a
    array-length v1, p0

    move v2, v0

    :goto_c
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    .line 1089
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    :goto_1b
    return v0
.end method

.method private static ensureLoaded()Z
    .registers 2

    .line 447
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isReadyForExternalConfig()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 450
    :cond_8
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->maybeInitializeForCurrentProcess()V

    .line 451
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_e
    sget-boolean v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLoaded:Z

    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    .line 453
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static executeMaintenanceTarget(Ljava/lang/String;Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 8

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$ maintenance target "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-nez p0, :cond_1f

    .line 1189
    :try_start_17
    const-string p0, "[ERROR] Missing path"

    invoke-static {p2, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1190
    const-string p0, "missing_path"

    return-object p0

    .line 1192
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_72

    const-string v2, "invalid_path"

    const-string v3, "[ERROR] Invalid path length"

    if-nez v1, :cond_6e

    :try_start_2d
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_6e

    .line 1197
    :cond_34
    const-string p0, "/*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_47

    .line 1199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1201
    :cond_47
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v4, 0x13f

    if-le v1, v4, :cond_56

    .line 1202
    invoke-static {p2, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v2

    .line 1205
    :cond_56
    invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isSafeMaintenanceTarget(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 1206
    const-string p0, "[ERROR] Target must be a canonical path with at least three components"

    invoke-static {p2, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1208
    const-string p0, "unsupported_path_syntax"

    return-object p0

    .line 1210
    :cond_64
    const-string v1, "[OK] Validated maintenance target"

    invoke-static {p2, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1211
    invoke-static {v0, p0, p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->executeThroughInitService(Ljava/lang/String;ZLcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1194
    :cond_6e
    :goto_6e
    invoke-static {p2, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_2d .. :try_end_71} :catchall_72

    return-object v2

    :catchall_72
    move-exception p0

    .line 1213
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[ERROR] "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1213
    invoke-static {p2, p1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1215
    const-string p1, "WukongHmaPolicy"

    const-string p2, "Unable to execute maintenance target"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static executeThroughInitService(Ljava/lang/String;ZLcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 14

    .line 1251
    const-string v0, "OK"

    const-string v1, "UTF-8"

    .line 0
    const-string v2, "[ERROR] Init service errno="

    const-string v3, "[ERROR] Init service unavailable: "

    .line 1251
    const-string v4, "[INFO] Executing through init service wukong-system-powerd"

    invoke-static {p3, v4}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1253
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    const/4 v5, 0x0

    .line 1257
    :try_start_13
    new-instance v6, Landroid/net/LocalSocketAddress;

    const-string v7, "wukong_system_power"

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v6, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const v6, 0xea60

    .line 1260
    invoke-virtual {v4, v6}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1261
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2e} :catch_103
    .catchall {:try_start_13 .. :try_end_2e} :catchall_100

    .line 1262
    :try_start_2e
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_fe
    .catchall {:try_start_2e .. :try_end_3c} :catchall_12c

    .line 1263
    :try_start_3c
    const-string v1, "MAINTENANCE_TARGET\t"

    invoke-virtual {v6, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_46

    .line 1264
    const-string p1, "CONTENTS\t"

    goto :goto_48

    :cond_46
    const-string p1, "ENTRY\t"

    :goto_48
    invoke-virtual {v6, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v6, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 1266
    invoke-virtual {v6, p0}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 1267
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1268
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6d

    .line 1270
    const-string p0, "[ERROR] Init service returned no result"

    invoke-static {p3, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1271
    const-string p0, "powerd_no_response"
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_63} :catch_fb
    .catchall {:try_start_3c .. :try_end_63} :catchall_f8

    .line 1297
    :try_start_63
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_66

    .line 1301
    :catch_66
    :try_start_66
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_69

    .line 1305
    :catch_69
    :try_start_69
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6c

    :catch_6c
    return-object p0

    .line 1273
    :cond_6d
    :try_start_6d
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1274
    array-length p1, p0
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_78} :catch_fb
    .catchall {:try_start_6d .. :try_end_78} :catchall_f8

    const/4 v1, 0x4

    const-string v8, "powerd_invalid_response"

    if-ne p1, v1, :cond_e9

    const/4 p1, 0x0

    :try_start_7e
    aget-object v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "ERR"

    aget-object v9, p0, p1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_8e} :catch_fb
    .catchall {:try_start_7e .. :try_end_8e} :catchall_f8

    if-nez v1, :cond_91

    goto :goto_e9

    :cond_91
    const/4 v1, 0x1

    .line 1279
    :try_start_92
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;->removedCount:I

    const/4 v1, 0x2

    .line 1280
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;->failedCount:I
    :try_end_a3
    .catch Ljava/lang/NumberFormatException; {:try_start_92 .. :try_end_a3} :catch_da
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_a3} :catch_fb
    .catchall {:try_start_92 .. :try_end_a3} :catchall_f8

    .line 1285
    :try_start_a3
    invoke-static {p3, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceSummary(Ljava/lang/StringBuilder;Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;)V

    .line 1286
    aget-object p1, p0, p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bc

    iget p1, p2, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;->failedCount:I
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_b0} :catch_fb
    .catchall {:try_start_a3 .. :try_end_b0} :catchall_f8

    if-nez p1, :cond_bc

    .line 1297
    :try_start_b2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b5

    .line 1301
    :catch_b5
    :try_start_b5
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b8

    .line 1305
    :catch_b8
    :try_start_b8
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bb

    :catch_bb
    return-object v5

    .line 1289
    :cond_bc
    :try_start_bc
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x3

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1290
    const-string p0, "powerd_maintenance_failed"
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_d0} :catch_fb
    .catchall {:try_start_bc .. :try_end_d0} :catchall_f8

    .line 1297
    :try_start_d0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d3

    .line 1301
    :catch_d3
    :try_start_d3
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d6

    .line 1305
    :catch_d6
    :try_start_d6
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_d9

    :catch_d9
    return-object p0

    .line 1282
    :catch_da
    :try_start_da
    const-string p0, "[ERROR] Invalid init service counters"

    invoke-static {p3, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_df} :catch_fb
    .catchall {:try_start_da .. :try_end_df} :catchall_f8

    .line 1297
    :try_start_df
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e2

    .line 1301
    :catch_e2
    :try_start_e2
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e5

    .line 1305
    :catch_e5
    :try_start_e5
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e8

    :catch_e8
    return-object v8

    .line 1275
    :cond_e9
    :goto_e9
    :try_start_e9
    const-string p0, "[ERROR] Invalid init service response"

    invoke-static {p3, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ee} :catch_fb
    .catchall {:try_start_e9 .. :try_end_ee} :catchall_f8

    .line 1297
    :try_start_ee
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f1

    .line 1301
    :catch_f1
    :try_start_f1
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f4

    .line 1305
    :catch_f4
    :try_start_f4
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f7

    :catch_f7
    return-object v8

    :catchall_f8
    move-exception p0

    move-object v5, v7

    goto :goto_12d

    :catch_fb
    move-exception p0

    move-object v5, v7

    goto :goto_105

    :catch_fe
    move-exception p0

    goto :goto_105

    :catchall_100
    move-exception p0

    move-object v6, v5

    goto :goto_12d

    :catch_103
    move-exception p0

    move-object v6, v5

    .line 1292
    :goto_105
    :try_start_105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1292
    invoke-static {p3, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->appendMaintenanceLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1294
    const-string p0, "powerd_unavailable"
    :try_end_11e
    .catchall {:try_start_105 .. :try_end_11e} :catchall_12c

    if-eqz v5, :cond_123

    .line 1297
    :try_start_120
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_123

    :catch_123
    :cond_123
    if-eqz v6, :cond_128

    .line 1301
    :try_start_125
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_128

    .line 1305
    :catch_128
    :cond_128
    :try_start_128
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_12b

    :catch_12b
    return-object p0

    :catchall_12c
    move-exception p0

    :goto_12d
    if-eqz v5, :cond_132

    .line 1297
    :try_start_12f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_132

    :catch_132
    :cond_132
    if-eqz v6, :cond_137

    .line 1301
    :try_start_134
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_137

    .line 1305
    :catch_137
    :cond_137
    :try_start_137
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_13a

    .line 1308
    :catch_13a
    throw p0
.end method

.method private static fetchSnapshot(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5

    .line 553
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->normalizeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    .line 554
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isReadyForExternalConfig(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_37

    .line 558
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.wukong.manager.p1"

    .line 559
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "get_spoof_snapshot"

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1f

    return-object p0

    :catchall_1f
    move-exception v1

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to fetch HMA snapshot in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WukongHmaPolicy"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_37
    :goto_37
    return-object v0
.end method

.method private static findContext()Landroid/content/Context;
    .registers 5

    const/4 v0, 0x0

    .line 954
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 955
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 956
    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 957
    instance-of v4, v2, Landroid/content/Context;

    if-eqz v4, :cond_1b

    .line 958
    check-cast v2, Landroid/content/Context;

    return-object v2

    .line 960
    :cond_1b
    const-string v2, "currentActivityThread"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 961
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 963
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getSystemContext"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 964
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 965
    instance-of v2, v1, Landroid/content/Context;

    if-eqz v2, :cond_40

    .line 966
    check-cast v1, Landroid/content/Context;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_40

    return-object v1

    :catchall_40
    :cond_40
    return-object v0
.end method

.method private static firstRuleForCallers([Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    .line 646
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_22

    .line 649
    :cond_7
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    .line 652
    :cond_e
    sget-object v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicySnapshot:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    iget-object v1, v1, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->rules:Ljava/util/Map;

    .line 653
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_22

    aget-object v4, p0, v3

    .line 654
    invoke-static {v1, v4}, Lcom/wukong/manager/WukongHmaPolicyBridge;->ruleForCallerFromSnapshot(Ljava/util/Map;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    move-result-object v4

    if-eqz v4, :cond_1f

    return-object v4

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_22
    :goto_22
    return-object v0
.end method

.method private static firstRuleForCallersFast([Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 663
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_20

    .line 666
    :cond_7
    sget-object v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicySnapshot:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    .line 667
    iget-boolean v2, v1, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->active:Z

    if-nez v2, :cond_e

    return-object v0

    .line 670
    :cond_e
    iget-object v1, v1, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->rules:Ljava/util/Map;

    .line 671
    array-length v2, p0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_20

    aget-object v4, p0, v3

    .line 672
    invoke-static {v1, v4}, Lcom/wukong/manager/WukongHmaPolicyBridge;->ruleForCallerFromSnapshot(Ljava/util/Map;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    move-result-object v4

    if-eqz v4, :cond_1d

    return-object v4

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_20
    :goto_20
    return-object v0
.end method

.method private static flagsAt([II)I
    .registers 3

    if-eqz p0, :cond_a

    if-ltz p1, :cond_a

    .line 1038
    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget p0, p0, p1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static getCallingPackages(Ljava/lang/Object;I)[Ljava/lang/String;
    .registers 3

    .line 827
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->packageNameFromIdentity(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 828
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 829
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 831
    :cond_f
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result p0

    if-eqz p0, :cond_27

    invoke-static {p1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isUidEligible(I)Z

    move-result p0

    if-eqz p0, :cond_27

    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isReadyForExternalConfig()Z

    move-result p0

    if-nez p0, :cond_22

    goto :goto_27

    .line 834
    :cond_22
    invoke-static {p1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    :goto_27
    const/4 p0, 0x0

    .line 832
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .registers 2

    .line 898
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isUidEligible(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isReadyForExternalConfig()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_18

    .line 901
    :cond_13
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->resolvePackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    .line 899
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static hasActivePolicyForHotPath()Z
    .registers 8

    .line 457
    sget-boolean v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicyStateKnown:Z

    if-eqz v0, :cond_9

    .line 458
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicySnapshot:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    iget-boolean v0, v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->active:Z

    return v0

    .line 460
    :cond_9
    sget-boolean v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequested:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 462
    sget-wide v4, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequestedUptime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gez v0, :cond_1d

    return v1

    .line 465
    :cond_1d
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_20
    sget-boolean v4, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequested:Z

    if-eqz v4, :cond_2d

    sget-wide v4, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequestedUptime:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2d

    .line 468
    sput-boolean v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequested:Z

    .line 470
    :cond_2d
    monitor-exit v0

    goto :goto_32

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw v1

    .line 472
    :cond_32
    :goto_32
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isReadyForExternalConfig()Z

    move-result v0

    if-nez v0, :cond_39

    return v1

    .line 475
    :cond_39
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->maybeInitializeForCurrentProcess()V

    .line 476
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicySnapshot:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    iget-boolean v0, v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->active:Z

    return v0
.end method

.method private static isBootCompleted()Z
    .registers 2

    .line 990
    const-string v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->readBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "dev.bootcomplete"

    .line 991
    invoke-static {v0, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->readBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    return v1

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method private static isCoreVisiblePackage(Ljava/lang/String;)Z
    .registers 2

    .line 1097
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.android.providers.settings"

    .line 1098
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.android.providers.media"

    .line 1099
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.android.providers.downloads"

    .line 1100
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.android.permissioncontroller"

    .line 1101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.google.android.permissioncontroller"

    .line 1102
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.android.systemui"

    .line 1103
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.wukong.manager"

    .line 1104
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_43

    :cond_41
    const/4 p0, 0x0

    return p0

    :cond_43
    :goto_43
    const/4 p0, 0x1

    return p0
.end method

.method private static isManagerCaller([Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 941
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_1e

    .line 944
    :cond_7
    array-length v1, p0

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 945
    const-string v4, "com.wukong.manager"

    invoke-static {v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    :goto_1e
    return v0
.end method

.method public static isManagerCallerUid(I)Z
    .registers 1

    .line 193
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->resolvePackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isManagerCaller([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isReadyForExternalConfig()Z
    .registers 1

    .line 995
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->findContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 996
    invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isReadyForExternalConfig(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private static isReadyForExternalConfig(Landroid/content/Context;)Z
    .registers 2

    .line 1000
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static isRuntimeEnabled()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method private static isSafeMaintenanceTarget(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_a6

    .line 1221
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_a6

    .line 1222
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_a6

    const/16 v1, 0xd

    .line 1223
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_a6

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_a6

    const/16 v1, 0x2a

    .line 1224
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_a6

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_a6

    const/16 v1, 0x5b

    .line 1225
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_a6

    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_51

    goto :goto_a6

    :cond_51
    move v1, v0

    .line 1228
    :goto_52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 1229
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_68

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_65

    goto :goto_68

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_68
    :goto_68
    return v0

    :cond_69
    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    move v4, v2

    .line 1234
    :goto_6d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_a2

    .line 1235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_82

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_82

    goto :goto_9e

    :cond_82
    if-ne v2, v4, :cond_85

    return v0

    .line 1237
    :cond_85
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1238
    const-string v5, "."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    const-string v5, ".."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    goto :goto_a1

    :cond_9a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, 0x1

    :goto_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    :cond_a1
    :goto_a1
    return v0

    :cond_a2
    const/4 p0, 0x3

    if-lt v3, p0, :cond_a6

    return v1

    :cond_a6
    :goto_a6
    return v0
.end method

.method private static isSystemServerContext(Landroid/content/Context;)Z
    .registers 3

    if-eqz p0, :cond_18

    const/16 v0, 0x3e8

    .line 985
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_18

    const-string v0, "android"

    .line 986
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private static isUidEligible(I)Z
    .registers 2

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_10

    if-eqz p0, :cond_10

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_10

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static isUserUnlocked(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1009
    :try_start_1
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1010
    instance-of v1, p0, Landroid/os/UserManager;

    if-eqz v1, :cond_12

    .line 1011
    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    return p0

    :catchall_12
    :cond_12
    return v0
.end method

.method public static maybeExecuteSettingsCallAsManager(Landroid/content/ContentInterface;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    const/4 p0, 0x0

    return-object p0
.end method

.method public static maybeFilterPackageStateMapForCallingUid(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 420
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 421
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-static {v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isUidEligible(I)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_64

    .line 424
    :cond_1b
    invoke-static {v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->resolvePolicyForUid(I)Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;

    move-result-object v1

    .line 425
    iget-object v2, v1, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->packages:[Ljava/lang/String;

    .line 426
    iget-object v1, v1, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->rule:Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    if-eqz v1, :cond_64

    .line 427
    invoke-virtual {v1}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->hasAppListPrivacy()Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_64

    .line 431
    :cond_2c
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_32
    if-ltz v3, :cond_60

    .line 432
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 433
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 434
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_43

    check-cast v4, Ljava/lang/String;

    goto :goto_47

    :cond_43
    invoke-static {v5}, Lcom/wukong/manager/WukongHmaPolicyBridge;->packageNameFromPackageState(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 435
    :goto_47
    const-string v6, "isSystem"

    invoke-static {v5, v6}, Lcom/wukong/manager/WukongHmaPolicyBridge;->booleanFromPackageState(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    .line 436
    invoke-static {v1, v2, v4, v5}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHidePackageForRule(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;[Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5d

    if-nez v0, :cond_5a

    .line 438
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 440
    :cond_5a
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_5d
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    :cond_60
    if-nez v0, :cond_63

    goto :goto_64

    :cond_63
    return-object v0

    :cond_64
    :goto_64
    return-object p0
.end method

.method private static maybeInitializeForCurrentProcess()V
    .registers 3

    .line 480
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    sget-boolean v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLoaded:Z

    if-nez v1, :cond_3d

    sget-boolean v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequested:Z

    if-eqz v1, :cond_c

    goto :goto_3d

    .line 484
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3f

    .line 485
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->findContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->normalizeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_39

    .line 490
    :cond_18
    monitor-enter v0

    .line 491
    :try_start_19
    sget-boolean v2, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLoaded:Z

    if-eqz v2, :cond_1f

    .line 492
    monitor-exit v0

    return-void

    .line 494
    :cond_1f
    sget-boolean v2, Lcom/wukong/manager/WukongHmaPolicyBridge;->sReceiverRegistered:Z

    .line 495
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_3a

    if-nez v2, :cond_28

    .line 497
    invoke-static {v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->registerPolicySyncReceiver(Landroid/content/Context;)V

    return-void

    .line 500
    :cond_28
    invoke-static {v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isReadyForExternalConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_39

    .line 503
    :cond_2f
    invoke-static {v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isSystemServerContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v0, 0x0

    .line 504
    invoke-static {v1, v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->maybeLoadInitialSnapshot(Landroid/content/Context;Z)V

    :cond_39
    :goto_39
    return-void

    :catchall_3a
    move-exception v1

    .line 495
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1

    .line 482
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception v1

    .line 484
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private static maybeLoadInitialSnapshot(Landroid/content/Context;Z)V
    .registers 9

    if-eqz p0, :cond_40

    .line 528
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isReadyForExternalConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_40

    .line 531
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 532
    sget-object v2, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 533
    :try_start_10
    sget-boolean v3, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLoaded:Z

    if-eqz v3, :cond_16

    .line 534
    monitor-exit v2

    return-void

    :cond_16
    if-nez p1, :cond_2a

    .line 536
    sget-wide v3, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLastFailureUptime:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2a

    sub-long v3, v0, v3

    const-wide/16 v5, 0x2710

    cmp-long p1, v3, v5

    if-gez p1, :cond_2a

    .line 539
    monitor-exit v2

    return-void

    .line 541
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_3d

    .line 542
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->fetchSnapshot(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_39

    .line 544
    monitor-enter v2

    .line 545
    :try_start_32
    sput-wide v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLastFailureUptime:J

    .line 546
    monitor-exit v2

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_36

    throw p0

    .line 549
    :cond_39
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->applySnapshot(Landroid/os/Bundle;)V

    return-void

    :catchall_3d
    move-exception p0

    .line 541
    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0

    :cond_40
    :goto_40
    return-void
.end method

.method public static maybeSpoofAccessibilityState(IJ)J
    .registers 3

    .line 413
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHideAccessibilityForUid(I)Z

    move-result p0

    if-eqz p0, :cond_9

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_9
    return-wide p1
.end method

.method public static maybeSpoofSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 404
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1b

    .line 407
    :cond_d
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->ruleForCaller(Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    move-result-object p0

    .line 408
    invoke-static {p0, p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->replacementFor(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;Ljava/lang/String;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;

    move-result-object p0

    if-nez p0, :cond_18

    goto :goto_1b

    .line 409
    :cond_18
    iget-object p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;->value:Ljava/lang/String;

    return-object p0

    :cond_1b
    :goto_1b
    return-object p3
.end method

.method public static maybeSpoofSettingsCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 378
    :try_start_0
    const-string v0, "settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4f

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_4f

    .line 381
    :cond_15
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_4f

    .line 384
    :cond_22
    invoke-static {p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->namespaceFromSettingsMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_29

    goto :goto_4f

    .line 388
    :cond_29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p0, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->getCallingPackages(Ljava/lang/Object;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->firstRuleForCallers([Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    move-result-object p0

    .line 389
    invoke-static {p0, p1, p3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->replacementFor(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;Ljava/lang/String;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;

    move-result-object p0

    if-nez p0, :cond_3c

    goto :goto_4f

    .line 393
    :cond_3c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 394
    const-string p2, "value"

    iget-object p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;->value:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string p0, "_generation_index"

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_50

    return-object p1

    :cond_4f
    :goto_4f
    return-object p4

    :catchall_50
    move-exception p0

    .line 398
    const-string p1, "WukongHmaPolicy"

    const-string p2, "Unable to spoof settings call"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p4
.end method

.method public static maybeSpoofSettingsQuery(Ljava/lang/Object;Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 6

    if-eqz p1, :cond_7a

    .line 339
    :try_start_2
    const-string v0, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_7a

    .line 342
    :cond_f
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_7a

    .line 345
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->getCallingPackages(Ljava/lang/Object;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->firstRuleForCallers([Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    move-result-object p0

    if-nez p0, :cond_2b

    goto :goto_7a

    .line 349
    :cond_2b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 350
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_7a

    :cond_38
    const/4 v0, 0x0

    .line 353
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_6d

    const/4 v1, 0x1

    .line 355
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 356
    invoke-static {p0, v0, p1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->replacementFor(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;Ljava/lang/String;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;

    move-result-object p0

    if-nez p0, :cond_54

    goto :goto_7a

    .line 360
    :cond_54
    new-instance p1, Landroid/database/MatrixCursor;

    const-string v0, "name"

    const-string v2, "value"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 361
    iget-object v0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;->value:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1

    .line 364
    :cond_6d
    invoke-static {p0, v0, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->spoofSettingsListCursor(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;Ljava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_71
    .catchall {:try_start_2 .. :try_end_71} :catchall_72

    return-object p0

    :catchall_72
    move-exception p0

    .line 366
    const-string p1, "WukongHmaPolicy"

    const-string v0, "Unable to spoof settings query"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7a
    :goto_7a
    return-object p2
.end method

.method private static namespaceFromSettingsMethod(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 633
    const-string v0, "GET_global"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 634
    const-string p0, "global"

    return-object p0

    .line 636
    :cond_b
    const-string v0, "GET_secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 637
    const-string p0, "secure"

    return-object p0

    .line 639
    :cond_16
    const-string v0, "GET_system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 640
    const-string p0, "system"

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private static normalizeContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 979
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    return-object p0
.end method

.method private static packageNameFromIdentity(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 838
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 839
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x0

    if-nez p0, :cond_f

    return-object v0

    .line 845
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 846
    sget-object v2, Lcom/wukong/manager/WukongHmaPolicyBridge;->IDENTITY_PACKAGE_METHODS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-nez v3, :cond_2d

    .line 848
    const-string v3, "getPackageName"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 849
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 850
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_2d
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 853
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3c

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_3c

    return-object p0

    :catchall_3c
    :cond_3c
    return-object v0
.end method

.method private static packageNameFromPackageState(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 864
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 865
    sget-object v2, Lcom/wukong/manager/WukongHmaPolicyBridge;->PACKAGE_STATE_NAME_METHODS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-nez v3, :cond_22

    .line 867
    const-string v3, "getPackageName"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 868
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 869
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_22
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 872
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_31

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_31

    return-object p0

    :catchall_31
    :cond_31
    return-object v0
.end method

.method private static readBooleanProperty(Ljava/lang/String;Z)Z
    .registers 7

    .line 1025
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoolean"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1026
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1027
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return p0

    :catchall_2d
    return p1
.end method

.method private static registerManagerShortcutHost(Landroid/content/Context;)Z
    .registers 12

    .line 211
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isSystemServerContext(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 212
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 214
    :try_start_c
    const-string v0, "android.content.pm.ShortcutServiceInternal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 215
    const-string v4, "com.android.server.LocalServices"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 216
    const-string v5, "getService"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v1

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_77

    if-nez v4, :cond_34

    .line 236
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 219
    :cond_34
    :try_start_34
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const v8, 0x186a0

    div-int/2addr v5, v8
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_77

    .line 221
    :try_start_3c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v9, "com.wukong.manager"

    invoke-virtual {p0, v9, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 222
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shortcutHostPackageFor(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_50

    .line 224
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    div-int v5, p0, v8
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_50} :catch_50
    .catchall {:try_start_3c .. :try_end_50} :catchall_77

    .line 229
    :catch_50
    :cond_50
    :try_start_50
    const-string p0, "setShortcutHostPackage"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v1

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v0, p0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-string v0, "wukong_control_center"

    .line 230
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v7, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_50 .. :try_end_73} :catchall_77

    .line 236
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_77
    move-exception p0

    .line 233
    :try_start_78
    const-string v0, "WukongHmaPolicy"

    const-string v4, "Unable to register Manager Shortcut Host"

    invoke-static {v0, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_83

    .line 236
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_83
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    throw p0
.end method

.method public static registerPolicySyncReceiver(Landroid/content/Context;)V
    .registers 7

    .line 123
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->normalizeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 128
    :cond_7
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_a
    sget-boolean v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sReceiverRegistered:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_14

    .line 130
    sput-boolean v2, Lcom/wukong/manager/WukongHmaPolicyBridge;->sReceiverRegistered:Z

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    .line 133
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_a8

    if-nez v1, :cond_29

    .line 135
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isSystemServerContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 136
    invoke-static {p0, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->scheduleShortcutHostRegistration(Landroid/content/Context;I)V

    .line 137
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->requestPolicySync(Landroid/content/Context;)V

    return-void

    .line 139
    :cond_25
    invoke-static {p0, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->maybeLoadInitialSnapshot(Landroid/content/Context;Z)V

    return-void

    .line 144
    :cond_29
    :try_start_29
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.wukong.manager.action.P1_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    sget-object v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->POLICY_UPDATE_RECEIVER:Landroid/content/BroadcastReceiver;

    const-string v4, "com.wukong.manager.permission.P0"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->PACKAGE_UPDATE_RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isSystemServerContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    sget-object v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->SHORTCUT_HOST_RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    invoke-static {p0, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->scheduleShortcutHostRegistration(Landroid/content/Context;I)V

    .line 162
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->MAINTENANCE_RECEIVER:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.wukong.manager.action.MAINTENANCE_TARGET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.wukong.manager.permission.P0"

    invoke-virtual {p0, v0, v1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 168
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->requestPolicySync(Landroid/content/Context;)V

    return-void

    .line 170
    :cond_82
    invoke-static {p0, v2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->maybeLoadInitialSnapshot(Landroid/content/Context;Z)V
    :try_end_85
    .catchall {:try_start_29 .. :try_end_85} :catchall_86

    return-void

    :catchall_86
    move-exception v0

    .line 173
    sget-object v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_8a
    sput-boolean v3, Lcom/wukong/manager/WukongHmaPolicyBridge;->sReceiverRegistered:Z

    .line 175
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_a5

    .line 176
    const-string v1, "WukongHmaPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to register policy receiver for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_a5
    move-exception p0

    .line 175
    :try_start_a6
    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw p0

    :catchall_a8
    move-exception p0

    .line 133
    :try_start_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw p0
.end method

.method private static replacementFor(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;Ljava/lang/String;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_96

    .line 602
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_96

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_96

    .line 605
    :cond_11
    invoke-virtual {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->hidesDevOptions()Z

    move-result v1

    const-string v2, "secure"

    const-string v3, "0"

    if-eqz v1, :cond_6c

    .line 606
    const-string v1, "global"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 607
    const-string v1, "adb_enabled"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "adb_wifi_enabled"

    .line 608
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "development_settings_enabled"

    .line 609
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_4a

    .line 612
    :cond_3c
    const-string v1, "hidden_api_policy"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 613
    new-instance p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;

    invoke-direct {p0, p2, v0}, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 610
    :cond_4a
    :goto_4a
    new-instance p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;

    invoke-direct {p0, p2, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 616
    :cond_50
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v1, "mock_location"

    .line 617
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "allow_mock_location"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 618
    :cond_66
    new-instance p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;

    invoke-direct {p0, p2, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 621
    :cond_6c
    invoke-virtual {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->hidesAccessibility()Z

    move-result p0

    if-eqz p0, :cond_96

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_96

    .line 622
    const-string p0, "accessibility_enabled"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_86

    .line 623
    new-instance p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;

    invoke-direct {p0, p2, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 625
    :cond_86
    const-string p0, "enabled_accessibility_services"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_96

    .line 626
    new-instance p0, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;

    const-string p1, ""

    invoke-direct {p0, p2, p1}, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_96
    :goto_96
    return-object v0
.end method

.method private static requestPolicySync(Landroid/content/Context;)V
    .registers 4

    .line 509
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_3
    sget-boolean v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLoaded:Z

    if-nez v1, :cond_40

    sget-boolean v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequested:Z

    if-eqz v1, :cond_c

    goto :goto_40

    :cond_c
    const/4 v1, 0x1

    .line 513
    sput-boolean v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequested:Z

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequestedUptime:J

    .line 515
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_42

    .line 517
    :try_start_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.wukong.manager.action.P1_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.wukong.manager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 518
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "com.wukong.manager.permission.P0"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception p0

    .line 520
    sget-object v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 521
    :try_start_32
    sput-boolean v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequested:Z

    .line 522
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 523
    const-string v0, "WukongHmaPolicy"

    const-string v1, "Unable to request HMA policy sync"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_3d
    move-exception p0

    .line 522
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0

    .line 511
    :cond_40
    :goto_40
    :try_start_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    .line 515
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_42

    throw p0
.end method

.method private static resolvePackagesForUid(I)[Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    if-gez p0, :cond_6

    .line 906
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 908
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 909
    sget-object v3, Lcom/wukong/manager/WukongHmaPolicyBridge;->UID_PACKAGES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPackages;

    if-eqz v4, :cond_26

    .line 910
    iget-wide v5, v4, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPackages;->loadedAtUptime:J

    sub-long v5, v1, v5

    const-wide/32 v7, 0xea60

    cmp-long v5, v5, v7

    if-gez v5, :cond_26

    .line 911
    iget-object p0, v4, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPackages;->packages:[Ljava/lang/String;

    return-object p0

    .line 914
    :cond_26
    :try_start_26
    sget-object v4, Lcom/wukong/manager/WukongHmaPolicyBridge;->sGetPackageManagerMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_3f

    .line 916
    const-string v4, "android.app.AppGlobals"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 917
    const-string v7, "getPackageManager"

    new-array v8, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 918
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 919
    sput-object v4, Lcom/wukong/manager/WukongHmaPolicyBridge;->sGetPackageManagerMethod:Ljava/lang/reflect/Method;

    .line 921
    :cond_3f
    invoke-virtual {v4, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_48

    .line 923
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 925
    :cond_48
    sget-object v6, Lcom/wukong/manager/WukongHmaPolicyBridge;->sGetPackagesForUidMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_56

    .line 926
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6b

    .line 927
    :cond_56
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getPackagesForUid"

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 928
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 929
    sput-object v6, Lcom/wukong/manager/WukongHmaPolicyBridge;->sGetPackagesForUidMethod:Ljava/lang/reflect/Method;

    .line 931
    :cond_6b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 932
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_7e

    check-cast v4, [Ljava/lang/String;

    goto :goto_80

    :cond_7e
    new-array v4, v0, [Ljava/lang/String;

    .line 933
    :goto_80
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v5, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPackages;

    invoke-direct {v5, v4, v1, v2}, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPackages;-><init>([Ljava/lang/String;J)V

    invoke-virtual {v3, p0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_26 .. :try_end_8c} :catchall_8d

    return-object v4

    .line 936
    :catchall_8d
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method private static resolvePolicyForUid(I)Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;
    .registers 10

    .line 1337
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicySnapshot:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    .line 1338
    iget-boolean v1, v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->active:Z

    if-nez v1, :cond_9

    .line 1339
    sget-object p0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->EMPTY:Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;

    return-object p0

    .line 1341
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1342
    sget-object v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->UID_POLICIES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;

    if-eqz v1, :cond_2f

    .line 1343
    iget-wide v2, v1, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->configVersion:J

    iget-wide v7, v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->version:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_2f

    iget-wide v2, v1, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->loadedAtUptime:J

    sub-long v2, v5, v2

    const-wide/32 v7, 0xea60

    cmp-long v2, v2, v7

    if-gez v2, :cond_2f

    return-object v1

    .line 1348
    :cond_2f
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->resolvePackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1350
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_36
    if-ge v4, v2, :cond_46

    aget-object v3, v1, v4

    .line 1351
    iget-object v7, v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->rules:Ljava/util/Map;

    invoke-static {v7, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->ruleForCallerFromSnapshot(Ljava/util/Map;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    move-result-object v3

    if-eqz v3, :cond_43

    goto :goto_46

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_46
    :goto_46
    move-object v2, v3

    move-object v3, v0

    .line 1356
    new-instance v0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;

    iget-wide v3, v3, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->version:J

    invoke-direct/range {v0 .. v6}, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;-><init>([Ljava/lang/String;Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;JJ)V

    .line 1357
    sget-object v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->UID_POLICIES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static ruleForCaller(Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;
    .registers 2

    .line 708
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_16

    .line 711
    :cond_d
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicySnapshot:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    iget-object v0, v0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;->rules:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->ruleForCallerFromSnapshot(Ljava/util/Map;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ruleForCallerFromSnapshot(Ljava/util/Map;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;"
        }
    .end annotation

    .line 719
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "com.wukong.manager"

    .line 720
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "android"

    .line 721
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "system"

    .line 722
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_26

    .line 725
    :cond_1f
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    return-object p0

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ruleForCallerLocked(Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;
    .registers 2

    .line 715
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->RULES:Ljava/util/LinkedHashMap;

    invoke-static {v0, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->ruleForCallerFromSnapshot(Ljava/util/Map;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    move-result-object p0

    return-object p0
.end method

.method private static rulesFromCompiledSnapshot(Landroid/os/Bundle;[Ljava/lang/String;[I)Ljava/util/LinkedHashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "[",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;",
            ">;"
        }
    .end annotation

    .line 765
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 766
    const-string v1, "hmaRuleHiddenPackages"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 767
    const-string v2, "hmaRuleVisiblePackages"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p1, :cond_16

    move v3, v2

    goto :goto_17

    .line 768
    :cond_16
    array-length v3, p1

    :goto_17
    if-ge v2, v3, :cond_3f

    .line 770
    aget-object v4, p1, v2

    invoke-static {v4}, Lcom/wukong/manager/WukongHmaPolicyBridge;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_22

    goto :goto_3c

    .line 774
    :cond_22
    new-instance v5, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    .line 775
    invoke-static {p2, v2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->flagsAt([II)I

    move-result v6

    .line 776
    invoke-static {v1, v4}, Lcom/wukong/manager/WukongHmaPolicyBridge;->stringsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 777
    invoke-static {p0, v4}, Lcom/wukong/manager/WukongHmaPolicyBridge;->stringsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 779
    invoke-virtual {v5}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 780
    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3f
    return-object v0
.end method

.method private static rulesFromLegacySnapshot(Landroid/os/Bundle;)Ljava/util/LinkedHashMap;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;",
            ">;"
        }
    .end annotation

    .line 787
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 788
    const-string v1, "hmaPackages"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 789
    const-string v2, "hmaWhitelistAppList"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    .line 790
    const-string v3, "hmaAppListMode"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 791
    const-string v4, "hmaExtraHiddenPackages"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 792
    const-string v5, "hmaExtraVisiblePackages"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 793
    const-string v6, "hmaDevOptions"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v6

    .line 794
    const-string v7, "hmaAccessibility"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p0

    const/4 v7, 0x0

    if-nez v1, :cond_34

    move v8, v7

    goto :goto_35

    .line 795
    :cond_34
    array-length v8, v1

    :goto_35
    if-ge v7, v8, :cond_7f

    .line 797
    aget-object v9, v1, v7

    invoke-static {v9}, Lcom/wukong/manager/WukongHmaPolicyBridge;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_40

    goto :goto_7c

    .line 802
    :cond_40
    invoke-static {v2, v7}, Lcom/wukong/manager/WukongHmaPolicyBridge;->boolAt([ZI)Z

    move-result v10

    .line 805
    invoke-static {v6, v7}, Lcom/wukong/manager/WukongHmaPolicyBridge;->boolAt([ZI)Z

    move-result v11

    if-eqz v11, :cond_4c

    or-int/lit8 v10, v10, 0x2

    .line 808
    :cond_4c
    invoke-static {p0, v7}, Lcom/wukong/manager/WukongHmaPolicyBridge;->boolAt([ZI)Z

    move-result v11

    if-eqz v11, :cond_54

    or-int/lit8 v10, v10, 0x4

    .line 811
    :cond_54
    invoke-static {v3, v7}, Lcom/wukong/manager/WukongHmaPolicyBridge;->stringAt([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wukong/manager/WukongHmaPolicyBridge;->sanitizeAppListMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "blacklist"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_66

    or-int/lit8 v10, v10, 0x8

    .line 814
    :cond_66
    new-instance v11, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    .line 816
    invoke-static {v4, v9}, Lcom/wukong/manager/WukongHmaPolicyBridge;->stringsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 817
    invoke-static {v5, v9}, Lcom/wukong/manager/WukongHmaPolicyBridge;->stringsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v10, v12, v13}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 819
    invoke-virtual {v11}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 820
    invoke-virtual {v0, v9, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    :goto_7c
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_7f
    return-object v0
.end method

.method private static sanitizeAppListMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1046
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1047
    const-string v0, "blacklist"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    return-object v0

    :cond_d
    const-string p0, "whitelist"

    return-object p0
.end method

.method private static sanitizePackageArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    .line 1058
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_37

    .line 1061
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    array-length v2, p0

    :goto_d
    if-ge v0, v2, :cond_2a

    aget-object v3, p0, v0

    .line 1063
    invoke-static {v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1064
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-static {v1, v3}, Lcom/wukong/manager/WukongHmaPolicyBridge;->containsPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_27

    .line 1067
    :cond_24
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1069
    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 1059
    :cond_37
    :goto_37
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method private static scheduleShortcutHostRegistration(Landroid/content/Context;I)V
    .registers 4

    .line 200
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isSystemServerContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 201
    :cond_7
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/wukong/manager/WukongHmaPolicyBridge$1;

    invoke-direct {v1, p0, p1}, Lcom/wukong/manager/WukongHmaPolicyBridge$1;-><init>(Landroid/content/Context;I)V

    if-nez p1, :cond_1a

    const-wide/16 p0, 0x0

    goto :goto_1c

    :cond_1a
    const-wide/16 p0, 0x7d0

    :goto_1c
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static shortcutHostPackageFor(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_17

    .line 242
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 241
    const-string v1, "com.wukong.manager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_17

    return-object v1

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public static shouldExecuteSettingsCallAsManager(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 250
    invoke-static {p0, p1, p2, v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldExecuteSettingsCallAsManager(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static shouldExecuteSettingsCallAsManager(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 259
    :try_start_1
    const-string v1, "settings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_63

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_63

    .line 262
    :cond_16
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->packageNameFromIdentity(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->resolvePackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isManagerCaller([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_38

    return v0

    .line 267
    :cond_2f
    const-string p1, "com.wukong.manager"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    return v0

    .line 270
    :cond_38
    const-string p0, "PUT_global"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    .line 271
    const-string p0, "adb_enabled"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    const-string p0, "development_settings_enabled"

    .line 272
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_51

    goto :goto_52

    :cond_51
    return v0

    :cond_52
    :goto_52
    const/4 p0, 0x1

    return p0

    .line 274
    :cond_54
    const-string p0, "PUT_secure"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6c

    .line 275
    const-string p0, "show_rotation_suggestions"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_64

    return p0

    :cond_63
    :goto_63
    return v0

    :catchall_64
    move-exception p0

    .line 278
    const-string p1, "WukongHmaPolicy"

    const-string p2, "Unable to evaluate manager settings write"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6c
    return v0
.end method

.method public static shouldHideAccessibility(Ljava/lang/Object;)Z
    .registers 3

    .line 330
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_24

    .line 333
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->getCallingPackages(Ljava/lang/Object;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->firstRuleForCallers([Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 334
    invoke-virtual {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->hidesAccessibility()Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    :goto_24
    return v1
.end method

.method public static shouldHideAccessibilityForUid(I)Z
    .registers 2

    .line 323
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isUidEligible(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1c

    .line 326
    :cond_13
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->resolvePolicyForUid(I)Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->ruleHidesAccessibility()Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldHidePackage(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 302
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 305
    :cond_8
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHidePackage([Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static shouldHidePackage([Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 309
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 312
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isCoreVisiblePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_25

    .line 315
    :cond_15
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 318
    :cond_1c
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->firstRuleForCallers([Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    move-result-object v0

    .line 319
    invoke-static {v0, p0, p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHidePackageForRule(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;[Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_25
    :goto_25
    return v1
.end method

.method public static shouldHidePackageForCaller(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .registers 4

    .line 294
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_16

    .line 297
    :cond_d
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->packageNameFromIdentity(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 298
    invoke-static {p0, p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHidePackage(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method private static shouldHidePackageForRule(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;[Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    const/4 p3, 0x0

    if-eqz p0, :cond_40

    .line 686
    invoke-virtual {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->hasAppListPrivacy()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 687
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 688
    invoke-static {p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isCoreVisiblePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_40

    :cond_16
    if-eqz p1, :cond_28

    .line 692
    array-length v0, p1

    move v1, p3

    :goto_1a
    if-ge v1, v0, :cond_28

    aget-object v2, p1, v1

    .line 693
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    return p3

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 698
    :cond_28
    iget-object p1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->extraVisiblePackages:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->containsPackage([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    return p3

    .line 701
    :cond_31
    iget-object p1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->extraHiddenPackages:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->containsPackage([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p0, 0x1

    return p0

    .line 704
    :cond_3b
    invoke-virtual {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->useWhitelistMode()Z

    move-result p0

    return p0

    :cond_40
    :goto_40
    return p3
.end method

.method public static shouldHidePackageForUid(ILjava/lang/String;Z)Z
    .registers 4

    .line 181
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isRuntimeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 182
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isUidEligible(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 184
    invoke-static {p1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isCoreVisiblePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 185
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->hasActivePolicyForHotPath()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_2c

    .line 188
    :cond_1f
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->resolvePolicyForUid(I)Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;

    move-result-object p0

    .line 189
    iget-object v0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->rule:Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    iget-object p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->packages:[Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge;->shouldHidePackageForRule(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;[Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method private static spoofSettingsListCursor(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;Ljava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 10

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 579
    :cond_4
    const-string v0, "name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 580
    const-string v1, "value"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_47

    if-gez v1, :cond_15

    goto :goto_47

    .line 584
    :cond_15
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 585
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 586
    :goto_1e
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 587
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 588
    :goto_28
    array-length v6, v2

    if-ge v5, v6, :cond_34

    .line 589
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 591
    :cond_34
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 592
    invoke-static {p0, p1, v5}, Lcom/wukong/manager/WukongHmaPolicyBridge;->replacementFor(Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;Ljava/lang/String;Ljava/lang/String;)Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;

    move-result-object v5

    if-eqz v5, :cond_42

    .line 594
    iget-object v5, v5, Lcom/wukong/manager/WukongHmaPolicyBridge$SettingReplacement;->value:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 596
    :cond_42
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1e

    :cond_46
    return-object v3

    :cond_47
    :goto_47
    return-object p2
.end method

.method private static stringAt([Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_a

    if-ltz p1, :cond_a

    .line 1042
    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-object p0, p0, p1

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static stringsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_12

    .line 1051
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_12

    .line 1054
    :cond_9
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->sanitizePackageArray([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    .line 1052
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1111
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1112
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    return-object p0
.end method

.method private static updateCacheLocked(Landroid/os/Bundle;J)V
    .registers 10

    .line 729
    const-string v0, "configVersion"

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_d

    goto :goto_20

    .line 733
    :cond_d
    sget-boolean v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLoaded:Z

    if-eqz v0, :cond_18

    sget-wide v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->sConfigVersion:J

    cmp-long v1, v3, v1

    if-gez v1, :cond_18

    goto :goto_20

    :cond_18
    if-eqz v0, :cond_21

    .line 736
    sget-wide v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sConfigVersion:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_21

    :goto_20
    return-void

    .line 739
    :cond_21
    const-string v0, "hmaRulePackages"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 740
    const-string v1, "hmaRuleFlags"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v0, :cond_36

    if-eqz v1, :cond_36

    .line 743
    invoke-static {p0, v0, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->rulesFromCompiledSnapshot(Landroid/os/Bundle;[Ljava/lang/String;[I)Ljava/util/LinkedHashMap;

    move-result-object v0

    goto :goto_3a

    .line 744
    :cond_36
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->rulesFromLegacySnapshot(Landroid/os/Bundle;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 745
    :goto_3a
    sget-object v1, Lcom/wukong/manager/WukongHmaPolicyBridge;->RULES:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 746
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 747
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sRuleSnapshot:Ljava/util/Map;

    .line 748
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->UID_PACKAGES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 749
    sget-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->UID_POLICIES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 750
    const-string v0, "hmaEnabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sHmaEnabled:Z

    .line 751
    sput-wide v3, Lcom/wukong/manager/WukongHmaPolicyBridge;->sConfigVersion:J

    const-wide/16 v3, 0x0

    .line 752
    sput-wide v3, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLastFailureUptime:J

    const/4 v0, 0x1

    .line 753
    sput-boolean v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sLoaded:Z

    if-eqz p0, :cond_73

    .line 754
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_73

    move p0, v0

    goto :goto_74

    :cond_73
    move p0, v2

    :goto_74
    sput-boolean p0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicyActive:Z

    .line 755
    new-instance p0, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    sget-wide v3, Lcom/wukong/manager/WukongHmaPolicyBridge;->sConfigVersion:J

    sget-boolean v5, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicyActive:Z

    sget-object v6, Lcom/wukong/manager/WukongHmaPolicyBridge;->sRuleSnapshot:Ljava/util/Map;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;-><init>(JZLjava/util/Map;)V

    sput-object p0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicySnapshot:Lcom/wukong/manager/WukongHmaPolicyBridge$PolicySnapshot;

    .line 756
    sput-boolean v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sPolicyStateKnown:Z

    .line 757
    sput-boolean v2, Lcom/wukong/manager/WukongHmaPolicyBridge;->sSystemServerSyncRequested:Z

    .line 758
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Applied HMA policy enabled="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/wukong/manager/WukongHmaPolicyBridge;->sHmaEnabled:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " rules="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " uptime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WukongHmaPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
