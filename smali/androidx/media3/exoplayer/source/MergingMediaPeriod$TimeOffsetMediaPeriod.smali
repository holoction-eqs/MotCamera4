.class public final Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# instance fields
.field public callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public final mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field public final timeOffsetUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaPeriod;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    return-void
.end method


# virtual methods
.method public final continueLoading(J)Z
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(J)Z

    move-result p0

    return p0
.end method

.method public final discardBuffer(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(J)V

    return-void
.end method

.method public final getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public final getBufferedPositionUs()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public final getNextLoadPositionUs()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public final getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result p0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public final onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public final onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public final prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p2, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public final readDiscontinuity()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public final reevaluateBuffer(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method

.method public final seekToUs(J)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public final selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p3

    array-length v2, v1

    new-array v2, v2, [Landroidx/media3/exoplayer/source/SampleStream;

    const/4 v10, 0x0

    move v3, v10

    :goto_0
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    check-cast v4, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;

    if-eqz v4, :cond_0

    iget-object v11, v4, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    :cond_0
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v12, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long v8, p5, v12

    move-object v4, p1

    move-object/from16 v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v9}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v3

    :goto_1
    array-length v0, v1

    if-ge v10, v0, :cond_5

    aget-object v0, v2, v10

    if-nez v0, :cond_2

    aput-object v11, v1, v10

    goto :goto_2

    :cond_2
    aget-object v5, v1, v10

    if-eqz v5, :cond_3

    check-cast v5, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;

    iget-object v5, v5, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->sampleStream:Landroidx/media3/exoplayer/source/SampleStream;

    if-eq v5, v0, :cond_4

    :cond_3
    new-instance v5, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;

    invoke-direct {v5, v0, v12, v13}, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;-><init>(Landroidx/media3/exoplayer/source/SampleStream;J)V

    aput-object v5, v1, v10

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    add-long/2addr v3, v12

    return-wide v3
.end method
