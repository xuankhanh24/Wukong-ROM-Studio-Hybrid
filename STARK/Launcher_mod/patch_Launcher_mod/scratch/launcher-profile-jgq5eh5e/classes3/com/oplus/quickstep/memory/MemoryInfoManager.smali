.class public Lcom/oplus/quickstep/memory/MemoryInfoManager;
.super Ljava/lang/Object;
.source "MemoryInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;
    }
.end annotation


# static fields
.field public static final ALLOW_MEMORY_INFO_DISPLAY:Ljava/lang/String; = "allow_memory_info_display"

.field private static final AUTHORITY:Ljava/lang/String; = "com.oplus.athena.database"

.field public static final DISPLAY_MEMORY_INFORMATION_RECENT_TASK:Ljava/lang/String; = "display_memory_information_recent_task"

.field public static final FAKE_16_GB:Ljava/lang/String; = "16.0 GB"

.field private static final FINAL_ALLOW_DISPLAY_MEMOINFO_FIRST_API_LEVEL:I = 0x22

.field private static final FLAG_ALLOW_MEMORY_INFO_DISPLAY:I = 0x1

.field private static final FLAG_DISALLOW_MEMORY_INFO_DISPLAY:I = 0x0

.field private static final GIGA_BYTE_1:I = 0x1

.field private static final GIGA_BYTE_3:I = 0x3

.field public static final KB:I = 0x400

.field public static final LABEL_MEMAVAILABLE:Ljava/lang/String; = "MemAvailable:"

.field public static final LABEL_TOTAL:Ljava/lang/String; = "MemTotal:"

.field public static final MB:I = 0x100000

.field public static final MEMORY_12:I = 0xc

.field public static final MEMORY_8:I = 0x8

.field private static final METHOD_GET_PINNED_BYTES:Ljava/lang/String; = "get_rom2ram_pinned_bytes"

.field public static final ONE_GB:J = 0x40000000L

.field private static final PERSIST_SYS_OPLUS_NANDSWAP_CONDITION:Ljava/lang/String; = "persist.sys.oplus.nandswap.condition"

.field private static final PERSIST_SYS_OPLUS_NANDSWAP_SWAPSIZE_CURR:Ljava/lang/String; = "persist.sys.oplus.nandswap.swapsize.curr"

.field public static final PHONE_MANAGER_ENTRANCE_KEY:Ljava/lang/String; = "display_phone_manager_entrance"

.field private static final PINNED_BYTES:Ljava/lang/String; = "pinned_bytes"

.field public static final PROC_MEMINFO_PATH:Ljava/lang/String; = "/proc/meminfo"

.field private static final SPECIAL:D = 1024.0

.field private static final TAG:Ljava/lang/String; = "MemoryInfoManager"

.field private static final TRIM_NUM:I = 0x3

.field private static final TWO_TO_TEN:J = 0x400L

.field private static volatile sInstance:Lcom/oplus/quickstep/memory/MemoryInfoManager;

.field private static final sLock:Ljava/lang/Object;

.field private static final uri:Landroid/net/Uri;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAllowMemoryInfoDisplay:Z

.field private final mContext:Landroid/content/Context;

.field private mConversionUtils:Lcom/oplus/util/OplusUnitConversionUtils;

.field public mExpandRam:J

.field public mHasEnlargeMemory:Z

.field private mMemoryAvailableWithoutUnit:F

.field private final mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field private mMemoryUnit:Ljava/lang/String;

.field private mNeedLtrMark:Z

.field private mNeedMemoryDetail:Z

.field private mStrEnLargeSize:Ljava/lang/String;

.field private mStrMemoryAvailable:Ljava/lang/String;

.field private mStrMemoryTotal:Ljava/lang/String;

.field private mStrMemoryTotalSuffix:Ljava/lang/String;

.field private final mSwitchObserver:Landroid/database/ContentObserver;

.field private final mTotalMemory:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v0, "content://0@com.oplus.athena.database"

    .line 9
    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->uri:Landroid/net/Uri;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/oplus/quickstep/memory/MemoryInfoManager$1;

    .line 5
    .line 6
    new-instance v1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/oplus/quickstep/memory/MemoryInfoManager$1;-><init>(Lcom/oplus/quickstep/memory/MemoryInfoManager;Landroid/os/Handler;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mSwitchObserver:Landroid/database/ContentObserver;

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryAvailable:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotal:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrEnLargeSize:Ljava/lang/String;

    .line 31
    .line 32
    const/high16 v1, -0x40800000    # -1.0f

    .line 33
    .line 34
    iput v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    .line 35
    .line 36
    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryUnit:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotalSuffix:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedLtrMark:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mAllowMemoryInfoDisplay:Z

    .line 44
    .line 45
    instance-of v0, p1, Landroid/app/Application;

    .line 46
    .line 47
    if-eqz v0, :cond_33

    .line 48
    .line 49
    iput-object p1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    goto :goto_39

    .line 52
    :cond_33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    :goto_39
    iget-object p1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-string v0, "activity"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/app/ActivityManager;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 69
    .line 70
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 71
    .line 72
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 78
    .line 79
    .line 80
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 81
    .line 82
    iput-wide v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mTotalMemory:J

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->judgeWhetherAllowMemoDisplay()V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->updateMemoDisplaySwitch()V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->registerObserver()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/quickstep/memory/MemoryInfoManager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->updateMemoDisplaySwitch()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static convertKBToGB(J)J
    .registers 4

    .line 1
    long-to-double p0, p0

    .line 2
    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    .line 3
    .line 4
    div-double/2addr p0, v0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    double-to-long p0, p0

    .line 10
    return-wide p0
.end method

.method public static getAvailProcMemInfo()J
    .registers 4

    .line 1
    invoke-static {}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getAvailProcMemInfoKB()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_11

    .line 10
    .line 11
    const-string v2, "getAvailProcMemInfo: "

    .line 12
    .line 13
    const-string v3, "MemoryInfoManager"

    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/android/common/util/d;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 19
    .line 20
    long-to-double v0, v0

    .line 21
    mul-double/2addr v0, v2

    .line 22
    double-to-long v0, v0

    .line 23
    return-wide v0
.end method

.method public static getAvailProcMemInfoKB()J
    .registers 2

    .line 1
    const-string v0, "MemAvailable:"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getProcMemInfoKB(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method private getAvailableMemory()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 9
    .line 10
    iget-wide v0, p0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 11
    .line 12
    return-wide v0
.end method

.method public static getExpandCurr()I
    .registers 4

    .line 1
    const-string/jumbo v0, "persist.sys.oplus.nandswap.condition"

    .line 4
    const-string v1, "false"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    const-string/jumbo v1, "true"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 17
    const-string v1, "MemoryInfoManager"

    if-eqz v0, :cond_39

    .line 21
    const-string/jumbo v0, "persist.sys.oplus.nandswap.swapsize.curr"

    .line 24
    const-string v2, "0"

    .line 26
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    const-string v3, "getExpandCurr value:"

    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v1, v2}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 58
    :cond_39
    const-string v0, "getExpandCurr value:0"

    .line 60
    invoke-static {v1, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oplus/quickstep/memory/MemoryInfoManager;
    .registers 3

    .line 1
    sget-object v0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sInstance:Lcom/oplus/quickstep/memory/MemoryInfoManager;

    .line 2
    .line 3
    if-nez v0, :cond_19

    .line 4
    .line 5
    sget-object v0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sInstance:Lcom/oplus/quickstep/memory/MemoryInfoManager;

    .line 9
    .line 10
    if-nez v1, :cond_15

    .line 11
    .line 12
    new-instance v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sInstance:Lcom/oplus/quickstep/memory/MemoryInfoManager;

    .line 18
    .line 19
    goto :goto_15

    .line 20
    :catchall_13
    move-exception p0

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    :goto_15
    monitor-exit v0

    .line 23
    goto :goto_19

    .line 24
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    .line 25
    throw p0

    .line 26
    :cond_19
    :goto_19
    sget-object p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->sInstance:Lcom/oplus/quickstep/memory/MemoryInfoManager;

    .line 27
    .line 28
    return-object p0
.end method

.method private static getProcMemInfoKB(Ljava/lang/String;)J
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    filled-new-array {p0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v1, "/proc/meminfo"

    .line 9
    .line 10
    invoke-static {v1, p0, v0}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    aget-wide v0, v0, p0

    .line 15
    .line 16
    return-wide v0
.end method

.method public static getTotalProcMemInfoGB()J
    .registers 2

    .line 1
    const-string v0, "MemTotal:"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getProcMemInfoKB(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->convertKBToGB(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private getUnitValue(J)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mConversionUtils:Lcom/oplus/util/OplusUnitConversionUtils;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    new-instance v0, Lcom/oplus/util/OplusUnitConversionUtils;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/oplus/util/OplusUnitConversionUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mConversionUtils:Lcom/oplus/util/OplusUnitConversionUtils;

    .line 13
    .line 14
    :cond_d
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mConversionUtils:Lcom/oplus/util/OplusUnitConversionUtils;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/oplus/util/OplusUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    const-string v0, "[0-9]*"

    .line 8
    .line 9
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method private judgeWhetherAllowMemoDisplay()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/oplus/basecommon/util/SystemPropertiesHelper;->getFirstApiLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "judgeWhetherAllowMemoDisplay(), LauncherModeManager.isOtaVersionUpdate()="

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", apiLevel="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "MemoryInfoManager"

    .line 33
    .line 34
    invoke-static {v2, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    if-nez v0, :cond_5b

    .line 40
    .line 41
    iget-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v4, "allow_memory_info_display"

    .line 48
    .line 49
    const/4 v5, -0x1

    .line 50
    invoke-static {v0, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string/jumbo v5, "judgeWhetherAllowMemoDisplay(), isAllowMemoryInfoDisplay="

    .line 57
    .line 58
    .line 59
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v2, v4}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_54

    .line 77
    .line 78
    if-eqz v0, :cond_50

    .line 79
    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move v1, v3

    .line 82
    :goto_51
    iput-boolean v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mAllowMemoryInfoDisplay:Z

    .line 83
    .line 84
    goto :goto_64

    .line 85
    :cond_54
    if-ne v0, v1, :cond_57

    .line 86
    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move v1, v3

    .line 89
    :goto_58
    iput-boolean v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mAllowMemoryInfoDisplay:Z

    .line 90
    .line 91
    goto :goto_64

    .line 92
    :cond_5b
    const/16 v2, 0x22

    .line 93
    .line 94
    if-le v0, v2, :cond_62

    .line 95
    .line 96
    iput-boolean v3, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mAllowMemoryInfoDisplay:Z

    .line 97
    .line 98
    goto :goto_64

    .line 99
    :cond_62
    iput-boolean v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mAllowMemoryInfoDisplay:Z

    .line 100
    .line 101
    :goto_64
    iget-boolean v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mAllowMemoryInfoDisplay:Z

    .line 102
    .line 103
    invoke-direct {p0, v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->saveAllowMemoryInfoDisplay(Z)Z

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private needLtrMark()Z
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 9
    const-string/jumbo v0, "ug"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 26
    const-string/jumbo v0, "ur"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    :goto_26
    return p0
.end method

.method private registerObserver()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7
    const-string v1, "display_memory_information_recent_task"

    .line 9
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 13
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mSwitchObserver:Landroid/database/ContentObserver;

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_20

    :catch_17
    move-exception p0

    .line 25
    const-string/jumbo v0, "registerObserver(), e="

    .line 28
    const-string v1, "MemoryInfoManager"

    .line 30
    invoke-static {v0, v1, p0}, Landroidx/fragment/app/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_20
    return-void
.end method

.method private saveAllowMemoryInfoDisplay(Z)Z
    .registers 4

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const-string v1, "allow_memory_info_display"

    .line 9
    .line 10
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private updateMemoDisplaySwitch()V
    .registers 6

    .line 1
    const-string v0, "MemoryInfoManager"

    .line 3
    const-string/jumbo v1, "updateMemoDisplaySwitch mNeedMemoryDetail = "

    .line 6
    :try_start_5
    iget-object v2, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 12
    const-string v3, "display_memory_information_recent_task"

    const/4 v4, 0x0

    .line 15
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    move v2, v3

    goto :goto_18

    :cond_17
    move v2, v4

    .line 25
    :goto_18
    iput-boolean v2, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedMemoryDetail:Z

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-boolean v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedMemoryDetail:Z

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ", mAllowMemoryInfoDisplay="

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-boolean v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mAllowMemoryInfoDisplay:Z

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-boolean v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedMemoryDetail:Z

    if-eqz v1, :cond_41

    .line 58
    iget-boolean v1, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mAllowMemoryInfoDisplay:Z

    if-eqz v1, :cond_41

    move v4, v3

    goto :goto_41

    :catch_3f
    move-exception p0

    goto :goto_44

    .line 66
    :cond_41
    :goto_41
    iput-boolean v4, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedMemoryDetail:Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_3f

    goto :goto_4a

    .line 69
    :goto_44
    const-string/jumbo v1, "updateMemoDisplaySwitch(), e="

    .line 72
    invoke-static {v1, v0, p0}, Landroidx/fragment/app/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_4a
    return-void
.end method


# virtual methods
.method public canPlayAnimation()Z
    .registers 2

    .line 1
    iget p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpl-float p0, p0, v0

    .line 5
    .line 6
    if-lez p0, :cond_9

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    :goto_a
    return p0
.end method

.method public getMemoDisplaySwitch()I
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedMemoryDetail:Z

    .line 2
    .line 3
    return p0
.end method

.method public getMemoryAvailableWithoutUnit()F
    .registers 1

    .line 1
    iget p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    .line 2
    .line 3
    return p0
.end method

.method public getMemoryInfo(Z)Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;
    .registers 22

    move-object/from16 v1, p0

    .line 3
    const-string v2, ""

    .line 5
    const-string v3, "MemoryInfoManager"

    .line 7
    const-string/jumbo v4, "\u200e"

    .line 10
    const-string v5, " "

    .line 12
    const-string v6, "format number exception, e="

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getTotalMemory()J

    move-result-wide v7

    .line 18
    invoke-static {}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getExpandCurr()I

    move-result v0

    int-to-long v9, v0

    .line 23
    iput-wide v9, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    .line 25
    :try_start_18
    iget-object v0, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    sget-object v11, Lcom/oplus/quickstep/memory/MemoryInfoManager;->uri:Landroid/net/Uri;

    .line 33
    invoke-virtual {v0, v11}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v11
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_43

    if-eqz v11, :cond_47

    .line 39
    :try_start_26
    const-string v0, "get_rom2ram_pinned_bytes"

    const/4 v12, 0x0

    .line 42
    invoke-virtual {v11, v0, v12, v12}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 48
    const-string/jumbo v12, "pinned_bytes"

    .line 51
    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_37

    goto :goto_49

    :catchall_37
    move-exception v0

    move-object v12, v0

    .line 58
    :try_start_39
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_42

    :catchall_3d
    move-exception v0

    move-object v11, v0

    .line 64
    :try_start_3f
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    :goto_42
    throw v12
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_43

    :catch_43
    move-exception v0

    const-wide/16 v12, 0x0

    goto :goto_50

    :cond_47
    const-wide/16 v12, 0x0

    :goto_49
    if-eqz v11, :cond_55

    .line 76
    :try_start_4b
    invoke-virtual {v11}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception v0

    .line 81
    :goto_50
    const-string v11, "getMemoryInfo(), fail to get rom2ram, e="

    .line 83
    invoke-static {v11, v3, v0}, Landroidx/fragment/app/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 86
    :cond_55
    :goto_55
    invoke-static {}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getAvailProcMemInfo()J

    move-result-wide v14

    .line 90
    iget-wide v9, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    const-wide/32 v17, 0x40000000

    mul-long v9, v9, v17

    add-long/2addr v9, v14

    add-long/2addr v9, v12

    .line 99
    const-string v0, "getMemoryInfo: total="

    .line 101
    const-string v11, ", available="

    .line 103
    invoke-static {v7, v8, v0, v11}, Landroidx/compose/ui/node/s0;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    const-string v11, ", availProcMem="

    move-object/from16 v19, v2

    .line 114
    const-string v2, ", rom2ram="

    .line 116
    invoke-static {v0, v11, v14, v15, v2}, Lj2/b;->b(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 119
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, ", ExpandRamBytes="

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-wide v11, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    mul-long v11, v11, v17

    .line 131
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, ", isConfidential="

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-boolean v2, Lcom/android/common/config/FeatureOption;->sIsConfidentialVersion:Z

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    const-string v2, ", enlargeSize="

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-wide v11, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    .line 151
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v3, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 162
    :try_start_a1
    invoke-virtual {v1, v7, v8}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getbogusTotalMemory(J)J

    move-result-wide v7

    .line 166
    invoke-direct {v1, v7, v8}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-boolean v7, Lcom/android/common/config/FeatureOption;->sIsConfidentialVersion:Z

    if-eqz v7, :cond_af

    .line 174
    const-string v0, "16.0 GB"

    :cond_af
    move-object v7, v0

    goto :goto_b6

    :catch_b1
    move-exception v0

    move-object/from16 v5, v19

    goto/16 :goto_1f0

    .line 183
    :goto_b6
    invoke-direct {v1, v9, v10}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getUnitValue(J)Ljava/lang/String;

    move-result-object v8

    .line 187
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_f3

    .line 194
    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 198
    array-length v0, v10
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c6} :catch_b1

    if-le v0, v2, :cond_f3

    .line 201
    :try_start_c8
    aget-object v0, v10, v9

    .line 203
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_ce
    .catch Ljava/lang/NumberFormatException; {:try_start_c8 .. :try_end_ce} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_ce} :catch_b1

    goto :goto_e1

    :catch_cf
    move-exception v0

    .line 209
    :try_start_d0
    new-instance v11, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v3, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 226
    :goto_e1
    iput v0, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    aget-object v5, v10, v2

    .line 235
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    iput-object v0, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryUnit:Ljava/lang/String;

    .line 244
    :cond_f3
    iget-wide v5, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    mul-long v5, v5, v17

    .line 248
    invoke-direct {v1, v5, v6}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getUnitValue(J)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_12d

    .line 254
    iput-boolean v9, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedLtrMark:Z

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->needLtrMark()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_130

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    .line 289
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    iput-boolean v2, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedLtrMark:Z

    goto :goto_130

    .line 302
    :cond_12d
    iput-boolean v9, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedLtrMark:Z

    move v6, v2

    .line 305
    :cond_130
    :goto_130
    iget-object v4, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    .line 307
    sget v5, Lcom/android/launcher3/R$string;->oplus_memory_can_use:I

    .line 309
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v10

    .line 313
    invoke-virtual {v4, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v5
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_140} :catch_b1

    .line 321
    const-string v10, ", mMemoryAvailableWithoutUnit: "

    .line 323
    const-string v11, ",strAvai:"

    .line 325
    const-string v12, "getMemoryInfo: strTotal:"

    if-eqz v5, :cond_16f

    .line 329
    :try_start_148
    new-instance v5, Ljava/lang/StringBuilder;

    .line 331
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v13, ",mExpandRam:"

    .line 345
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-wide v13, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J

    .line 350
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget v13, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    .line 358
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-static {v3, v5}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_16f
    iget-wide v13, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mExpandRam:J
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_171} :catch_b1

    const-wide/16 v15, 0x0

    cmp-long v5, v13, v15

    .line 374
    const-string v13, " | "

    if-eqz v5, :cond_19e

    .line 378
    :try_start_179
    new-instance v5, Ljava/lang/StringBuilder;

    .line 380
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    .line 395
    invoke-virtual {v7, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v4, "+"

    .line 404
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1b0

    .line 415
    :cond_19e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 417
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 433
    :goto_1b0
    invoke-static {}, Lcom/oplus/basecommon/log/LogUtils;->isLoggableDebug()Z

    move-result v5

    if-eqz v5, :cond_1db

    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    .line 441
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v9, ",strEnLargeSize:"

    .line 455
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget v9, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryAvailableWithoutUnit:F

    .line 466
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-static {v3, v5}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_1db
    iput-object v8, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryAvailable:Ljava/lang/String;

    .line 478
    iput-object v7, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotal:Ljava/lang/String;

    .line 480
    iput-object v0, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrEnLargeSize:Ljava/lang/String;
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_1e1} :catch_b1

    move-object/from16 v5, v19

    .line 484
    :try_start_1e3
    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    iput-object v0, v1, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotalSuffix:Ljava/lang/String;

    .line 490
    new-instance v0, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;

    .line 492
    invoke-direct {v0, v4, v6}, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;-><init>(Ljava/lang/String;I)V
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1ee} :catch_1ef

    return-object v0

    :catch_1ef
    move-exception v0

    .line 497
    :goto_1f0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 499
    const-string v4, "getMemoryInfo(), e="

    .line 501
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {v3, v0}, Lcom/oplus/basecommon/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v0, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;

    .line 516
    invoke-direct {v0, v5, v2}, Lcom/oplus/quickstep/memory/MemoryInfoManager$MemoryInfoWrapper;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getMemoryUnit()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mMemoryUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStrEnLargeSize()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrEnLargeSize:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStrMemoryAvailable()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryAvailable:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStrMemoryTotal()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotal:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStrMemoryTotalSuffix()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mStrMemoryTotalSuffix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTotalMemory()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mTotalMemory:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTotalMemoryInfo()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getTotalMemory()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->getbogusTotalMemory(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/32 v2, 0x40000000

    .line 10
    .line 11
    .line 12
    div-long/2addr v0, v2

    .line 13
    long-to-int p0, v0

    .line 14
    return p0
.end method

.method public getbogusTotalMemory(J)J
    .registers 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p0, p1, v0

    .line 4
    .line 5
    if-gez p0, :cond_7

    .line 6
    .line 7
    move-wide p1, v0

    .line 8
    :cond_7
    const-wide/32 v0, 0x40000000

    .line 9
    .line 10
    .line 11
    div-long v2, p1, v0

    .line 12
    .line 13
    long-to-int p0, v2

    .line 14
    rem-long/2addr p1, v0

    .line 15
    long-to-int p1, p1

    .line 16
    if-lez p1, :cond_13

    .line 17
    .line 18
    add-int/lit8 p0, p0, 0x1

    .line 19
    .line 20
    :cond_13
    if-lez p1, :cond_2a

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    if-eq p0, p1, :cond_2a

    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    if-eq p0, p1, :cond_2a

    .line 27
    .line 28
    rem-int/lit8 p1, p0, 0x2

    .line 29
    .line 30
    if-eqz p1, :cond_21

    .line 31
    .line 32
    add-int/lit8 p0, p0, 0x1

    .line 33
    .line 34
    :cond_21
    const-string p2, "formatMemoryDisplay: remainder: "

    .line 35
    .line 36
    const-string v2, ", mul: "

    .line 37
    .line 38
    const-string v3, "MemoryInfoManager"

    .line 39
    .line 40
    invoke-static {p1, p0, p2, v2, v3}, Lcom/android/common/config/n;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2a
    int-to-long p0, p0

    .line 44
    mul-long/2addr p0, v0

    .line 45
    return-wide p0
.end method

.method public isAllowMemoryInfoDisplay()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mAllowMemoryInfoDisplay:Z

    .line 2
    .line 3
    return p0
.end method

.method public isNeedLtrMark()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedLtrMark:Z

    .line 2
    .line 3
    return p0
.end method

.method public needMemoryDetail()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mNeedMemoryDetail:Z

    .line 2
    .line 3
    return p0
.end method

.method public recoveryDisplaySwitch()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/memory/MemoryInfoManager;->saveMemoDisplaySwitch(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public saveMemoDisplaySwitch(I)Z
    .registers 3

    .line 2
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_memory_information_recent_task"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public saveMemoDisplaySwitch(Z)Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/oplus/quickstep/memory/MemoryInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_memory_information_recent_task"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
