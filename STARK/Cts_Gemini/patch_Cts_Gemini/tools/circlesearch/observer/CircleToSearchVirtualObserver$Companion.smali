.class public final Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 77e43dc1e771046d0e54c6e66a65da18054a335b251528f697f8c501f743650e"


# virtual methods
.method public final getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;
    .registers 2

    .line 1
    const-class p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    # getter for: Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->sInstance:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;
    invoke-static {}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->access$getSInstance$cp()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;

    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_14

    .line 10
    new-instance v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;

    .line 12
    invoke-direct {v0}, Lcom/oplusos/systemui/common/observer/AbstractObserver;-><init>()V

    .line 15
    invoke-static {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->access$setSInstance$cp(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;)V

    .line 18
    goto :goto_14

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    goto :goto_1d

    .line 21
    :cond_14
    :goto_14
    # getter for: Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->sInstance:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;
    invoke-static {}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->access$getSInstance$cp()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_12

    .line 28
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :goto_1d
    monitor-exit p0

    .line 31
    throw v0
.end method
