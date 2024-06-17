.class public final synthetic Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

.field public final synthetic f$1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 2

    const/4 p1, 0x0

    const/16 p4, 0x20

    const/16 p5, 0x1e

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    iget v1, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-ge p0, p5, :cond_0

    iget-object p0, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    shr-long p4, p2, p4

    long-to-int p4, p4

    long-to-int p2, p2

    invoke-static {p0, p1, p4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    :goto_0
    return-void

    :goto_1
    check-cast p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-ge p0, p5, :cond_1

    iget-object p0, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    shr-long p4, p2, p4

    long-to-int p4, p4

    long-to-int p2, p2

    invoke-static {p0, p1, p4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v0, p2, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
