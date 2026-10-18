.class public final Lcom/wukong/manager/WukongInstrumentationHook;
.super Ljava/lang/Object;
.source "WukongInstrumentationHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wukong/manager/WukongInstrumentationHook$PropField;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.wukong.manager.p1"

.field private static final CONFIG_LOCK:Ljava/lang/Object;

.field private static final DEFAULT_PIF_PROPS:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_CONFIG_VERSION:Ljava/lang/String; = "configVersion"

.field private static final EXTRA_GAMES_ENABLED:Ljava/lang/String; = "gamesEnabled"

.field private static final EXTRA_GAMES_PROPS_BY_PACKAGE:Ljava/lang/String; = "gamesPropsByPackage"

.field private static final EXTRA_MESSENGER_ENABLED:Ljava/lang/String; = "messengerEnabled"

.field private static final EXTRA_PHOTOS_ENABLED:Ljava/lang/String; = "photosEnabled"

.field private static final EXTRA_PIF_ENABLED:Ljava/lang/String; = "pifEnabled"

.field private static final EXTRA_PIF_GMS_ENABLED:Ljava/lang/String; = "pifGmsEnabled"

.field private static final EXTRA_PIF_PROPS:Ljava/lang/String; = "pifProps"

.field private static final EXTRA_PIF_VENDING_ENABLED:Ljava/lang/String; = "pifVendingEnabled"

.field private static final MESSENGER_PROPS:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final METHOD_GET_SPOOF_SNAPSHOT:Ljava/lang/String; = "get_spoof_snapshot"

.field private static final PACKAGE_GMS:Ljava/lang/String; = "com.google.android.gms"

.field private static final PACKAGE_MESSENGER:Ljava/lang/String; = "com.facebook.orca"

.field private static final PACKAGE_PHOTOS:Ljava/lang/String; = "com.google.android.apps.photos"

.field private static final PACKAGE_PLAYSTORE:Ljava/lang/String; = "com.android.vending"

.field private static final PHOTOS_PROPS:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROCESS_GMS_UNSTABLE:Ljava/lang/String; = "com.google.android.gms.unstable"

.field private static final SPOOF_PROP_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WukongInstrumentation"

.field private static sCachedConfigVersion:J

.field private static sGamesEnabled:Z

.field private static final sGamesPropsByPackage:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sHasLoadedConfig:Z

.field private static sMessengerEnabled:Z

.field private static sPhotosEnabled:Z

.field private static sPifEnabled:Z

.field private static sPifGmsEnabled:Z

.field private static final sPifProps:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPifVendingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 33
    const-string v13, "TAGS"

    const-string v14, "SECURITY_PATCH"

    const-string v0, "BRAND"

    const-string v1, "MANUFACTURER"

    const-string v2, "DEVICE"

    const-string v3, "PRODUCT"

    const-string v4, "MODEL"

    const-string v5, "BOARD"

    const-string v6, "VERSION.RELEASE"

    const-string v7, "VERSION.SDK_INT"

    const-string v8, "FINGERPRINT"

    const-string v9, "ID"

    const-string v10, "VERSION.INCREMENTAL"

    const-string v11, "TYPE"

    const-string v12, "BUILD_TYPE"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->SPOOF_PROP_KEYS:[Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->CONFIG_LOCK:Ljava/lang/Object;

    .line 51
    const-string v19, "SECURITY_PATCH"

    const-string v20, "2024-09-05"

    const-string v1, "BRAND"

    const-string v2, "google"

    const-string v3, "MANUFACTURER"

    const-string v4, "Google"

    const-string v5, "DEVICE"

    const-string v6, "komodo"

    const-string v7, "PRODUCT"

    const-string v8, "komodo"

    const-string v9, "MODEL"

    const-string v10, "Pixel 9 Pro XL"

    const-string v11, "FINGERPRINT"

    const-string v12, "google/komodo/komodo:14/AD1A.240905.004/12196292:user/release-keys"

    const-string v13, "ID"

    const-string v14, "AD1A.240905.004"

    const-string v15, "TAGS"

    const-string v16, "release-keys"

    const-string v17, "TYPE"

    const-string v18, "user"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wukong/manager/WukongInstrumentationHook;->createProps([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->DEFAULT_PIF_PROPS:Ljava/util/LinkedHashMap;

    .line 63
    const-string v11, "FINGERPRINT"

    const-string v12, "samsung/e3q/e3q:14/UP1A.231005.007/S928BXXS3AXI7:user/release-keys"

    const-string v1, "BRAND"

    const-string v2, "samsung"

    const-string v3, "MANUFACTURER"

    const-string v4, "samsung"

    const-string v5, "DEVICE"

    const-string v6, "e3q"

    const-string v7, "PRODUCT"

    const-string v8, "e3q"

    const-string v9, "MODEL"

    const-string v10, "SM-S928B"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wukong/manager/WukongInstrumentationHook;->createProps([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->MESSENGER_PROPS:Ljava/util/LinkedHashMap;

    .line 71
    const-string v11, "FINGERPRINT"

    const-string v12, "google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys"

    const-string v1, "BRAND"

    const-string v2, "google"

    const-string v3, "MANUFACTURER"

    const-string v4, "Google"

    const-string v5, "DEVICE"

    const-string v6, "marlin"

    const-string v7, "PRODUCT"

    const-string v8, "marlin"

    const-string v9, "MODEL"

    const-string v10, "Pixel XL"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wukong/manager/WukongInstrumentationHook;->createProps([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->PHOTOS_PROPS:Ljava/util/LinkedHashMap;

    const-wide/high16 v0, -0x8000000000000000L

    .line 80
    sput-wide v0, Lcom/wukong/manager/WukongInstrumentationHook;->sCachedConfigVersion:J

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->sPifProps:Ljava/util/LinkedHashMap;

    .line 88
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->sGamesPropsByPackage:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyProps(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2d

    .line 328
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2d

    .line 331
    :cond_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/wukong/manager/WukongInstrumentationHook;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_2d
    :goto_2d
    return-void
.end method

.method private static varargs createProps([Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_6
    add-int/lit8 v2, v1, 0x1

    .line 321
    array-length v3, p0

    if-ge v2, v3, :cond_15

    .line 322
    aget-object v3, p0, v1

    aget-object v2, p0, v2

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_15
    return-object v0
.end method

.method private static ensureConfigLoaded(Landroid/content/Context;)V
    .registers 6

    .line 153
    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->shouldTrySnapshot(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 154
    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->fetchSnapshot(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 156
    const-string v0, "configVersion"

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 157
    sget-object v2, Lcom/wukong/manager/WukongInstrumentationHook;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_17
    sget-boolean v3, Lcom/wukong/manager/WukongInstrumentationHook;->sHasLoadedConfig:Z

    if-eqz v3, :cond_21

    sget-wide v3, Lcom/wukong/manager/WukongInstrumentationHook;->sCachedConfigVersion:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_24

    .line 159
    :cond_21
    invoke-static {p0, v0, v1}, Lcom/wukong/manager/WukongInstrumentationHook;->updateCacheFromBundleLocked(Landroid/os/Bundle;J)V

    .line 161
    :cond_24
    monitor-exit v2

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_26

    throw p0

    .line 165
    :cond_29
    sget-object p0, Lcom/wukong/manager/WukongInstrumentationHook;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 166
    :try_start_2c
    sget-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sHasLoadedConfig:Z

    if-nez v0, :cond_33

    .line 167
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->loadFallbackConfigLocked()V

    .line 169
    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    throw v0
.end method

.method private static fetchSnapshot(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    .line 186
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.wukong.manager.p1"

    .line 187
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "get_spoof_snapshot"

    .line 186
    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_11} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_11} :catch_1a
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception p0

    .line 197
    const-string v1, "WukongInstrumentation"

    const-string v2, "Unable to read spoof snapshot from manager"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1a
    return-object v0
.end method

.method private static getGameProps(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    sget-object v1, Lcom/wukong/manager/WukongInstrumentationHook;->sGamesPropsByPackage:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashMap;

    if-nez p0, :cond_13

    .line 301
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_19

    :cond_13
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object p0, v1

    :goto_19
    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 302
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private static getPifProps()Ljava/util/LinkedHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    new-instance v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/wukong/manager/WukongInstrumentationHook;->sPifProps:Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    .line 295
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private static isDirectTargetPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 415
    const-string v0, "com.android.vending"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 416
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongInstrumentationHook;->isGmsUnstableProcess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "com.facebook.orca"

    .line 417
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "com.google.android.apps.photos"

    .line 418
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method private static isGamesEnabled()Z
    .registers 2

    .line 287
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    sget-boolean v1, Lcom/wukong/manager/WukongInstrumentationHook;->sGamesEnabled:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 289
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static isGmsUnstableProcess(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 422
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "com.google.android.gms.unstable"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static isMessengerEnabled()Z
    .registers 2

    .line 269
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    sget-boolean v1, Lcom/wukong/manager/WukongInstrumentationHook;->sMessengerEnabled:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 271
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static isPhotosEnabled()Z
    .registers 2

    .line 275
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_3
    sget-boolean v1, Lcom/wukong/manager/WukongInstrumentationHook;->sPhotosEnabled:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 277
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static isPhotosEnabledForCurrentProcess()Z
    .registers 1

    .line 283
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->isPhotosEnabled()Z

    move-result v0

    return v0
.end method

.method private static isPifGmsEnabled()Z
    .registers 2

    .line 257
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    sget-boolean v1, Lcom/wukong/manager/WukongInstrumentationHook;->sPifEnabled:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/wukong/manager/WukongInstrumentationHook;->sPifGmsEnabled:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    .line 259
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static isPifVendingEnabled()Z
    .registers 2

    .line 263
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->CONFIG_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_3
    sget-boolean v1, Lcom/wukong/manager/WukongInstrumentationHook;->sPifEnabled:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/wukong/manager/WukongInstrumentationHook;->sPifVendingEnabled:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    .line 265
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static loadFallbackConfigLocked()V
    .registers 4

    const/4 v0, 0x0

    .line 243
    sput-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sPifEnabled:Z

    const/4 v1, 0x1

    .line 244
    sput-boolean v1, Lcom/wukong/manager/WukongInstrumentationHook;->sPifGmsEnabled:Z

    .line 245
    sput-boolean v1, Lcom/wukong/manager/WukongInstrumentationHook;->sPifVendingEnabled:Z

    .line 246
    sput-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sMessengerEnabled:Z

    .line 247
    sput-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sPhotosEnabled:Z

    .line 248
    sput-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sGamesEnabled:Z

    .line 249
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->sPifProps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 250
    sget-object v2, Lcom/wukong/manager/WukongInstrumentationHook;->DEFAULT_PIF_PROPS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 251
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->sGamesPropsByPackage:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    .line 252
    sput-wide v2, Lcom/wukong/manager/WukongInstrumentationHook;->sCachedConfigVersion:J

    .line 253
    sput-boolean v1, Lcom/wukong/manager/WukongInstrumentationHook;->sHasLoadedConfig:Z

    return-void
.end method

.method public static onApplicationAttached(Landroid/content/Context;)V
    .registers 11

    .line 95
    const-string v0, "WukongInstrumentation"

    .line 0
    const-string v1, "Applied game spoof for "

    const-string v2, "Applied Photos spoof for "

    const-string v3, "Applied Messenger spoof for "

    const-string v4, "Applied PIF GMS unstable spoof for "

    const-string v5, "Applied PIF Play Store spoof for "

    if-eqz p0, :cond_10c

    .line 95
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v6

    if-eqz v6, :cond_16

    goto/16 :goto_10c

    .line 98
    :cond_16
    invoke-static {p0}, Lcom/wukong/manager/WukongFrameworkBridge;->initializeForProcess(Landroid/content/Context;)V

    .line 99
    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->safePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_25

    goto/16 :goto_10c

    .line 103
    :cond_25
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->safeProcessName()Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-static {v6, v7}, Lcom/wukong/manager/WukongInstrumentationHook;->isDirectTargetPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 105
    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->shouldAttemptGameLookup(Landroid/content/Context;)Z

    move-result v9

    if-nez v8, :cond_37

    if-nez v9, :cond_37

    goto/16 :goto_10c

    .line 110
    :cond_37
    :try_start_37
    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->ensureConfigLoaded(Landroid/content/Context;)V

    .line 111
    const-string p0, "com.android.vending"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 112
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->isPifVendingEnabled()Z

    move-result p0

    if-eqz p0, :cond_10c

    .line 113
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->getPifProps()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->applyProps(Ljava/util/Map;)V

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 118
    :cond_5f
    invoke-static {v6, v7}, Lcom/wukong/manager/WukongInstrumentationHook;->isGmsUnstableProcess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_82

    .line 119
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->isPifGmsEnabled()Z

    move-result p0

    if-eqz p0, :cond_10c

    .line 120
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->getPifProps()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->applyProps(Ljava/util/Map;)V

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_82
    const-string p0, "com.facebook.orca"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a5

    .line 126
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->isMessengerEnabled()Z

    move-result p0

    if-eqz p0, :cond_10c

    .line 127
    sget-object p0, Lcom/wukong/manager/WukongInstrumentationHook;->MESSENGER_PROPS:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->applyProps(Ljava/util/Map;)V

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_a5
    const-string p0, "com.google.android.apps.photos"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c8

    .line 133
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->isPhotosEnabled()Z

    move-result p0

    if-eqz p0, :cond_10c

    .line 134
    sget-object p0, Lcom/wukong/manager/WukongInstrumentationHook;->PHOTOS_PROPS:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->applyProps(Ljava/util/Map;)V

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c8
    if-eqz v9, :cond_10c

    .line 139
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->isGamesEnabled()Z

    move-result p0

    if-nez p0, :cond_d1

    goto :goto_10c

    .line 142
    :cond_d1
    invoke-static {v6}, Lcom/wukong/manager/WukongInstrumentationHook;->getGameProps(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10c

    .line 144
    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->applyProps(Ljava/util/Map;)V

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_37 .. :try_end_f9} :catchall_fa

    return-void

    :catchall_fa
    move-exception p0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to apply spoof props for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10c
    :goto_10c
    return-void
.end method

.method private static propsFromBundle(Landroid/os/Bundle;)Ljava/util/LinkedHashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p0, :cond_8

    goto :goto_20

    .line 310
    :cond_8
    sget-object v1, Lcom/wukong/manager/WukongInstrumentationHook;->SPOOF_PROP_KEYS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 311
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wukong/manager/WukongInstrumentationHook;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 313
    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_20
    :goto_20
    return-object v0
.end method

.method private static readBooleanProperty(Ljava/lang/String;Z)Z
    .registers 7

    .line 406
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

    .line 407
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 408
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

.method private static resolvePropField(Ljava/lang/String;)Lcom/wukong/manager/WukongInstrumentationHook$PropField;
    .registers 3

    .line 354
    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 358
    :cond_8
    const-string v1, "BUILD_TYPE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    .line 361
    :cond_11
    const-string v1, "VERSION."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v1, 0x8

    .line 362
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_26

    return-object v0

    .line 363
    :cond_26
    new-instance v0, Lcom/wukong/manager/WukongInstrumentationHook$PropField;

    const-class v1, Landroid/os/Build$VERSION;

    invoke-direct {v0, v1, p0}, Lcom/wukong/manager/WukongInstrumentationHook$PropField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0

    .line 365
    :cond_2e
    const-string v0, "SECURITY_PATCH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "SDK_INT"

    .line 366
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "RELEASE"

    .line 367
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "INCREMENTAL"

    .line 368
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "CODENAME"

    .line 369
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_5f

    .line 372
    :cond_57
    new-instance v0, Lcom/wukong/manager/WukongInstrumentationHook$PropField;

    const-class v1, Landroid/os/Build;

    invoke-direct {v0, v1, p0}, Lcom/wukong/manager/WukongInstrumentationHook$PropField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0

    .line 370
    :cond_5f
    :goto_5f
    new-instance v0, Lcom/wukong/manager/WukongInstrumentationHook$PropField;

    const-class v1, Landroid/os/Build$VERSION;

    invoke-direct {v0, v1, p0}, Lcom/wukong/manager/WukongInstrumentationHook$PropField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method private static safePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 440
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static safeProcessName()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 448
    :try_start_2
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentProcessName"

    new-array v4, v0, [Ljava/lang/Class;

    .line 449
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 450
    invoke-virtual {v2, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 451
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 452
    check-cast v2, Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1b

    return-object v2

    .line 458
    :catchall_1b
    :cond_1b
    :try_start_1b
    const-string v2, "android.app.Application"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getProcessName"

    new-array v0, v0, [Ljava/lang/Class;

    .line 459
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_34

    check-cast v0, Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_34

    move-object v1, v0

    :catchall_34
    :cond_34
    return-object v1
.end method

.method private static setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 377
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    return-void

    .line 379
    :cond_19
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 381
    :cond_2d
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 382
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    return-void

    .line 383
    :cond_41
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 384
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 385
    :cond_55
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 386
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    return-void

    .line 387
    :cond_69
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 390
    :cond_7d
    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 337
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    if-nez p1, :cond_9

    goto :goto_34

    .line 340
    :cond_9
    invoke-static {p0}, Lcom/wukong/manager/WukongInstrumentationHook;->resolvePropField(Ljava/lang/String;)Lcom/wukong/manager/WukongInstrumentationHook$PropField;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_34

    .line 345
    :cond_10
    :try_start_10
    iget-object v1, v0, Lcom/wukong/manager/WukongInstrumentationHook$PropField;->owner:Ljava/lang/Class;

    iget-object v0, v0, Lcom/wukong/manager/WukongInstrumentationHook$PropField;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 347
    invoke-static {v0, p1}, Lcom/wukong/manager/WukongInstrumentationHook;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception p1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to set prop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WukongInstrumentation"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_34
    return-void
.end method

.method private static shouldAttemptGameLookup(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    .line 427
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 428
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x1

    return p0

    :catchall_10
    return v0
.end method

.method private static shouldTrySnapshot(Landroid/content/Context;)Z
    .registers 3

    .line 173
    const-string v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wukong/manager/WukongInstrumentationHook;->readBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "dev.bootcomplete"

    .line 174
    invoke-static {v0, v1}, Lcom/wukong/manager/WukongInstrumentationHook;->readBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 178
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.wukong.manager.p1"

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :catchall_20
    :cond_20
    return v1
.end method

.method private static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 471
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    return-object p0
.end method

.method private static updateCacheFromBundleLocked(Landroid/os/Bundle;J)V
    .registers 11

    .line 203
    const-string v0, "pifEnabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sPifEnabled:Z

    .line 204
    const-string v0, "pifGmsEnabled"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sPifGmsEnabled:Z

    .line 205
    const-string v0, "pifVendingEnabled"

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sPifVendingEnabled:Z

    .line 206
    const-string v0, "messengerEnabled"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sMessengerEnabled:Z

    .line 207
    const-string v0, "photosEnabled"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sPhotosEnabled:Z

    .line 208
    const-string v0, "gamesEnabled"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/wukong/manager/WukongInstrumentationHook;->sGamesEnabled:Z

    .line 210
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->sPifProps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 211
    const-string v0, "pifProps"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 213
    sget-object v3, Lcom/wukong/manager/WukongInstrumentationHook;->SPOOF_PROP_KEYS:[Ljava/lang/String;

    array-length v4, v3

    :goto_42
    if-ge v1, v4, :cond_58

    aget-object v5, v3, v1

    .line 214
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wukong/manager/WukongInstrumentationHook;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_55

    .line 216
    sget-object v7, Lcom/wukong/manager/WukongInstrumentationHook;->sPifProps:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 220
    :cond_58
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->sPifProps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 221
    sget-object v1, Lcom/wukong/manager/WukongInstrumentationHook;->DEFAULT_PIF_PROPS:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 224
    :cond_65
    sget-object v0, Lcom/wukong/manager/WukongInstrumentationHook;->sGamesPropsByPackage:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 225
    const-string v0, "gamesPropsByPackage"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_a1

    .line 227
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7a
    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    invoke-static {v1}, Lcom/wukong/manager/WukongInstrumentationHook;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 230
    invoke-static {v1}, Lcom/wukong/manager/WukongInstrumentationHook;->propsFromBundle(Landroid/os/Bundle;)Ljava/util/LinkedHashMap;

    move-result-object v1

    if-eqz v3, :cond_7a

    .line 231
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9b

    goto :goto_7a

    .line 234
    :cond_9b
    sget-object v4, Lcom/wukong/manager/WukongInstrumentationHook;->sGamesPropsByPackage:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 238
    :cond_a1
    sput-wide p1, Lcom/wukong/manager/WukongInstrumentationHook;->sCachedConfigVersion:J

    .line 239
    sput-boolean v2, Lcom/wukong/manager/WukongInstrumentationHook;->sHasLoadedConfig:Z

    return-void
.end method
