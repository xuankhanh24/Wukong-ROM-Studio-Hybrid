.class public final Lcom/wukong/manager/WukongPackageManagerHook;
.super Ljava/lang/Object;
.source "WukongPackageManagerHook.java"


# static fields
.field private static final CURRENT_PACKAGE_METHOD:Ljava/lang/reflect/Method;

.field private static final PACKAGE_PHOTOS:Ljava/lang/String; = "com.google.android.apps.photos"

.field private static final PHOTOS_FEATURES_TO_DISABLE:[Ljava/lang/String;

.field private static final PHOTOS_FEATURES_TO_ENABLE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WukongPackageManager"


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 10
    const-string v0, "com.google.android.apps.photos.NEXUS_PRELOAD"

    const-string v1, "com.google.android.apps.photos.nexus_preload"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongPackageManagerHook;->PHOTOS_FEATURES_TO_ENABLE:[Ljava/lang/String;

    .line 14
    const-string v15, "com.google.android.feature.PIXEL_2025_MIDYEAR_EXPERIENCE"

    const-string v16, "com.google.android.feature.PIXEL_2025_EXPERIENCE"

    const-string v1, "com.google.android.apps.photos.PIXEL_2017_PRELOAD"

    const-string v2, "com.google.android.apps.photos.PIXEL_2018_PRELOAD"

    const-string v3, "com.google.android.apps.photos.PIXEL_2019_MIDYEAR_PRELOAD"

    const-string v4, "com.google.android.apps.photos.PIXEL_2019_PRELOAD"

    const-string v5, "com.google.android.feature.PIXEL_2020_MIDYEAR_EXPERIENCE"

    const-string v6, "com.google.android.feature.PIXEL_2020_EXPERIENCE"

    const-string v7, "com.google.android.feature.PIXEL_2021_MIDYEAR_EXPERIENCE"

    const-string v8, "com.google.android.feature.PIXEL_2021_EXPERIENCE"

    const-string v9, "com.google.android.feature.PIXEL_2022_MIDYEAR_EXPERIENCE"

    const-string v10, "com.google.android.feature.PIXEL_2022_EXPERIENCE"

    const-string v11, "com.google.android.feature.PIXEL_2023_MIDYEAR_EXPERIENCE"

    const-string v12, "com.google.android.feature.PIXEL_2023_EXPERIENCE"

    const-string v13, "com.google.android.feature.PIXEL_2024_MIDYEAR_EXPERIENCE"

    const-string v14, "com.google.android.feature.PIXEL_2024_EXPERIENCE"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongPackageManagerHook;->PHOTOS_FEATURES_TO_DISABLE:[Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/wukong/manager/WukongPackageManagerHook;->findCurrentPackageMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongPackageManagerHook;->CURRENT_PACKAGE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    if-nez p1, :cond_6

    goto :goto_17

    .line 92
    :cond_6
    array-length v1, p0

    move v2, v0

    :goto_8
    if-ge v2, v1, :cond_17

    aget-object v3, p0, v2

    .line 93
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    :goto_17
    return v0
.end method

.method private static currentPackageName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 79
    :try_start_1
    sget-object v1, Lcom/wukong/manager/WukongPackageManagerHook;->CURRENT_PACKAGE_METHOD:Ljava/lang/reflect/Method;

    if-nez v1, :cond_6

    return-object v0

    .line 82
    :cond_6
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    return-object v1

    :catchall_d
    return-object v0
.end method

.method private static findCurrentPackageMethod()Ljava/lang/reflect/Method;
    .registers 4

    const/4 v0, 0x0

    .line 71
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentPackageName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    return-object v0
.end method

.method private static findFeatureOverride(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 60
    sget-object v0, Lcom/wukong/manager/WukongPackageManagerHook;->PHOTOS_FEATURES_TO_ENABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/wukong/manager/WukongPackageManagerHook;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 63
    :cond_b
    sget-object v0, Lcom/wukong/manager/WukongPackageManagerHook;->PHOTOS_FEATURES_TO_DISABLE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/wukong/manager/WukongPackageManagerHook;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 64
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static maybeOverride(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 5

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    return-object v0

    .line 42
    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/wukong/manager/WukongPackageManagerHook;->findFeatureOverride(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_f

    return-object v0

    .line 47
    :cond_f
    invoke-static {}, Lcom/wukong/manager/WukongPackageManagerHook;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "com.google.android.apps.photos"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 49
    invoke-static {}, Lcom/wukong/manager/WukongInstrumentationHook;->isPhotosEnabledForCurrentProcess()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    if-nez p0, :cond_22

    goto :goto_23

    :cond_22
    return-object p1

    :cond_23
    :goto_23
    return-object v0

    :catchall_24
    move-exception p1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Feature hook failed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WukongPackageManager"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
