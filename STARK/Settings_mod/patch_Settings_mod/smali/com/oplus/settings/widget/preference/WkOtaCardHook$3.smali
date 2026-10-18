.class Lcom/oplus/settings/widget/preference/WkOtaCardHook$3;
.super Ljava/lang/Object;
.source "WkOtaCardHook.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setupTelegramClick(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$preference:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$3;->val$preference:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 763
    const-string p1, "onPreferenceClick"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 764
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$3;->val$preference:Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$smextractContext(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->openTelegramLink(Landroid/content/Context;)V

    .line 765
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 767
    :cond_0
    return-object p2
.end method
