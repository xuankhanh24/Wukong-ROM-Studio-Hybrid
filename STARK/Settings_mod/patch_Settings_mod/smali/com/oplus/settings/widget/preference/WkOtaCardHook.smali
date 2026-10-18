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

.field private static volatile savedPlaybackPosition:I

.field private static snapshotLoadElapsed:J

.field private static snapshotLoaded:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetASYNC_RELEASE_EXECUTOR()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->ASYNC_RELEASE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsavedPlaybackPosition()I
    .locals 1

    sget v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->savedPlaybackPosition:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsavedPlaybackPosition(I)V
    .locals 0

    sput p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->savedPlaybackPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smactivate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smextractContext(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Context;
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->extractContext(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$1;

    invoke-direct {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->ASYNC_RELEASE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 51
    const-string v0, "content://com.wukong.manager.otacard/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->CONFIG_URI:Landroid/net/Uri;

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->savedPlaybackPosition:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V
    .locals 2

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    .line 796
    :try_start_0
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eq v1, p0, :cond_1

    .line 797
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eqz v1, :cond_0

    .line 798
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    invoke-virtual {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    .line 800
    :cond_0
    sput-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    :cond_1
    monitor-exit v0

    return-void

    .line 795
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static applyCenterCrop(Landroid/view/TextureView;II)V
    .locals 4

    .line 828
    if-nez p0, :cond_0

    return-void

    .line 829
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    .line 830
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    .line 831
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    if-lez p1, :cond_3

    if-gtz p2, :cond_1

    goto :goto_1

    .line 833
    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 834
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 835
    nop

    .line 836
    nop

    .line 838
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    .line 839
    div-float/2addr p1, v2

    move p2, p1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 841
    :cond_2
    div-float/2addr v2, p1

    .line 844
    :goto_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 845
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 846
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 847
    return-void

    .line 831
    :cond_3
    :goto_1
    return-void
.end method

.method public static applyCustomVideoTransform(Landroid/content/Context;Landroid/view/TextureView;)Z
    .locals 4

    .line 620
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    .line 621
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    .line 622
    :cond_0
    nop

    .line 623
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 625
    :try_start_0
    iget-object v0, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-virtual {v2, p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 626
    const/16 p0, 0x12

    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->parseDimension(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 627
    const/16 v0, 0x13

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->parseDimension(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 630
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 631
    goto :goto_1

    .line 628
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception p0

    const/4 p0, 0x0

    .line 630
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    :goto_1
    invoke-static {p1, p0, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 633
    const/4 p0, 0x1

    return p0

    .line 621
    :cond_1
    :goto_2
    return v1
.end method

.method private static applyEffect(Landroid/view/View;Z)V
    .locals 2

    .line 850
    if-nez p0, :cond_0

    return-void

    .line 851
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedBlurEffect:Landroid/graphics/RenderEffect;

    if-nez v0, :cond_1

    .line 852
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1, v1, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    sput-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedBlurEffect:Landroid/graphics/RenderEffect;

    .line 854
    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedBlurEffect:Landroid/graphics/RenderEffect;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 855
    return-void
.end method

.method public static applyHeaderColors(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 637
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->mode(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 639
    :cond_1
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyWhiteTextRecursively(Landroid/view/View;)V

    .line 640
    return-void

    .line 637
    :cond_2
    :goto_0
    return-void
.end method

.method public static applyImage(Landroid/content/Context;Landroid/widget/ImageView;)Z
    .locals 4

    .line 477
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    .line 478
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseAnyCustomVideo()V

    .line 479
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    if-nez p1, :cond_1

    return v3

    .line 485
    :cond_1
    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->loadImageDrawable(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 486
    if-nez p0, :cond_2

    .line 487
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 488
    return v1

    .line 490
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_3

    .line 491
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 494
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 496
    return v3

    .line 480
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 481
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearImageCache()V

    .line 482
    return v1
.end method

.method public static applyVideoStyle(Landroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 2

    .line 609
    if-nez p0, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 612
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 613
    if-eqz p1, :cond_1

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    :cond_1
    return-void

    .line 616
    :cond_2
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 617
    return-void
.end method

.method private static applyWhiteTextRecursively(Landroid/view/View;)V
    .locals 5

    .line 643
    if-nez p0, :cond_0

    return-void

    .line 644
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 645
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 646
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 647
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x56000000

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 649
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 650
    check-cast p0, Landroid/view/ViewGroup;

    .line 651
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 652
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyWhiteTextRecursively(Landroid/view/View;)V

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_2
    return-void
.end method

.method private static clampBlurLevel(I)I
    .locals 1

    .line 469
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

    .line 858
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyEffect(Landroid/view/View;Z)V

    .line 859
    return-void
.end method

.method private static declared-synchronized clearImageCache()V
    .locals 2

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    .line 545
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageKey:Ljava/lang/String;

    .line 546
    sput-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit v0

    return-void

    .line 544
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static customVideoMarker(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 554
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
    .locals 6

    .line 517
    const-string v0, "WkOtaCardHook"

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 518
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 519
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 520
    if-nez v4, :cond_1

    .line 522
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 520
    :cond_0
    return-object v3

    .line 521
    :cond_1
    :try_start_1
    invoke-static {v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 522
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 525
    :cond_2
    nop

    .line 527
    nop

    .line 528
    :goto_0
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v2

    const/16 v5, 0x500

    if-gt v4, v5, :cond_8

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v2

    if-le v4, v5, :cond_3

    goto :goto_2

    .line 532
    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 533
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 534
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 535
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 536
    if-nez p0, :cond_5

    .line 538
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 536
    :cond_4
    return-object v3

    .line 537
    :cond_5
    :try_start_4
    invoke-static {p0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 538
    if-eqz p0, :cond_6

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 537
    :cond_6
    return-object p1

    .line 535
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
    invoke-static {p1, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 538
    :catchall_2
    move-exception p0

    .line 539
    const-string p1, "Cannot decode custom OTA image"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    return-object v3

    .line 529
    :cond_8
    :goto_2
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 519
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
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 522
    :catchall_5
    move-exception p0

    .line 523
    const-string p1, "Cannot read custom OTA image bounds"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    return-object v3
.end method

.method private static detachCustomListener(Landroid/view/TextureView;)V
    .locals 2

    .line 786
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    .line 787
    instance-of v1, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-eqz v1, :cond_0

    .line 788
    check-cast v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 789
    invoke-virtual {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    .line 790
    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseActive(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 793
    :cond_0
    return-void
.end method

.method private static extractContext(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Context;
    .locals 3

    .line 256
    if-eqz p1, :cond_0

    .line 257
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->extractItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 258
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 262
    :cond_0
    if-eqz p0, :cond_2

    .line 264
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getContext"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 265
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 266
    :catchall_0
    move-exception p1

    .line 268
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 269
    if-eqz p1, :cond_1

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 271
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    .line 273
    :catchall_1
    move-exception p0

    :cond_1
    nop

    .line 275
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractItemView(Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .line 279
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 280
    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 282
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_2

    .line 284
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 285
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 287
    :catchall_0
    move-exception p0

    :cond_2
    nop

    .line 288
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

    .line 374
    nop

    .line 375
    :goto_0
    if-eqz p0, :cond_0

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    .line 377
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 380
    goto :goto_0

    .line 382
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 398
    nop

    .line 399
    :goto_0
    if-eqz p0, :cond_0

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    .line 401
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 404
    goto :goto_0

    .line 406
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

    .line 361
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 362
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 363
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 364
    check-cast p0, Landroid/view/ViewGroup;

    .line 365
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 366
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findViewByClass(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    .line 367
    if-eqz v2, :cond_2

    return-object v2

    .line 365
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_3
    return-object v0
.end method

.method private static findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 410
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 415
    if-eqz p1, :cond_1

    .line 416
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 419
    :catchall_0
    move-exception p0

    :cond_1
    nop

    .line 420
    return-object v0

    .line 410
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 386
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 388
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 389
    if-eqz p1, :cond_1

    .line 390
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 391
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 393
    :catchall_0
    move-exception p0

    :cond_1
    nop

    .line 394
    return-object v0
.end method

.method public static getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 658
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    const-string v1, "https://t.me/OnePlus_Ace5_Port"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 660
    return-object v0
.end method

.method public static hook(Ljava/lang/Object;)V
    .locals 1

    .line 88
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public static hook(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method private static declared-synchronized loadImageDrawable(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    .line 500
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

    .line 501
    sget-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 502
    sget-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 504
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->decodeScaledBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    if-nez v2, :cond_1

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 506
    :cond_1
    :try_start_2
    iget v3, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blurLevel:I

    if-eqz v3, :cond_2

    .line 507
    iget p1, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->blurLevel:I

    invoke-static {v2, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardBlur;->apply(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 509
    :cond_2
    sput-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageKey:Ljava/lang/String;

    .line 510
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 511
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 512
    sput-object p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 513
    sget-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 499
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static makeTouchTransparent(Landroid/view/View;)V
    .locals 2

    .line 675
    if-nez p0, :cond_0

    return-void

    .line 676
    :cond_0
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    return-void

    .line 677
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 678
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 679
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 680
    check-cast p0, Landroid/view/ViewGroup;

    .line 681
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 682
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->makeTouchTransparent(Landroid/view/View;)V

    .line 681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    :cond_2
    return-void
.end method

.method public static mode(Landroid/content/Context;)I
    .locals 0

    .line 428
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object p0

    .line 429
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

    .line 80
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public static onBind(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 76
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static onBindViewHolder(Ljava/lang/Object;)V
    .locals 1

    .line 92
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public static onBindViewHolder(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 97
    :try_start_0
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->extractContext(Ljava/lang/Object;Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v6

    .line 98
    if-nez v6, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->extractItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 101
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->resolveTopCard(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 103
    invoke-static {v6}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_5

    iget v0, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseStockPlayer(Ljava/lang/Object;)V

    .line 115
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->resolveTextureView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/TextureView;

    move-result-object v2

    .line 116
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->resolveTopBg(Ljava/lang/Object;Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v3

    .line 117
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->resolveVideoMask(Ljava/lang/Object;Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v4

    .line 120
    iget v0, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 121
    move-object v0, v6

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setupVideoMode(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V

    goto :goto_0

    .line 122
    :cond_2
    iget v0, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 123
    invoke-static {v6, v1, v2, v3, v4}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setupImageMode(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 127
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 128
    invoke-static {v6, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyHeaderColors(Landroid/content/Context;Landroid/view/View;)V

    .line 132
    :cond_4
    invoke-static {p0, p1, v7}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setupTelegramClick(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;)V

    .line 136
    goto :goto_2

    .line 105
    :cond_5
    :goto_1
    const/4 v0, 0x0

    sput v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->savedPlaybackPosition:I

    .line 106
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseAnyCustomVideo()V

    .line 107
    invoke-static {p0, p1, v7}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->setupTelegramClick(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    return-void

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    const-string p1, "WkOtaCardHook"

    const-string v0, "Exception in onBindViewHolder hook"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_2
    return-void
.end method

.method public static openTelegramLink(Landroid/content/Context;)V
    .locals 2

    .line 664
    if-nez p0, :cond_0

    return-void

    .line 666
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    .line 667
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    goto :goto_0

    .line 669
    :catchall_0
    move-exception p0

    .line 670
    const-string v0, "WkOtaCardHook"

    const-string v1, "Failed to launch Telegram intent"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    :goto_0
    return-void
.end method

.method private static parseDimension(Ljava/lang/String;)I
    .locals 1

    .line 819
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 821
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 822
    :catch_0
    move-exception p0

    .line 823
    return v0
.end method

.method private static declared-synchronized readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
    .locals 17

    const-class v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v1

    .line 433
    const/4 v2, 0x0

    if-nez p0, :cond_0

    monitor-exit v1

    return-object v2

    .line 434
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 435
    sget-boolean v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoaded:Z

    if-eqz v0, :cond_2

    sget-wide v5, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoadElapsed:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long v0, v5, v7

    if-ltz v0, :cond_1

    goto :goto_0

    .line 465
    :cond_1
    sget-object v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedSnapshot:Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    return-object v0

    .line 436
    :cond_2
    :goto_0
    nop

    .line 438
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v6, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->CONFIG_URI:Landroid/net/Uri;

    const-string v7, "get_config"

    invoke-virtual {v0, v6, v7, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_6

    const-string v6, "enabled"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 440
    const-string v6, "media_uri"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 441
    const-string v8, "type"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 442
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 443
    nop

    .line 444
    const-string v9, "Image"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 445
    const/4 v10, 0x1

    goto :goto_1

    .line 446
    :cond_3
    const-string v9, "Video"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 447
    const/4 v8, 0x2

    const/4 v10, 0x2

    goto :goto_1

    .line 446
    :cond_4
    const/4 v10, 0x0

    .line 449
    :goto_1
    if-eqz v10, :cond_6

    .line 450
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 451
    const-string v6, "blur"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 452
    const-string v6, "blur_level"

    if-eqz v12, :cond_5

    const/16 v7, 0x3c

    :cond_5
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clampBlurLevel(I)I

    move-result v13

    .line 453
    const-string v6, "revision"

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 454
    const-string v6, "sound_enabled"

    const-string v7, "sound"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 455
    new-instance v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;-><init>(ILandroid/net/Uri;ZIJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_2

    .line 459
    :catchall_0
    move-exception v0

    :cond_6
    :goto_2
    nop

    .line 460
    :try_start_2
    sput-boolean v5, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoaded:Z

    .line 461
    sput-wide v3, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->snapshotLoadElapsed:J

    .line 462
    sput-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->cachedSnapshot:Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 463
    monitor-exit v1

    return-object v2

    .line 432
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized releaseActive(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V
    .locals 2

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    .line 805
    :try_start_0
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    if-ne v1, p0, :cond_0

    .line 806
    const/4 p0, 0x0

    sput-object p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :cond_0
    monitor-exit v0

    return-void

    .line 804
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized releaseAnyCustomVideo()V
    .locals 3

    const-class v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;

    monitor-enter v0

    .line 811
    :try_start_0
    sget-object v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 812
    const/4 v2, 0x0

    sput-object v2, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 813
    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :cond_0
    monitor-exit v0

    return-void

    .line 810
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static releaseStockPlayer(Ljava/lang/Object;)V
    .locals 8

    .line 212
    if-nez p0, :cond_0

    return-void

    .line 214
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

    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 216
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    goto :goto_3

    .line 217
    :catchall_0
    move-exception v2

    .line 219
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 220
    const-class v6, Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 222
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 223
    if-eqz v6, :cond_1

    .line 224
    :try_start_2
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    .line 225
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    .line 226
    :goto_2
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 219
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    :catchall_3
    move-exception v2

    :cond_2
    nop

    .line 235
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mIsTopMediaPlayerInitialized"

    invoke-static {v2, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_3

    .line 237
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 238
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    .line 240
    :catchall_4
    move-exception v2

    :cond_3
    :goto_4
    nop

    .line 243
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mIsFirstBind"

    invoke-static {v2, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_4

    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 246
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    .line 248
    :catchall_5
    move-exception p0

    :cond_4
    :goto_5
    nop

    .line 249
    return-void
.end method

.method private static resolveTextureView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/TextureView;
    .locals 1

    .line 292
    if-eqz p0, :cond_0

    .line 293
    const-string v0, "mAboutDeviceTopVideoBg"

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 294
    instance-of v0, p0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/TextureView;

    return-object p0

    .line 296
    :cond_0
    if-eqz p1, :cond_1

    .line 297
    const-class p0, Landroid/view/TextureView;

    invoke-static {p1, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findViewByClass(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/TextureView;

    return-object p0

    .line 299
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveTopBg(Ljava/lang/Object;Landroid/view/View;)Landroid/widget/ImageView;
    .locals 4

    .line 303
    if-eqz p0, :cond_0

    .line 304
    const-string v0, "mAboutDeviceTopBg"

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 305
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    .line 307
    :cond_0
    if-eqz p1, :cond_2

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 309
    if-eqz p0, :cond_2

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "top_video_placeholder"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 312
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "about_device_top_bg"

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 313
    :cond_1
    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 315
    instance-of p1, p0, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    .line 319
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveTopCard(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 343
    if-eqz p0, :cond_0

    .line 344
    const-string v0, "mTopVideoCard"

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 345
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 347
    :cond_0
    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 349
    if-eqz p0, :cond_1

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "top_video_card"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 352
    if-eqz p0, :cond_1

    .line 353
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 357
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveVideoMask(Ljava/lang/Object;Landroid/view/View;)Landroid/widget/ImageView;
    .locals 4

    .line 323
    if-eqz p0, :cond_0

    .line 324
    const-string v0, "mAboutDeviceVideoMask"

    invoke-static {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 325
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    .line 327
    :cond_0
    if-eqz p1, :cond_2

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 329
    if-eqz p0, :cond_2

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "about_device_video_mask"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 332
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "top_video_mask"

    invoke-virtual {p0, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 333
    :cond_1
    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 335
    instance-of p1, p0, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    .line 339
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setCustomVideoDataSource(Landroid/content/Context;Landroid/media/MediaPlayer;)Z
    .locals 3

    .line 558
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 561
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-virtual {p1, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 562
    iget-boolean p0, v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->soundEnabled:Z

    if-eqz p0, :cond_1

    .line 563
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 565
    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :goto_0
    const/4 p0, 0x1

    return p0

    .line 568
    :catchall_0
    move-exception p0

    .line 569
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to open custom OTA video"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 559
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setupCustomVideo(Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;)Z
    .locals 11

    .line 574
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 575
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->readSnapshot(Landroid/content/Context;)Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;

    move-result-object v1

    .line 576
    if-eqz v1, :cond_6

    iget v2, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->mode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 582
    :cond_1
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearImageCache()V

    .line 583
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 584
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 585
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    :cond_3
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p2

    .line 589
    instance-of v0, p2, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 590
    check-cast p2, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 591
    invoke-virtual {p2, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->matches(Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 592
    invoke-static {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 593
    invoke-virtual {p2, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->updateCover(Landroid/widget/ImageView;)V

    .line 594
    invoke-virtual {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    .line 595
    return v2

    .line 597
    :cond_4
    invoke-virtual {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    .line 599
    :cond_5
    new-instance p2, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 600
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    iget-wide v6, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    iget-boolean v8, v1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->soundEnabled:Z

    move-object v3, p2

    move-object v9, p0

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;-><init>(Landroid/content/Context;Landroid/net/Uri;JZLandroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 602
    invoke-static {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 603
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 604
    invoke-virtual {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    .line 605
    return v2

    .line 577
    :cond_6
    :goto_0
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseAnyCustomVideo()V

    .line 578
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->detachCustomListener(Landroid/view/TextureView;)V

    .line 579
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 580
    return v0
.end method

.method private static setupImageMode(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 2

    .line 185
    const/4 v0, 0x0

    sput v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->savedPlaybackPosition:I

    .line 186
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->releaseAnyCustomVideo()V

    .line 187
    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 188
    invoke-virtual {p2, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 189
    invoke-static {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 191
    :cond_0
    if-eqz p4, :cond_1

    .line 192
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 196
    :cond_2
    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->loadImageDrawable(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 197
    if-eqz p0, :cond_4

    .line 198
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq p1, p0, :cond_3

    .line 199
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 202
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    invoke-static {p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 205
    :cond_4
    return-void
.end method

.method private static setupTelegramClick(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 688
    new-instance v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$2;

    invoke-direct {v0, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$2;-><init>(Ljava/lang/Object;)V

    .line 702
    if-eqz p1, :cond_3

    .line 703
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    const-string v1, "update_find"

    invoke-static {p1, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 705
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    :cond_0
    const-string v1, "update_txt"

    invoke-static {p1, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 708
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    :cond_1
    const-string v1, "update_btn"

    invoke-static {p1, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 711
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    :cond_2
    const-string v1, "easter_egg_video"

    invoke-static {p1, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    .line 714
    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    :cond_3
    if-eqz p2, :cond_4

    .line 718
    invoke-static {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->makeTouchTransparent(Landroid/view/View;)V

    .line 721
    :cond_4
    if-eqz p0, :cond_c

    .line 722
    const-string p1, "mUpdateFind"

    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 723
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_5

    .line 724
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    :cond_5
    const-string p1, "mUpdateTxt"

    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 727
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_6

    .line 728
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    :cond_6
    const-string p1, "mTopVideoCard"

    invoke-static {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 731
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_7

    .line 732
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->makeTouchTransparent(Landroid/view/View;)V

    .line 736
    :cond_7
    const/4 p1, 0x0

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setIntent"

    new-array v2, p2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, p1

    invoke-static {v0, v1, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_8

    .line 738
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 739
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    new-array v2, p2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 741
    :catchall_0
    move-exception v0

    :cond_8
    :goto_0
    nop

    .line 744
    nop

    .line 745
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 747
    :try_start_2
    const-string v1, "androidx.preference.Preference$OnPreferenceClickListener"

    invoke-static {v1, p1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 755
    goto :goto_2

    .line 748
    :catchall_1
    move-exception v0

    .line 749
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    .line 750
    const-string v4, "OnPreferenceClickListener"

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 751
    nop

    .line 752
    move-object v0, v3

    goto :goto_2

    .line 749
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    .line 756
    :goto_2
    if-eqz v0, :cond_b

    .line 757
    nop

    .line 758
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v2, p2, [Ljava/lang/Class;

    aput-object v0, v2, p1

    new-instance v3, Lcom/oplus/settings/widget/preference/WkOtaCardHook$3;

    invoke-direct {v3, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$3;-><init>(Ljava/lang/Object;)V

    .line 757
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 771
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setOnPreferenceClickListener"

    new-array v4, p2, [Ljava/lang/Class;

    aput-object v0, v4, p1

    invoke-static {v2, v3, v4}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_b

    .line 773
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 774
    new-array p2, p2, [Ljava/lang/Object;

    aput-object v1, p2, p1

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 777
    :catchall_2
    move-exception p0

    :cond_b
    :goto_3
    nop

    .line 779
    :cond_c
    return-void
.end method

.method private static setupVideoMode(Landroid/content/Context;Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 10

    .line 146
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearImageCache()V

    .line 147
    const-string p5, "WkOtaCardHook"

    if-nez p2, :cond_0

    .line 148
    const-string p0, "TextureView not found for custom video"

    invoke-static {p5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 153
    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setClickable(Z)V

    .line 154
    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 155
    invoke-static {p2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->clearEffect(Landroid/view/View;)V

    .line 157
    if-eqz p4, :cond_1

    .line 158
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :cond_1
    sget-object p4, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activeVideoListener:Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    .line 162
    if-eqz p4, :cond_2

    invoke-virtual {p4, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->matches(Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {p4, p2, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->rebind(Landroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 164
    invoke-virtual {p2, p4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 165
    return-void

    .line 168
    :cond_2
    if-eqz p4, :cond_3

    .line 169
    sput v0, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->savedPlaybackPosition:I

    .line 170
    invoke-virtual {p4}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->release()V

    .line 173
    :cond_3
    new-instance p4, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;

    iget-object v4, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    iget-boolean v7, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->soundEnabled:Z

    move-object v2, p4

    move-object v3, p0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;-><init>(Landroid/content/Context;Landroid/net/Uri;JZLandroid/view/TextureView;Landroid/widget/ImageView;)V

    .line 176
    invoke-static {p4}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->activate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 177
    invoke-virtual {p2, p4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 178
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

    invoke-static {p5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p4}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    .line 180
    return-void
.end method
