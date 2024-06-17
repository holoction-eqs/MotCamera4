.class public final Lcom/motorola/camera/device/callables/MediaPlayerCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mDelay:Z

.field public final mSoundId:I

.field public final mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/MediaStatusListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    const p2, 0x7f11002b

    iput p2, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mSoundId:I

    iput-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mDelay:Z

    return-void
.end method

.method public static resetPlayer(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaPlayerCallable"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 5

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->preparePlayer(Landroid/media/MediaPlayer;)Z

    move-result v1

    const-string v2, "Can\'t prepare player"

    if-nez v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->resetPlayer(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->preparePlayer(Landroid/media/MediaPlayer;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_2
    new-instance v1, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;

    iget-object v3, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    iget-boolean v4, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mDelay:Z

    invoke-direct {v1, p0, v3, v4}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;-><init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable;Lcom/motorola/camera/device/callables/MediaStatusListener;Z)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playing tone failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaPlayerCallable"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->resetPlayer(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaPlayerCallable"

    return-object p0
.end method

.method public final preparePlayer(Landroid/media/MediaPlayer;)Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->mSoundId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "MediaPlayerCallable"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return v0

    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p1
.end method
