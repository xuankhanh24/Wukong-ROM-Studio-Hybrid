.class public final Lcom/oplus/settings/widget/preference/WkOtaCardHook;
.super Ljava/lang/Object;
.source "WkOtaCardHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;,
        Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;
    }
.end annotation


# static fields
.field private static final ASYNC_RELEASE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final CONFIG_URI:Landroid/net/Uri;

.field private static final MAX_IMAGE_DIMENSION:I = 0x1000

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
.method static bridge synthetic -$$Nest$sfgetASYNC_RELEASE_EXECUTOR()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->ASYNC_RELEASE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetactiveVideoListener()Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;
    .locals 1

    sget-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smactivate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$1;

    invoke-direct {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->ASYNC_RELEASE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 49
    const-string v0, "content://com.wukong.manager.otacard/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->CONFIG_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V
    .locals 2

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    .line 668
    :try_start_0
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eq v1, p0, :cond_1

    .line 669
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eqz v1, :cond_0

    .line 670
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    invoke-virtual {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    .line 672
    :cond_0
    sput-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    :cond_1
    monitor-exit v0

    return-void

    .line 667
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static applyCenterCrop(Landroid/view/TextureView;II)V
    .locals 4

    .line 700
    if-nez p0, :cond_0

    return-void

    .line 701
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    .line 702
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    .line 703
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    if-lez p1, :cond_3

    if-gtz p2, :cond_1

    goto :goto_1

    .line 705
    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 706
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 707
    nop

    .line 708
    nop

    .line 710
    cmpl-float p2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez p2, :cond_2

    .line 711
    div-float/2addr p1, v2

    move v2, v3

    move v3, p1

    goto :goto_0

    .line 713
    :cond_2
    div-float/2addr v2, p1

    .line 716
    :goto_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 717
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    div-float/2addr v1, p2

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 718
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 719
    return-void

    .line 703
    :cond_3
    :goto_1
    return-void
.end method

.method public static applyCustomVideoTransform(Landroid/content/Context;Landroid/view/TextureView;)Z
    .locals 4

    .line 610
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    .line 611
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    .line 612
    :cond_0
    nop

    .line 613
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 615
    :try_start_0
    iget-object v0, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 616
    const/16 p0, 0x12

    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->parseDimension(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 617
    const/16 v0, 0x13

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->parseDimension(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 620
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 621
    goto :goto_1

    .line 618
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception p0

    move p0, v1

    .line 620
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    :goto_1
    invoke-static {p1, p0, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 623
    const/4 p0, 0x1

    return p0

    .line 611
    :cond_1
    :goto_2
    return v1
.end method

.method private static applyEffect(Landroid/view/View;Z)V
    .locals 2

    .line 722
    if-nez p0, :cond_0

    return-void

    .line 723
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedBlurEffect:Landroid/graphics/RenderEffect;

    if-nez v0, :cond_1

    .line 724
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1, v1, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    sput-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedBlurEffect:Landroid/graphics/RenderEffect;

    .line 726
    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedBlurEffect:Landroid/graphics/RenderEffect;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 727
    return-void
.end method

.method public static applyHeaderColors(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 627
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->mode(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 629
    :cond_1
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyWhiteTextRecursively(Landroid/view/View;)V

    .line 630
    return-void

    .line 627
    :cond_2
    :goto_0
    return-void
.end method

.method public static applyImage(Landroid/content/Context;Landroid/widget/ImageView;)Z
    .locals 4

    .line 459
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    .line 460
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseAnyCustomVideo()V

    .line 461
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    if-nez p1, :cond_1

    return v3

    .line 467
    :cond_1
    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->loadImageDrawable(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 468
    if-nez p0, :cond_2

    .line 469
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 470
    return v1

    .line 472
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_3

    .line 473
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    :cond_3
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 476
    const/16 p0, 0xff

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 477
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 478
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 480
    return v3

    .line 462
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 463
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearImageCache()V

    .line 464
    return v1
.end method

.method public static applyVideoStyle(Landroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 2

    .line 599
    if-nez p0, :cond_0

    return-void

    .line 600
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 602
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 603
    if-eqz p1, :cond_1

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    :cond_1
    return-void

    .line 606
    :cond_2
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 607
    return-void
.end method

.method private static applyWhiteTextRecursively(Landroid/view/View;)V
    .locals 5

    .line 633
    if-nez p0, :cond_0

    return-void

    .line 634
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 635
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 636
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x56000000

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 639
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 640
    check-cast p0, Landroid/view/ViewGroup;

    .line 641
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 642
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyWhiteTextRecursively(Landroid/view/View;)V

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_2
    return-void
.end method

.method private static clampBlurLevel(I)I
    .locals 1

    .line 451
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static clearEffect(Landroid/view/View;)V
    .locals 1

    .line 730
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyEffect(Landroid/view/View;Z)V

    .line 731
    return-void
.end method

.method private static declared-synchronized clearImageCache()V
    .locals 2

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    .line 535
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageKey:Ljava/lang/String;

    .line 536
    sput-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit v0

    return-void

    .line 534
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static customVideoMarker(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 544
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
    .locals 7

    .line 505
    const-string v0, "WkOtaCardHook"

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 506
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 507
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 508
    if-nez v4, :cond_1

    .line 510
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 508
    :cond_0
    return-object v3

    .line 509
    :cond_1
    :try_start_1
    invoke-static {v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 510
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 513
    :cond_2
    nop

    .line 515
    move v4, v2

    .line 516
    :goto_0
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, v4

    const/16 v6, 0x1000

    if-gt v5, v6, :cond_8

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v4

    if-le v5, v6, :cond_3

    goto :goto_2

    .line 520
    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 521
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 522
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 523
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 524
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 525
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 526
    if-nez p0, :cond_5

    .line 528
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 526
    :cond_4
    return-object v3

    .line 527
    :cond_5
    :try_start_4
    invoke-static {p0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 528
    if-eqz p0, :cond_6

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 527
    :cond_6
    return-object p1

    .line 525
    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 528
    :catchall_2
    move-exception p0

    .line 529
    const-string p1, "Cannot decode custom OTA image"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    return-object v3

    .line 517
    :cond_8
    :goto_2
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 507
    :catchall_3
    move-exception p0

    if-eqz v4, :cond_9

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 510
    :catchall_5
    move-exception p0

    .line 511
    const-string p1, "Cannot read custom OTA image bounds"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    return-object v3
.end method

.method private static detachCustomListener(Landroid/view/TextureView;)V
    .locals 2

    .line 658
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    .line 659
    instance-of v1, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eqz v1, :cond_0

    .line 660
    check-cast v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 661
    invoke-virtual {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    .line 662
    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseActive(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 663
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 665
    :cond_0
    return-void
.end method

.method private static extractContext(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Context;
    .locals 3

    .line 264
    if-eqz p1, :cond_0

    .line 265
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->extractItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 266
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 270
    :cond_0
    if-eqz p0, :cond_2

    .line 272
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getContext"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 273
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 274
    :catchall_0
    move-exception p1

    .line 276
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 277
    if-eqz p1, :cond_1

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 279
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    .line 281
    :catchall_1
    move-exception p0

    :cond_1
    nop

    .line 283
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractItemView(Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .line 287
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 288
    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 290
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_2

    .line 292
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 293
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 295
    :catchall_0
    move-exception p0

    :cond_2
    nop

    .line 296
    return-object v0
.end method

.method private static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 382
    nop

    .line 383
    :goto_0
    if-eqz p0, :cond_0

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    .line 385
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 388
    goto :goto_0

    .line 390
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findViewByClass(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 370
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 371
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 372
    check-cast p0, Landroid/view/ViewGroup;

    .line 373
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 374
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findViewByClass(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    .line 375
    if-eqz v2, :cond_2

    return-object v2

    .line 373
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_3
    return-object v0
.end method

.method private static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 394
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 396
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 397
    if-eqz p1, :cond_1

    .line 398
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 399
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 401
    :catchall_0
    move-exception p0

    :cond_1
    nop

    .line 402
    return-object v0
.end method

.method public static getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 648
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    const-string v1, "https://t.me/OnePlus_Ace5_Port"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 650
    return-object v0
.end method

.method public static hook(Ljava/lang/Object;)V
    .locals 1

    .line 85
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public static hook(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 81
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method private static declared-synchronized loadImageDrawable(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    .line 484
    :try_start_0
    iget-object v1, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    iget v4, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blurLevel:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    sget-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 486
    sget-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    .line 488
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->decodeScaledBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 489
    if-nez v2, :cond_1

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 490
    :cond_1
    :try_start_2
    iget v3, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blurLevel:I

    if-eqz v3, :cond_2

    .line 491
    iget p1, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blurLevel:I

    invoke-static {v2, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->apply(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 493
    :cond_2
    sput-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageKey:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 495
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, p1}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 496
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 497
    :try_start_4
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 498
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 499
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 500
    sput-object p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 501
    sget-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-object p0

    .line 483
    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public static mode(Landroid/content/Context;)I
    .locals 0

    .line 410
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object p0

    .line 411
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    :goto_0
    return p0
.end method

.method public static onBind(Ljava/lang/Object;)V
    .locals 1

    .line 77
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public static onBind(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static onBindViewHolder(Ljava/lang/Object;)V
    .locals 1

    .line 89
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public static onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 94
    :try_start_0
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->extractContext(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    if-nez v2, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->extractItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 106
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseStockPlayer(Ljava/lang/Object;)V

    .line 109
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->resolveTextureView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/TextureView;

    move-result-object v2

    .line 110
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->resolveTopBg(Ljava/lang/Object;Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v3

    .line 111
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->resolveVideoMask(Ljava/lang/Object;Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v4

    .line 112
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->resolveTopCard(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 115
    iget p0, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v6, 0x2

    if-ne p0, v6, :cond_2

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setupVideoMode(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V

    goto :goto_0

    .line 117
    :cond_2
    iget p0, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v5, 0x1

    if-ne p0, v5, :cond_3

    .line 118
    invoke-static {v0, v1, v2, v3, v4}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setupImageMode(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 122
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 123
    invoke-static {v0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyHeaderColors(Landroid/content/Context;Landroid/view/View;)V

    .line 128
    :cond_4
    goto :goto_2

    .line 99
    :cond_5
    :goto_1
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseAnyCustomVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    return-void

    .line 126
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 127
    const-string p1, "WkOtaCardHook"

    const-string v0, "Exception in onBindViewHolder hook"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :goto_2
    return-void
.end method

.method private static parseDimension(Ljava/lang/String;)I
    .locals 1

    .line 691
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 693
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 694
    :catch_0
    move-exception p0

    .line 695
    return v0
.end method

.method private static declared-synchronized readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
    .locals 17

    const-class v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v1

    .line 415
    const/4 v2, 0x0

    if-nez p0, :cond_0

    monitor-exit v1

    return-object v2

    .line 416
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 417
    sget-boolean v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoaded:Z

    if-eqz v0, :cond_2

    sget-wide v5, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoadElapsed:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long v0, v5, v7

    if-ltz v0, :cond_1

    goto :goto_0

    .line 447
    :cond_1
    sget-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedSnapshot:Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    return-object v0

    .line 418
    :cond_2
    :goto_0
    nop

    .line 420
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v6, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->CONFIG_URI:Landroid/net/Uri;

    const-string v7, "get_config"

    invoke-virtual {v0, v6, v7, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_6

    const-string v6, "enabled"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 422
    const-string v6, "media_uri"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 423
    const-string v8, "type"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 424
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 425
    nop

    .line 426
    const-string v9, "Image"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 427
    move v10, v5

    goto :goto_1

    .line 428
    :cond_3
    const-string v9, "Video"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 429
    const/4 v8, 0x2

    move v10, v8

    goto :goto_1

    .line 428
    :cond_4
    move v10, v7

    .line 431
    :goto_1
    if-eqz v10, :cond_6

    .line 432
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 433
    const-string v6, "blur"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 434
    const-string v6, "blur_level"

    if-eqz v12, :cond_5

    const/16 v7, 0x3c

    :cond_5
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clampBlurLevel(I)I

    move-result v13

    .line 435
    const-string v6, "revision"

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 436
    const-string v6, "sound_enabled"

    const-string v7, "sound"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 437
    new-instance v9, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    invoke-direct/range {v9 .. v16}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;-><init>(ILandroid/net/Uri;ZIJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v9

    goto :goto_2

    .line 441
    :catchall_0
    move-exception v0

    :cond_6
    :goto_2
    nop

    .line 442
    :try_start_2
    sput-boolean v5, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoaded:Z

    .line 443
    sput-wide v3, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoadElapsed:J

    .line 444
    sput-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedSnapshot:Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 445
    monitor-exit v1

    return-object v2

    .line 414
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static declared-synchronized releaseActive(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V
    .locals 2

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    .line 677
    :try_start_0
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-ne v1, p0, :cond_0

    .line 678
    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :cond_0
    monitor-exit v0

    return-void

    .line 676
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized releaseAnyCustomVideo()V
    .locals 3

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    .line 683
    :try_start_0
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 684
    const/4 v2, 0x0

    sput-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 685
    if-eqz v1, :cond_0

    .line 686
    invoke-virtual {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :cond_0
    monitor-exit v0

    return-void

    .line 682
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static releaseStockPlayer(Ljava/lang/Object;)V
    .locals 8

    .line 220
    if-nez p0, :cond_0

    return-void

    .line 222
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "releaseAllMediaPlayers"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 224
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    goto :goto_3

    .line 225
    :catchall_0
    move-exception v2

    .line 227
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 228
    const-class v6, Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 229
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 230
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 231
    if-eqz v6, :cond_1

    .line 232
    :try_start_2
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    .line 233
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    .line 234
    :goto_2
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 227
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    :catchall_3
    move-exception v2

    :cond_2
    nop

    .line 243
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mIsTopMediaPlayerInitialized"

    invoke-static {v2, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_3

    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 246
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    .line 248
    :catchall_4
    move-exception v2

    :cond_3
    :goto_4
    nop

    .line 251
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mIsFirstBind"

    invoke-static {v2, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_4

    .line 253
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 254
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    .line 256
    :catchall_5
    move-exception p0

    :cond_4
    :goto_5
    nop

    .line 257
    return-void
.end method

.method private static resolveTextureView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/TextureView;
    .locals 1

    .line 300
    if-eqz p0, :cond_0

    .line 301
    const-string v0, "mAboutDeviceTopVideoBg"

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 302
    instance-of v0, p0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/TextureView;

    return-object p0

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    .line 305
    const-class p0, Landroid/view/TextureView;

    invoke-static {p1, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findViewByClass(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/TextureView;

    return-object p0

    .line 307
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveTopBg(Ljava/lang/Object;Landroid/view/View;)Landroid/widget/ImageView;
    .locals 4

    .line 311
    if-eqz p0, :cond_0

    .line 312
    const-string v0, "mAboutDeviceTopBg"

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 313
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    .line 315
    :cond_0
    if-eqz p1, :cond_2

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 317
    if-eqz p0, :cond_2

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "top_video_placeholder"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 320
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "about_device_top_bg"

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 321
    :cond_1
    if-eqz v1, :cond_2

    .line 322
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 323
    instance-of p1, p0, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    .line 327
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveTopCard(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 351
    if-eqz p0, :cond_0

    .line 352
    const-string v0, "mTopVideoCard"

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 353
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 355
    :cond_0
    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 357
    if-eqz p0, :cond_1

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "top_video_card"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 360
    if-eqz p0, :cond_1

    .line 361
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 365
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveVideoMask(Ljava/lang/Object;Landroid/view/View;)Landroid/widget/ImageView;
    .locals 4

    .line 331
    if-eqz p0, :cond_0

    .line 332
    const-string v0, "mAboutDeviceVideoMask"

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 333
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    .line 335
    :cond_0
    if-eqz p1, :cond_2

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 337
    if-eqz p0, :cond_2

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "about_device_video_mask"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 340
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "top_video_mask"

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 341
    :cond_1
    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 343
    instance-of p1, p0, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    .line 347
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setCustomVideoDataSource(Landroid/content/Context;Landroid/media/MediaPlayer;)Z
    .locals 3

    .line 548
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    .line 549
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 551
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-virtual {p1, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 552
    iget-boolean p0, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->soundEnabled:Z

    if-eqz p0, :cond_1

    .line 553
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 555
    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :goto_0
    const/4 p0, 0x1

    return p0

    .line 558
    :catchall_0
    move-exception p0

    .line 559
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to open custom OTA video"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 549
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setupCustomVideo(Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;)Z
    .locals 11

    .line 564
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 565
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v1

    .line 566
    if-eqz v1, :cond_6

    iget v2, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move-object v9, p0

    goto :goto_0

    .line 572
    :cond_1
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearImageCache()V

    .line 573
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 574
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 575
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    :cond_3
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p2

    .line 579
    instance-of v0, p2, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 580
    check-cast p2, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 581
    invoke-virtual {p2, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->matches(Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 582
    invoke-static {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 583
    invoke-virtual {p2, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->updateCover(Landroid/widget/ImageView;)V

    .line 584
    invoke-virtual {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    .line 585
    return v2

    .line 587
    :cond_4
    invoke-virtual {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    .line 589
    :cond_5
    new-instance v3, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 590
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    iget-wide v6, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    iget-boolean v8, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->soundEnabled:Z

    move-object v9, p0

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;-><init>(Landroid/content/Context;Landroid/net/Uri;JZLandroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 592
    invoke-static {v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 593
    invoke-virtual {v9, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 594
    invoke-virtual {v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    .line 595
    return v2

    .line 566
    :cond_6
    move-object v9, p0

    .line 567
    :goto_0
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseAnyCustomVideo()V

    .line 568
    invoke-static {v9}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->detachCustomListener(Landroid/view/TextureView;)V

    .line 569
    invoke-static {v9}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 570
    return v0
.end method

.method private static setupImageMode(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    .line 191
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseAnyCustomVideo()V

    .line 192
    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 193
    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 194
    invoke-static {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 196
    :cond_0
    const/4 p2, 0x0

    if-eqz p4, :cond_1

    .line 197
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 202
    :cond_2
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->loadImageDrawable(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 203
    if-eqz p0, :cond_4

    .line 204
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, p0, :cond_3

    .line 205
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_3
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 208
    const/16 p0, 0xff

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 209
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 210
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    invoke-static {p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 213
    :cond_4
    return-void
.end method

.method private static setupVideoMode(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 10

    .line 138
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearImageCache()V

    .line 139
    const-string v0, "WkOtaCardHook"

    if-nez p2, :cond_0

    .line 140
    const-string p0, "TextureView not found for custom video"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 144
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 145
    invoke-static {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 147
    if-eqz p4, :cond_1

    .line 148
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_1
    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p4

    .line 153
    instance-of v1, p4, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eqz v1, :cond_3

    .line 154
    check-cast p4, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 155
    invoke-virtual {p4, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->matches(Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    invoke-static {p4}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 157
    invoke-virtual {p4, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->updateCover(Landroid/widget/ImageView;)V

    .line 158
    invoke-virtual {p4}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    .line 159
    return-void

    .line 161
    :cond_2
    invoke-virtual {p4}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    .line 164
    :cond_3
    new-instance v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    iget-object v4, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    iget-boolean v7, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->soundEnabled:Z

    move-object v3, p0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;-><init>(Landroid/content/Context;Landroid/net/Uri;JZLandroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 167
    invoke-static {v2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 168
    invoke-virtual {v8, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 169
    iget-boolean p0, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->soundEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attached custom OTA Media Player (Sound="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    .line 173
    new-instance p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$2;

    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$2;-><init>()V

    .line 182
    invoke-virtual {v8, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    if-eqz p5, :cond_4

    .line 184
    invoke-virtual {p5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_4
    return-void
.end method
