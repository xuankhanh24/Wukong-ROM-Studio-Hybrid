.class public final Lcom/wukong/manager/WukongFrameworkBridge;
.super Ljava/lang/Object;
.source "WukongFrameworkBridge.java"


# static fields
.field private static final BYPASS_NO:I = 0x1

.field private static final BYPASS_UNKNOWN:I = 0x0

.field private static final BYPASS_YES:I = 0x2

.field private static final CONTENT_PROVIDER_CALL:Ljava/lang/reflect/Method;

.field private static final CURRENT_APP:Ljava/lang/reflect/Method;

.field private static final CURRENT_PACKAGE:Ljava/lang/reflect/Method;

.field private static final CURRENT_THREAD:Ljava/lang/reflect/Method;

.field private static final EXTRA_ALGORITHM:Ljava/lang/String; = "algorithm"

.field private static final EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field private static final EXTRA_ATTESTATION_CHALLENGE:Ljava/lang/String; = "attestation_challenge"

.field private static final EXTRA_ATTEST_ALIAS:Ljava/lang/String; = "attest_alias"

.field private static final EXTRA_ATTEST_DOMAIN:Ljava/lang/String; = "attest_domain"

.field private static final EXTRA_ATTEST_NAMESPACE:Ljava/lang/String; = "attest_namespace"

.field private static final EXTRA_BRAND:Ljava/lang/String; = "brand"

.field private static final EXTRA_CERTIFICATE:Ljava/lang/String; = "certificate"

.field private static final EXTRA_CERTIFICATE_CHAIN:Ljava/lang/String; = "certificate_chain"

.field private static final EXTRA_CERTIFICATE_NOT_AFTER:Ljava/lang/String; = "certificate_not_after"

.field private static final EXTRA_CERTIFICATE_NOT_BEFORE:Ljava/lang/String; = "certificate_not_before"

.field private static final EXTRA_CERTIFICATE_SERIAL:Ljava/lang/String; = "certificate_serial"

.field private static final EXTRA_CERTIFICATE_SUBJECT:Ljava/lang/String; = "certificate_subject"

.field private static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field private static final EXTRA_DIGESTS:Ljava/lang/String; = "digests"

.field private static final EXTRA_DOMAIN:Ljava/lang/String; = "domain"

.field private static final EXTRA_EC_CURVE:Ljava/lang/String; = "ec_curve"

.field private static final EXTRA_ENTROPY:Ljava/lang/String; = "entropy"

.field private static final EXTRA_FLAGS:Ljava/lang/String; = "flags"

.field private static final EXTRA_IMEI:Ljava/lang/String; = "imei"

.field private static final EXTRA_INTERCEPTED:Ljava/lang/String; = "intercepted"

.field private static final EXTRA_KEY_SIZE:Ljava/lang/String; = "key_size"

.field private static final EXTRA_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field private static final EXTRA_MEID:Ljava/lang/String; = "meid"

.field private static final EXTRA_MODEL:Ljava/lang/String; = "model"

.field private static final EXTRA_NAMESPACE:Ljava/lang/String; = "namespace"

.field private static final EXTRA_PRODUCT:Ljava/lang/String; = "product"

.field private static final EXTRA_PURPOSES:Ljava/lang/String; = "purposes"

.field private static final EXTRA_RSA_PUBLIC_EXPONENT:Ljava/lang/String; = "rsa_public_exponent"

.field private static final EXTRA_SECOND_IMEI:Ljava/lang/String; = "second_imei"

.field private static final EXTRA_SECURITY_LEVEL:Ljava/lang/String; = "security_level"

.field private static final EXTRA_SERIAL:Ljava/lang/String; = "serial"

.field private static final GET_SERVICE:Ljava/lang/reflect/Method;

.field private static final KS2_SERVICE:Ljava/lang/String; = "android.system.keystore2.IKeystoreService/default"

.field private static final MANAGER_PACKAGE:Ljava/lang/String; = "com.wukong.manager"

.field private static final METHOD_DELETE_KEY:Ljava/lang/String; = "delete_key"

.field private static final METHOD_GENERATE_KEY:Ljava/lang/String; = "generate_key"

.field private static final METHOD_GET_RUNTIME_ROUTE:Ljava/lang/String; = "get_runtime_route"

.field private static final METHOD_POST_GET_KEY_ENTRY:Ljava/lang/String; = "post_get_key_entry"

.field private static final METHOD_PRE_GET_KEY_ENTRY:Ljava/lang/String; = "pre_get_key_entry"

.field private static final PACKAGE_ANDROID:Ljava/lang/String; = "android"

.field private static final PROCESS_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final PROVIDER_AUTHORITY:Ljava/lang/String; = "com.wukong.manager.p2"

.field private static final PROVIDER_DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

.field private static final PROVIDER_LOCK:Ljava/lang/Object;

.field private static final ROUTE_FAILURE_RETRY_MS:J = 0x1388L

.field private static final ROUTE_LOCK:Ljava/lang/Object;

.field private static final ROUTE_NON_TARGET:I = 0x1

.field private static final ROUTE_TARGET:I = 0x2

.field private static final ROUTE_UNKNOWN:I = 0x0

.field private static final ROUTE_WARMUP_STARTED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final SYSTEM_PROPERTY_GET_BOOLEAN:Ljava/lang/reflect/Method;

.field private static final TAG:Ljava/lang/String; = "WukongFrameworkBridge"

.field private static final WAIT_FOR_SERVICE:Ljava/lang/reflect/Method;

.field private static volatile sAcquireProviderMethod:Ljava/lang/reflect/Method;

.field private static volatile sAttachedContext:Landroid/content/Context;

.field private static volatile sAttributionSource:Landroid/content/AttributionSource;

.field private static volatile sBypassState:I

.field private static volatile sCachedProvider:Ljava/lang/Object;

.field private static volatile sCachedProviderThread:Ljava/lang/Object;

.field private static volatile sLastRouteFailureUptime:J

.field private static volatile sProviderContext:Landroid/content/Context;

.field private static volatile sReleaseProviderMethod:Ljava/lang/reflect/Method;

.field private static volatile sResolvedMode:Ljava/lang/String;

.field private static volatile sRouteConfigVersion:J

.field private static volatile sRouteState:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 72
    const-string v0, "currentApplication"

    const-string v1, "android.app.ActivityThread"

    invoke-static {v1, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->getStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->CURRENT_APP:Ljava/lang/reflect/Method;

    .line 73
    const-string v0, "currentActivityThread"

    invoke-static {v1, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->getStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->CURRENT_THREAD:Ljava/lang/reflect/Method;

    .line 74
    const-string v0, "currentPackageName"

    invoke-static {v1, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->getStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->CURRENT_PACKAGE:Ljava/lang/reflect/Method;

    .line 75
    const-string v0, "waitForService"

    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->getServiceMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->WAIT_FOR_SERVICE:Ljava/lang/reflect/Method;

    .line 76
    const-string v0, "getService"

    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->getServiceMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->GET_SERVICE:Ljava/lang/reflect/Method;

    const/4 v0, 0x2

    .line 77
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "android.os.SystemProperties"

    const-string v5, "getBoolean"

    invoke-static {v2, v5, v1}, Lcom/wukong/manager/WukongFrameworkBridge;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/wukong/manager/WukongFrameworkBridge;->SYSTEM_PROPERTY_GET_BOOLEAN:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    .line 79
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/AttributionSource;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v1, v0

    const-string v0, "android.content.IContentProvider"

    const-string v2, "call"

    invoke-static {v0, v2, v1}, Lcom/wukong/manager/WukongFrameworkBridge;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->CONTENT_PROVIDER_CALL:Ljava/lang/reflect/Method;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->PROVIDER_LOCK:Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/wukong/manager/WukongFrameworkBridge$1;

    invoke-direct {v0}, Lcom/wukong/manager/WukongFrameworkBridge$1;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->PROVIDER_DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->ROUTE_LOCK:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->ROUTE_WARMUP_STARTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    sput v3, Lcom/wukong/manager/WukongFrameworkBridge;->sRouteState:I

    .line 109
    sput v3, Lcom/wukong/manager/WukongFrameworkBridge;->sBypassState:I

    const-wide/16 v0, -0x1

    .line 110
    sput-wide v0, Lcom/wukong/manager/WukongFrameworkBridge;->sRouteConfigVersion:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 28
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->clearCachedProvider()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 28
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldRouteRuntimeBridge()Z

    move-result v0

    return v0
.end method

.method private static acquireProvider(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 619
    sget-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->sAcquireProviderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 621
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v1

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    const-string v3, "acquireProvider"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 622
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 623
    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->sAcquireProviderMethod:Ljava/lang/reflect/Method;

    .line 625
    :cond_2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "com.wukong.manager.p2"

    filled-new-array {p1, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static bridgeContext(Ljava/lang/Object;)Landroid/content/Context;
    .registers 2

    .line 546
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 548
    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->contextForCallingUid(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 550
    :cond_b
    invoke-static {p0}, Lcom/wukong/manager/WukongFrameworkBridge;->initialApplicationContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 552
    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->contextForCallingUid(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 554
    :cond_16
    const-string v0, "getSystemContext"

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->invokeContextMethod(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 556
    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->contextForCallingUid(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_25

    return-object v0

    .line 561
    :cond_25
    const-string v0, "getSystemUiContext"

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->invokeContextMethod(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/wukong/manager/WukongFrameworkBridge;->contextForCallingUid(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static buildAuthorizations(Landroid/os/Bundle;I)[Landroid/system/keystore2/Authorization;
    .registers 9

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    const-string v1, "purposes"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 363
    array-length v3, v1

    move v4, v2

    :goto_10
    if-ge v4, v3, :cond_25

    aget v5, v1, v4

    const v6, 0x20000001

    .line 364
    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->keyPurpose(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    invoke-static {v6, v5, p1}, Lcom/wukong/manager/WukongFrameworkBridge;->newAuthorization(ILandroid/hardware/security/keymint/KeyParameterValue;I)Landroid/system/keystore2/Authorization;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 367
    :cond_25
    const-string v1, "digests"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_44

    .line 369
    array-length v3, v1

    move v4, v2

    :goto_2f
    if-ge v4, v3, :cond_44

    aget v5, v1, v4

    const v6, 0x20000005

    .line 370
    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->digest(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v5

    invoke-static {v6, v5, p1}, Lcom/wukong/manager/WukongFrameworkBridge;->newAuthorization(ILandroid/hardware/security/keymint/KeyParameterValue;I)Landroid/system/keystore2/Authorization;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 373
    :cond_44
    const-string v1, "algorithm"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->algorithm(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    const v3, 0x10000002

    invoke-static {v3, v1, p1}, Lcom/wukong/manager/WukongFrameworkBridge;->newAuthorization(ILandroid/hardware/security/keymint/KeyParameterValue;I)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v1, "key_size"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    const v3, 0x30000003

    invoke-static {v3, v1, p1}, Lcom/wukong/manager/WukongFrameworkBridge;->newAuthorization(ILandroid/hardware/security/keymint/KeyParameterValue;I)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v1, "ec_curve"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->ecCurve(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    const v1, 0x1000000a

    invoke-static {v1, p0, p1}, Lcom/wukong/manager/WukongFrameworkBridge;->newAuthorization(ILandroid/hardware/security/keymint/KeyParameterValue;I)Landroid/system/keystore2/Authorization;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p0, 0x700001f7

    const/4 v1, 0x1

    .line 376
    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/wukong/manager/WukongFrameworkBridge;->newAuthorization(ILandroid/hardware/security/keymint/KeyParameterValue;I)Landroid/system/keystore2/Authorization;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-array p0, v2, [Landroid/system/keystore2/Authorization;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/system/keystore2/Authorization;

    return-object p0
.end method

.method private static buildMetadata(Landroid/system/keystore2/KeyDescriptor;Landroid/os/Bundle;)Landroid/system/keystore2/KeyMetadata;
    .registers 5

    .line 349
    new-instance v0, Landroid/system/keystore2/KeyMetadata;

    invoke-direct {v0}, Landroid/system/keystore2/KeyMetadata;-><init>()V

    .line 350
    invoke-static {p0}, Lcom/wukong/manager/WukongFrameworkBridge;->cloneDescriptor(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0

    iput-object p0, v0, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    .line 351
    const-string p0, "security_level"

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    .line 352
    const-string p0, "certificate"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 353
    const-string p0, "certificate_chain"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    .line 354
    iget p0, v0, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    invoke-static {p1, p0}, Lcom/wukong/manager/WukongFrameworkBridge;->buildAuthorizations(Landroid/os/Bundle;I)[Landroid/system/keystore2/Authorization;

    move-result-object p0

    iput-object p0, v0, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    .line 355
    const-string p0, "modificationTimeMs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, p0, v1, v2}, Lcom/wukong/manager/WukongFrameworkBridge;->setLongFieldIfPresent(Ljava/lang/Object;Ljava/lang/String;J)V

    return-object v0
.end method

.method private static cachedProvider(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 629
    sget-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->sCachedProvider:Ljava/lang/Object;

    if-eqz v0, :cond_12

    .line 630
    move-object v1, v0

    check-cast v1, Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    .line 633
    :cond_12
    sget-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->PROVIDER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_15
    sget-object v1, Lcom/wukong/manager/WukongFrameworkBridge;->sCachedProvider:Ljava/lang/Object;

    if-eqz v1, :cond_28

    .line 635
    move-object v2, v1

    check-cast v2, Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 636
    monitor-exit v0

    return-object v1

    .line 638
    :cond_28
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->clearCachedProviderLocked()V

    .line 639
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongFrameworkBridge;->acquireProvider(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_34

    const/4 p0, 0x0

    .line 641
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_4c

    return-object p0

    .line 644
    :cond_34
    :try_start_34
    move-object v1, p1

    check-cast v1, Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Lcom/wukong/manager/WukongFrameworkBridge;->PROVIDER_DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_41} :catch_47
    .catchall {:try_start_34 .. :try_end_41} :catchall_4c

    .line 649
    :try_start_41
    sput-object p0, Lcom/wukong/manager/WukongFrameworkBridge;->sCachedProviderThread:Ljava/lang/Object;

    .line 650
    sput-object p1, Lcom/wukong/manager/WukongFrameworkBridge;->sCachedProvider:Ljava/lang/Object;

    .line 651
    monitor-exit v0

    return-object p1

    :catch_47
    move-exception v1

    .line 646
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongFrameworkBridge;->releaseProvider(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 647
    throw v1

    :catchall_4c
    move-exception p0

    .line 652
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method private static callBridge(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 463
    sget v0, Lcom/wukong/manager/WukongFrameworkBridge;->sRouteState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 p0, 0x0

    return-object p0

    .line 466
    :cond_7
    sget-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->sAttachedContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->callProvider(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static callProvider(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)Landroid/os/Bundle;
    .registers 11

    .line 470
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e4

    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_e4

    .line 473
    :cond_f
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->isSystemServerProcess()Z

    move-result v0

    if-eqz v0, :cond_16

    return-object v1

    .line 476
    :cond_16
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentActivityThread()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    .line 478
    const-string p0, "WukongFrameworkBridge"

    const-string p1, "No current ActivityThread"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 481
    :cond_24
    sget-object v2, Lcom/wukong/manager/WukongFrameworkBridge;->sProviderContext:Landroid/content/Context;

    if-nez v2, :cond_3e

    .line 483
    sget-object v3, Lcom/wukong/manager/WukongFrameworkBridge;->PROVIDER_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 484
    :try_start_2b
    sget-object v2, Lcom/wukong/manager/WukongFrameworkBridge;->sProviderContext:Landroid/content/Context;

    if-nez v2, :cond_39

    if-eqz p2, :cond_32

    goto :goto_36

    .line 487
    :cond_32
    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->bridgeContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p2

    .line 488
    :goto_36
    sput-object p2, Lcom/wukong/manager/WukongFrameworkBridge;->sProviderContext:Landroid/content/Context;

    move-object v2, p2

    .line 490
    :cond_39
    monitor-exit v3

    goto :goto_3e

    :catchall_3b
    move-exception p0

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    :goto_3e
    if-nez v2, :cond_58

    .line 493
    const-string p0, "WukongFrameworkBridge"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No bridge context for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentProcessName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_58
    const/4 p2, 0x0

    :goto_59
    const/4 v3, 0x2

    if-ge p2, v3, :cond_e4

    .line 498
    :try_start_5c
    invoke-static {v0, v2}, Lcom/wukong/manager/WukongFrameworkBridge;->cachedProvider(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_82

    .line 500
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->clearCachedProvider()V

    if-eqz p2, :cond_e0

    .line 502
    const-string v3, "WukongFrameworkBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to reacquire provider for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/wukong/manager/WukongFrameworkBridge;->safePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 506
    :cond_82
    sget-object v4, Lcom/wukong/manager/WukongFrameworkBridge;->CONTENT_PROVIDER_CALL:Ljava/lang/reflect/Method;

    if-nez v4, :cond_87

    return-object v1

    .line 509
    :cond_87
    sget-object v5, Lcom/wukong/manager/WukongFrameworkBridge;->sAttributionSource:Landroid/content/AttributionSource;

    if-nez v5, :cond_af

    .line 511
    sget-object v5, Lcom/wukong/manager/WukongFrameworkBridge;->PROVIDER_LOCK:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8e
    .catchall {:try_start_5c .. :try_end_8e} :catchall_c7

    .line 512
    :try_start_8e
    sget-object v6, Lcom/wukong/manager/WukongFrameworkBridge;->sAttributionSource:Landroid/content/AttributionSource;

    if-nez v6, :cond_a9

    .line 514
    new-instance v6, Landroid/content/AttributionSource$Builder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 515
    invoke-static {v2}, Lcom/wukong/manager/WukongFrameworkBridge;->safePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object v6

    .line 516
    sput-object v6, Lcom/wukong/manager/WukongFrameworkBridge;->sAttributionSource:Landroid/content/AttributionSource;

    .line 518
    :cond_a9
    monitor-exit v5

    move-object v5, v6

    goto :goto_af

    :catchall_ac
    move-exception v3

    monitor-exit v5
    :try_end_ae
    .catchall {:try_start_8e .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw v3

    .line 520
    :cond_af
    :goto_af
    const-string v6, "com.wukong.manager.p2"

    filled-new-array {v5, v6, p0, v1, p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_c6

    .line 522
    const-class v4, Lcom/wukong/manager/WukongFrameworkBridge;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_c6
    .catchall {:try_start_ae .. :try_end_c6} :catchall_c7

    :cond_c6
    return-object v3

    :catchall_c7
    move-exception v3

    .line 526
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->clearCachedProvider()V

    if-eqz p2, :cond_e0

    .line 528
    const-string v4, "WukongFrameworkBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bridge call failed after provider reacquire: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e0
    :goto_e0
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_59

    :cond_e4
    :goto_e4
    return-object v1
.end method

.method private static clearCachedProvider()V
    .registers 2

    .line 656
    sget-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->PROVIDER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_3
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->clearCachedProviderLocked()V

    .line 658
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static clearCachedProviderLocked()V
    .registers 5

    .line 662
    sget-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->sCachedProvider:Ljava/lang/Object;

    .line 663
    sget-object v1, Lcom/wukong/manager/WukongFrameworkBridge;->sCachedProviderThread:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 664
    sput-object v2, Lcom/wukong/manager/WukongFrameworkBridge;->sCachedProvider:Ljava/lang/Object;

    .line 665
    sput-object v2, Lcom/wukong/manager/WukongFrameworkBridge;->sCachedProviderThread:Ljava/lang/Object;

    if-nez v0, :cond_c

    return-void

    .line 670
    :cond_c
    :try_start_c
    move-object v2, v0

    check-cast v2, Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Lcom/wukong/manager/WukongFrameworkBridge;->PROVIDER_DEATH_RECIPIENT:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_19

    .line 673
    :catchall_19
    invoke-static {v1, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->releaseProvider(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static cloneDescriptor(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyDescriptor;
    .registers 4

    .line 391
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    if-eqz p0, :cond_17

    .line 393
    iget-object v1, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 394
    iget v1, p0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 395
    iget-wide v1, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 396
    iget-object p0, p0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    :cond_17
    return-object v0
.end method

.method private static contextForCallingUid(Landroid/content/Context;)Landroid/content/Context;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 568
    :cond_4
    invoke-static {p0}, Lcom/wukong/manager/WukongFrameworkBridge;->packageNameForUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    if-nez v1, :cond_14

    .line 570
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v1, v2, :cond_13

    goto :goto_1e

    :cond_13
    return-object v0

    .line 573
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1f

    if-eqz v3, :cond_1f

    :goto_1e
    return-object p0

    :catchall_1f
    :cond_1f
    const/4 v3, 0x2

    .line 579
    :try_start_20
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_25

    return-object p0

    :catchall_25
    move-exception v3

    .line 581
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to create package context for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "WukongFrameworkBridge"

    invoke-static {v4, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v1, v2, :cond_40

    goto :goto_41

    :cond_40
    move-object p0, v0

    :goto_41
    return-object p0
.end method

.method private static currentActivityThread()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    .line 537
    :try_start_1
    sget-object v1, Lcom/wukong/manager/WukongFrameworkBridge;->CURRENT_THREAD:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_9

    .line 538
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    :cond_9
    return-object v0
.end method

.method private static currentApplication()Landroid/app/Application;
    .registers 3

    const/4 v0, 0x0

    .line 825
    :try_start_1
    sget-object v1, Lcom/wukong/manager/WukongFrameworkBridge;->CURRENT_APP:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    :cond_a
    move-object v1, v0

    .line 826
    :goto_b
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_12

    .line 827
    check-cast v1, Landroid/app/Application;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    return-object v1

    :catchall_12
    :cond_12
    return-object v0
.end method

.method private static currentPackageName()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 808
    :try_start_1
    sget-object v1, Lcom/wukong/manager/WukongFrameworkBridge;->CURRENT_PACKAGE:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_10

    .line 809
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 810
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 811
    check-cast v1, Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    return-object v1

    .line 816
    :catchall_10
    :cond_10
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 818
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method private static currentProcessName()Ljava/lang/String;
    .registers 2

    .line 837
    :try_start_0
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 838
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_d

    if-lez v1, :cond_d

    return-object v0

    :catchall_d
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static deleteKey(Landroid/system/keystore2/KeyDescriptor;)Z
    .registers 3

    .line 258
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldBypass()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldRouteRuntimeBridge()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_30

    :cond_e
    if-eqz p0, :cond_19

    .line 261
    iget-object v0, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldBypassGmsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 264
    :cond_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    invoke-static {v0, p0, v1}, Lcom/wukong/manager/WukongFrameworkBridge;->putDescriptor(Landroid/os/Bundle;Landroid/system/keystore2/KeyDescriptor;Z)V

    .line 266
    const-string p0, "delete_key"

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->callBridge(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 268
    const-string v0, "intercepted"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_30
    :goto_30
    return v1
.end method

.method private static getKeystoreBinder()Landroid/os/IBinder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 706
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 707
    sget-object v1, Lcom/wukong/manager/WukongFrameworkBridge;->WAIT_FOR_SERVICE:Ljava/lang/reflect/Method;

    const-string v2, "android.system.keystore2.IKeystoreService/default"

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    .line 708
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    .line 710
    :cond_18
    sget-object v1, Lcom/wukong/manager/WukongFrameworkBridge;->GET_SERVICE:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_27

    .line 711
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    :cond_27
    const/4 v1, 0x1

    .line 713
    new-array v4, v1, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const-string v5, "getService"

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 715
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method private static varargs getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 858
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 859
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object p0

    :catchall_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSecurityLevelInterface(I)Landroid/system/keystore2/IKeystoreSecurityLevel;
    .registers 3

    const/4 v0, 0x0

    .line 695
    :try_start_1
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->getKeystoreBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 696
    invoke-static {v1}, Landroid/system/keystore2/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreService;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_13

    .line 699
    :cond_e
    invoke-interface {v1, p0}, Landroid/system/keystore2/IKeystoreService;->getSecurityLevel(I)Landroid/system/keystore2/IKeystoreSecurityLevel;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    return-object p0

    :catchall_13
    :cond_13
    :goto_13
    return-object v0
.end method

.method private static getServiceMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6

    .line 868
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 869
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p0

    :catchall_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 4

    const/4 v0, 0x0

    .line 848
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    .line 849
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    return-object p0

    :catchall_11
    return-object v0
.end method

.method private static initialApplicationContext(Ljava/lang/Object;)Landroid/content/Context;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 591
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mInitialApplication"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 593
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 594
    instance-of v1, p0, Landroid/content/Context;

    if-eqz v1, :cond_1d

    .line 595
    check-cast p0, Landroid/content/Context;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1d

    return-object p0

    :catchall_1d
    :cond_1d
    return-object v0
.end method

.method public static initializeForProcess(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_30

    .line 163
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldBypass()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->isSystemServerProcess()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_30

    .line 167
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_21

    :cond_20
    move-object v0, p0

    :goto_21
    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->sAttachedContext:Landroid/content/Context;
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_24

    goto :goto_26

    .line 170
    :catchall_24
    sput-object p0, Lcom/wukong/manager/WukongFrameworkBridge;->sAttachedContext:Landroid/content/Context;

    .line 172
    :goto_26
    sget-object p0, Lcom/wukong/manager/WukongFrameworkBridge;->sAttachedContext:Landroid/content/Context;

    sput-object p0, Lcom/wukong/manager/WukongFrameworkBridge;->sProviderContext:Landroid/content/Context;

    const/4 p0, 0x0

    .line 173
    sput-object p0, Lcom/wukong/manager/WukongFrameworkBridge;->sAttributionSource:Landroid/content/AttributionSource;

    .line 174
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->warmRuntimeRouteAsync()V

    :cond_30
    :goto_30
    return-void
.end method

.method private static invokeContextMethod(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Context;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    if-nez p1, :cond_6

    goto :goto_20

    .line 607
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v1, 0x1

    .line 608
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 609
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 610
    instance-of p1, p0, Landroid/content/Context;

    if-eqz p1, :cond_20

    .line 611
    check-cast p0, Landroid/content/Context;
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    :cond_20
    :goto_20
    return-object v0
.end method

.method private static isBootCompleted()Z
    .registers 2

    .line 748
    const-string v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wukong/manager/WukongFrameworkBridge;->readBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "dev.bootcomplete"

    invoke-static {v0, v1}, Lcom/wukong/manager/WukongFrameworkBridge;->readBooleanProperty(Ljava/lang/String;Z)Z

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

.method private static isGooglePlayServicesPackage(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 120
    :cond_4
    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isSensitiveGmsStorageAlias(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 127
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 128
    const-string v1, "session_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "storage_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "master_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "stdidappkey"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "pki_sdk_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "nearby_presence_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "familiar_env_key"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "recoverablekeystore/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    const-string v1, "_androidx_security_master_key_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_51

    goto :goto_52

    :cond_51
    return v0

    :cond_52
    :goto_52
    const/4 p0, 0x1

    return p0
.end method

.method private static isSystemServerProcess()Z
    .registers 4

    const/4 v0, 0x1

    .line 735
    :try_start_1
    const-string v1, "system_server"

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    if-eqz v1, :cond_e

    return v0

    :catchall_e
    :cond_e
    const/4 v1, 0x0

    .line 741
    :try_start_f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_24

    const-string v2, "android"

    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_26

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    :catchall_26
    return v1
.end method

.method public static maybeGenerateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[BI)Landroid/system/keystore2/KeyMetadata;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;I[BI)",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .line 197
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldBypass()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldRouteRuntimeBridge()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4e

    :cond_e
    if-eqz p0, :cond_19

    .line 200
    iget-object v0, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldBypassGmsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object v1

    .line 203
    :cond_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 204
    invoke-static {v0, p0, v2}, Lcom/wukong/manager/WukongFrameworkBridge;->putDescriptor(Landroid/os/Bundle;Landroid/system/keystore2/KeyDescriptor;Z)V

    const/4 v3, 0x1

    .line 205
    invoke-static {v0, p1, v3}, Lcom/wukong/manager/WukongFrameworkBridge;->putDescriptor(Landroid/os/Bundle;Landroid/system/keystore2/KeyDescriptor;Z)V

    .line 206
    const-string p1, "flags"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string p1, "entropy"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 208
    const-string p1, "security_level"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    invoke-static {v0, p2}, Lcom/wukong/manager/WukongFrameworkBridge;->serializeArgs(Landroid/os/Bundle;Ljava/util/Collection;)V

    .line 210
    const-string p1, "generate_key"

    invoke-static {p1, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->callBridge(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 211
    const-string p2, "intercepted"

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_49

    goto :goto_4e

    .line 214
    :cond_49
    invoke-static {p0, p1}, Lcom/wukong/manager/WukongFrameworkBridge;->buildMetadata(Landroid/system/keystore2/KeyDescriptor;Landroid/os/Bundle;)Landroid/system/keystore2/KeyMetadata;

    move-result-object p0

    return-object p0

    :cond_4e
    :goto_4e
    return-object v1
.end method

.method public static maybePatchCertificate(Ljava/lang/String;[B[B)[B
    .registers 3

    return-object p1
.end method

.method public static maybePatchCertificateChain(Ljava/lang/String;[B[B)[B
    .registers 3

    return-object p2
.end method

.method public static maybePatchKeyEntryResponse(Ljava/lang/String;Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 2

    return-object p1
.end method

.method public static maybeSwapLoadedKey(Ljava/lang/String;Ljava/security/Key;)Ljava/security/Key;
    .registers 2

    return-object p1
.end method

.method private static newAuthorization(ILandroid/hardware/security/keymint/KeyParameterValue;I)Landroid/system/keystore2/Authorization;
    .registers 5

    .line 381
    new-instance v0, Landroid/system/keystore2/Authorization;

    invoke-direct {v0}, Landroid/system/keystore2/Authorization;-><init>()V

    .line 382
    new-instance v1, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v1}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 383
    iput p0, v1, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 384
    iput-object p1, v1, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 385
    iput-object v1, v0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    .line 386
    iput p2, v0, Landroid/system/keystore2/Authorization;->securityLevel:I

    return-object v0
.end method

.method private static packageNameForUid(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 788
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5f

    .line 789
    array-length v1, p0

    if-nez v1, :cond_16

    goto :goto_5f

    .line 792
    :cond_16
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    .line 794
    array-length v3, p0

    move v4, v2

    :goto_1f
    if-ge v4, v3, :cond_5c

    aget-object v5, p0, v4

    .line 795
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    goto :goto_5b

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_5b
    :goto_5b
    return-object v5

    .line 800
    :cond_5c
    aget-object p0, p0, v2
    :try_end_5e
    .catchall {:try_start_4 .. :try_end_5e} :catchall_5f

    return-object p0

    :catchall_5f
    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public static postGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyEntryResponse;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 6

    if-eqz p1, :cond_60

    .line 238
    iget-object v0, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-eqz v0, :cond_60

    iget-object v0, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v0, v0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldBypass()Z

    move-result v0

    if-nez v0, :cond_60

    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldRouteRuntimeBridge()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_60

    :cond_19
    if-eqz p0, :cond_24

    .line 241
    iget-object v0, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldBypassGmsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_60

    .line 244
    :cond_24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 245
    invoke-static {v0, p0, v1}, Lcom/wukong/manager/WukongFrameworkBridge;->putDescriptor(Landroid/os/Bundle;Landroid/system/keystore2/KeyDescriptor;Z)V

    .line 246
    iget-object p0, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object p0, p0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    const-string v2, "certificate"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 247
    iget-object p0, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object p0, p0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    const-string v3, "certificate_chain"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 248
    const-string p0, "post_get_key_entry"

    invoke-static {p0, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->callBridge(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_60

    .line 249
    const-string v0, "intercepted"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_60

    .line 252
    :cond_50
    iget-object v0, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 253
    iget-object v0, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    :cond_60
    :goto_60
    return-object p1
.end method

.method public static preGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 5

    .line 218
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldBypass()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_47

    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldRouteRuntimeBridge()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_47

    :cond_e
    if-eqz p0, :cond_19

    .line 221
    iget-object v0, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->shouldBypassGmsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object v1

    .line 224
    :cond_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 225
    invoke-static {v0, p0, v2}, Lcom/wukong/manager/WukongFrameworkBridge;->putDescriptor(Landroid/os/Bundle;Landroid/system/keystore2/KeyDescriptor;Z)V

    .line 226
    const-string v3, "pre_get_key_entry"

    invoke-static {v3, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->callBridge(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 227
    const-string v3, "intercepted"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_47

    .line 230
    :cond_33
    invoke-static {p0, v0}, Lcom/wukong/manager/WukongFrameworkBridge;->buildMetadata(Landroid/system/keystore2/KeyDescriptor;Landroid/os/Bundle;)Landroid/system/keystore2/KeyMetadata;

    move-result-object p0

    .line 231
    new-instance v0, Landroid/system/keystore2/KeyEntryResponse;

    invoke-direct {v0}, Landroid/system/keystore2/KeyEntryResponse;-><init>()V

    .line 232
    iput-object p0, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    .line 233
    iget p0, p0, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    invoke-static {p0}, Lcom/wukong/manager/WukongFrameworkBridge;->getSecurityLevelInterface(I)Landroid/system/keystore2/IKeystoreSecurityLevel;

    move-result-object p0

    iput-object p0, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    return-object v0

    :cond_47
    :goto_47
    return-object v1
.end method

.method private static putDescriptor(Landroid/os/Bundle;Landroid/system/keystore2/KeyDescriptor;Z)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_8

    .line 416
    const-string v0, "attest_alias"

    goto :goto_a

    :cond_8
    const-string v0, "alias"

    :goto_a
    if-eqz p2, :cond_f

    .line 417
    const-string v1, "attest_domain"

    goto :goto_11

    :cond_f
    const-string v1, "domain"

    :goto_11
    if-eqz p2, :cond_16

    .line 418
    const-string p2, "attest_namespace"

    goto :goto_18

    :cond_16
    const-string p2, "namespace"

    .line 419
    :goto_18
    iget-object v2, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget v0, p1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    iget-wide v0, p1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private static readBooleanProperty(Ljava/lang/String;Z)Z
    .registers 4

    .line 753
    :try_start_0
    sget-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->SYSTEM_PROPERTY_GET_BOOLEAN:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    goto :goto_19

    .line 756
    :cond_5
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
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return p0

    :catchall_19
    :goto_19
    return p1
.end method

.method private static releaseProvider(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    if-eqz p0, :cond_32

    if-nez p1, :cond_5

    goto :goto_32

    .line 681
    :cond_5
    :try_start_5
    sget-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->sReleaseProviderMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_29

    .line 683
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "releaseProvider"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-string v3, "android.content.IContentProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 684
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 685
    sput-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->sReleaseProviderMethod:Ljava/lang/reflect/Method;

    .line 687
    :cond_29
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_32

    :catchall_32
    :cond_32
    :goto_32
    return-void
.end method

.method private static safePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 763
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 767
    :cond_7
    invoke-static {p0}, Lcom/wukong/manager/WukongFrameworkBridge;->packageNameForUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    if-eqz p0, :cond_1d

    .line 773
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 774
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1d

    if-lez v0, :cond_1d

    return-object p0

    .line 780
    :catchall_1d
    :cond_1d
    const-string p0, "android"

    return-object p0
.end method

.method private static serializeArgs(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_136

    .line 277
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_136

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/keymint/KeyParameter;

    if-eqz v2, :cond_10

    .line 278
    iget-object v3, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-eqz v3, :cond_10

    .line 279
    iget v3, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    sparse-switch v3, :sswitch_data_14a

    packed-switch v3, :pswitch_data_174

    packed-switch v3, :pswitch_data_188

    goto :goto_10

    .line 338
    :pswitch_2e  #0x600003f1
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v2

    const-string v4, "certificate_not_after"

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_10

    .line 335
    :pswitch_3a  #0x600003f0
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v2

    const-string v4, "certificate_not_before"

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_10

    .line 308
    :pswitch_46  #0x900002cd
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_10

    .line 305
    :pswitch_52  #0x900002cc
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "manufacturer"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_10

    .line 302
    :pswitch_5e  #0x900002cb
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "meid"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_10

    .line 299
    :pswitch_6a  #0x900002ca
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "imei"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_10

    .line 296
    :pswitch_76  #0x900002c9
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "serial"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_10

    .line 293
    :pswitch_82  #0x900002c8
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "product"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_10

    .line 290
    :pswitch_8e  #0x900002c7
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_10

    .line 287
    :pswitch_9b  #0x900002c6
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "brand"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_10

    .line 332
    :sswitch_a8
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    const-string v3, "rsa_public_exponent"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_10

    .line 329
    :sswitch_bd
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result v2

    const-string v3, "key_size"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 326
    :sswitch_ca
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 323
    :sswitch_d9
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 320
    :sswitch_e8
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v2

    const-string v3, "ec_curve"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 317
    :sswitch_f5
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getAlgorithm()I

    move-result v2

    const-string v3, "algorithm"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 314
    :sswitch_102
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "certificate_subject_der"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_10

    .line 311
    :sswitch_10f
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "second_imei"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_10

    .line 284
    :sswitch_11c
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "attestation_challenge"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_10

    .line 281
    :sswitch_129
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2

    const-string v3, "certificate_serial"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_10

    .line 344
    :cond_136
    const-string p1, "purposes"

    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 345
    const-string p1, "digests"

    invoke-static {v1}, Lcom/wukong/manager/WukongFrameworkBridge;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void

    nop

    :sswitch_data_14a
    .sparse-switch
        -0x7ffffc12 -> :sswitch_129
        -0x6ffffd3c -> :sswitch_11c
        -0x6ffffd2d -> :sswitch_10f
        -0x6ffffc11 -> :sswitch_102
        0x10000002 -> :sswitch_f5
        0x1000000a -> :sswitch_e8
        0x20000001 -> :sswitch_d9
        0x20000005 -> :sswitch_ca
        0x30000003 -> :sswitch_bd
        0x500000c8 -> :sswitch_a8
    .end sparse-switch

    :pswitch_data_174
    .packed-switch -0x6ffffd3a
        :pswitch_9b  #900002c6
        :pswitch_8e  #900002c7
        :pswitch_82  #900002c8
        :pswitch_76  #900002c9
        :pswitch_6a  #900002ca
        :pswitch_5e  #900002cb
        :pswitch_52  #900002cc
        :pswitch_46  #900002cd
    .end packed-switch

    :pswitch_data_188
    .packed-switch 0x600003f0
        :pswitch_3a  #600003f0
        :pswitch_2e  #600003f1
    .end packed-switch
.end method

.method private static setLongFieldIfPresent(Ljava/lang/Object;Ljava/lang/String;J)V
    .registers 5

    if-eqz p0, :cond_10

    if-nez p1, :cond_5

    goto :goto_10

    .line 406
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 407
    invoke-virtual {p1, p0, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_10

    :catchall_10
    :cond_10
    :goto_10
    return-void
.end method

.method private static shouldBypass()Z
    .registers 5

    .line 719
    sget v0, Lcom/wukong/manager/WukongFrameworkBridge;->sBypassState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    return v3

    .line 726
    :cond_b
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 727
    const-string v4, "com.wukong.manager"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 728
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    move v3, v1

    :cond_22
    if-eqz v3, :cond_25

    move v1, v2

    .line 729
    :cond_25
    sput v1, Lcom/wukong/manager/WukongFrameworkBridge;->sBypassState:I

    return v3
.end method

.method private static shouldBypassGmsAlias(Ljava/lang/String;)Z
    .registers 2

    .line 148
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 150
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    :cond_a
    if-eqz p0, :cond_17

    .line 152
    invoke-static {v0}, Lcom/wukong/manager/WukongFrameworkBridge;->isGooglePlayServicesPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 153
    invoke-static {p0}, Lcom/wukong/manager/WukongFrameworkBridge;->isSensitiveGmsStorageAlias(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private static shouldRouteRuntimeBridge()Z
    .registers 10

    .line 425
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 426
    sput v1, Lcom/wukong/manager/WukongFrameworkBridge;->sRouteState:I

    return v2

    .line 429
    :cond_b
    sget v0, Lcom/wukong/manager/WukongFrameworkBridge;->sRouteState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_11

    return v1

    :cond_11
    if-ne v0, v1, :cond_14

    return v2

    .line 436
    :cond_14
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_1b

    return v2

    .line 439
    :cond_1b
    sget-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->ROUTE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_1e
    sget v4, Lcom/wukong/manager/WukongFrameworkBridge;->sRouteState:I

    if-eqz v4, :cond_2a

    .line 441
    sget v4, Lcom/wukong/manager/WukongFrameworkBridge;->sRouteState:I

    if-ne v4, v3, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    monitor-exit v0

    return v1

    .line 443
    :cond_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 444
    sget-wide v6, Lcom/wukong/manager/WukongFrameworkBridge;->sLastRouteFailureUptime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_42

    sget-wide v6, Lcom/wukong/manager/WukongFrameworkBridge;->sLastRouteFailureUptime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-gez v6, :cond_42

    .line 446
    monitor-exit v0

    return v2

    .line 448
    :cond_42
    const-string v6, "get_runtime_route"

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v8, Lcom/wukong/manager/WukongFrameworkBridge;->sAttachedContext:Landroid/content/Context;

    invoke-static {v6, v7, v8}, Lcom/wukong/manager/WukongFrameworkBridge;->callProvider(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_76

    .line 449
    const-string v7, "targeted"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_57

    goto :goto_76

    .line 453
    :cond_57
    const-string v4, "targeted"

    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 454
    const-string v4, "config_version"

    const-wide/16 v7, -0x1

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/wukong/manager/WukongFrameworkBridge;->sRouteConfigVersion:J

    .line 455
    const-string v4, "resolved_mode"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/wukong/manager/WukongFrameworkBridge;->sResolvedMode:Ljava/lang/String;

    if-eqz v2, :cond_72

    move v1, v3

    .line 457
    :cond_72
    sput v1, Lcom/wukong/manager/WukongFrameworkBridge;->sRouteState:I

    .line 458
    monitor-exit v0

    return v2

    .line 450
    :cond_76
    :goto_76
    sput-wide v4, Lcom/wukong/manager/WukongFrameworkBridge;->sLastRouteFailureUptime:J

    .line 451
    monitor-exit v0

    return v2

    :catchall_7a
    move-exception v1

    .line 459
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_1e .. :try_end_7c} :catchall_7a

    throw v1
.end method

.method private static toIntArray(Ljava/util/ArrayList;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 878
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 879
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-object v0
.end method

.method private static warmRuntimeRouteAsync()V
    .registers 4

    .line 179
    sget v0, Lcom/wukong/manager/WukongFrameworkBridge;->sRouteState:I

    if-nez v0, :cond_21

    sget-object v0, Lcom/wukong/manager/WukongFrameworkBridge;->ROUTE_WARMUP_STARTED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_21

    .line 182
    :cond_f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wukong/manager/WukongFrameworkBridge$2;

    invoke-direct {v1}, Lcom/wukong/manager/WukongFrameworkBridge$2;-><init>()V

    const-string v3, "wk-route-init"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_21
    :goto_21
    return-void
.end method
