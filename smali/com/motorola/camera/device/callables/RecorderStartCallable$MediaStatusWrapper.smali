.class public final Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# instance fields
.field public final mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/MediaStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    sget-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->ERROR:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const/4 v1, 0x3

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(Ljava/lang/Enum;III)V

    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 p3, 0xe

    invoke-direct {p2, p3, p0, p1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    sget-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->INFO:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const/4 v1, 0x3

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(Ljava/lang/Enum;III)V

    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 p3, 0xe

    invoke-direct {p2, p3, p0, p1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
