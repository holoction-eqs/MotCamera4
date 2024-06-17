.class public final Landroidx/media3/exoplayer/DefaultMediaClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# instance fields
.field public isUsingStandaloneClock:Z

.field public final listener:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

.field public rendererClock:Landroidx/media3/exoplayer/MediaClock;

.field public rendererClockSource:Landroidx/media3/exoplayer/Renderer;

.field public final standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

.field public standaloneClockIsStarted:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;Landroidx/media3/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->listener:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

    new-instance p1, Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/StandaloneMediaClock;-><init>(Landroidx/media3/common/util/Clock;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    return-void
.end method


# virtual methods
.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/MediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    :goto_0
    return-object p0
.end method

.method public final getPositionUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/MediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    invoke-interface {p1}, Landroidx/media3/exoplayer/MediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method
