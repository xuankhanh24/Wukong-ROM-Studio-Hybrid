.class final Lcom/wukong/manager/WukongHmaPolicyBridge$PolicyUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PolicyUpdateReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1115
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wukong/manager/WukongHmaPolicyBridge$1;)V
    .registers 2

    .line 1115
    invoke-direct {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$PolicyUpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_19

    .line 1118
    const-string p0, "com.wukong.manager.action.P1_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_19

    .line 1121
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_16

    goto :goto_19

    .line 1125
    :cond_16
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$600(Landroid/os/Bundle;)V

    :cond_19
    :goto_19
    return-void
.end method
