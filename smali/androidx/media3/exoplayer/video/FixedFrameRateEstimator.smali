.class public final Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

.field public candidateMatcherActive:Z

.field public currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

.field public framesWithoutSyncCount:I

.field public lastFramePresentationTimeNs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    new-instance v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    return-void
.end method


# virtual methods
.method public final isSynced()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->isSynced()Z

    move-result p0

    return p0
.end method
