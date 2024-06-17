.class public final Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# instance fields
.field public final childStream:Landroidx/media3/exoplayer/source/SampleStream;

.field public sentEos:Z

.field public final synthetic this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ClippingMediaPeriod;Landroidx/media3/exoplayer/source/SampleStream;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    return-void
.end method


# virtual methods
.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final maybeThrowError()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public final readData(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    const/4 v3, 0x4

    const/4 v4, -0x4

    if-eqz v1, :cond_1

    iput v3, p2, Landroidx/media3/decoder/Buffer;->flags:I

    return v4

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v5

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleStream;->readData(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v1, -0x5

    const-wide/high16 v7, -0x8000000000000000L

    if-ne p3, v1, :cond_6

    iget-object p0, p1, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Format;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Landroidx/media3/common/Format;->encoderDelay:I

    iget p3, p0, Landroidx/media3/common/Format;->encoderPadding:I

    if-nez p2, :cond_2

    if-eqz p3, :cond_5

    :cond_2
    iget-wide v2, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move p2, v3

    :cond_3
    iget-wide v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_4

    move p3, v3

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p0

    iput p2, p0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    iput p3, p0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    iput-object p0, p1, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    :cond_5
    return v1

    :cond_6
    iget-wide v0, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_9

    if-ne p3, v4, :cond_7

    iget-wide v9, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long p1, v9, v0

    if-gez p1, :cond_8

    :cond_7
    if-ne p3, v2, :cond_9

    cmp-long p1, v5, v7

    if-nez p1, :cond_9

    iget-boolean p1, p2, Landroidx/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z

    if-nez p1, :cond_9

    :cond_8
    invoke-virtual {p2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput v3, p2, Landroidx/media3/decoder/Buffer;->flags:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return v4

    :cond_9
    return p3
.end method

.method public final skipData(J)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result p0

    return p0
.end method
