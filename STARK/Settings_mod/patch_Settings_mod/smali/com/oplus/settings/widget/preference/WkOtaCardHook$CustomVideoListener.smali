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

.field private observingWindowFocus:Z

.field private player:Landroid/media/MediaPlayer;

.field private retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final revision:J

.field private final soundEnabled:Z

.field private surface:Landroid/view/Surface;

.field private final uri:Landroid/net/Uri;

.field private video:Landroid/view/TextureView;


# direct methods
.method static bridge synthetic -$$Nest$mhandleAudioFocusChange(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->handleAudioFocusChange(I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;JZLandroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 1

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->context:Landroid/content/Context;

    .line 908
    iput-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->uri:Landroid/net/Uri;

    .line 909
    iput-wide p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->revision:J

    .line 910
    iput-boolean p5, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    .line 911
    iput-object p6, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    .line 912
    iput-object p7, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    .line 914
    if-eqz p5, :cond_1

    .line 916
    :try_start_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->context:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    .line 917
    new-instance p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$1;

    invoke-direct {p1, p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$1;-><init>(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 923
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 926
    :cond_1
    invoke-direct {p0, p6}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->attachWindowFocusListener(Landroid/view/View;)V

    .line 927
    return-void
.end method

.method private abandonFocus()V
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    .line 1043
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1048
    :catchall_0
    move-exception v0

    :cond_2
    :goto_0
    nop

    .line 1049
    return-void
.end method

.method private attachWindowFocusListener(Landroid/view/View;)V
    .locals 1

    .line 930
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->observingWindowFocus:Z

    if-nez v0, :cond_1

    .line 932
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 933
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 935
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->observingWindowFocus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 937
    :catchall_0
    move-exception p1

    :cond_0
    :goto_0
    nop

    .line 939
    :cond_1
    return-void
.end method

.method private detachWindowFocusListener()V
    .locals 2

    .line 942
    iget-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->observingWindowFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 945
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 948
    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->observingWindowFocus:Z

    .line 951
    :cond_1
    return-void
.end method

.method private handleAudioFocusChange(I)V
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    .line 997
    if-nez v0, :cond_0

    return-void

    .line 999
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1010
    :pswitch_1
    const/high16 p1, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1011
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1012
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 1002
    :pswitch_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1003
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 1007
    :pswitch_3
    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    goto :goto_0

    .line 1016
    :catchall_0
    move-exception p1

    :cond_1
    :goto_0
    nop

    .line 1017
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

    .line 1200
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    .line 1201
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 1202
    iput-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    .line 1204
    :try_start_0
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1205
    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->replaceSurface(Landroid/graphics/SurfaceTexture;)V

    .line 1206
    iget-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1207
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1208
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 1209
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 1210
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 1211
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 1212
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1213
    goto :goto_0

    .line 1214
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1216
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1217
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1218
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1219
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1220
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    goto :goto_1

    .line 1221
    :catchall_0
    move-exception p1

    .line 1222
    const-string v0, "WkOtaCardHook"

    const-string v1, "Cannot open media player"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    .line 1225
    :goto_1
    return-void
.end method

.method private releasePlayer()V
    .locals 4

    .line 1240
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->abandonFocus()V

    .line 1241
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 1244
    if-lez v0, :cond_0

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$sfputsavedPlaybackPosition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1245
    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    .line 1248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    .line 1249
    iget-object v2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    .line 1250
    iput-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    .line 1251
    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    .line 1252
    :cond_2
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$sfgetASYNC_RELEASE_EXECUTOR()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener$2;-><init>(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;Landroid/media/MediaPlayer;Landroid/view/Surface;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1266
    :cond_3
    return-void
.end method

.method private releaseRetainedTexture()V
    .locals 2

    .line 1269
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1270
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1271
    if-eqz v0, :cond_0

    .line 1272
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1274
    :cond_0
    return-void
.end method

.method private replaceSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1228
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1229
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    .line 1230
    iput-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->surface:Landroid/view/Surface;

    .line 1231
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 1232
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1234
    :cond_0
    if-eqz p1, :cond_1

    .line 1235
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 1237
    :cond_1
    return-void
.end method

.method private requestFocus()V
    .locals 3

    .line 1020
    iget-boolean v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1022
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x3

    if-lt v0, v1, :cond_2

    .line 1023
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_1

    .line 1024
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1025
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1026
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1028
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 1029
    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1030
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 1035
    :cond_2
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1037
    :catchall_0
    move-exception v0

    :goto_0
    nop

    .line 1038
    return-void

    .line 1020
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method matches(Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;)Z
    .locals 5

    .line 954
    iget-wide v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->revision:J

    iget-wide v2, p1, Lcom/oplus/settings/widget/preference/WkOtaCardHook$Snapshot;->revision:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

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

    .line 1157
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

    .line 1158
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 1159
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1161
    :cond_0
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    .line 1162
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1122
    const-string v0, "WkOtaCardHook"

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-ne p1, v1, :cond_3

    .line 1124
    :try_start_0
    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 1125
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$sfgetsavedPlaybackPosition()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v1, :cond_0

    .line 1127
    :try_start_1
    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$sfgetsavedPlaybackPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1128
    :catchall_0
    move-exception v1

    :goto_0
    nop

    .line 1130
    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    if-eqz v1, :cond_1

    .line 1131
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->requestFocus()V

    .line 1132
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_1

    .line 1134
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1136
    :goto_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1137
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 1138
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1140
    :cond_2
    iget-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    invoke-static {}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$sfgetsavedPlaybackPosition()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media Player prepared and playing. Sound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " Pos="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1144
    goto :goto_2

    .line 1141
    :catchall_1
    move-exception p1

    .line 1142
    const-string v1, "Cannot start media player"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1143
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    .line 1146
    :cond_3
    :goto_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1079
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1080
    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_2

    .line 1081
    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->replaceSurface(Landroid/graphics/SurfaceTexture;)V

    .line 1082
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iget-object p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 1083
    iget-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    if-eqz p1, :cond_0

    .line 1084
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->requestFocus()V

    .line 1085
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1088
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1089
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 1090
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 1091
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1093
    :cond_1
    return-void

    .line 1095
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->open(Landroid/graphics/SurfaceTexture;)V

    .line 1096
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 1103
    if-lez v0, :cond_0

    invoke-static {v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$sfputsavedPlaybackPosition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1104
    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 1106
    :cond_1
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1107
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1112
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 1113
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    iget-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iget-object p3, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 1115
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1118
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_0

    .line 1151
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-static {p1, p2, p3}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 1153
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1167
    if-eqz p1, :cond_4

    .line 1168
    invoke-static {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$smactivate(Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;)V

    .line 1169
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    .line 1171
    :try_start_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1172
    iget-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    if-eqz p1, :cond_0

    .line 1173
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->requestFocus()V

    .line 1174
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1176
    :cond_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1178
    :cond_1
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 1179
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    :cond_2
    return-void

    .line 1182
    :catchall_0
    move-exception p1

    .line 1184
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->startIfAvailable()V

    goto :goto_1

    .line 1186
    :cond_4
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_7

    .line 1188
    :try_start_1
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    .line 1189
    if-lez p1, :cond_5

    invoke-static {p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->-$$Nest$sfputsavedPlaybackPosition(I)V

    .line 1190
    :cond_5
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1191
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1193
    :catchall_1
    move-exception p1

    :cond_6
    :goto_0
    nop

    .line 1194
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->abandonFocus()V

    .line 1197
    :cond_7
    :goto_1
    return-void
.end method

.method rebind(Landroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 2

    .line 958
    iput-object p2, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    .line 959
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    if-eq v0, p1, :cond_0

    .line 960
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->detachWindowFocusListener()V

    .line 961
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    .line 962
    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->attachWindowFocusListener(Landroid/view/View;)V

    .line 964
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 965
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 966
    if-eqz p1, :cond_4

    .line 967
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 968
    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->replaceSurface(Landroid/graphics/SurfaceTexture;)V

    .line 969
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook;->applyCenterCrop(Landroid/view/TextureView;II)V

    .line 970
    iget-boolean p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->soundEnabled:Z

    if-eqz p1, :cond_1

    .line 971
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->requestFocus()V

    .line 972
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 975
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 976
    :catchall_0
    move-exception p1

    :goto_0
    goto :goto_2

    .line 978
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->open(Landroid/graphics/SurfaceTexture;)V

    goto :goto_2

    .line 981
    :cond_3
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_4

    .line 983
    :try_start_1
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->retainedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 984
    :catchall_1
    move-exception p1

    :goto_1
    goto :goto_3

    .line 981
    :cond_4
    :goto_2
    nop

    .line 986
    :goto_3
    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_6

    .line 988
    :try_start_2
    iget-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 989
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 991
    :catchall_2
    move-exception p1

    :cond_5
    :goto_4
    nop

    .line 993
    :cond_6
    return-void
.end method

.method release()V
    .locals 0

    .line 1061
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releasePlayer()V

    .line 1062
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->releaseRetainedTexture()V

    .line 1063
    invoke-direct {p0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->detachWindowFocusListener()V

    .line 1064
    return-void
.end method

.method startIfAvailable()V
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->video:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 1054
    if-eqz v0, :cond_0

    .line 1055
    invoke-direct {p0, v0}, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->open(Landroid/graphics/SurfaceTexture;)V

    .line 1058
    :cond_0
    return-void
.end method

.method updateCover(Landroid/widget/ImageView;)V
    .locals 1

    .line 1067
    iput-object p1, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->cover:Landroid/widget/ImageView;

    .line 1068
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/oplus/settings/widget/preference/WkOtaCardHook$CustomVideoListener;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception p1

    :cond_0
    :goto_0
    nop

    .line 1075
    :cond_1
    return-void
.end method
