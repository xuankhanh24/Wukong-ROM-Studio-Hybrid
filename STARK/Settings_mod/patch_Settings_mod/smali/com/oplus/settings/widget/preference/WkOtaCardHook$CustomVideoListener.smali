.class final Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/settings/widget/preference/WkOtaCardHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomVideoListener"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private cover:Landroid/widget/ImageView;

.field private observingWindowFocus:Z

.field private player:Landroid/media/MediaPlayer;

.field private retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final revision:J

.field private surface:Landroid/view/Surface;

.field private final uri:Landroid/net/Uri;

.field private final video:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;JLandroid/view/TextureView;Landroid/widget/ImageView;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->uri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->revision:J

    iput-object p5, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    iput-object p6, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->observingWindowFocus:Z

    :cond_1
    return-void
.end method

.method private open(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->replaceSurface(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WkOtaCardHook"

    const-string v1, "Cannot open custom OTA video"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    :goto_0
    return-void
.end method

.method private releasePlayer()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    return-void
.end method

.method private releaseRetainedTexture()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    return-void
.end method

.method private replaceSurface(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method matches(Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Z
    .registers 6

    iget-wide v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->revision:J

    iget-wide v2, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->uri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Custom OTA video player error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WkOtaCardHook"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    const-string v0, "WkOtaCardHook"

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->access$000(Landroid/view/TextureView;II)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const-string p1, "Custom OTA video prepared; stock cover hidden"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Cannot start custom OTA video"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p2, p1, :cond_0

    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->open(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->replaceSurface(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iget-object p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->access$000(Landroid/view/TextureView;II)V

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->updateCover(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iget-object p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->access$000(Landroid/view/TextureView;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-static {p1, p2, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->access$000(Landroid/view/TextureView;II)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->access$100(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    invoke-virtual {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    const-string p1, "WkOtaCardHook"

    const-string v0, "Paused custom OTA video while Settings is not focused"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method release()V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releaseRetainedTexture()V

    iget-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->observingWindowFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->observingWindowFocus:Z

    :cond_1
    return-void
.end method

.method startIfAvailable()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->open(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method updateCover(Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception p1

    :cond_1
    :goto_0
    return-void
.end method
