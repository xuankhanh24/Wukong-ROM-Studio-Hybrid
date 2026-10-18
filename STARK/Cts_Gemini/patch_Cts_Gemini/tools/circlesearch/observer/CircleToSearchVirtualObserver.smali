.class public final Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;
.super Lcom/oplusos/systemui/common/observer/AbstractObserver;
.source "go/retraceme 77e43dc1e771046d0e54c6e66a65da18054a335b251528f697f8c501f743650e"


# static fields
.field public static final Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;

.field private static final TAG:Ljava/lang/String; = "CircleToSearchVirtualObserver"

.field private static volatile sInstance:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;


# instance fields
.field public state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver$Companion;

    .line 8
    return-void
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;
    .registers 1

    .line 1
    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->sInstance:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;

    .line 3
    return-object v0
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->sInstance:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;

    .line 3
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    .line 1
    const-string p0, "circle_to_search_enable_home"

    .line 3
    return-object p0
.end method

.method public final getState()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->state:I

    .line 3
    return p0
.end method

.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 2

    .line 1
    sget-object p1, Lcom/oplusos/systemui/common/multiuser/MultiUserContentHelper;->Companion:Lcom/oplusos/systemui/common/multiuser/MultiUserContentHelper$Companion;

    .line 3
    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->getKey()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Lcom/oplusos/systemui/common/multiuser/MultiUserContentHelper$Companion;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final onChange(Z)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 8
    :cond_7
    sget-object v1, Lcom/oplusos/systemui/common/settingsvalue/AbsSettingsValueProxy;->Companion:Lcom/oplusos/systemui/common/settingsvalue/AbsSettingsValueProxy$Companion;

    .line 10
    const-string v2, "circle_to_search_enable_home"

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v0, v2, v3}, Lcom/oplusos/systemui/common/settingsvalue/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 17
    iput v0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->state:I

    .line 19
    const-string/jumbo v1, "onChange state="

    .line 21
    const-string v2, "NavBar"

    .line 23
    const-string v3, "CircleToSearchVirtualObserver"

    const/16 v4, 0x8

    .line 27
    nop

    .line 30
    invoke-super {p0, p1}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->onChange(Z)V

    return-void
.end method

.method public onRegister(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->onRegister(Landroid/content/Context;)V

    .line 4
    sget-object v0, Lcom/oplusos/systemui/common/settingsvalue/AbsSettingsValueProxy;->Companion:Lcom/oplusos/systemui/common/settingsvalue/AbsSettingsValueProxy$Companion;

    .line 6
    const-string v1, "circle_to_search_enable_home"

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/oplusos/systemui/common/settingsvalue/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 13
    iput p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchVirtualObserver;->state:I

    .line 15
    const-string/jumbo p0, "onRegister state="

    .line 17
    const-string v0, "NavBar"

    .line 19
    const-string v1, "CircleToSearchVirtualObserver"

    const/16 v2, 0x8

    .line 23
    nop

    return-void
.end method
