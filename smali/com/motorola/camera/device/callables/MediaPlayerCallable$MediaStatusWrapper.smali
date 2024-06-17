.class public final Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

.field public final mPlayDelay:Ljava/lang/Boolean;

.field public final synthetic this$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable;Lcom/motorola/camera/device/callables/MediaStatusListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->this$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mPlayDelay:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    sget-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->COMPLETION:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p1, v0, v1, v1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(Ljava/lang/Enum;III)V

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mPlayDelay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;Lcom/google/zxing/qrcode/encoder/ByteMatrix;I)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;Lcom/google/zxing/qrcode/encoder/ByteMatrix;I)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "playing tone error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayerCallable"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->this$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->resetPlayer(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    sget-object v1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->ERROR:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const/4 v2, 0x3

    invoke-direct {p1, v1, p2, p3, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(Ljava/lang/Enum;III)V

    new-instance p2, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, v0}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;Lcom/google/zxing/qrcode/encoder/ByteMatrix;I)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    sget-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->INFO:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const/4 v1, 0x3

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(Ljava/lang/Enum;III)V

    new-instance p2, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;Lcom/google/zxing/qrcode/encoder/ByteMatrix;I)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
