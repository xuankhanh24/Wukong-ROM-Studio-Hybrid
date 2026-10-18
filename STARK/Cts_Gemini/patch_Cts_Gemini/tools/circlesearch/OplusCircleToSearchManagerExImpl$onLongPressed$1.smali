.class public final Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$onLongPressed$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "go/retraceme 77e43dc1e771046d0e54c6e66a65da18054a335b251528f697f8c501f743650e"


# instance fields
.field final synthetic this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;


# direct methods
.method public constructor <init>(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$onLongPressed$1;->this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$onLongPressed$1;->this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->startCircleToSearchWithNavHandle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
