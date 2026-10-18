.class Lcom/wukong/manager/WukongFrameworkBridge$2;
.super Ljava/lang/Object;
.source "WukongFrameworkBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wukong/manager/WukongFrameworkBridge;->warmRuntimeRouteAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    const/16 p0, 0xa

    .line 186
    :try_start_2
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_5

    .line 189
    :catchall_5
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->access$100()Z

    return-void
.end method
