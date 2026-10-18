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

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongPowerKeyBridge;->sLastTriggerTimes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxCount(I)I
    .registers 2

    const/4 v0, 0x0

    .line 70
    invoke-static {v0, p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->getMaxCount(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static getMaxCount(Ljava/lang/Object;I)I
    .registers 3

    .line 57
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_23

    .line 60
    :cond_7
    const-string v0, "wukong_power_triple_press"

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isActionConfigured(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x3

    .line 61
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 63
    :cond_15
    const-string v0, "wukong_power_double_press"

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isActionConfigured(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x2

    .line 64
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

    .line 78
    invoke-static {v0, p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->getMaxCount(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static getMaxMultiPressCount(Ljava/lang/Object;I)I
    .registers 2

    .line 74
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->getMaxCount(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static handleGesture(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    .line 109
    const-string v0, "WukongPowerKeyBridge"

    .line 0
    const-string v1, "handleGesture: action="

    const/4 v2, 0x0

    if-nez p1, :cond_8

    return v2

    .line 111
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getAction"

    new-array v5, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 112
    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getType"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 115
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getPressCount"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 118
    invoke-virtual {v6, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 123
    const-string p0, "Master disabled, bypassing gesture"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_76
    const/4 v1, 0x1

    if-eq v3, v1, :cond_7a

    return v2

    :cond_7a
    if-eq v4, v1, :cond_9d

    const/4 v1, 0x2

    if-ne v4, v1, :cond_80

    goto :goto_9d

    :cond_80
    if-nez v4, :cond_8e

    if-ne p1, v1, :cond_8e

    .line 135
    const-string p1, "handleGesture -> dispatching onDoublePress"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onDoublePress(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8e
    if-nez v4, :cond_ad

    const/4 v1, 0x3

    if-ne p1, v1, :cond_ad

    .line 138
    const-string p1, "handleGesture -> dispatching onTriplePress"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onTriplePress(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 132
    :cond_9d
    :goto_9d
    const-string p1, "handleGesture -> dispatching onLongPress"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onLongPress(Ljava/lang/Object;)Z

    move-result p0
    :try_end_a6
    .catchall {:try_start_8 .. :try_end_a6} :catchall_a7

    return p0

    :catchall_a7
    move-exception p0

    .line 142
    const-string p1, "Error handling gesture"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ad
    return v2
.end method

.method private static isActionConfigured(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2

    .line 100
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveSetting(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 101
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

    .line 619
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 620
    const-string v1, "action:camera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "camera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "com.oplus.camera"

    .line 621
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

    .line 622
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

    .line 609
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

    .line 610
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 611
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

    .line 82
    const-string v0, "wukong_power_master_enabled"

    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_a

    return v1

    .line 85
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_5c

    const/4 v3, 0x0

    .line 86
    const-string v4, "true"

    const-string v5, "1"

    if-eqz v2, :cond_36

    :try_start_19
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_36

    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 88
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

    .line 90
    :cond_36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5c

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 93
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

    .line 315
    const-string v0, "shortcut:"

    .line 0
    const-string v1, "No valid launch intent found for target: "

    const-string v2, "Failed parsing shortcut URI: "

    if-eqz p1, :cond_1c9

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c9

    const-string v3, "none"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto/16 :goto_1c9

    .line 318
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Triggering action for target: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WukongPowerKeyBridge"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :try_start_2b
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v3

    .line 321
    const-string v5, "mKeyguardDelegate"

    const-string v6, "keyguardDelegate"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 322
    const-string v6, "mPowerManager"

    const-string v7, "powerManager"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    if-nez v3, :cond_51

    .line 325
    const-string p0, "Cannot resolve Context for power remap action"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 330
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

    .line 336
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

    .line 342
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

    .line 350
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

    .line 353
    :try_start_95
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_1b7

    if-nez v7, :cond_c0

    .line 355
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

    .line 356
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

    .line 362
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

    .line 369
    :cond_d9
    invoke-static {p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->isCameraTarget(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e5

    .line 370
    invoke-static {v3, v5}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveCameraIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v7

    goto/16 :goto_195

    .line 371
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

    .line 373
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

    .line 375
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

    .line 377
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

    .line 381
    :cond_12a
    const-string p0, "package:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13d

    const/16 p0, 0x8

    .line 382
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_150

    .line 383
    :cond_13d
    const-string p0, "app:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14f

    const/4 p0, 0x4

    .line 384
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_150

    :cond_14f
    move-object p0, p1

    .line 386
    :goto_150
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_195

    .line 388
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_195

    .line 378
    :cond_15b
    :goto_15b
    invoke-static {v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveAssistantIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_195

    .line 376
    :cond_160
    :goto_160
    invoke-static {v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveRecorderIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_195

    .line 374
    :cond_165
    :goto_165
    invoke-static {v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveCalculatorIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    goto :goto_195

    .line 372
    :cond_16a
    :goto_16a
    new-instance v7, Landroid/content/Intent;

    const-string p0, "android.intent.action.DIAL"

    invoke-direct {v7, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_195

    .line 363
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

    .line 365
    :goto_180
    :try_start_180
    invoke-static {v0, p0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7
    :try_end_184
    .catchall {:try_start_180 .. :try_end_184} :catchall_185

    goto :goto_195

    :catchall_185
    move-exception p0

    .line 367
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

    .line 393
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c9

    .line 397
    :cond_1a7
    invoke-static {v3, v7, v5}, Lcom/wukong/manager/WukongPowerKeyBridge;->launchIntentDirect(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_1c9

    .line 343
    :cond_1ab
    :goto_1ab
    invoke-static {v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->takeScreenshot(Landroid/content/Context;)V

    return-void

    .line 337
    :cond_1af
    :goto_1af
    invoke-static {v3, p0, v5}, Lcom/wukong/manager/WukongPowerKeyBridge;->launchCircleToSearch(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 331
    :cond_1b3
    :goto_1b3
    invoke-static {v3}, Lcom/wukong/manager/WukongPowerKeyBridge;->toggleTorch(Landroid/content/Context;)V
    :try_end_1b6
    .catchall {:try_start_186 .. :try_end_1b6} :catchall_1b7

    return-void

    :catchall_1b7
    move-exception p0

    .line 399
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
    .registers 19

    move-object/from16 v1, p2

    .line 404
    const-string v0, "Triggering Circle to Search..."

    const-string v2, "WukongPowerKeyBridge"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_11

    .line 407
    invoke-static/range {p1 .. p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    move-object v3, v0

    goto :goto_13

    :cond_11
    move-object/from16 v3, p0

    :goto_13
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4b

    .line 413
    :try_start_18
    const-string v0, "power"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_4b

    .line 414
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 415
    const-class v7, Landroid/os/PowerManager;

    const-string v8, "wakeUp"

    new-array v9, v4, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "android.policy:POWER_KEY_REMAP"

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_18 .. :try_end_4b} :catchall_4b

    :catchall_4b
    :cond_4b
    const/4 v7, 0x0

    if-eqz v1, :cond_86

    .line 424
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "isShowing"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 426
    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 427
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "dismissKeyguardToLaunch"

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Landroid/content/Intent;

    aput-object v10, v9, v5

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 428
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 429
    move-object v8, v7

    check-cast v8, Landroid/content/Intent;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_86
    .catchall {:try_start_4e .. :try_end_86} :catchall_86

    .line 436
    :catchall_86
    :cond_86
    const-string v8, "com.google.android.apps.lens.ContextualSearchEntrypoint"

    const-string v9, "com.google.android.googlequicksearchbox"

    if-eqz v3, :cond_a4

    .line 438
    :try_start_8c
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_a4

    if-eqz v0, :cond_a4

    .line 442
    :try_start_92
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_9a

    .line 448
    :catchall_9a
    :try_start_9a
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.google.android.apps.search.omnient.host.contextualsearch.ContextualSearchServiceEntrypoint"

    invoke-direct {v10, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v4, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_a4

    .line 458
    :catchall_a4
    :cond_a4
    const-string v10, "startContextualSearch"

    const-string v11, "contextual_search"

    if-eqz v3, :cond_112

    .line 460
    :try_start_aa
    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_112

    .line 463
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    array-length v13, v12

    move v14, v5

    :goto_ba
    if-ge v14, v13, :cond_e0

    aget-object v15, v12, v14

    .line 464
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 465
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4
    :try_end_cc
    .catchall {:try_start_aa .. :try_end_cc} :catchall_f9

    move/from16 p1, v5

    .line 466
    :try_start_ce
    array-length v5, v4

    if-ne v5, v6, :cond_da

    aget-object v4, v4, p1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_da

    goto :goto_e3

    :cond_d8
    move/from16 p1, v5

    :cond_da
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, p1

    const/4 v4, 0x2

    goto :goto_ba

    :cond_e0
    move/from16 p1, v5

    move-object v15, v7

    :goto_e3
    if-eqz v15, :cond_114

    .line 473
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v0, "Triggered CTS via ContextualSearchManager.startContextualSearch(1) SUCCESS!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_ce .. :try_end_f5} :catchall_f7

    goto/16 :goto_28b

    :catchall_f7
    move-exception v0

    goto :goto_fc

    :catchall_f9
    move-exception v0

    move/from16 p1, v5

    .line 479
    :goto_fc
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ContextualSearchManager call failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    :cond_112
    move/from16 p1, v5

    .line 485
    :cond_114
    :goto_114
    :try_start_114
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 486
    const-string v4, "getService"

    new-array v5, v6, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v5, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 487
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_23f

    .line 491
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move/from16 v11, p1

    :goto_13d
    if-ge v11, v5, :cond_152

    aget-object v12, v4, v11

    .line 492
    const-string v13, "this$0"

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14f

    move-object v7, v12

    goto :goto_152

    :cond_14f
    add-int/lit8 v11, v11, 0x1

    goto :goto_13d

    :cond_152
    :goto_152
    if-eqz v7, :cond_16d

    .line 498
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 499
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_15b
    .catchall {:try_start_114 .. :try_end_15b} :catchall_229

    if-eqz v4, :cond_16d

    .line 502
    :try_start_15d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "mTemporaryPackage"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 503
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 504
    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16d
    .catchall {:try_start_15d .. :try_end_16d} :catchall_16d

    .line 510
    :catchall_16d
    :cond_16d
    :try_start_16d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move/from16 v7, p1

    :goto_178
    if-ge v7, v5, :cond_1db

    aget-object v11, v4, v7

    .line 511
    const-string v12, "startContextualSearchInternal"

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_192

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d8

    .line 512
    :cond_192
    invoke-virtual {v11, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 513
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 514
    array-length v13, v12

    if-ne v13, v6, :cond_1d8

    aget-object v12, v12, p1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_1d8

    .line 515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1a6
    .catchall {:try_start_16d .. :try_end_1a6} :catchall_229

    .line 517
    :try_start_1a6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v11, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Triggered CTS via binder."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(1) SUCCESS!"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ce
    .catchall {:try_start_1a6 .. :try_end_1ce} :catchall_1d3

    .line 521
    :try_start_1ce
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_28b

    :catchall_1d3
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    throw v0

    :cond_1d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_178

    .line 528
    :cond_1db
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_1e3
    .catchall {:try_start_1ce .. :try_end_1e3} :catchall_229

    .line 531
    :try_start_1e3
    const-string v7, "android.app.contextualsearch.IContextualSearchManager"

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p1

    const/4 v6, 0x2

    .line 533
    invoke-interface {v0, v6, v4, v5, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 534
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 535
    const-string v0, "Triggered CTS via binder.transact(2) SUCCESS!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f9
    .catchall {:try_start_1e3 .. :try_end_1f9} :catchall_201

    .line 540
    :try_start_1f9
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 541
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_1ff
    .catchall {:try_start_1f9 .. :try_end_1ff} :catchall_229

    goto/16 :goto_28b

    :catchall_201
    move-exception v0

    .line 538
    :try_start_202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "binder.transact(2) failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21a
    .catchall {:try_start_202 .. :try_end_21a} :catchall_221

    .line 540
    :try_start_21a
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 541
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_23f

    :catchall_221
    move-exception v0

    .line 540
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 541
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 542
    throw v0
    :try_end_229
    .catchall {:try_start_21a .. :try_end_229} :catchall_229

    :catchall_229
    move-exception v0

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Direct CTS service invocation failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23f
    :goto_23f
    if-eqz v3, :cond_26f

    .line 551
    :try_start_241
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.app.contextualsearch.action.LAUNCH_CONTEXTUAL_SEARCH"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 555
    invoke-static {v3, v0, v1}, Lcom/wukong/manager/WukongPowerKeyBridge;->launchIntentDirect(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 556
    const-string v0, "Triggered CTS via direct Activity Intent SUCCESS!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_258
    .catchall {:try_start_241 .. :try_end_258} :catchall_259

    goto :goto_28b

    :catchall_259
    move-exception v0

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Direct Intent CTS launch failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_26f
    :try_start_26f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v3, "service"

    const-string v4, "call"

    const-string v5, "contextual_search"

    const-string v6, "2"

    const-string v7, "i32"

    const-string v8, "1"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 566
    const-string v0, "Triggered CTS via shell fallback SUCCESS!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28b
    .catchall {:try_start_26f .. :try_end_28b} :catchall_28b

    :catchall_28b
    :goto_28b
    return-void
.end method

.method public static launchDoublePress(Ljava/lang/Object;)V
    .registers 1

    .line 206
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

    .line 657
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 659
    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3c

    .line 660
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

    .line 661
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

    .line 663
    :goto_3d
    invoke-static {p2}, Lcom/wukong/manager/WukongPowerKeyBridge;->isKeyguardShowing(Ljava/lang/Object;)Z

    move-result v3

    .line 666
    const-string v4, "WukongPowerKeyBridge"

    if-eqz v3, :cond_6f

    if-nez v0, :cond_6f

    if-eqz p2, :cond_6f

    .line 668
    :try_start_49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "dismissKeyguardToLaunch"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 669
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 670
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string p2, "Launched via KeyguardServiceDelegate.dismissKeyguardToLaunch"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_69

    return-void

    :catchall_69
    move-exception p2

    .line 674
    const-string v0, "dismissKeyguardToLaunch failed, fallback to startActivityAsUser"

    invoke-static {v4, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6f
    const/4 p2, 0x0

    .line 681
    :try_start_70
    const-class v0, Landroid/os/UserHandle;

    const-string v3, "CURRENT_OR_SELF"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 682
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

    .line 686
    :try_start_82
    const-class v3, Landroid/os/UserHandle;

    const-string v5, "CURRENT"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 687
    invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_91

    move-object v0, p2

    :catchall_91
    :cond_91
    if-eqz v0, :cond_b9

    .line 693
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

    .line 694
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string p2, "Launched via Context.startActivityAsUser"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_93 .. :try_end_b2} :catchall_b3

    goto :goto_cf

    :catchall_b3
    move-exception p2

    .line 698
    const-string v0, "Context.startActivityAsUser failed, fallback"

    invoke-static {v4, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    :cond_b9
    :try_start_b9
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_bd

    goto :goto_cf

    :catchall_bd
    move-exception p0

    .line 705
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

    .line 202
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onLongPress(Ljava/lang/Object;)Z

    return-void
.end method

.method public static launchTriplePress(Ljava/lang/Object;)V
    .registers 1

    .line 210
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onTriplePress(Ljava/lang/Object;)Z

    return-void
.end method

.method public static onDoublePress(Ljava/lang/Object;)Z
    .registers 7

    .line 168
    const-string v0, "onDoublePress called!"

    const-string v1, "WukongPowerKeyBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_f

    return v2

    .line 170
    :cond_f
    const-string v0, "double_press"

    invoke-static {v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->shouldThrottle(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_19

    return v3

    .line 171
    :cond_19
    const-string v0, "wukong_power_double_press"

    const-string v4, "com.google.android.apps.youtube.music"

    invoke-static {p0, v0, v4}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveTarget(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDoublePress target: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4e

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_4e

    .line 176
    :cond_43
    const-string v1, "wukong_power_vibrate_double_press"

    const-string v2, "heavy"

    invoke-static {p0, v1, v2}, Lcom/wukong/manager/WukongPowerKeyBridge;->triggerHaptic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {p0, v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->launch(Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_4e
    :goto_4e
    return v2
.end method

.method public static onLongPress(Ljava/lang/Object;)Z
    .registers 7

    .line 148
    const-string v0, "onLongPress called!"

    const-string v1, "WukongPowerKeyBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 150
    const-string p0, "onLongPress: master disabled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 153
    :cond_14
    const-string v0, "long_press"

    invoke-static {v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->shouldThrottle(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_23

    .line 154
    const-string p0, "onLongPress: throttled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 157
    :cond_23
    const-string v0, "wukong_power_long_press"

    const-string v4, "com.google.android.youtube"

    invoke-static {p0, v0, v4}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveTarget(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onLongPress target: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_58

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_58

    .line 162
    :cond_4d
    const-string v1, "wukong_power_vibrate_long_press"

    const-string v2, "click"

    invoke-static {p0, v1, v2}, Lcom/wukong/manager/WukongPowerKeyBridge;->triggerHaptic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {p0, v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->launch(Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_58
    :goto_58
    return v2
.end method

.method public static onPowerMultiPress(Ljava/lang/Object;I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 196
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onDoublePress(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 197
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->onTriplePress(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static onTriplePress(Ljava/lang/Object;)Z
    .registers 7

    .line 182
    const-string v0, "onTriplePress called!"

    const-string v1, "WukongPowerKeyBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->isMasterEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_f

    return v2

    .line 184
    :cond_f
    const-string v0, "triple_press"

    invoke-static {v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->shouldThrottle(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_19

    return v3

    .line 185
    :cond_19
    const-string v0, "wukong_power_triple_press"

    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveTarget(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTriplePress target: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4d

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_4d

    .line 190
    :cond_42
    const-string v1, "wukong_power_vibrate_triple_press"

    const-string v2, "heavy"

    invoke-static {p0, v1, v2}, Lcom/wukong/manager/WukongPowerKeyBridge;->triggerHaptic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {p0, v0}, Lcom/wukong/manager/WukongPowerKeyBridge;->launch(Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_4d
    :goto_4d
    return v2
.end method

.method private static performVibration(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13

    .line 263
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

    .line 268
    :cond_16
    :try_start_16
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 269
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 270
    const-string v2, "linearmotor"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_ec

    .line 272
    const-string v2, "com.oplus.os.ILinearmotorVibratorService$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 273
    const-string v5, "asInterface"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v6

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 274
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 275
    const-string v2, "com.oplus.os.LinearmotorVibrator"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v5, v2

    move v7, v6

    :goto_5f
    const/4 v8, 0x2

    if-ge v7, v5, :cond_77

    aget-object v9, v2, v7

    .line 278
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-ne v10, v8, :cond_74

    .line 279
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

    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9c

    const-string v2, "strong"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    goto :goto_9c

    .line 287
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

    .line 290
    :cond_9d
    :goto_9d
    const-string v2, "com.oplus.os.WaveformEffect$Builder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 291
    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 292
    const-string v7, "setEffectType"

    new-array v9, v3, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 293
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v7, "build"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 295
    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 296
    const-string v4, "com.oplus.os.WaveformEffect"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 297
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "vibrate"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v5, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 298
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_eb
    .catchall {:try_start_16 .. :try_end_eb} :catchall_ec

    return-void

    .line 306
    :catchall_ec
    :cond_ec
    :try_start_ec
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_110

    .line 307
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_110

    .line 308
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

    .line 309
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

    .line 746
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 748
    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_14

    return-object v0

    .line 751
    :cond_14
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.ASSIST"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static resolveCalculatorIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    .line 727
    const-string v0, "com.android.calculator2"

    const-string v1, "com.google.android.calculator"

    const-string v2, "com.coloros.calculator"

    const-string v3, "com.oplus.calculator"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_22

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_22

    .line 735
    aget-object v2, v0, v1

    .line 736
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1f

    return-object v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 740
    :cond_22
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    const-string v0, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private static resolveCameraIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 5

    .line 626
    invoke-static {p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->isKeyguardShowing(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p0, :cond_b

    .line 627
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p1, :cond_1e

    .line 631
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1e

    .line 632
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1e

    return-object p1

    .line 638
    :cond_1e
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oplus.camera.Camera"

    const-string v2, "com.oplus.camera"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 640
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_3f

    .line 641
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3f

    return-object p1

    :cond_3f
    if-eqz p0, :cond_48

    .line 647
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_48

    return-object p0

    .line 652
    :cond_48
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static resolveContext(Ljava/lang/Object;)Landroid/content/Context;
    .registers 7

    .line 775
    sget-object v0, Lcom/wukong/manager/WukongPowerKeyBridge;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 776
    sget-object p0, Lcom/wukong/manager/WukongPowerKeyBridge;->sContext:Landroid/content/Context;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const/4 v2, 0x4

    if-ge v1, v2, :cond_38

    if-eqz p0, :cond_38

    .line 780
    const-string v2, "mContext"

    const-string v3, "context"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 781
    instance-of v3, v2, Landroid/content/Context;

    if-eqz v3, :cond_25

    .line 782
    check-cast v2, Landroid/content/Context;

    sput-object v2, Lcom/wukong/manager/WukongPowerKeyBridge;->sContext:Landroid/content/Context;

    .line 783
    sget-object p0, Lcom/wukong/manager/WukongPowerKeyBridge;->sContext:Landroid/content/Context;

    return-object p0

    .line 785
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

    .line 788
    :try_start_39
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 789
    const-string v2, "currentActivityThread"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 790
    invoke-virtual {v2, p0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 792
    const-string v3, "getSystemContext"

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 793
    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_60

    .line 795
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

    .line 805
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_2b

    .line 806
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2b

    .line 807
    array-length v2, p1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_26

    aget-object v4, p1, v3

    .line 809
    :try_start_14
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 810
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 811
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

    .line 815
    :cond_26
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_8

    :cond_2b
    return-object v0
.end method

.method private static resolveRecorderIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    .line 710
    const-string v0, "com.android.soundrecorder"

    const-string v1, "com.google.android.apps.recorder"

    const-string v2, "com.coloros.soundrecorder"

    const-string v3, "com.oplus.soundrecorder"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_22

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_22

    .line 718
    aget-object v2, v0, v1

    .line 719
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1f

    return-object v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 723
    :cond_22
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static resolveSetting(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 225
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 228
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 232
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_38

    .line 234
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

    .line 242
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveSetting(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    return-object p0

    :cond_d
    return-object p2
.end method

.method private static shouldThrottle(Ljava/lang/String;)Z
    .registers 9

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 215
    sget-object v2, Lcom/wukong/manager/WukongPowerKeyBridge;->sLastTriggerTimes:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_41

    .line 216
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-gez v4, :cond_41

    .line 217
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

    .line 220
    :cond_41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method private static takeScreenshot(Landroid/content/Context;)V
    .registers 14

    .line 573
    const-string v0, "WukongPowerKeyBridge"

    const-string v1, "takeScreenshot"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_7
    const-string v5, "android.os.ServiceManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 574
    const-string v6, "getService"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 575
    const-string v6, "color_screenshot"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    if-eqz v5, :cond_63

    .line 577
    const-string v6, "com.oplus.screenshot.IOplusScreenshotManager$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 578
    const-string v7, "asInterface"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 579
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_63

    .line 581
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v7, v3

    invoke-virtual {v6, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 582
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v5, "Screenshot taken via IOplusScreenshotManager"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_63

    return-void

    .line 590
    :catchall_63
    :cond_63
    :try_start_63
    const-string v5, "com.android.internal.util.ScreenshotHelper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 591
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 592
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 593
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_8e
    if-ge v8, v7, :cond_c4

    aget-object v9, v6, v8

    .line 594
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c1

    .line 595
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 596
    array-length v11, v10

    const/4 v12, 0x3

    if-ne v11, v12, :cond_c1

    aget-object v11, v10, v3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_c1

    aget-object v10, v10, v4

    const-class v11, Landroid/os/Handler;

    if-ne v10, v11, :cond_c1

    .line 597
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v5, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
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

    .line 756
    const-string v0, "WukongPowerKeyBridge"

    :try_start_2
    const-string v1, "camera"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    if-nez p0, :cond_d

    goto :goto_50

    .line 758
    :cond_d
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 759
    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_50

    aget-object v4, v1, v3

    .line 760
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 761
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 762
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 763
    sget-boolean v1, Lcom/wukong/manager/WukongPowerKeyBridge;->sTorchState:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lcom/wukong/manager/WukongPowerKeyBridge;->sTorchState:Z

    .line 764
    sget-boolean v1, Lcom/wukong/manager/WukongPowerKeyBridge;->sTorchState:Z

    invoke-virtual {p0, v4, v1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 765
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

    .line 770
    const-string v1, "Error toggling torch"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static triggerHaptic(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 250
    invoke-static {p0}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 254
    :cond_7
    :try_start_7
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongPowerKeyBridge;->resolveSetting(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    if-nez p1, :cond_14

    move-object p2, p0

    .line 259
    :catchall_14
    :cond_14
    invoke-static {v0, p2}, Lcom/wukong/manager/WukongPowerKeyBridge;->performVibration(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
