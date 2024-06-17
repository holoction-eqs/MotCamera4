.class public final synthetic Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->$r8$classId:I

    iget p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->f$0:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:MediaCodecAsyncAdapter:"

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->createThreadLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0

    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:MediaCodecQueueingThread:"

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->createThreadLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
