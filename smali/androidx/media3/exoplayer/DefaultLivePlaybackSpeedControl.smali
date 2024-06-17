.class public final Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adjustedPlaybackSpeed:F

.field public currentTargetLiveOffsetUs:J

.field public idealTargetLiveOffsetUs:J

.field public lastPlaybackSpeedUpdateMs:J

.field public final maxLiveOffsetErrorUsForUnitSpeed:J

.field public maxPlaybackSpeed:F

.field public maxTargetLiveOffsetUs:J

.field public mediaConfigurationTargetLiveOffsetUs:J

.field public minPlaybackSpeed:F

.field public final minPossibleLiveOffsetSmoothingFactor:F

.field public minTargetLiveOffsetUs:J

.field public smoothedMinPossibleLiveOffsetDeviationUs:J

.field public smoothedMinPossibleLiveOffsetUs:J

.field public targetLiveOffsetOverrideUs:J

.field public final targetLiveOffsetRebufferDeltaUs:J


# direct methods
.method public constructor <init>(JJF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    iput p5, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    return-void
.end method


# virtual methods
.method public final maybeResetTargetLiveOffsetUs()V
    .locals 7

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :cond_3
    :goto_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_4

    return-void

    :cond_4
    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method
