.class public final synthetic Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;

.field public final synthetic f$1:Lcom/google/zxing/qrcode/encoder/ByteMatrix;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;Lcom/google/zxing/qrcode/encoder/ByteMatrix;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$1:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    invoke-interface {p0, v1}, Lcom/motorola/camera/device/callables/MediaStatusListener;->onStatusCallback(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/MediaPlayerCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    invoke-interface {p0, v1}, Lcom/motorola/camera/device/callables/MediaStatusListener;->onStatusCallback(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
