.class public final Landroidx/media3/exoplayer/source/MaskingMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "SourceFile"


# instance fields
.field public hasRealTimeline:Z

.field public hasStartedPreparing:Z

.field public isPrepared:Z

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

.field public unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

.field public final useLazyPreparation:Z

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/BaseMediaSource;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->isSingleWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->useLazyPreparation:Z

    new-instance p2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    new-instance p2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->getInitialTimeline()Landroidx/media3/common/Timeline;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    new-instance p2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;-><init>(Landroidx/media3/common/MediaItem;)V

    sget-object p1, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-direct {p2, v0, p1, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    :goto_1
    return-void
.end method


# virtual methods
.method public final createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)V

    .line 1
    iget-object p2, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    const/4 p3, 0x1

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object p2, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iput-object p2, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    .line 2
    iget-boolean p4, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    if-eqz p4, :cond_2

    .line 3
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 4
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    iget-object p3, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 5
    sget-object p2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 6
    iget-object p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    goto :goto_1

    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    if-nez p1, :cond_3

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final bridge synthetic createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaPeriodIdForChildMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1

    iget-object v0, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public final onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
    .locals 14

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    if-eqz p1, :cond_6

    iget-wide v0, p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    new-instance v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-direct {v2, p1, v0, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-wide v2, v1, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-object v4, v1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    if-eqz v5, :cond_3

    iget-object v6, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v7, v5, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v7, v7, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v8, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6, v7, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v6, v8, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v8, v5, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    add-long/2addr v6, v8

    iget-object v5, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {v5, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_3

    move-wide v12, v6

    goto :goto_1

    :cond_3
    move-wide v12, v2

    :goto_1
    iget-object v9, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v10, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v11, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v4, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    invoke-direct {v1, p1, v4, v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-direct {v0, p1, v4, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    :goto_2
    iput-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2, v3}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x0

    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    if-eqz p1, :cond_7

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    :cond_7
    return-void
.end method

.method public final prepareSourceInternal()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->useLazyPreparation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    :cond_0
    return-void
.end method

.method public final releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->releasePeriod()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    :cond_0
    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    return-void
.end method

.method public final setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    const/4 v3, 0x0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v1, p0, v3}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget-wide v1, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    cmp-long p0, p1, v1

    if-ltz p0, :cond_1

    const-wide/16 p0, 0x1

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    iput-wide p1, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method
