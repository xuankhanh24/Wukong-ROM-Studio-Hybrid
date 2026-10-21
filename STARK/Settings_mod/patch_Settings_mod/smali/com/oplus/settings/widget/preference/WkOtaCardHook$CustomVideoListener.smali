.class final Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;
.super Ljava/lang/Object;
.source "WkOtaCardHook.java"

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
.field private audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioManager:Landroid/media/AudioManager;

.field private final context:Landroid/content/Context;

.field private cover:Landroid/widget/ImageView;

.field private isManuallyPaused:Z

.field private observingWindowFocus:Z

.field private player:Landroid/media/MediaPlayer;

.field private retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final revision:J

.field private final soundEnabled:Z

.field private surface:Landroid/view/Surface;

.field private final uri:Landroid/net/Uri;

.field private final video:Landroid/view/TextureView;


# direct methods
.method static bridge synthetic -$$Nest$mhandleAudioFocusChange(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->handleAudioFocusChange(I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;JZLandroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 1

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->isManuallyPaused:Z

    .line 779
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 780
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->context:Landroid/content/Context;

    .line 781
    iput-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->uri:Landroid/net/Uri;

    .line 782
    iput-wide p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->revision:J

    .line 783
    iput-boolean p5, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    .line 784
    iput-object p6, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    .line 785
    iput-object p7, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    .line 787
    if-eqz p5, :cond_1

    .line 789
    :try_start_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->context:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    .line 790
    new-instance p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$1;

    invoke-direct {p1, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$1;-><init>(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 796
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 799
    :cond_1
    invoke-virtual {p6}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 800
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 801
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 802
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->observingWindowFocus:Z

    .line 804
    :cond_2
    return-void
.end method

.method private abandonFocus()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    .line 858
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_2

    .line 861
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 863
    :catchall_0
    move-exception v0

    :cond_2
    :goto_0
    nop

    .line 864
    return-void
.end method

.method private handleAudioFocusChange(I)V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    .line 812
    if-nez v0, :cond_0

    return-void

    .line 814
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 825
    :pswitch_1
    const/high16 p1, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 826
    iget-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->isManuallyPaused:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 827
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 817
    :pswitch_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 818
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 822
    :pswitch_3
    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    goto :goto_0

    .line 831
    :catchall_0
    move-exception p1

    :cond_1
    :goto_0
    nop

    .line 832
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private open(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 1054
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    .line 1055
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 1056
    iput-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    .line 1058
    :try_start_0
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1059
    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->replaceSurface(Landroid/graphics/SurfaceTexture;)V

    .line 1060
    iget-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1061
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1062
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 1063
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 1064
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 1065
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 1066
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1067
    goto :goto_0

    .line 1068
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1070
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1071
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1072
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1073
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1074
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    goto :goto_1

    .line 1075
    :catchall_0
    move-exception p1

    .line 1076
    const-string v0, "WkOtaCardHook"

    const-string v1, "Cannot open media player"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    .line 1079
    :goto_1
    return-void
.end method

.method private releasePlayer()V
    .locals 4

    .line 1094
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->abandonFocus()V

    .line 1095
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    .line 1096
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    .line 1097
    iget-object v2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    .line 1098
    iput-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    .line 1099
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 1100
    :cond_0
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$sfgetASYNC_RELEASE_EXECUTOR()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;-><init>(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;Landroid/media/MediaPlayer;Landroid/view/Surface;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1114
    :cond_1
    return-void
.end method

.method private releaseRetainedTexture()V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1119
    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1122
    :cond_0
    return-void
.end method

.method private replaceSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1082
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1083
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    .line 1084
    iput-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    .line 1085
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1088
    :cond_0
    if-eqz p1, :cond_1

    .line 1089
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 1091
    :cond_1
    return-void
.end method

.method private requestFocus()V
    .locals 3

    .line 835
    iget-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 837
    :cond_0
    nop

    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_1

    .line 839
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 840
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 841
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 843
    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v2, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 844
    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 845
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 852
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 853
    return-void

    .line 835
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method matches(Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Z
    .locals 4

    .line 807
    iget-wide v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->revision:J

    iget-wide v2, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    iget-boolean p1, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->soundEnabled:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 1009
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Media Player error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WkOtaCardHook"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 1011
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1013
    :cond_0
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    .line 1014
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 966
    const-string v0, "WkOtaCardHook"

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-ne p1, v1, :cond_4

    .line 968
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    .line 969
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    .line 970
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    if-eqz v3, :cond_0

    .line 971
    iget-object v3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 972
    if-eqz v3, :cond_0

    .line 973
    invoke-virtual {v3, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 976
    :cond_0
    iget-object v3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-static {v3, v1, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 977
    iget-boolean v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->isManuallyPaused:Z

    if-nez v1, :cond_2

    .line 978
    iget-boolean v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    if-eqz v1, :cond_1

    .line 979
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->requestFocus()V

    .line 981
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 983
    :cond_2
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 984
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 986
    :cond_3
    iget-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media Player prepared and playing. Sound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    goto :goto_0

    .line 987
    :catchall_0
    move-exception p1

    .line 988
    const-string v1, "Cannot start media player"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    .line 992
    :cond_4
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 925
    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p2, p1, :cond_0

    .line 926
    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 928
    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 929
    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-nez p2, :cond_1

    .line 930
    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->open(Landroid/graphics/SurfaceTexture;)V

    .line 931
    return-void

    .line 933
    :cond_1
    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    .line 934
    iget-object p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p3

    .line 935
    if-lez p2, :cond_2

    if-lez p3, :cond_2

    .line 936
    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 938
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->replaceSurface(Landroid/graphics/SurfaceTexture;)V

    .line 939
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-static {p1, p2, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 940
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->updateCover(Landroid/widget/ImageView;)V

    .line 941
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 946
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 951
    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_1

    .line 952
    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    .line 953
    iget-object p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p3

    .line 954
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 955
    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 957
    :cond_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-static {p1, p2, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 959
    :cond_1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 962
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_1

    .line 997
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    if-eqz p1, :cond_0

    .line 998
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 999
    if-eqz p1, :cond_0

    .line 1000
    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1003
    :cond_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-static {p1, p2, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 1005
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1019
    if-eqz p1, :cond_4

    .line 1020
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$smactivate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 1021
    iget-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->isManuallyPaused:Z

    if-nez p1, :cond_6

    .line 1022
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    .line 1024
    :try_start_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1025
    iget-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    if-eqz p1, :cond_0

    .line 1026
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->requestFocus()V

    .line 1028
    :cond_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1030
    :cond_1
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 1031
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1033
    :catchall_0
    move-exception p1

    .line 1034
    invoke-virtual {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    .line 1035
    :cond_2
    :goto_0
    goto :goto_2

    .line 1037
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    goto :goto_2

    .line 1042
    :cond_4
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_6

    .line 1044
    :try_start_1
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1045
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1047
    :catchall_1
    move-exception p1

    :cond_5
    :goto_1
    nop

    .line 1048
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->abandonFocus()V

    .line 1051
    :cond_6
    :goto_2
    return-void
.end method

.method release()V
    .locals 2

    .line 901
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    .line 902
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releaseRetainedTexture()V

    .line 903
    iget-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->observingWindowFocus:Z

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 908
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->observingWindowFocus:Z

    .line 910
    :cond_1
    return-void
.end method

.method startIfAvailable()V
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->isManuallyPaused:Z

    if-nez v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 869
    if-eqz v0, :cond_0

    .line 870
    invoke-direct {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->open(Landroid/graphics/SurfaceTexture;)V

    .line 873
    :cond_0
    return-void
.end method

.method togglePlayPause()V
    .locals 3

    .line 876
    const-string v0, "WkOtaCardHook"

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 877
    iput-boolean v2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->isManuallyPaused:Z

    .line 878
    invoke-virtual {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    .line 879
    return-void

    .line 882
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 884
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->abandonFocus()V

    .line 885
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->isManuallyPaused:Z

    .line 886
    const-string v1, "Media Player: Paused by user tap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 888
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    if-eqz v1, :cond_2

    .line 889
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->requestFocus()V

    .line 891
    :cond_2
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 892
    iput-boolean v2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->isManuallyPaused:Z

    .line 893
    const-string v1, "Media Player: Resumed by user tap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    :goto_0
    goto :goto_1

    .line 895
    :catchall_0
    move-exception v1

    .line 896
    const-string v2, "Failed to toggle play/pause"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 898
    :goto_1
    return-void
.end method

.method updateCover(Landroid/widget/ImageView;)V
    .locals 1

    .line 913
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    .line 914
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 919
    :catchall_0
    move-exception p1

    :cond_0
    :goto_0
    nop

    .line 921
    :cond_1
    return-void
.end method
