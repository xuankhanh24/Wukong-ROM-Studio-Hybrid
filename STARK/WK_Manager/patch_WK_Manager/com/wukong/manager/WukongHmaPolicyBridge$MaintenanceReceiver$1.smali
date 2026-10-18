.class Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;
.super Ljava/lang/Object;
.source "WukongHmaPolicyBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;

.field final synthetic val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$requestedPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1154
    iput-object p1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;->this$0:Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver;

    iput-object p2, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;->val$requestedPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1157
    new-instance v0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;-><init>(Lcom/wukong/manager/WukongHmaPolicyBridge$1;)V

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1159
    iget-object v2, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;->val$requestedPath:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$900(Ljava/lang/String;Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 1160
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1161
    const-string v4, "targetPath"

    iget-object v5, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;->val$requestedPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v4, "maintenanceRemovedCount"

    iget v5, v0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;->removedCount:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1163
    const-string v4, "failedCount"

    iget v5, v0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;->failedCount:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1164
    const-string v4, "log"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_42

    .line 1166
    const-string v1, "error"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/BroadcastReceiver$PendingResult;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4a

    .line 1169
    :cond_42
    iget-object v1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v4, 0x1

    const-string v5, "ok"

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/BroadcastReceiver$PendingResult;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1171
    :goto_4a
    iget-object v1, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Maintenance target path="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceReceiver$1;->val$requestedPath:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", removed="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;->removedCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/wukong/manager/WukongHmaPolicyBridge$MaintenanceStats;->failedCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", error="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WukongHmaPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
