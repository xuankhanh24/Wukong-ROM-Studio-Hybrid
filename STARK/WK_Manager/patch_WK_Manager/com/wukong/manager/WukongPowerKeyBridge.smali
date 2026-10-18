.class public final Lcom/wukong/manager/WukongPowerKeyBridge;
.super Ljava/lang/Object;
.source "WukongPowerKeyBridge.java"


# static fields
.field private static final DEBOUNCE_WINDOW_MS:J = 0x190L

.field public static final DEFAULT_DOUBLE_PRESS:Ljava/lang/String; = "com.google.android.apps.youtube.music"

.field public static final DEFAULT_LONG_PRESS:Ljava/lang/String; = "com.google.android.youtube"

.field public static final SETTING_DOUBLE_PRESS:Ljava/lang/String; = "wukong_power_double_press"

.field public static final SETTING_LONG_PRESS:Ljava/lang/String; = "wukong_power_long_press"

.field public static final SETTING_MASTER:Ljava/lang/String; = "wukong_power_master_enabled"

.field public static final SETTING_TRIPLE_PRESS:Ljava/lang/String; = "wukong_power_triple_press"

.field public static final SETTING_VIB_DOUBLE:Ljava/lang/String; = "wukong_power_vibrate_double_press"

.field public static final SETTING_VIB_LONG:Ljava/lang/String; = "wukong_power_vibrate_long_press"

.field public static final SETTING_VIB_TRIPLE:Ljava/lang/String; = "wukong_power_vibrate_triple_press"

.field private static final TAG:Ljava/lang/String; = "WukongPowerKeyBridge"

.field private static volatile sContext:Landroid/content/Context; = null

.field private static final sLastTriggerTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sTorchState:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongPowerKeyBridge;->sLastTriggerTimes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxCount(I)I
    .registers 2

    const/4 v0, 0x0

    .line 69
    invoke-static {v0, p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->getMaxCount(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static getMaxCount(Ljava/lang/Object;I)I
    .registers 3

    .line 56
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_23

    .line 59
    :cond_7
    const-string v0, "wukong_power_triple_press"

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isActionConfigured(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x3

    .line 60
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 62
    :cond_15
    const-string v0, "wukong_power_double_press"

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isActionConfigured(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x2

    .line 63
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_23
    :goto_23
    return p1
.end method

.method public static getMaxMultiPressCount(I)I
    .registers 2

    const/4 v0, 0x0

    .line 77
    invoke-static {v0, p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->getMaxCount(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static getMaxMultiPressCount(Ljava/lang/Object;I)I
    .registers 2

    .line 73
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->getMaxCount(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static handleGesture(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 109
    :cond_4
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 111
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAction"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 112
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_26

    return v0

    .line 117
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getType"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 118
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getPressCount"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 121
    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v1, v2, :cond_59

    .line 124
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onLongPress(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_59
    if-nez v1, :cond_63

    const/4 v2, 0x2

    if-ne p1, v2, :cond_63

    .line 126
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onDoublePress(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_63
    if-nez v1, :cond_75

    const/4 v1, 0x3

    if-ne p1, v1, :cond_75

    .line 128
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onTriplePress(Ljava/lang/Object;)Z

    move-result p0
    :try_end_6c
    .catchall {:try_start_b .. :try_end_6c} :catchall_6d

    return p0

    :catchall_6d
    move-exception p0

    .line 131
    const-string p1, "WukongPowerKeyBridge"

    const-string v1, "Error handling gesture"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_75
    return v0
.end method

.method private static isActionConfigured(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2

    .line 99
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveSetting(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, "none"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private static isCameraTarget(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 549
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 550
    const-string v1, "action:camera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "com.oplus.camera"

    .line 551
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "package:com.oplus.camera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "app:com.oplus.camera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "com.android.camera"

    .line 552
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "com.google.android.GoogleCamera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    return v0

    :cond_46
    :goto_46
    const/4 p0, 0x1

    return p0
.end method

.method private static isKeyguardShowing(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 539
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isShowing"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 541
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    return p0

    :catchall_20
    return v0
.end method

.method public static isMasterEnabled(Ljava/lang/Object;)Z
    .registers 8

    .line 81
    const-string v0, "wukong_power_master_enabled"

    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_a

    return v1

    .line 84
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_5c

    const/4 v3, 0x0

    .line 85
    const-string v4, "true"

    const-string v5, "1"

    if-eqz v2, :cond_36

    :try_start_19
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_36

    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    return v3

    :cond_35
    :goto_35
    return v1

    .line 89
    :cond_36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5c

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_58
    .catchall {:try_start_19 .. :try_end_58} :catchall_5c

    if-eqz p0, :cond_5b

    goto :goto_5c

    :cond_5b
    return v3

    :catchall_5c
    :cond_5c
    :goto_5c
    return v1
.end method

.method public static launch(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 14

    .line 286
    const-string v0, "shortcut:"

    .line 0
    const-string v1, "No valid launch intent found for target: "

    const-string v2, "Failed parsing shortcut URI: "

    if-eqz p1, :cond_1c9

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c9

    const-string v3, "none"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto/16 :goto_1c9

    .line 289
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Triggering action for target: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WukongPowerKeyBridge"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_2b
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v3

    .line 292
    const-string v5, "mKeyguardDelegate"

    const-string v6, "keyguardDelegate"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 293
    const-string v6, "mPowerManager"

    const-string v7, "powerManager"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    if-nez v3, :cond_51

    .line 296
    const-string p0, "Cannot resolve Context for power remap action"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 301
    :cond_51
    const-string v7, "action:torch"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1b3

    const-string v7, "torch"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    goto/16 :goto_1b3

    .line 307
    :cond_63
    const-string v7, "action:circle_to_search"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1af

    const-string v7, "circle_to_search"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_75

    goto/16 :goto_1af

    .line 313
    :cond_75
    const-string p0, "action:screenshot"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1ab

    const-string p0, "screenshot"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_83
    .catchall {:try_start_2b .. :try_end_83} :catchall_1b7

    if-eqz p0, :cond_87

    goto/16 :goto_1ab

    :cond_87
    if-nez v6, :cond_92

    .line 321
    :try_start_89
    const-string p0, "power"

    invoke-virtual {v3, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;
    :try_end_91
    .catchall {:try_start_89 .. :try_end_91} :catchall_92

    move-object v6, p0

    :catchall_92
    :cond_92
    const/4 p0, 0x1

    if-eqz v6, :cond_c0

    .line 324
    :try_start_95
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_1b7

    if-nez v7, :cond_c0

    .line 326
    :try_start_9b
    const-class v7, Landroid/os/PowerManager;

    const-string v8, "wakeUp"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, p0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "android.policy:POWER_KEY_REMAP"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c0
    .catchall {:try_start_9b .. :try_end_c0} :catchall_c0

    .line 333
    :catchall_c0
    :cond_c0
    :try_start_c0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_172

    const-string v6, "intent:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_172

    const-string v6, "#Intent;"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d9

    goto/16 :goto_172

    .line 340
    :cond_d9
    invoke-static {p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->isCameraTarget(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e5

    .line 341
    invoke-static {v3, v5}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveCameraIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v7

    goto/16 :goto_195

    .line 342
    :cond_e5
    const-string p0, "action:dialer"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_16a

    const-string p0, "dialer"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f7

    goto/16 :goto_16a

    .line 344
    :cond_f7
    const-string p0, "action:calculator"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_165

    const-string p0, "calculator"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_108

    goto :goto_165

    .line 346
    :cond_108
    const-string p0, "action:recorder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_160

    const-string p0, "recorder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_119

    goto :goto_160

    .line 348
    :cond_119
    const-string p0, "action:assistant"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_15b

    const-string p0, "assistant"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12a

    goto :goto_15b

    .line 352
    :cond_12a
    const-string p0, "package:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13d

    const/16 p0, 0x8

    .line 353
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_150

    .line 354
    :cond_13d
    const-string p0, "app:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14f

    const/4 p0, 0x4

    .line 355
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_150

    :cond_14f
    move-object p0, p1

    .line 357
    :goto_150
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_195

    .line 359
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_195

    .line 349
    :cond_15b
    :goto_15b
    invoke-static {v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveAssistantIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_195

    .line 347
    :cond_160
    :goto_160
    invoke-static {v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveRecorderIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_195

    .line 345
    :cond_165
    :goto_165
    invoke-static {v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveCalculatorIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_195

    .line 343
    :cond_16a
    :goto_16a
    new-instance v7, Landroid/content/Intent;

    const-string p0, "android.intent.action.DIAL"

    invoke-direct {v7, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_195

    .line 334
    :cond_172
    :goto_172
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17f

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_17e
    .catchall {:try_start_c0 .. :try_end_17e} :catchall_1b7

    goto :goto_180

    :cond_17f
    move-object v0, p1

    .line 336
    :goto_180
    :try_start_180
    invoke-static {v0, p0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7
    :try_end_184
    .catchall {:try_start_180 .. :try_end_184} :catchall_185

    goto :goto_195

    :catchall_185
    move-exception p0

    .line 338
    :try_start_186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_195
    :goto_195
    if-nez v7, :cond_1a7

    .line 364
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c9

    .line 368
    :cond_1a7
    invoke-static {v3, v7, v5}, Lcom/wukong/manager/WukongPowerKeyBridge;->launchIntentDirect(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_1c9

    .line 314
    :cond_1ab
    :goto_1ab
    invoke-static {v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->takeScreenshot(Landroid/content/Context;)V

    return-void

    .line 308
    :cond_1af
    :goto_1af
    invoke-static {v3, p0, v5}, Lcom/wukong/manager/WukongPowerKeyBridge;->launchCircleToSearch(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 302
    :cond_1b3
    :goto_1b3
    invoke-static {v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->toggleTorch(Landroid/content/Context;)V
    :try_end_1b6
    .catchall {:try_start_186 .. :try_end_1b6} :catchall_1b7

    return-void

    :catchall_1b7
    move-exception p0

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error executing action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c9
    :goto_1c9
    return-void
.end method

.method private static launchCircleToSearch(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    .line 375
    const-string p1, "com.google.android.googlequicksearchbox"

    const-string v0, "Triggering Circle to Search..."

    const-string v1, "WukongPowerKeyBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_46

    .line 379
    :try_start_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "isShowing"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 380
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 381
    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 382
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "dismissKeyguardToLaunch"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Intent;

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 384
    move-object v5, v2

    check-cast v5, Landroid/content/Intent;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_e .. :try_end_46} :catchall_46

    :catchall_46
    :cond_46
    const/4 p2, 0x2

    .line 391
    :try_start_47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_6b

    if-eqz p0, :cond_6b

    .line 395
    :try_start_4d
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.google.android.apps.lens.ContextualSearchEntrypoint"

    invoke-direct {v0, p1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_57

    .line 401
    :catchall_57
    :try_start_57
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.google.android.apps.search.omnient.host.contextualsearch.ContextualSearchServiceEntrypoint"

    invoke-direct {v0, p1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_61

    .line 407
    :catchall_61
    :try_start_61
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.google.android.apps.search.omnient.host.externalapp.ExternalAppEntrypoint"

    invoke-direct {v0, p1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_6b

    .line 417
    :catchall_6b
    :cond_6b
    :try_start_6b
    const-string p0, "android.os.ServiceManager"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 418
    const-string v0, "getService"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p0, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 419
    const-string v0, "contextual_search"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-eqz p0, :cond_1ac

    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v5, v0

    move v6, v3

    :goto_95
    if-ge v6, v5, :cond_a9

    aget-object v7, v0, v6

    .line 424
    const-string v8, "this$0"

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a6

    goto :goto_aa

    :cond_a6
    add-int/lit8 v6, v6, 0x1

    goto :goto_95

    :cond_a9
    move-object v7, v2

    :goto_aa
    if-eqz v7, :cond_c5

    .line 430
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 431
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b3
    .catchall {:try_start_6b .. :try_end_b3} :catchall_195

    if-eqz v0, :cond_c5

    .line 434
    :try_start_b5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mTemporaryPackage"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 435
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 436
    invoke-virtual {v5, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c5
    .catchall {:try_start_b5 .. :try_end_c5} :catchall_c5

    .line 444
    :catchall_c5
    :cond_c5
    :try_start_c5
    const-string p1, "android.app.contextualsearch.ContextualSearchConfig$Builder"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 445
    new-array v0, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 446
    const-string v5, "build"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 447
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_e1
    .catchall {:try_start_c5 .. :try_end_e1} :catchall_e2

    goto :goto_f8

    :catchall_e2
    move-exception v0

    move-object p1, v0

    .line 449
    :try_start_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed creating ContextualSearchConfig via Builder: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_f8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    move v5, v3

    :goto_102
    if-ge v5, v0, :cond_144

    aget-object v6, p1, v5

    .line 454
    const-string v7, "startContextualSearchInternal"

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_141

    .line 455
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 456
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 457
    array-length v8, v7

    if-ne v8, p2, :cond_141

    aget-object v7, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_141

    .line 458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1
    :try_end_126
    .catchall {:try_start_e4 .. :try_end_126} :catchall_195

    .line 460
    :try_start_126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string p0, "Triggered CTS via startContextualSearchInternal(1, config) SUCCESS!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catchall {:try_start_126 .. :try_end_136} :catchall_13b

    .line 464
    :try_start_136
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e3

    :catchall_13b
    move-exception v0

    move-object p0, v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw p0

    :cond_141
    add-int/lit8 v5, v5, 0x1

    goto :goto_102

    .line 471
    :cond_144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2
    :try_end_14c
    .catchall {:try_start_136 .. :try_end_14c} :catchall_195

    .line 474
    :try_start_14c
    const-string v0, "android.app.contextualsearch.IContextualSearchManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    .line 477
    invoke-interface {p0, v0, p1, p2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readException()V

    .line 479
    const-string p0, "Triggered CTS via binder.transact(3) SUCCESS!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catchall {:try_start_14c .. :try_end_163} :catchall_16b

    .line 484
    :try_start_163
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V
    :try_end_169
    .catchall {:try_start_163 .. :try_end_169} :catchall_195

    goto/16 :goto_1e3

    :catchall_16b
    move-exception v0

    move-object p0, v0

    .line 482
    :try_start_16d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder.transact(3) failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_185
    .catchall {:try_start_16d .. :try_end_185} :catchall_18c

    .line 484
    :try_start_185
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1ac

    :catchall_18c
    move-exception v0

    move-object p0, v0

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 486
    throw p0
    :try_end_195
    .catchall {:try_start_185 .. :try_end_195} :catchall_195

    :catchall_195
    move-exception v0

    move-object p0, v0

    .line 489
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Direct CTS service invocation failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    :cond_1ac
    :goto_1ac
    :try_start_1ac
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v2, "cmd"

    const-string v3, "contextual_search"

    const-string v4, "set"

    const-string v5, "temporary-package"

    const-string v6, "com.google.android.googlequicksearchbox"

    const-string v7, "120000"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 495
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v2, "service"

    const-string v3, "call"

    const-string v4, "contextual_search"

    const-string v5, "3"

    const-string v6, "i32"

    const-string v7, "1"

    const-string v8, "i32"

    const-string v9, "0"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 496
    const-string p0, "Triggered CTS via shell fallback SUCCESS!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e3
    .catchall {:try_start_1ac .. :try_end_1e3} :catchall_1e3

    :catchall_1e3
    :goto_1e3
    return-void
.end method

.method public static launchDoublePress(Ljava/lang/Object;)V
    .registers 1

    .line 177
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onDoublePress(Ljava/lang/Object;)Z

    return-void
.end method

.method private static launchIntentDirect(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 10

    if-eqz p0, :cond_cf

    if-nez p1, :cond_6

    goto/16 :goto_cf

    :cond_6
    const/high16 v0, 0x14000000

    .line 587
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3c

    .line 590
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v3, "com.oplus.camera"

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 591
    :cond_2f
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3c

    :cond_3a
    move v0, v1

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v0, v2

    .line 593
    :goto_3d
    invoke-static {p2}, Lcom/wukong/manager/WukongPowerKeyBridge;->isKeyguardShowing(Ljava/lang/Object;)Z

    move-result v3

    .line 596
    const-string v4, "WukongPowerKeyBridge"

    if-eqz v3, :cond_6f

    if-nez v0, :cond_6f

    if-eqz p2, :cond_6f

    .line 598
    :try_start_49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "dismissKeyguardToLaunch"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 599
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 600
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string p2, "Launched via KeyguardServiceDelegate.dismissKeyguardToLaunch"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_69

    return-void

    :catchall_69
    move-exception p2

    .line 604
    const-string v0, "dismissKeyguardToLaunch failed, fallback to startActivityAsUser"

    invoke-static {v4, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6f
    const/4 p2, 0x0

    .line 611
    :try_start_70
    const-class v0, Landroid/os/UserHandle;

    const-string v3, "CURRENT_OR_SELF"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 612
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;
    :try_end_7e
    .catchall {:try_start_70 .. :try_end_7e} :catchall_7f

    goto :goto_80

    :catchall_7f
    move-object v0, p2

    :goto_80
    if-nez v0, :cond_91

    .line 616
    :try_start_82
    const-class v3, Landroid/os/UserHandle;

    const-string v5, "CURRENT"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 617
    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_91

    move-object v0, p2

    :catchall_91
    :cond_91
    if-eqz v0, :cond_b9

    .line 623
    :try_start_93
    const-class p2, Landroid/content/Context;

    const-string v3, "startActivityAsUser"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v1

    const-class v1, Landroid/os/UserHandle;

    aput-object v1, v5, v2

    invoke-virtual {p2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 624
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string p2, "Launched via Context.startActivityAsUser"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_93 .. :try_end_b2} :catchall_b3

    goto :goto_cf

    :catchall_b3
    move-exception p2

    .line 628
    const-string v0, "Context.startActivityAsUser failed, fallback"

    invoke-static {v4, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    :cond_b9
    :try_start_b9
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    goto :goto_cf

    :catchall_bd
    move-exception p0

    .line 635
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to start activity directly: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cf
    :goto_cf
    return-void
.end method

.method public static launchLongPress(Ljava/lang/Object;)V
    .registers 1

    .line 173
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onLongPress(Ljava/lang/Object;)Z

    return-void
.end method

.method public static launchTriplePress(Ljava/lang/Object;)V
    .registers 1

    .line 181
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onTriplePress(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onDoublePress(Ljava/lang/Object;)Z
    .registers 5

    .line 149
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 150
    :cond_8
    const-string v0, "double_press"

    invoke-static {v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->shouldThrottle(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    .line 151
    :cond_12
    const-string v0, "wukong_power_double_press"

    const-string v3, "com.google.android.apps.youtube.music"

    invoke-static {p0, v0, v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveTarget(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_36

    .line 155
    :cond_2b
    const-string v1, "wukong_power_vibrate_double_press"

    const-string v3, "heavy"

    invoke-static {p0, v1, v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->triggerHaptic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {p0, v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->launch(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_36
    :goto_36
    return v1
.end method

.method public static onLongPress(Ljava/lang/Object;)Z
    .registers 5

    .line 137
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 138
    :cond_8
    const-string v0, "long_press"

    invoke-static {v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->shouldThrottle(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    .line 139
    :cond_12
    const-string v0, "wukong_power_long_press"

    const-string v3, "com.google.android.youtube"

    invoke-static {p0, v0, v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveTarget(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_36

    .line 143
    :cond_2b
    const-string v1, "wukong_power_vibrate_long_press"

    const-string v3, "click"

    invoke-static {p0, v1, v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->triggerHaptic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {p0, v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->launch(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_36
    :goto_36
    return v1
.end method

.method public static onTriplePress(Ljava/lang/Object;)Z
    .registers 5

    .line 161
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 162
    :cond_8
    const-string v0, "triple_press"

    invoke-static {v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->shouldThrottle(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    .line 163
    :cond_12
    const-string v0, "wukong_power_triple_press"

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveTarget(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_35

    .line 167
    :cond_2a
    const-string v1, "wukong_power_vibrate_triple_press"

    const-string v3, "heavy"

    invoke-static {p0, v1, v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->triggerHaptic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {p0, v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->launch(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    :cond_35
    :goto_35
    return v1
.end method

.method private static performVibration(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    .line 234
    const-string v0, "heavy"

    if-eqz p0, :cond_110

    if-eqz p1, :cond_110

    const-string v1, "none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_110

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_110

    .line 239
    :cond_16
    :try_start_16
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 240
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 241
    const-string v2, "linearmotor"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_ec

    .line 243
    const-string v2, "com.oplus.os.ILinearmotorVibratorService$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 244
    const-string v5, "asInterface"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v6

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 245
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    const-string v2, "com.oplus.os.LinearmotorVibrator"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v5, v2

    move v7, v6

    :goto_5f
    const/4 v8, 0x2

    if-ge v7, v5, :cond_77

    aget-object v9, v2, v7

    .line 249
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-ne v10, v8, :cond_74

    .line 250
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_78

    :cond_74
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    :cond_77
    move-object v1, v4

    :goto_78
    if-eqz v1, :cond_ec

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9c

    const-string v2, "strong"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    goto :goto_9c

    .line 258
    :cond_89
    const-string v2, "tick"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9d

    const-string v2, "light"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    goto :goto_9d

    :cond_9a
    move v8, v6

    goto :goto_9d

    :cond_9c
    :goto_9c
    move v8, v3

    .line 261
    :cond_9d
    :goto_9d
    const-string v2, "com.oplus.os.WaveformEffect$Builder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 262
    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 263
    const-string v7, "setEffectType"

    new-array v9, v3, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 264
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v7, "build"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 266
    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 267
    const-string v4, "com.oplus.os.WaveformEffect"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "vibrate"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v5, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 269
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_eb
    .catchall {:try_start_16 .. :try_end_eb} :catchall_ec

    return-void

    .line 277
    :catchall_ec
    :cond_ec
    :try_start_ec
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_110

    .line 278
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_110

    .line 279
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_105

    const/16 p1, 0x46

    goto :goto_107

    :cond_105
    const/16 p1, 0x23

    :goto_107
    int-to-long v0, p1

    const/4 p1, -0x1

    .line 280
    invoke-static {v0, v1, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_110
    .catchall {:try_start_ec .. :try_end_110} :catchall_110

    :catchall_110
    :cond_110
    :goto_110
    return-void
.end method

.method private static resolveAssistantIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 676
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 678
    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_14

    return-object v0

    .line 681
    :cond_14
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.ASSIST"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static resolveCalculatorIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    .line 657
    const-string v0, "com.android.calculator2"

    const-string v1, "com.google.android.calculator"

    const-string v2, "com.coloros.calculator"

    const-string v3, "com.oplus.calculator"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_22

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_22

    .line 665
    aget-object v2, v0, v1

    .line 666
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1f

    return-object v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 670
    :cond_22
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    const-string v0, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private static resolveCameraIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 5

    .line 556
    invoke-static {p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->isKeyguardShowing(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p0, :cond_b

    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p1, :cond_1e

    .line 561
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1e

    .line 562
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1e

    return-object p1

    .line 568
    :cond_1e
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oplus.camera.Camera"

    const-string v2, "com.oplus.camera"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 570
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_3f

    .line 571
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3f

    return-object p1

    :cond_3f
    if-eqz p0, :cond_48

    .line 577
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_48

    return-object p0

    .line 582
    :cond_48
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static resolveContext(Ljava/lang/Object;)Landroid/content/Context;
    .registers 7

    .line 705
    sget-object v0, Lcom/wukong/manager/WukongPowerKeyBridge;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 706
    sget-object p0, Lcom/wukong/manager/WukongPowerKeyBridge;->sContext:Landroid/content/Context;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const/4 v2, 0x4

    if-ge v1, v2, :cond_38

    if-eqz p0, :cond_38

    .line 710
    const-string v2, "mContext"

    const-string v3, "context"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 711
    instance-of v3, v2, Landroid/content/Context;

    if-eqz v3, :cond_25

    .line 712
    check-cast v2, Landroid/content/Context;

    sput-object v2, Lcom/wukong/manager/WukongPowerKeyBridge;->sContext:Landroid/content/Context;

    .line 713
    sget-object p0, Lcom/wukong/manager/WukongPowerKeyBridge;->sContext:Landroid/content/Context;

    return-object p0

    .line 715
    :cond_25
    const-string v2, "mPolicy"

    const-string v3, "mPhoneWindowManager"

    const-string v4, "mBase"

    const-string v5, "this$0"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_38
    const/4 p0, 0x0

    .line 718
    :try_start_39
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 719
    const-string v2, "currentActivityThread"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 720
    invoke-virtual {v2, p0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 722
    const-string v3, "getSystemContext"

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 723
    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_60

    .line 725
    sput-object v0, Lcom/wukong/manager/WukongPowerKeyBridge;->sContext:Landroid/content/Context;
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_60

    return-object v0

    :catchall_60
    :cond_60
    return-object p0
.end method

.method private static varargs resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 735
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_2b

    .line 736
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2b

    .line 737
    array-length v2, p1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_26

    aget-object v4, p1, v3

    .line 739
    :try_start_14
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 740
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 741
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

    .line 745
    :cond_26
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_8

    :cond_2b
    return-object v0
.end method

.method private static resolveRecorderIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    .line 640
    const-string v0, "com.android.soundrecorder"

    const-string v1, "com.google.android.apps.recorder"

    const-string v2, "com.coloros.soundrecorder"

    const-string v3, "com.oplus.soundrecorder"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_22

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_22

    .line 648
    aget-object v2, v0, v1

    .line 649
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1f

    return-object v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 653
    :cond_22
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static resolveSetting(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 196
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 199
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 203
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_38

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_38

    return-object p0

    :catchall_38
    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveTarget(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 213
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveSetting(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    return-object p0

    :cond_d
    return-object p2
.end method

.method private static shouldThrottle(Ljava/lang/String;)Z
    .registers 9

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 186
    sget-object v2, Lcom/wukong/manager/WukongPowerKeyBridge;->sLastTriggerTimes:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_41

    .line 187
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-gez v4, :cond_41

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Throttling duplicate trigger for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (diff="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WukongPowerKeyBridge"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 191
    :cond_41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method private static takeScreenshot(Landroid/content/Context;)V
    .registers 14

    .line 503
    const-string v0, "WukongPowerKeyBridge"

    const-string v1, "takeScreenshot"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_7
    const-string v5, "android.os.ServiceManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 504
    const-string v6, "getService"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 505
    const-string v6, "color_screenshot"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    if-eqz v5, :cond_63

    .line 507
    const-string v6, "com.oplus.screenshot.IOplusScreenshotManager$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 508
    const-string v7, "asInterface"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 509
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_63

    .line 511
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v7, v3

    invoke-virtual {v6, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 512
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v5, "Screenshot taken via IOplusScreenshotManager"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_63

    return-void

    .line 520
    :catchall_63
    :cond_63
    :try_start_63
    const-string v5, "com.android.internal.util.ScreenshotHelper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 521
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 522
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_8e
    if-ge v8, v7, :cond_c4

    aget-object v9, v6, v8

    .line 524
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 525
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 526
    array-length v11, v10

    const/4 v12, 0x3

    if-ne v11, v12, :cond_c1

    aget-object v11, v10, v3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_c1

    aget-object v10, v10, v4

    const-class v11, Landroid/os/Handler;

    if-ne v10, v11, :cond_c1

    .line 527
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v5, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string p0, "Screenshot taken via ScreenshotHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_63 .. :try_end_c0} :catchall_c4

    goto :goto_c4

    :cond_c1
    add-int/lit8 v8, v8, 0x1

    goto :goto_8e

    :catchall_c4
    :cond_c4
    :goto_c4
    return-void
.end method

.method private static toggleTorch(Landroid/content/Context;)V
    .registers 8

    .line 686
    const-string v0, "WukongPowerKeyBridge"

    :try_start_2
    const-string v1, "camera"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    if-nez p0, :cond_d

    goto :goto_50

    .line 688
    :cond_d
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 689
    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_50

    aget-object v4, v1, v3

    .line 690
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 691
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 692
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 693
    sget-boolean v1, Lcom/wukong/manager/WukongPowerKeyBridge;->sTorchState:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lcom/wukong/manager/WukongPowerKeyBridge;->sTorchState:Z

    .line 694
    sget-boolean v1, Lcom/wukong/manager/WukongPowerKeyBridge;->sTorchState:Z

    invoke-virtual {p0, v4, v1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 695
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggled torch state to: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/wukong/manager/WukongPowerKeyBridge;->sTorchState:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_2 .. :try_end_4c} :catchall_51

    return-void

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_50
    :goto_50
    return-void

    :catchall_51
    move-exception p0

    .line 700
    const-string v1, "Error toggling torch"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static triggerHaptic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 221
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 225
    :cond_7
    :try_start_7
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveSetting(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    if-nez p1, :cond_14

    move-object p2, p0

    .line 230
    :catchall_14
    :cond_14
    invoke-static {v0, p2}, Lcom/wukong/manager/WukongPowerKeyBridge;->performVibration(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
