.class public final Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public firstFrameDurationNs:J

.field public firstFramePresentationTimeNs:J

.field public frameCount:J

.field public lastFramePresentationTimeNs:J

.field public matchingFrameCount:J

.field public matchingFrameDurationSumNs:J

.field public recentFrameOutlierCount:I

.field public final recentFrameOutlierFlags:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    return-void
.end method


# virtual methods
.method public final isSynced()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0xf

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onNextFrame(J)V
    .locals 10

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->firstFramePresentationTimeNs:J

    goto :goto_1

    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->firstFramePresentationTimeNs:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->firstFrameDurationNs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    iput-wide v3, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    goto :goto_1

    :cond_1
    iget-wide v5, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->lastFramePresentationTimeNs:J

    sub-long v5, p1, v5

    const-wide/16 v7, 0xf

    rem-long/2addr v0, v7

    long-to-int v0, v0

    iget-wide v1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->firstFrameDurationNs:J

    sub-long v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0xf4240

    cmp-long v1, v1, v7

    iget-object v2, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    const/4 v7, 0x1

    if-gtz v1, :cond_2

    iget-wide v8, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    add-long/2addr v8, v3

    iput-wide v8, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    iget-wide v8, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    add-long/2addr v8, v5

    iput-wide v8, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    aget-boolean v1, v2, v0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    aput-boolean v1, v2, v0

    iget v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    sub-int/2addr v0, v7

    goto :goto_0

    :cond_2
    aget-boolean v1, v2, v0

    if-nez v1, :cond_3

    aput-boolean v7, v2, v0

    iget v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    add-int/2addr v0, v7

    :goto_0
    iput v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    :cond_3
    :goto_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->lastFramePresentationTimeNs:J

    return-void
.end method

.method public final reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierCount:I

    iget-object p0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method
