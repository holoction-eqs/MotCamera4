.class public final Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SESSION_ID_GENERATOR:Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;

.field public static final RANDOM:Ljava/util/Random;


# instance fields
.field public currentSessionId:Ljava/lang/String;

.field public currentTimeline:Landroidx/media3/common/Timeline;

.field public lastRemovedCurrentWindowSequenceNumber:J

.field public listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public final sessions:Ljava/util/HashMap;

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->DEFAULT_SESSION_ID_GENERATOR:Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->window:Landroidx/media3/common/Timeline$Window;

    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    sget-object v0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline$1;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    return-void
.end method


# virtual methods
.method public final clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V
    .locals 4

    iget-wide v0, p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    return-void
.end method

.method public final getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    iget-wide v9, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    iget v9, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne v1, v9, :cond_2

    if-eqz v2, :cond_2

    iget-object v9, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget-object v10, v9, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v13, v9, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    if-eqz v10, :cond_1

    iget-wide v13, v10, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long v10, v13, v11

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v9, v9, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    const-wide/16 v13, 0x1

    add-long/2addr v13, v9

    :goto_1
    iget-wide v9, v2, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v13, v9, v13

    if-ltz v13, :cond_2

    iput-wide v9, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    :cond_2
    iget-object v9, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez v2, :cond_3

    iget v10, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne v1, v10, :cond_5

    goto :goto_2

    :cond_3
    iget-wide v13, v2, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    if-nez v9, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v10

    if-nez v10, :cond_5

    iget-wide v11, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long v10, v13, v11

    if-nez v10, :cond_5

    goto :goto_2

    :cond_4
    iget-wide v10, v9, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v10, v13, v10

    if-nez v10, :cond_5

    iget v10, v2, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v11, v9, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    if-ne v10, v11, :cond_5

    iget v10, v2, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    iget v11, v9, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    if-ne v10, v11, :cond_5

    :goto_2
    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_0

    iget-wide v10, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-eqz v12, :cond_7

    cmp-long v12, v10, v6

    if-gez v12, :cond_6

    goto :goto_4

    :cond_6
    if-nez v12, :cond_0

    sget v10, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v10, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    move-object v5, v8

    goto/16 :goto_0

    :cond_7
    :goto_4
    move-object v5, v8

    move-wide v6, v10

    goto/16 :goto_0

    :cond_8
    if-nez v5, :cond_9

    sget-object v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->DEFAULT_SESSION_ID_GENERATOR:Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-direct {v5, p0, v4, v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;-><init>(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v5
.end method

.method public final updateCurrentSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 7

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    iget v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    iput-object v3, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v3, v2, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    if-eqz v0, :cond_2

    iget-wide v5, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_2

    iget-object p1, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz p1, :cond_2

    iget v0, p1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v5, v2, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    if-ne v0, v5, :cond_2

    iget p1, p1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    iget v0, v2, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    if-eq p1, v0, :cond_3

    :cond_2
    new-instance p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {p1, v3, v4, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(JLjava/lang/Object;)V

    invoke-virtual {p0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-void
.end method

.method public final declared-synchronized updateSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_3

    iget-wide v0, v0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_1

    iget-wide v5, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v5, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    :goto_0
    cmp-long v0, v0, v5

    if-gez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    if-eqz v0, :cond_3

    iget-wide v1, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget v0, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    iget v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, v1, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    :cond_4
    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v3, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget v3, v3, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    invoke-direct {v1, v4, v3, v5, v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IJ)V

    iget v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    invoke-virtual {p0, v3, v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v1

    iget-boolean v3, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    if-nez v3, :cond_5

    iput-boolean v2, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v3, v3, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v1, v3}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v5, v1, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    iget-boolean v1, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    if-nez v1, :cond_6

    iput-boolean v2, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    if-nez v1, :cond_7

    iput-boolean v2, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->onSessionActive(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
