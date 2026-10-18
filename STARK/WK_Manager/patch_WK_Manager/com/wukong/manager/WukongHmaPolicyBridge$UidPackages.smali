.class final Lcom/wukong/manager/WukongHmaPolicyBridge$UidPackages;
.super Ljava/lang/Object;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidPackages"
.end annotation


# instance fields
.field final loadedAtUptime:J

.field final packages:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;J)V
    .registers 4

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    .line 1417
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_f

    :cond_c
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    :goto_f
    iput-object p1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPackages;->packages:[Ljava/lang/String;

    .line 1418
    iput-wide p2, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$UidPackages;->loadedAtUptime:J

    return-void
.end method
