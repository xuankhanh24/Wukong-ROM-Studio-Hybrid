.class final Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MaintenanceReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1138
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wukong/manager/WukongHmaPolicyBridge$1;)V
    .registers 2

    .line 1138
    invoke-direct {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_57

    .line 1141
    const-string v0, "com.wukong.manager.action.MAINTENANCE_TARGET"

    .line 1142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1143
    invoke-virtual {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_57

    .line 1146
    :cond_15
    invoke-virtual {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;->getSentFromUid()I

    move-result v0

    .line 1147
    invoke-static {p1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$700(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-static {v0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->isManagerCallerUid(I)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_3d

    .line 1152
    :cond_26
    const-string p1, "targetPath"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1153
    invoke-virtual {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 1154
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$1000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;-><init>(Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1148
    :cond_3d
    :goto_3d
    const-string p1, "unauthorized"

    const/4 p2, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p2}, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1149
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Rejected maintenance target request from uid "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WukongHmaPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    return-void
.end method
