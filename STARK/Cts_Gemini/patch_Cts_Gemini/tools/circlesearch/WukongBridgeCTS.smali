.class public final Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;
.super Ljava/lang/Object;
.source "WukongBridgeCTS.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusCTS"

.field private static sLastContextualSearchTime:J

.field private static sLastLongPressTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;->sLastLongPressTime:J

    .line 224
    sput-wide v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;->sLastContextualSearchTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/Object;)V
    .registers 8

    .line 22
    const-string v0, "OplusCTS"

    :try_start_2
    const-string v1, "[WukongBridgeCTS] init called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_bb

    .line 24
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_9
    const-string v3, "com.oplusos.systemui.common.feature.CustomizeFeatureOption"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 25
    const-string v4, "sIsSupportCircleToSearch"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 27
    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_3a

    .line 30
    :try_start_1b
    const-string v4, "sIsSupportCircleToSearchNavbarHidden"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 32
    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_28

    goto :goto_29

    .line 33
    :catchall_28
    move-exception v4

    :goto_29
    nop

    .line 36
    :try_start_2a
    const-string v4, "sIsSupportCircleToSearchGuide"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_37

    goto :goto_38

    .line 39
    :catchall_37
    move-exception v3

    :goto_38
    nop

    .line 42
    goto :goto_40

    .line 40
    :catchall_3a
    move-exception v3

    .line 41
    :try_start_3b
    const-string v4, "[WukongBridgeCTS] Failed to set CustomizeFeatureOption flags"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_40
    nop

    .line 45
    instance-of v3, p0, Landroid/content/Context;

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    .line 46
    check-cast p0, Landroid/content/Context;
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_bb

    goto :goto_68

    .line 47
    :cond_49
    if-eqz p0, :cond_67

    .line 49
    :try_start_4b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getContext"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 50
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 51
    instance-of v3, p0, Landroid/content/Context;

    if-eqz v3, :cond_64

    .line 52
    check-cast p0, Landroid/content/Context;
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_66

    goto :goto_65

    .line 51
    :cond_64
    move-object p0, v1

    .line 54
    :goto_65
    goto :goto_68

    :catchall_66
    move-exception p0

    .line 56
    :cond_67
    move-object p0, v1

    :goto_68
    if-nez p0, :cond_71

    .line 57
    :try_start_6a
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_bb

    .line 58
    if-eqz v3, :cond_71

    .line 59
    move-object p0, v3

    .line 64
    :cond_71
    :try_start_71
    const-string v3, "com.oplus.systemui.navigationbar.gesture.otherbusiness.circlesearch.OplusCircleToSearchManagerExImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 65
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_b4

    .line 67
    :try_start_89
    const-string v5, "sInstance"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 68
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    invoke-virtual {v5, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_95
    .catchall {:try_start_89 .. :try_end_95} :catchall_96

    goto :goto_97

    .line 70
    :catchall_96
    move-exception v5

    :goto_97
    nop

    .line 72
    :try_start_98
    const-string v5, "registerObservers"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v2, v4

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 73
    move-object v3, v1

    check-cast v3, Ljava/lang/Runnable;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string p0, "[WukongBridgeCTS] CTS initialized successfully!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_98 .. :try_end_b3} :catchall_b4

    .line 77
    goto :goto_ba

    .line 75
    :catchall_b4
    move-exception p0

    .line 76
    :try_start_b5
    const-string v1, "[WukongBridgeCTS] Failed to instantiate CTS Manager"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_bb

    .line 80
    :goto_ba
    goto :goto_c1

    .line 78
    :catchall_bb
    move-exception p0

    .line 79
    const-string v1, "[WukongBridgeCTS] Error in init"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_c1
    return-void
.end method

.method public static isAssistantAvailable()Z
    .registers 2

    .line 221
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;->isAssistantAvailable(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static isAssistantAvailable(Landroid/content/Context;II)Z
    .registers 7

    .line 188
    const/4 p1, 0x0

    const/4 p2, 0x0

    :try_start_2
    const-string v0, "com.oplus.systemui.navigationbar.utils.NavBarUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 189
    const-string v1, "isVirtualKeyMode"

    new-array v2, p2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 190
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-array v2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 191
    const-string v0, "com.oplus.systemui.navigationbar.gesture.otherbusiness.circlesearch.OplusCircleToSearchUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 192
    const-string v1, "isCircleToSearchVirtualCornerAssistEnable"

    new-array v2, p2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-array v2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_39

    return p0

    .line 195
    :catchall_39
    move-exception v0

    :cond_3a
    nop

    .line 198
    const/4 v0, 0x1

    :try_start_3c
    const-string v1, "com.oplus.systemui.navigationbar.gesture.otherbusiness.circlesearch.observer.CircleToSearchGestureAssistObserver"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 199
    const-string v2, "Companion"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    new-array v3, p2, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 202
    new-array v2, p2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 203
    if-eqz p1, :cond_7d

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getState"

    new-array v3, p2, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 205
    new-array v2, p2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_78
    .catchall {:try_start_3c .. :try_end_78} :catchall_7c

    .line 206
    if-ne p0, v0, :cond_7b

    move p2, v0

    :cond_7b
    return p2

    .line 208
    :catchall_7c
    move-exception p1

    :cond_7d
    nop

    .line 211
    if-eqz p0, :cond_81

    goto :goto_85

    :cond_81
    :try_start_81
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p0

    .line 212
    :goto_85
    if-eqz p0, :cond_96

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 214
    const-string p1, "circle_to_search_corner_assist_enable_navi"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_91
    .catchall {:try_start_81 .. :try_end_91} :catchall_95

    if-ne p0, v0, :cond_94

    move p2, v0

    :cond_94
    return p2

    .line 216
    :catchall_95
    move-exception p0

    :cond_96
    nop

    .line 217
    return v0
.end method

.method public static onLongPressed(Ljava/lang/Object;)V
    .registers 11

    .line 84
    const-string v0, "mLauncherProxy"

    if-nez p0, :cond_5

    return-void

    .line 85
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 86
    sget-wide v3, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;->sLastLongPressTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x320

    cmp-long v3, v3, v5

    const-string v4, "OplusCTS"

    if-gez v3, :cond_1b

    .line 87
    const-string p0, "[WukongBridgeCTS] onLongPressed debounced (duplicate call)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 90
    :cond_1b
    sput-wide v1, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;->sLastLongPressTime:J

    .line 94
    const/4 v1, 0x0

    :try_start_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isAllowedToStart"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 95
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 96
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 97
    const-string v0, "[WukongBridgeCTS] onLongPressed: isAllowedToStart is false, ignoring"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_100

    .line 98
    return-void

    .line 102
    :cond_41
    nop

    .line 104
    const/4 v2, 0x1

    :try_start_43
    const-string v3, "com.oplus.systemui.navigationbar.utils.NavBarUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 105
    const-string v6, "isGestureSideMode"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 106
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_5e

    .line 107
    goto :goto_60

    :catchall_5e
    move-exception v3

    move v3, v2

    .line 109
    :goto_60
    if-nez v3, :cond_74

    .line 110
    :try_start_62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "startCircleToSearchWithHomeKey"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 111
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_62 .. :try_end_73} :catchall_100

    .line 112
    return-void

    .line 116
    :cond_74
    nop

    .line 118
    :try_start_75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "isSupportTriggerWhenRecentAnimationFinish"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 119
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 120
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_8f
    .catchall {:try_start_75 .. :try_end_8f} :catchall_90

    .line 121
    goto :goto_92

    :catchall_90
    move-exception v3

    move v3, v1

    .line 123
    :goto_92
    if-eqz v3, :cond_ff

    .line 125
    nop

    .line 127
    :try_start_95
    const-string v3, "com.android.systemui.LauncherProxyService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_9c

    .line 132
    goto :goto_a6

    .line 128
    :catchall_9c
    move-exception v3

    .line 130
    :try_start_9d
    const-string v3, "com.android.systemui.recents.LauncherProxyService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_a4

    .line 131
    goto :goto_a6

    :catchall_a4
    move-exception v3

    move-object v3, v5

    .line 134
    :goto_a6
    if-eqz v3, :cond_ff

    .line 135
    :try_start_a8
    const-string v6, "com.android.systemui.Dependency"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 136
    const-string v7, "get"

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 137
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_c2
    .catchall {:try_start_a8 .. :try_end_c2} :catchall_100

    .line 138
    if-eqz v6, :cond_ff

    .line 139
    nop

    .line 141
    :try_start_c5
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_ca

    .line 146
    goto :goto_d2

    .line 142
    :catchall_ca
    move-exception v7

    .line 144
    :try_start_cb
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_d0

    goto :goto_d1

    .line 145
    :catchall_d0
    move-exception v0

    :goto_d1
    nop

    .line 147
    :goto_d2
    if-eqz v5, :cond_ff

    .line 148
    :try_start_d4
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_ff

    .line 151
    new-instance v3, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS$1;

    invoke-direct {v3, p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS$1;-><init>(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "startCircleToSearchOnRecentsAnimRealFinish"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v7, Landroid/os/IRemoteCallback;

    aput-object v7, v2, v1

    invoke-virtual {v5, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 164
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "[WukongBridgeCTS] Dispatched startCircleToSearchOnRecentsAnimRealFinish to Launcher successfully!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_d4 .. :try_end_fe} :catchall_100

    .line 166
    return-void

    .line 174
    :cond_ff
    goto :goto_106

    .line 172
    :catchall_100
    move-exception v0

    .line 173
    const-string v2, "[WukongBridgeCTS] Error during onLongPressed sync with Launcher"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :goto_106
    const-string v0, "[WukongBridgeCTS] Falling back to direct startCircleToSearchWithNavHandle"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_10b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "startCircleToSearchWithNavHandle"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 180
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11c
    .catchall {:try_start_10b .. :try_end_11c} :catchall_11d

    .line 183
    goto :goto_123

    .line 181
    :catchall_11d
    move-exception p0

    .line 182
    const-string v0, "[WukongBridgeCTS] Fallback failed"

    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :goto_123
    return-void
.end method

.method public static startContextualSearch(Ljava/lang/Object;I)Z
    .registers 9

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 228
    sget-wide v2, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;->sLastContextualSearchTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const-string v4, "OplusCTS"

    if-gez v2, :cond_17

    .line 229
    const-string p0, "[WukongBridgeCTS] startContextualSearch debounced (suppressed duplicate trigger within 1000ms)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return v3

    .line 232
    :cond_17
    sput-wide v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;->sLastContextualSearchTime:J

    .line 234
    const/4 v0, 0x0

    if-eqz p0, :cond_55

    .line 235
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startContextualSearch"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WukongBridgeCTS] startContextualSearch SUCCESS, type="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_1c .. :try_end_4d} :catchall_4e

    .line 238
    return v3

    .line 240
    :catchall_4e
    move-exception p0

    .line 241
    const-string p1, "[WukongBridgeCTS] Error invoking startContextualSearch"

    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    .line 242
    :cond_55
    nop

    .line 243
    :goto_56
    return v0
.end method
