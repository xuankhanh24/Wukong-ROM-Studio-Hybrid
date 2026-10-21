.class Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$1;
.super Ljava/lang/Object;
.source "WkOtaCardHook.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;-><init>(Landroid/content/Context;Landroid/net/Uri;JZLandroid/view/TextureView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;


# direct methods
.method constructor <init>(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$1;->this$0:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$1;->this$0:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    invoke-static {v0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->-$$Nest$mhandleAudioFocusChange(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;I)V

    .line 794
    return-void
.end method
