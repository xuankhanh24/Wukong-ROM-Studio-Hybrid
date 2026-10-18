.class final Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;
.super Ljava/lang/Object;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidPolicy"
.end annotation


# static fields
.field static final EMPTY:Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;


# instance fields
.field final configVersion:J

.field final loadedAtUptime:J

.field final packages:[Ljava/lang/String;

.field final rule:Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1393
    new-instance v0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-wide/high16 v3, -0x8000000000000000L

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;-><init>([Ljava/lang/String;Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;JJ)V

    sput-object v0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->EMPTY:Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;JJ)V
    .registers 7

    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_9

    :cond_6
    const/4 p1, 0x0

    .line 1401
    new-array p1, p1, [Ljava/lang/String;

    :goto_9
    iput-object p1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->packages:[Ljava/lang/String;

    .line 1402
    iput-object p2, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->rule:Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    .line 1403
    iput-wide p3, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->configVersion:J

    .line 1404
    iput-wide p5, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->loadedAtUptime:J

    return-void
.end method


# virtual methods
.method ruleHidesAccessibility()Z
    .registers 1

    .line 1408
    iget-object p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPolicy;->rule:Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$HmaRule;->hidesAccessibility()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
