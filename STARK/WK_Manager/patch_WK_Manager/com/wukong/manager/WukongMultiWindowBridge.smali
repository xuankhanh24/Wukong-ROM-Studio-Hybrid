.class public final Lcom/wukong/manager/WukongMultiWindowBridge;
.super Ljava/lang/Object;
.source "WukongMultiWindowBridge.java"


# static fields
.field public static final DEFAULT_MAX_COUNT:I = 0xc

.field public static final MAX_WINDOWS:I = 0xc

.field public static final MIN_WINDOWS:I = 0x2

.field public static final SETTING_LEGACY_MAX_COUNT:Ljava/lang/String; = "multi_window_max_count"

.field public static final SETTING_LEGACY_TOGGLE:Ljava/lang/String; = "multi_window"

.field public static final SETTING_MASTER:Ljava/lang/String; = "wukong_multi_window_enabled"

.field public static final SETTING_MAX_COUNT:Ljava/lang/String; = "wukong_multi_window_max_count"

.field public static final STOCK_PHONE_DEFAULT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WukongMultiWindowBridge"

.field private static volatile sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHookedMaxWinNum(I)I
    .registers 2

    const/4 p0, 0x0

    .line 146
    invoke-static {p0}, Lcom/wukong/manager/WukongMultiWindowBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 p0, -0x1

    return p0

    .line 149
    :cond_9
    invoke-static {p0}, Lcom/wukong/manager/WukongMultiWindowBridge;->getMaxWindowCount(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getMaxFlexibleTaskNum()I
    .registers 2

    const/4 v0, 0x0

    .line 167
    invoke-static {v0}, Lcom/wukong/manager/WukongMultiWindowBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x2

    return v0

    .line 170
    :cond_9
    invoke-static {v0}, Lcom/wukong/manager/WukongMultiWindowBridge;->getMaxWindowCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getMaxFlexibleTaskNum(I)I
    .registers 2

    const/4 v0, 0x0

    .line 163
    invoke-static {v0, p0}, Lcom/wukong/manager/WukongMultiWindowBridge;->getMaxFlexibleTaskNum(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static getMaxFlexibleTaskNum(Ljava/lang/Object;I)I
    .registers 3

    .line 156
    invoke-static {p0}, Lcom/wukong/manager/WukongMultiWindowBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return p1

    .line 159
    :cond_7
    invoke-static {p0}, Lcom/wukong/manager/WukongMultiWindowBridge;->getMaxWindowCount(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getMaxWinNum()I
    .registers 2

    const/4 v0, 0x0

    .line 139
    invoke-static {v0}, Lcom/wukong/manager/WukongMultiWindowBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x2

    return v0

    .line 142
    :cond_9
    invoke-static {v0}, Lcom/wukong/manager/WukongMultiWindowBridge;->getMaxWindowCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getMaxWinNum(I)I
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-static {v0, v1, p0}, Lcom/wukong/manager/WukongMultiWindowBridge;->getMaxWinNum(Ljava/lang/Object;II)I

    move-result p0

    return p0
.end method

.method public static getMaxWinNum(II)I
    .registers 3

    const/4 v0, 0x0

    .line 131
    invoke-static {v0, p0, p1}, Lcom/wukong/manager/WukongMultiWindowBridge;->getMaxWinNum(Ljava/lang/Object;II)I

    move-result p0

    return p0
.end method

.method public static getMaxWinNum(Ljava/lang/Object;II)I
    .registers 3

    .line 124
    invoke-static {p0}, Lcom/wukong/manager/WukongMultiWindowBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return p2

    .line 127
    :cond_7
    invoke-static {p0}, Lcom/wukong/manager/WukongMultiWindowBridge;->getMaxWindowCount(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getMaxWindowCount()I
    .registers 1

    const/4 v0, 0x0

    .line 117
    invoke-static {v0}, Lcom/wukong/manager/WukongMultiWindowBridge;->getMaxWindowCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getMaxWindowCount(Ljava/lang/Object;)I
    .registers 7

    .line 84
    const-string v0, "multi_window_max_count"

    const-string v1, "wukong_multi_window_max_count"

    invoke-static {p0}, Lcom/wukong/manager/WukongMultiWindowBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    const/16 v2, 0xc

    if-nez p0, :cond_d

    return v2

    .line 90
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_1c

    if-gt v3, v2, :cond_1c

    return v3

    .line 96
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v5, :cond_29

    if-gt v1, v2, :cond_29

    return v1

    .line 102
    :cond_29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v5, :cond_36

    if-gt v1, v2, :cond_36

    return v1

    .line 106
    :cond_36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_43

    if-lt p0, v5, :cond_4b

    if-gt p0, v2, :cond_4b

    return p0

    :catchall_43
    move-exception p0

    .line 111
    const-string v0, "WukongMultiWindowBridge"

    const-string v1, "getMaxWindowCount check failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4b
    return v2
.end method

.method public static isMasterEnabled()Z
    .registers 1

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Lcom/wukong/manager/WukongMultiWindowBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMasterEnabled(Ljava/lang/Object;)Z
    .registers 9

    .line 40
    const-string v0, "multi_window"

    const-string v1, "wukong_multi_window_enabled"

    invoke-static {p0}, Lcom/wukong/manager/WukongMultiWindowBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x1

    if-nez p0, :cond_c

    return v2

    .line 46
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_af

    .line 47
    const-string v4, "true"

    const-string v5, "1"

    const/4 v6, 0x0

    if-eqz v3, :cond_38

    :try_start_1b
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_38

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    return v6

    :cond_37
    :goto_37
    return v2

    .line 53
    :cond_38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5d

    goto :goto_5e

    :cond_5d
    return v6

    :cond_5e
    :goto_5e
    return v2

    .line 60
    :cond_5f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_67
    .catchall {:try_start_1b .. :try_end_67} :catchall_af

    .line 61
    const-string v3, "false"

    const-string v4, "0"

    if-eqz v1, :cond_89

    :try_start_6d
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_89

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_88

    return v2

    :cond_88
    return v6

    .line 65
    :cond_89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b7

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_ab
    .catchall {:try_start_6d .. :try_end_ab} :catchall_af

    if-nez p0, :cond_ae

    return v2

    :cond_ae
    return v6

    :catchall_af
    move-exception p0

    .line 71
    const-string v0, "WukongMultiWindowBridge"

    const-string v1, "isMasterEnabled check failed, defaulting to enabled"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b7
    return v2
.end method

.method public static isMultiFlexibleTaskMode(Z)Z
    .registers 2

    const/4 v0, 0x0

    .line 185
    invoke-static {v0}, Lcom/wukong/manager/WukongMultiWindowBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportMultiMode(Z)Z
    .registers 1

    return p0
.end method

.method public static resolveContext(Ljava/lang/Object;)Landroid/content/Context;
    .registers 8

    .line 195
    sget-object v0, Lcom/wukong/manager/WukongMultiWindowBridge;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 196
    sget-object p0, Lcom/wukong/manager/WukongMultiWindowBridge;->sContext:Landroid/content/Context;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3a

    if-eqz p0, :cond_3a

    .line 200
    const-string v2, "mContext"

    const-string v3, "context"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/wukong/manager/WukongMultiWindowBridge;->resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 201
    instance-of v3, v2, Landroid/content/Context;

    if-eqz v3, :cond_25

    .line 202
    check-cast v2, Landroid/content/Context;

    sput-object v2, Lcom/wukong/manager/WukongMultiWindowBridge;->sContext:Landroid/content/Context;

    .line 203
    sget-object p0, Lcom/wukong/manager/WukongMultiWindowBridge;->sContext:Landroid/content/Context;

    return-object p0

    .line 205
    :cond_25
    const-string v2, "mService"

    const-string v3, "mPolicy"

    const-string v4, "mBase"

    const-string v5, "this$0"

    const-string v6, "mAtmService"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/wukong/manager/WukongMultiWindowBridge;->resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3a
    const/4 p0, 0x0

    .line 208
    :try_start_3b
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 209
    const-string v2, "currentActivityThread"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 210
    invoke-virtual {v2, p0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 212
    const-string v3, "getSystemContext"

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_62

    .line 215
    sput-object v0, Lcom/wukong/manager/WukongMultiWindowBridge;->sContext:Landroid/content/Context;
    :try_end_61
    .catchall {:try_start_3b .. :try_end_61} :catchall_62

    return-object v0

    :catchall_62
    :cond_62
    return-object p0
.end method

.method private static varargs resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 225
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_2b

    .line 226
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2b

    .line 227
    array-length v2, p1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_26

    aget-object v4, p1, v3

    .line 229
    :try_start_14
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 230
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 231
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_23

    if-eqz v4, :cond_23

    return-object v4

    :catchall_23
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 235
    :cond_26
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_8

    :cond_2b
    return-object v0
.end method
