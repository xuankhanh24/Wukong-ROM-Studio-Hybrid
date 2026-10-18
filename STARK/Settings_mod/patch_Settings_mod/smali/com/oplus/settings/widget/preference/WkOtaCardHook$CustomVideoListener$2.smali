.class Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;
.super Ljava/lang/Object;
.source "WkOtaCardHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

.field final synthetic val$mp:Landroid/media/MediaPlayer;

.field final synthetic val$s:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;Landroid/media/MediaPlayer;Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1252
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;->this$0:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    iput-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;->val$mp:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;->val$s:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1255
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;->val$mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1256
    :try_start_0
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;->val$mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1257
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 1258
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 1260
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;->val$s:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 1261
    :try_start_3
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;->val$s:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 1263
    :cond_1
    :goto_3
    return-void
.end method
