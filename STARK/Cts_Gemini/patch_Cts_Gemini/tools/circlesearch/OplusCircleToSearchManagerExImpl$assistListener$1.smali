.class public final Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$assistListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 77e43dc1e771046d0e54c6e66a65da18054a335b251528f697f8c501f743650e"

# interfaces
.implements Lcom/oplusos/systemui/common/observer/IObserverListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$assistListener$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$assistListener$1;->this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 5

    .line 1
    iget p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$assistListener$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_24

    .line 6
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$assistListener$1;->this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    .line 8
    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->setInputInjectorScreenSize()V

    return-void

    .line 12
    :pswitch_b
    const-string p1, "OplusCircleToSearchManagerExImpl"

    .line 14
    const-string/jumbo v0, "onChange"

    .line 16
    const-string v1, "NavBar"

    const/16 v2, 0x8

    .line 20
    invoke-static {v2, v1, p1, v0}, Lcom/oplusos/systemui/common/util/LogUtil;->d$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$assistListener$1;->this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    .line 25
    # getter for: Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->assistCallback:Ljava/lang/Runnable;
    invoke-static {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->access$getAssistCallback$p(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;)Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 31
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method
