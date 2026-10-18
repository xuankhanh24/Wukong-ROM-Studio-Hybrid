.class public final Lcom/oplus/settings/widget/preference/WkOtaCardHook;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;,
        Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
    }
.end annotation


# static fields
.field private static final CONFIG_URI:Landroid/net/Uri;

.field private static final MAX_IMAGE_DIMENSION:I = 0x500

.field private static final METHOD_GET_CONFIG:Ljava/lang/String; = "get_config"

.field private static final MODE_IMAGE:I = 0x1

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_VIDEO:I = 0x2

.field private static final SNAPSHOT_CACHE_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "WkOtaCardHook"

.field private static activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

.field private static cachedBlurEffect:Landroid/graphics/RenderEffect;

.field private static cachedImageDrawable:Landroid/graphics/drawable/Drawable;

.field private static cachedImageKey:Ljava/lang/String;

.field private static cachedSnapshot:Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

.field private static snapshotLoadElapsed:J

.field private static snapshotLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.wukong.manager.otacard/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->CONFIG_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/TextureView;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    return-void
.end method

.method private static declared-synchronized activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V
    .registers 3

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eq v1, p0, :cond_1

    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    invoke-virtual {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    :cond_0
    sput-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static applyCenterCrop(Landroid/view/TextureView;II)V
    .registers 8

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float v3, v1, v2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    nop

    nop

    cmpl-float p2, p1, v3

    const/high16 v4, 0x3f800000

    if-lez p2, :cond_0

    div-float/2addr p1, v3

    move v3, v4

    move v4, p1

    goto :goto_0

    :cond_0
    div-float/2addr v3, p1

    :goto_0
    const/high16 p1, 0x40000000

    div-float/2addr v1, p1

    div-float/2addr v2, p1

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static applyCustomVideoTransform(Landroid/content/Context;Landroid/view/TextureView;)Z
    .registers 6

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    nop

    nop

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    iget-object v0, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    nop

    const/16 p0, 0x12

    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->parseDimension(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    const/16 v0, 0x13

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->parseDimension(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    throw p0

    :catch_3
    move-exception p0

    move p0, v1

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :goto_3
    invoke-static {p1, p0, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_4
    return v1
.end method

.method private static applyEffect(Landroid/view/View;Z)V
    .registers 4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedBlurEffect:Landroid/graphics/RenderEffect;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v1, 0x41b00000

    invoke-static {v1, v1, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    sput-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedBlurEffect:Landroid/graphics/RenderEffect;

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedBlurEffect:Landroid/graphics/RenderEffect;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    return-void

    :cond_2
    return-void
.end method

.method public static applyImage(Landroid/content/Context;Landroid/widget/ImageView;)Z
    .registers 6

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseAnyCustomVideo()V

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->loadImageDrawable(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_3

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    return v3

    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearImageCache()V

    return v1
.end method

.method public static applyVideoStyle(Landroid/view/TextureView;Landroid/widget/ImageView;)V
    .registers 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    if-eqz p1, :cond_2

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static clampBlurLevel(I)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static clearEffect(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyEffect(Landroid/view/View;Z)V

    return-void
.end method

.method private static declared-synchronized clearImageCache()V
    .registers 2

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageKey:Ljava/lang/String;

    sput-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static customVideoMarker(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->mode(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "wk_custom_ota_video"

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static decodeScaledBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 8

    const-string v0, "WkOtaCardHook"

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_1

    nop

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-object v3

    :cond_1
    :try_start_1
    invoke-static {v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    nop

    nop

    :goto_0
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v2

    const/16 v5, 0x500

    if-gt v4, v5, :cond_7

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v2

    if-le v4, v5, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-nez p0, :cond_4

    move-object p1, v3

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-static {p0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz p0, :cond_5

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Cannot decode custom OTA image"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_7
    :goto_3
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catchall_2
    move-exception p0

    if-eqz v4, :cond_8

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p0

    const-string p1, "Cannot read custom OTA image bounds"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private static detachCustomListener(Landroid/view/TextureView;)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    invoke-virtual {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseActive(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized loadImageDrawable(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blurLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    sget-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->decodeScaledBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_2
    iget p1, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blurLevel:I

    if-eqz p1, :cond_2

    invoke-static {v2, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->makeLightweightBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    sput-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageKey:Ljava/lang/String;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    sput-object p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;

    sget-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static makeLightweightBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->apply(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static mode(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    :goto_0
    return p0
.end method

.method private static parseDimension(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    return v0
.end method

.method private static declared-synchronized readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
    .registers 16

    const-class v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-boolean v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoaded:Z

    if-eqz v0, :cond_1

    sget-wide v5, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoadElapsed:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    sget-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedSnapshot:Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :cond_1
    nop

    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->CONFIG_URI:Landroid/net/Uri;

    const-string v6, "get_config"

    invoke-virtual {p0, v0, v6, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v0, "enabled"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "media_uri"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "type"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "Image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v9, v5

    goto :goto_0

    :cond_2
    const-string v8, "Video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    move v9, v7

    goto :goto_0

    :cond_3
    move v9, v6

    :goto_0
    if-eqz v9, :cond_5

    new-instance v8, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string v0, "blur"

    invoke-virtual {p0, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v12, 0x3c

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    const-string v0, "blur_level"

    invoke-virtual {p0, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clampBlurLevel(I)I

    move-result v12

    const-string v0, "revision"

    const-wide/16 v13, 0x0

    invoke-virtual {p0, v0, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-direct/range {v8 .. v14}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;-><init>(ILandroid/net/Uri;ZIJ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v8

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    sput-boolean v5, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoaded:Z

    sput-wide v3, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoadElapsed:J

    sput-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedSnapshot:Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private static declared-synchronized releaseActive(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V
    .registers 3

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-ne v1, p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized releaseAnyCustomVideo()V
    .registers 3

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    const/4 v2, 0x0

    sput-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setCustomVideoDataSource(Landroid/content/Context;Landroid/media/MediaPlayer;)Z
    .registers 5

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to open custom OTA video"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setupCustomVideo(Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;)Z
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v2, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move-object v8, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearImageCache()V

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setVisibility(I)V

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    instance-of v0, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    check-cast p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    invoke-virtual {p1, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->matches(Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    invoke-virtual {p1, p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->updateCover(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    return v2

    :cond_3
    invoke-virtual {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    :cond_4
    new-instance v3, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    iget-wide v6, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    move-object v8, p0

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;-><init>(Landroid/content/Context;Landroid/net/Uri;JLandroid/view/TextureView;Landroid/widget/ImageView;)V

    invoke-static {v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    invoke-virtual {v8, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const-string p0, "WkOtaCardHook"

    const-string p1, "Attached custom OTA video listener"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    return v2

    :cond_5
    move-object v8, p0

    :goto_0
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseAnyCustomVideo()V

    invoke-static {v8}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->detachCustomListener(Landroid/view/TextureView;)V

    invoke-static {v8}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    return v0
.end method


.method public static applyHeaderColors(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->mode(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyWhiteTextRecursively(Landroid/view/View;)V

    return-void
.end method

.method private static applyWhiteTextRecursively(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/widget/Button;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyWhiteTextRecursively(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getTargetIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://t.me/OnePlus_Ace5_Port"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method
