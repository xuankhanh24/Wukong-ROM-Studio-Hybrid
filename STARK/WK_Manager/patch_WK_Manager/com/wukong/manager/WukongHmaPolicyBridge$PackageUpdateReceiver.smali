.class final Lcom/wukong/manager/WukongHmaPolicyBridge$PackageUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WukongHmaPolicyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongHmaPolicyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageUpdateReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1361
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wukong/manager/WukongHmaPolicyBridge$1;)V
    .registers 2

    .line 1361
    invoke-direct {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge$PackageUpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const/4 p0, 0x0

    if-eqz p2, :cond_1c

    .line 1364
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "com.wukong.manager"

    .line 1365
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 1366
    invoke-static {p1, p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$500(Landroid/content/Context;I)V

    .line 1368
    :cond_1c
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$1100()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1369
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$1200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1370
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$1300()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1371
    :try_start_2f
    invoke-static {}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$1400()Z

    move-result p2

    if-nez p2, :cond_38

    .line 1372
    invoke-static {p0}, Lcom/wukong/manager/WukongHmaPolicyBridge;->access$1502(Z)Z

    .line 1374
    :cond_38
    monitor-exit p1

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_3a

    throw p0
.end method
