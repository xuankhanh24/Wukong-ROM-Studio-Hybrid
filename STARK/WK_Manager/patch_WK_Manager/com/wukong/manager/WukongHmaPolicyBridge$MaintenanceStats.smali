.class final Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;
.super Ljava/lang/Object;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MaintenanceStats"
.end annotation


# instance fields
.field failedCount:I

.field removedCount:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wukong/manager/WukongHmaPolicyBridge$1;)V
    .registers 2

    .line 1331
    invoke-direct {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;-><init>()V

    return-void
.end method
