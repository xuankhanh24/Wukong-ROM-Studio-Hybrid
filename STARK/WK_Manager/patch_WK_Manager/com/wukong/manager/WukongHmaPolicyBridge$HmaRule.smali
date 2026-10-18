.class final Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;
.super Ljava/lang/Object;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HmaRule"
.end annotation


# instance fields
.field final extraHiddenPackages:[Ljava/lang/String;

.field final extraVisiblePackages:[Ljava/lang/String;

.field final flags:I


# direct methods
.method constructor <init>(I[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0xf

    .line 1431
    iput p1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->flags:I

    const/4 p1, 0x0

    if-eqz p2, :cond_b

    goto :goto_d

    .line 1437
    :cond_b
    new-array p2, p1, [Ljava/lang/String;

    :goto_d
    iput-object p2, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->extraHiddenPackages:[Ljava/lang/String;

    if-eqz p3, :cond_12

    goto :goto_14

    .line 1438
    :cond_12
    new-array p3, p1, [Ljava/lang/String;

    :goto_14
    iput-object p3, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->extraVisiblePackages:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method hasAppListPrivacy()Z
    .registers 2

    .line 1446
    iget p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method hidesAccessibility()Z
    .registers 1

    .line 1454
    iget p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method hidesDevOptions()Z
    .registers 1

    .line 1450
    iget p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method isEnabled()Z
    .registers 1

    .line 1442
    iget p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->flags:I

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method useWhitelistMode()Z
    .registers 1

    .line 1458
    iget p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
