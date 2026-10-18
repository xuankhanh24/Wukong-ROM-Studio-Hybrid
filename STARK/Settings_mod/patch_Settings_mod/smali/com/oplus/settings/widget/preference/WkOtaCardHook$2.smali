.class Lcom/oplus/settings/widget/preference/WkOtaCardHook$2;
.super Ljava/lang/Object;
.source "WkOtaCardHook.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 688
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$2;->val$preference:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 691
    nop

    .line 692
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 692
    :cond_0
    move-object p1, v0

    .line 695
    :goto_0
    if-nez p1, :cond_1

    .line 696
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$2;->val$preference:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$smextractContext(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p1

    .line 698
    :cond_1
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->openTelegramLink(Landroid/content/Context;)V

    .line 699
    return-void
.end method
