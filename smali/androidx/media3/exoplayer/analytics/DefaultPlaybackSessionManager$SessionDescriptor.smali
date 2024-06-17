.class public final Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public isActive:Z

.field public isCreated:Z

.field public final sessionId:Ljava/lang/String;

.field public final synthetic this$0:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

.field public windowIndex:I

.field public windowSequenceNumber:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    iput p3, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    iget-wide p1, p4, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object p4, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :cond_1
    return-void
.end method


# virtual methods
.method public final isFinishedAtEventTime(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z
    .locals 8

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget p0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    iget p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-wide v3, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    iget-wide v5, v0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez p0, :cond_4

    return v2

    :cond_4
    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    iget-wide v4, v0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget-wide v6, p0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_c

    if-ge v3, p1, :cond_5

    goto :goto_3

    :cond_5
    if-le v3, p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result p1

    iget v3, p0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    if-eqz p1, :cond_9

    iget p1, v0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    if-gt p1, v3, :cond_8

    if-ne p1, v3, :cond_7

    iget p0, p0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    iget p1, v0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    if-le p1, p0, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :cond_8
    :goto_1
    return v1

    :cond_9
    const/4 p0, -0x1

    iget p1, v0, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    if-eq p1, p0, :cond_b

    if-le p1, v3, :cond_a

    goto :goto_2

    :cond_a
    move v1, v2

    :cond_b
    :goto_2
    return v1

    :cond_c
    :goto_3
    return v2
.end method

.method public final tryResolvingToNewTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Z
    .locals 6

    iget v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-object v0, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->window:Landroidx/media3/common/Timeline$Window;

    iget v4, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    :goto_0
    iget v5, v0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v4, v5, :cond_0

    invoke-virtual {p1, v4}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v3, :cond_2

    iget-object p1, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p2, v5, p1, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget v0, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_1
    iput v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne v0, v3, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x1

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez p0, :cond_4

    return p1

    :cond_4
    iget-object p0, p0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v3, :cond_5

    move v2, p1

    :cond_5
    return v2
.end method
