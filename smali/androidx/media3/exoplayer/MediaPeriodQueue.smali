.class public final Landroidx/media3/exoplayer/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field public final analyticsCollectorHandler:Landroidx/media3/common/util/HandlerWrapper;

.field public length:I

.field public loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public nextWindowSequenceNumber:J

.field public oldFrontPeriodUid:Ljava/lang/Object;

.field public oldFrontPeriodWindowSequenceNumber:J

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public repeatMode:I

.field public shuffleModeEnabled:Z

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/SystemHandlerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollectorHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    return-void
.end method

.method public static resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    move-object/from16 v5, p7

    invoke-virtual {v0, v4, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v6, v5, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v0, v6, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    move/from16 v16, v6

    move-object v6, v4

    move/from16 v4, v16

    :goto_0
    iget-object v7, v5, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v7, v7, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v7, :cond_5

    if-ne v7, v9, :cond_0

    invoke-virtual {v5, v10}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_0
    iget-object v11, v5, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v11, v11, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-virtual {v5, v11}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v11

    if-eqz v11, :cond_5

    const-wide/16 v11, 0x0

    invoke-virtual {v5, v11, v12}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v13

    if-eq v13, v8, :cond_1

    goto :goto_4

    :cond_1
    iget-wide v13, v5, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v13, v13, v11

    if-nez v13, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v7, -0x1

    invoke-virtual {v5, v13}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x2

    goto :goto_1

    :cond_3
    move v13, v9

    :goto_1
    sub-int/2addr v7, v13

    move v13, v10

    :goto_2
    if-gt v13, v7, :cond_4

    iget-object v14, v5, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v14, v13}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v14

    iget-wide v14, v14, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v11, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    iget-wide v13, v5, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v7, v13, v11

    if-gtz v7, :cond_5

    :goto_3
    move v10, v9

    :cond_5
    :goto_4
    if-eqz v10, :cond_6

    iget v7, v3, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v4, v7, :cond_6

    invoke-virtual {v0, v4, v5, v9}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget-object v6, v5, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v6, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5, v1, v2}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    if-ne v3, v8, :cond_7

    invoke-virtual {v5, v1, v2}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v0

    new-instance v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide/from16 v7, p4

    invoke-direct {v1, v6, v0, v7, v8}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IJ)V

    return-object v1

    :cond_7
    move-wide/from16 v7, p4

    invoke-virtual {v5, v3}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v2

    new-instance v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v0, v9

    move v1, v3

    move-wide/from16 v3, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(IIJLjava/lang/Object;)V

    return-object v9
.end method


# virtual methods
.method public final advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    if-nez v0, :cond_2

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    return-object p0
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    return-void
.end method

.method public final getFirstMediaPeriodInfoOfNextPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v11, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v9, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v1

    const/4 v2, -0x1

    const/4 v12, 0x0

    if-ne v1, v2, :cond_0

    return-object v12

    :cond_0
    iget-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v14, 0x1

    invoke-virtual {v9, v1, v13, v14}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget v4, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v2, v13, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v15, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v9, v4, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    if-ne v3, v1, :cond_3

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v18, v15

    move-wide/from16 v14, p3

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v12

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_2

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    goto :goto_0

    :cond_2
    iget-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    :goto_0
    move-wide v5, v3

    move-wide v14, v7

    move-wide/from16 v19, v16

    goto :goto_1

    :cond_3
    move-object/from16 v18, v15

    move-wide v14, v7

    move-wide/from16 v19, v14

    :goto_1
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v1, p1

    move-wide v3, v14

    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    cmp-long v1, v19, v16

    if-eqz v1, :cond_7

    iget-wide v3, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v1, v3, v16

    if-eqz v1, :cond_7

    move-object/from16 v1, v18

    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v9, v1, v13}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v1, v1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget-object v5, v13, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v5, v5, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    if-lez v1, :cond_5

    invoke-virtual {v13, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    if-gt v1, v6, :cond_4

    invoke-virtual {v13, v5}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v7

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v1, v7, v10

    if-eqz v1, :cond_5

    :cond_4
    move v1, v6

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    move-wide v5, v14

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_7

    move-wide v5, v3

    goto :goto_3

    :cond_7
    move-wide v5, v14

    :goto_3
    move-wide/from16 v3, v19

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v3, v5

    sub-long v3, v3, p3

    iget-boolean v5, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0, v9, v1, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfoOfNextPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    goto/16 :goto_8

    :cond_0
    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v5, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v10, v5, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget-object v12, v5, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v9, v6, v13}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_6

    iget-object v1, v13, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v8, v5, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v1, v8}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne v1, v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v13, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v6, v8}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v6

    iget v5, v5, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v6, v5}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v5

    iget-wide v6, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    if-ge v5, v1, :cond_2

    move v4, v5

    move-wide v5, v6

    move v3, v8

    move-wide/from16 v16, v10

    goto/16 :goto_4

    :cond_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v1

    if-nez v1, :cond_4

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v5, v13, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v1, p1

    move-object v3, v13

    move v4, v5

    move-wide/from16 v18, v6

    move-wide/from16 v5, v16

    move-wide/from16 v16, v10

    move v10, v8

    move-wide v7, v14

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_3
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_4
    move-wide/from16 v18, v6

    move-wide/from16 v16, v10

    move v10, v8

    :goto_1
    invoke-virtual {v9, v12, v13}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v13, v10}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    iget-wide v1, v13, Landroidx/media3/common/Timeline$Period;->durationUs:J

    goto :goto_2

    :cond_5
    iget-object v3, v13, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v3, v10}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    iget-wide v3, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v1, v3

    :goto_2
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    move-wide/from16 v5, v18

    goto/16 :goto_7

    :cond_6
    move-wide/from16 v16, v10

    iget v5, v5, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    if-eq v5, v7, :cond_7

    invoke-virtual {v13, v5}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0, v9, v1, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfoOfNextPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    goto :goto_8

    :cond_7
    invoke-virtual {v13, v5}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    invoke-virtual {v13, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v13, v5, v1}, Landroidx/media3/common/Timeline$Period;->getAdState(II)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    iget-object v4, v13, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v4, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget-wide v6, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    if-eq v1, v4, :cond_a

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    move v4, v1

    move v3, v5

    move-wide v5, v6

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-wide/from16 v7, v16

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    goto :goto_8

    :cond_a
    :goto_5
    invoke-virtual {v9, v12, v13}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v13, v5}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_b

    iget-wide v1, v13, Landroidx/media3/common/Timeline$Period;->durationUs:J

    goto :goto_6

    :cond_b
    iget-object v3, v13, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v3, v5}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    iget-wide v3, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v1, v3

    :goto_6
    move-wide v3, v1

    move-wide v5, v6

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-wide/from16 v7, v16

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public final getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 11

    move-object v0, p2

    iget-object v1, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    move-object v2, p0

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object v4, p1

    invoke-virtual {p1, v1, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v5, v0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v6, v0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v9, v0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v9, v0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaPeriodInfoForAd(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 16

    move/from16 v6, p3

    move/from16 v7, p4

    new-instance v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v0, v8

    move/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p7

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(IIJLjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v9

    invoke-virtual {v0, v6}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v7, v1, :cond_0

    iget-object v1, v0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v4, v1, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-virtual {v0, v6}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v11

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v9, v0

    if-eqz v0, :cond_1

    cmp-long v0, v4, v9

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long v0, v9, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    :cond_1
    move-wide v2, v4

    :goto_1
    new-instance v14, Landroidx/media3/exoplayer/MediaPeriodInfo;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v0, v14

    move-object v1, v8

    move-wide/from16 v4, p5

    move-wide v8, v9

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v15

    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v14
.end method

.method public final getMediaPeriodInfoForContent(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5, v3, v4}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v7

    goto :goto_0

    :cond_0
    move v10, v8

    :goto_0
    if-ne v6, v9, :cond_1

    iget-object v11, v5, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v12, v11, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-lez v12, :cond_6

    iget v11, v11, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    invoke-virtual {v5, v11}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v7

    goto :goto_4

    :cond_1
    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v11

    iget-wide v13, v5, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    iget-object v11, v5, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v11, v6}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v11

    iget v12, v11, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne v12, v9, :cond_2

    goto :goto_2

    :cond_2
    move v13, v8

    :goto_1
    if-ge v13, v12, :cond_5

    iget-object v14, v11, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v14, v14, v13

    if-eqz v14, :cond_4

    if-ne v14, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move v11, v7

    goto :goto_3

    :cond_5
    move v11, v8

    :goto_3
    xor-int/2addr v11, v7

    if-eqz v11, :cond_6

    move v11, v7

    move v6, v9

    goto :goto_4

    :cond_6
    move v11, v8

    :goto_4
    new-instance v13, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide/from16 v14, p7

    invoke-direct {v13, v2, v6, v14, v15}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IJ)V

    invoke-virtual {v13}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v2

    if-nez v2, :cond_7

    if-ne v6, v9, :cond_7

    move v2, v7

    goto :goto_5

    :cond_7
    move v2, v8

    :goto_5
    invoke-virtual {v0, v1, v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v24

    invoke-virtual {v0, v1, v13, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v25

    if-eq v6, v9, :cond_8

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v10, :cond_8

    move/from16 v22, v7

    goto :goto_6

    :cond_8
    move/from16 v22, v8

    :goto_6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v6, v9, :cond_9

    if-nez v10, :cond_9

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v9

    goto :goto_7

    :cond_9
    if-eqz v11, :cond_a

    iget-wide v9, v5, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :goto_7
    move-wide/from16 v18, v9

    goto :goto_8

    :cond_a
    move-wide/from16 v18, v0

    :goto_8
    cmp-long v6, v18, v0

    if-eqz v6, :cond_c

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v6, v18, v9

    if-nez v6, :cond_b

    goto :goto_9

    :cond_b
    move-wide/from16 v20, v18

    goto :goto_a

    :cond_c
    :goto_9
    iget-wide v5, v5, Landroidx/media3/common/Timeline$Period;->durationUs:J

    move-wide/from16 v20, v5

    :goto_a
    cmp-long v0, v20, v0

    if-eqz v0, :cond_f

    cmp-long v0, v3, v20

    if-ltz v0, :cond_f

    if-nez v25, :cond_e

    if-nez v11, :cond_d

    goto :goto_b

    :cond_d
    move v7, v8

    :cond_e
    :goto_b
    int-to-long v0, v7

    sub-long v0, v20, v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v14, v0

    goto :goto_c

    :cond_f
    move-wide v14, v3

    :goto_c
    new-instance v0, Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-object v12, v0

    move-wide/from16 v16, p5

    move/from16 v23, v2

    invoke-direct/range {v12 .. v25}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v0
.end method

.method public final getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v4, :cond_0

    iget v4, v3, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    if-ne v4, v6, :cond_0

    move v11, v5

    goto :goto_0

    :cond_0
    move v11, v7

    :goto_0
    invoke-virtual {v0, v1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v12

    invoke-virtual {v0, v1, v3, v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v13

    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v4, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget v4, v3, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    if-nez v1, :cond_2

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v14

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v14, v8

    :goto_2
    invoke-virtual {v3}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v1

    iget v10, v3, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    if-eqz v1, :cond_3

    iget v1, v3, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v10, v1}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v8

    goto :goto_4

    :cond_3
    cmp-long v1, v14, v8

    if-eqz v1, :cond_5

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v14, v8

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-wide v8, v14

    goto :goto_4

    :cond_5
    :goto_3
    iget-wide v8, v0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :goto_4
    invoke-virtual {v3}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v10}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v0

    move v10, v0

    goto :goto_5

    :cond_6
    if-eq v4, v6, :cond_7

    invoke-virtual {v0, v4}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v10, v5

    goto :goto_5

    :cond_7
    move v10, v7

    :goto_5
    new-instance v16, Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v6, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    move-object/from16 v0, v16

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v14

    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    return-object v16
.end method

.method public final isLastInTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z
    .locals 7

    iget-object p2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, p2, v6}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget-boolean p2, p2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez p2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result p0

    const/4 p1, -0x1

    const/4 p2, 0x1

    if-ne p0, p1, :cond_0

    move p0, p2

    goto :goto_0

    :cond_0
    move p0, v6

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    move v6, p2

    :cond_1
    return v6
.end method

.method public final isLastInWindow(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 4

    invoke-virtual {p2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p2, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object p2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne p0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public final notifyQueueUpdate()V
    .locals 4

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_1
    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0, v1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollectorHandler:Landroidx/media3/common/util/HandlerWrapper;

    check-cast p0, Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_1
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v2, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->release()V

    iget v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    return v1
.end method

.method public final resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v6, :cond_0

    invoke-virtual {v1, v5, v3, v7}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v5

    iget v5, v5, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-ne v5, v4, :cond_0

    iget-wide v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    goto :goto_3

    :cond_0
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    if-eqz v5, :cond_2

    iget-object v8, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_2
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_1
    if-eqz v5, :cond_4

    iget-object v8, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v8}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v6, :cond_3

    invoke-virtual {v1, v8, v3, v7}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v8

    iget v8, v8, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-ne v8, v4, :cond_3

    :goto_2
    iget-object v4, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    goto :goto_3

    :cond_3
    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_1

    :cond_4
    iget-wide v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    iput-wide v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v8, :cond_5

    iput-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iput-wide v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :cond_5
    :goto_3
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v8, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v9, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1, v8, v9}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v8

    move v10, v7

    :goto_4
    iget v11, v9, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-lt v8, v11, :cond_9

    const/4 v11, 0x1

    invoke-virtual {v1, v8, v3, v11}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget-object v12, v3, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v12, v12, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-lez v12, :cond_6

    goto :goto_5

    :cond_6
    move v11, v7

    :goto_5
    or-int/2addr v10, v11

    iget-wide v12, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v3, v12, v13}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v12

    if-eq v12, v6, :cond_7

    iget-object v2, v3, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    if-eqz v10, :cond_8

    if-eqz v11, :cond_9

    iget-wide v11, v3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_9
    :goto_6
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v0, p1

    move-object v1, v2

    move-wide/from16 v2, p3

    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    return-object v0
.end method

.method public final updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)Z
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->window:Landroidx/media3/common/Timeline$Window;

    iget v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v7, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v3

    :goto_1
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v2, :cond_1

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v2

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public final updateQueuedPeriods(Landroidx/media3/common/Timeline;JJ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_b

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    const/4 v6, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v3

    move-wide/from16 v7, p2

    goto :goto_3

    :cond_0
    move-wide/from16 v7, p2

    invoke-virtual {v0, v1, v3, v7, v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v9

    if-nez v9, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    :cond_1
    iget-wide v10, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v12, v9, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    iget-object v10, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v11, v9, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v10, v11}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, v6

    :goto_2
    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v9

    :goto_3
    iget-wide v9, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    invoke-virtual {v3, v9, v10}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v9

    iput-object v9, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v9, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v11

    iget-wide v13, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    if-eqz v5, :cond_5

    cmp-long v3, v9, v13

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move v3, v6

    goto :goto_5

    :cond_5
    :goto_4
    move v3, v4

    :goto_5
    if-nez v3, :cond_a

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->updateClipping()V

    cmp-long v1, v13, v11

    if-nez v1, :cond_6

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_6

    :cond_6
    iget-wide v7, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v7, v13

    :goto_6
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v2, v1, :cond_8

    iget-object v1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-nez v1, :cond_8

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, p4, v9

    if-eqz v1, :cond_7

    cmp-long v1, p4, v7

    if-ltz v1, :cond_8

    :cond_7
    move v1, v4

    goto :goto_7

    :cond_8
    move v1, v6

    :goto_7
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    move v4, v6

    :goto_8
    return v4

    :cond_a
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_0

    :cond_b
    return v4
.end method
