.class final Lcom/wukong/manager/WukongHmaPolicyBridge$ShortcutHostReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortcutHostReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1129
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wukong/manager/WukongHmaPolicyBridge$1;)V
    .registers 2

    .line 1129
    invoke-direct {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$ShortcutHostReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_1e

    .line 1131
    const-string p0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "android.intent.action.USER_UNLOCKED"

    .line 1132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1a
    const/4 p0, 0x0

    .line 1133
    invoke-static {p1, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$500(Landroid/content/Context;I)V

    :cond_1e
    return-void
.end method
