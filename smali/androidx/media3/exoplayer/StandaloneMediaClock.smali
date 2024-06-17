.class public final Landroidx/media3/exoplayer/StandaloneMediaClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# instance fields
.field public baseElapsedMs:J

.field public baseUs:J

.field public final clock:Landroidx/media3/common/util/Clock;

.field public playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field public started:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->clock:Landroidx/media3/common/util/Clock;

    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-void
.end method


# virtual methods
.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final getPositionUs()J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->baseUs:J

    iget-boolean v2, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->clock:Landroidx/media3/common/util/Clock;

    check-cast v2, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->baseElapsedMs:J

    sub-long/2addr v2, v4

    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v4, p0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->scaledUsPerMs:I

    int-to-long v4, p0

    mul-long/2addr v2, v4

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public final resetPosition(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->baseUs:J

    iget-boolean p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->clock:Landroidx/media3/common/util/Clock;

    check-cast p1, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->baseElapsedMs:J

    :cond_0
    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-void
.end method

.method public final start()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->clock:Landroidx/media3/common/util/Clock;

    check-cast v0, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->baseElapsedMs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    :cond_0
    return-void
.end method
