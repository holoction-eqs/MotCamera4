.class public final Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# instance fields
.field public final sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

.field public final timeOffsetUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/SampleStream;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->timeOffsetUs:J

    return-void
.end method


# virtual methods
.method public final isReady()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result p0

    return p0
.end method

.method public final maybeThrowError()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public final readData(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleStream;->readData(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->timeOffsetUs:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    :cond_0
    return p1
.end method

.method public final skipData(J)I
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->timeOffsetUs:J

    sub-long/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result p0

    return p0
.end method
