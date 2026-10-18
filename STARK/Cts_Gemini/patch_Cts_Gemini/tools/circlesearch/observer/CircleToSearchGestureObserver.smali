.class public final Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;
.super Lcom/oplusos/systemui/common/observer/AbstractObserver;
.source "go/retraceme 77e43dc1e771046d0e54c6e66a65da18054a335b251528f697f8c501f743650e"


# static fields
.field public static final Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver$Companion;

.field private static final TAG:Ljava/lang/String; = "CircleToSearchGestureObserver"

.field private static volatile sInstance:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;


# instance fields
.field public state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver$Companion;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->Companion:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver$Companion;

    .line 8
    return-void
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;
    .registers 1

    .line 1
    sget-object v0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->sInstance:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;

    .line 3
    return-object v0
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->sInstance:Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;

    .line 3
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    .line 1
    const-string p0, "circle_to_search_enable_navi"

    .line 3
    return-object p0
.end method

.method public final getState()I
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/oplusos/systemui/common/observer/AbstractObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "circle_to_search_enable_navi"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->state:I

    return v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1a

    :catchall_1a
    :cond_1a
    iget p0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->state:I

    return p0
.end method

.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 2

    .line 1
    sget-object p1, Lcom/oplusos/systemui/common/multiuser/MultiUserContentHelper;->Companion:Lcom/oplusos/systemui/common/multiuser/MultiUserContentHelper$Companion;

    .line 3
    invoke-virtual {p0}, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Lcom/oplusos/systemui/common/multiuser/MultiUserContentHelper$Companion;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

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
    const-string v2, "circle_to_search_enable_navi"

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v0, v2, v3}, Lcom/oplusos/systemui/common/settingsvalue/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 17
    iput v0, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->state:I

    const-string v1, "OplusCTS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CircleToSearchGestureObserver onChange state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    const-string v1, "circle_to_search_enable_navi"

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/oplusos/systemui/common/settingsvalue/AbsSettingsValueProxy$Companion;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 13
    iput p1, p0, Lcom/oplus/systemui/navigationbar/gesture/otherbusiness/circlesearch/observer/CircleToSearchGestureObserver;->state:I

    const-string v0, "OplusCTS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CircleToSearchGestureObserver onRegister state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
