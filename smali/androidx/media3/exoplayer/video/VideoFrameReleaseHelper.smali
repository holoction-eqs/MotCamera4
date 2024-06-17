.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public changeFrameRateStrategy:I

.field public final displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

.field public formatFrameRate:F

.field public frameIndex:J

.field public final frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

.field public lastAdjustedFrameIndex:J

.field public lastAdjustedReleaseTimeNs:J

.field public pendingLastAdjustedFrameIndex:J

.field public pendingLastAdjustedReleaseTimeNs:J

.field public playbackSpeed:F

.field public started:Z

.field public surface:Landroid/view/Surface;

.field public surfaceMediaFrameRate:F

.field public surfacePlaybackFrameRate:F

.field public vsyncDurationNs:J

.field public vsyncOffsetNs:J

.field public final vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;-><init>(Landroid/hardware/display/DisplayManager;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_1

    new-instance v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;

    invoke-direct {v2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;-><init>(Landroid/view/WindowManager;)V

    goto :goto_1

    :cond_1
    move-object v2, v0

    :cond_2
    :goto_1
    iput-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v2, :cond_3

    sget-object v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->INSTANCE:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    :cond_3
    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    return-void
.end method


# virtual methods
.method public final adjustReleaseTime(J)J
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v2

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v9, v1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    cmp-long v2, v9, v7

    if-nez v2, :cond_0

    move-wide v1, v7

    goto :goto_0

    :cond_0
    iget-wide v1, v1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    div-long/2addr v1, v9

    goto :goto_0

    :cond_1
    move-wide v1, v5

    :goto_0
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    iget-wide v11, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iget-wide v13, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    sub-long/2addr v11, v13

    mul-long/2addr v11, v1

    long-to-float v1, v11

    iget v2, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    add-long/2addr v9, v1

    sub-long v1, p1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v11, 0x1312d00

    cmp-long v1, v1, v11

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iput-wide v7, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iput-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iput-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    :cond_4
    move-wide/from16 v9, p1

    :goto_2
    iget-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    iput-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz v1, :cond_9

    iget-wide v2, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    iget-wide v1, v1, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    cmp-long v3, v1, v5

    if-nez v3, :cond_6

    return-wide v9

    :cond_6
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    sub-long v5, v9, v1

    div-long/2addr v5, v3

    mul-long/2addr v5, v3

    add-long/2addr v5, v1

    cmp-long v1, v9, v5

    if-gtz v1, :cond_7

    sub-long v1, v5, v3

    goto :goto_3

    :cond_7
    add-long/2addr v3, v5

    move-wide v1, v5

    move-wide v5, v3

    :goto_3
    sub-long v3, v5, v9

    sub-long/2addr v9, v1

    cmp-long v3, v3, v9

    if-gez v3, :cond_8

    goto :goto_4

    :cond_8
    move-wide v5, v1

    :goto_4
    iget-wide v0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    sub-long/2addr v5, v0

    return-wide v5

    :cond_9
    :goto_5
    return-wide v9
.end method

.method public final clearSurfaceFrameRate()V
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    invoke-static {v0, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onNextFrame(J)V
    .locals 10

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    iget-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    iget-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iput-boolean v5, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    goto :goto_1

    :cond_1
    iget-wide v6, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v6, v1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->frameCount:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    sub-long/2addr v6, v2

    const-wide/16 v2, 0xf

    rem-long/2addr v6, v2

    long-to-int v2, v6

    iget-object v1, v1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->recentFrameOutlierFlags:[Z

    aget-boolean v1, v1, v2

    :goto_0
    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->reset()V

    iget-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v2, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    :cond_4
    iput-boolean v4, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->onNextFrame(J)V

    :cond_5
    :goto_1
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-object v2, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iput-object v2, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iput-object v1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iput-boolean v5, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    :cond_6
    iput-wide p1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    iget-object p1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    iget p1, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    add-int/lit8 v5, p1, 0x1

    :goto_2
    iput v5, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    return-void
.end method

.method public final updateSurfaceMediaFrameRate()V
    .locals 9

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v4, v2, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameCount:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v6, v2, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    div-long/2addr v6, v4

    :goto_0
    long-to-double v4, v6

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v4

    double-to-float v2, v6

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    :goto_1
    iget v4, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    cmpl-float v5, v2, v4

    if-nez v5, :cond_4

    return-void

    :cond_4
    cmpl-float v5, v2, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_8

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    iget-wide v0, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->matchingFrameDurationSumNs:J

    goto :goto_2

    :cond_5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-wide v3, 0x12a05f200L

    cmp-long v0, v0, v3

    if-ltz v0, :cond_6

    move v0, v7

    goto :goto_3

    :cond_6
    move v0, v6

    :goto_3
    if-eqz v0, :cond_7

    const v0, 0x3ca3d70a    # 0.02f

    goto :goto_4

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_a

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    iget v0, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    if-lt v0, v1, :cond_a

    goto :goto_5

    :cond_a
    move v7, v6

    :goto_5
    if-eqz v7, :cond_b

    iput v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    invoke-virtual {p0, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    :cond_b
    :goto_6
    return-void
.end method

.method public final updateSurfacePlaybackFrameRate(Z)V
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    mul-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iput v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    :cond_3
    :goto_1
    return-void
.end method
