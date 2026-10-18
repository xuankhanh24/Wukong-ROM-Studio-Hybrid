.class public final Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$splitScreenObserver$1;
.super Lcom/oplus/app/OplusSplitScreenObserver;
.source "go/retraceme 77e43dc1e771046d0e54c6e66a65da18054a335b251528f697f8c501f743650e"


# instance fields
.field final synthetic this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;


# direct methods
.method public constructor <init>(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$splitScreenObserver$1;->this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    .line 3
    invoke-direct {p0}, Lcom/oplus/app/OplusSplitScreenObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 1
    const-string/jumbo v0, "splitScreenMinimizedChange"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 8
    const-string v1, "OplusCircleToSearchManagerExImpl"

    .line 10
    const-string v2, "NavBar"

    const/16 v3, 0x8

    if-eqz v0, :cond_23

    .line 16
    iget-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$splitScreenObserver$1;->this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    .line 18
    const-string v0, "isMinimized"

    const/4 v4, 0x0

    .line 21
    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 25
    iput-boolean p2, p1, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->isSplitScreenMinimized:Z

    .line 27
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$splitScreenObserver$1;->this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    .line 29
    iget-boolean p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->isSplitScreenMinimized:Z

    .line 31
    const-string/jumbo p1, "onStateChanged isSplitScreenMinimized="

    .line 33
    nop

    return-void

    .line 37
    :cond_23
    const-string/jumbo p0, "onStateChanged event="

    .line 39
    nop

    return-void
.end method
