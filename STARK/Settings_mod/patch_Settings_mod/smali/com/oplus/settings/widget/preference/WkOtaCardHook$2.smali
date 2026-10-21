.class Lcom/oplus/settings/widget/preference/WkOtaCardHook$2;
.super Ljava/lang/Object;
.source "WkOtaCardHook.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setupVideoMode(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 176
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$sfgetactiveVideoListener()Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    move-result-object p1

    .line 177
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->togglePlayPause()V

    .line 180
    :cond_0
    return-void
.end method
