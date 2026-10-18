.class public final Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchUtils;
.super Ljava/lang/Object;
.source "go/retraceme 77e43dc1e771046d0e54c6e66a65da18054a335b251528f697f8c501f743650e"


# static fields
.field public static final INSTANCE:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchUtils;

.field public static final KEY_CIRCLE_TO_SEARCH_GESTURE_CORNER_ASSIST_ENABLE:Ljava/lang/String; = "circle_to_search_corner_assist_enable_navi"

.field public static final KEY_CIRCLE_TO_SEARCH_GESTURE_ENABLE:Ljava/lang/String; = "circle_to_search_enable_navi"

.field public static final KEY_CIRCLE_TO_SEARCH_GUIDE:Ljava/lang/String; = "circle_to_search_guide"

.field public static final KEY_CIRCLE_TO_SEARCH_VIRTUAL_CORNER_ASSIST_ENABLE:Ljava/lang/String; = "circle_to_search_corner_assist_enable"

.field public static final KEY_CIRCLE_TO_SEARCH_VIRTUAL_ENABLE:Ljava/lang/String; = "circle_to_search_enable_home"

.field private static final TAG:Ljava/lang/String; = "OplusCircleToSearchUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchUtils;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchUtils;->INSTANCE:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/OplusCircleToSearchUtils;

    .line 8
    return-void
.end method

.method public static final isCircleToSearchVirtualCornerAssistEnable()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver$Companion;

    .line 3
    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver$Companion;->getInstance()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualAssistObserver;->getState()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method
