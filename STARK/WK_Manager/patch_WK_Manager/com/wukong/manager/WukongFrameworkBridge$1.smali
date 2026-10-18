.class Lcom/wukong/manager/WukongFrameworkBridge$1;
.super Ljava/lang/Object;
.source "WukongFrameworkBridge.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukong/manager/WukongFrameworkBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 95
    invoke-static {}, Lcom/wukong/manager/WukongFrameworkBridge;->access$000()V

    return-void
.end method
