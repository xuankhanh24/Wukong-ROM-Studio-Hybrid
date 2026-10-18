.class public final Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2$1;
.super Ljava/lang/Object;
.source "go/retraceme 77e43dc1e771046d0e54c6e66a65da18054a335b251528f697f8c501f743650e"

# interfaces
.implements Lcom/oplusos/systemui/common/observer/IObserverListener;


# instance fields
.field public final synthetic this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;


# direct methods
.method public constructor <init>(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2$1;->this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl$settingsObserverListener$2$1;->this$0:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchManagerExImpl;->isAllowedToStart()Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_11

    .line 12
    sget-object p1, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;->INSTANCE:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;

    .line 14
    invoke-virtual {p1, p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;->addHomeHandlerLongClickListener(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController$HomeHandleTouchEvent;)V

    .line 17
    return-void

    .line 18
    :cond_11
    sget-object p1, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;->INSTANCE:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;

    .line 20
    invoke-virtual {p1, p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController;->removeHomeHandlerLongClickListener(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/GestureHomeHandleEventController$HomeHandleTouchEvent;)V

    .line 23
    return-void
.end method
