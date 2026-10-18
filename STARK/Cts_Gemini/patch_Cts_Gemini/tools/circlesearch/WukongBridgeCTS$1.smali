.class Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "WukongBridgeCTS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS;->onLongPressed(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$manager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS$1;->val$manager:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 6

    .line 154
    const-string p1, "[WukongBridgeCTS] Launcher finished recent animation, starting CTS with nav handle"

    const-string v0, "OplusCTS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :try_start_7
    iget-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS$1;->val$manager:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "startCircleToSearchWithNavHandle"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 157
    iget-object v1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/WukongBridgeCTS$1;->val$manager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1e

    .line 160
    goto :goto_24

    .line 158
    :catchall_1e
    move-exception p1

    .line 159
    const-string v1, "[WukongBridgeCTS] Failed startCircleToSearchWithNavHandle in callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :goto_24
    return-void
.end method
