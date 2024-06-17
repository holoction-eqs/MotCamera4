.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "SourceFile"


# instance fields
.field public final allowDynamicClippingUpdates:Z

.field public clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field public clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

.field public final enableInitialDiscontinuity:Z

.field public final endUs:J

.field public final mediaPeriods:Ljava/util/ArrayList;

.field public periodEndUs:J

.field public periodStartUs:J

.field public final relativeToDefaultPosition:Z

.field public final startUs:J

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/BaseMediaSource;JJZZZ)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->startUs:J

    iput-wide p4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    iput-boolean p6, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    iput-boolean p7, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    iput-boolean p8, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    return-void
.end method


# virtual methods
.method public final createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 8

    new-instance v7, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/BaseMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    :cond_0
    throw v0
.end method

.method public final onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->refreshClippedTimeline(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final refreshClippedTimeline(Landroidx/media3/common/Timeline;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-wide v5, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    const-wide/high16 v9, -0x8000000000000000L

    iget-object v11, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v12, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    sub-long/2addr v12, v5

    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    sub-long v9, v7, v5

    :goto_0
    move-wide v7, v9

    move-wide v5, v12

    goto :goto_5

    :cond_2
    :goto_1
    iget-boolean v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    iget-wide v12, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->startUs:J

    if-eqz v3, :cond_3

    iget-wide v14, v0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    add-long/2addr v12, v14

    add-long/2addr v14, v7

    goto :goto_2

    :cond_3
    move-wide v14, v7

    :goto_2
    add-long v2, v5, v12

    iput-wide v2, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    cmp-long v0, v7, v9

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    add-long v9, v5, v14

    :goto_3
    iput-wide v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    iput-wide v5, v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    iput-wide v7, v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move-wide v5, v12

    move-wide v7, v14

    :goto_5
    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;-><init>(Landroidx/media3/common/Timeline;JJ)V

    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    iput-object v3, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public final releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    check-cast p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ForwardingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->refreshClippedTimeline(Landroidx/media3/common/Timeline;)V

    :cond_0
    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 1

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    return-void
.end method
