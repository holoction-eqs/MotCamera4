.class public final Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final endPlayback:Z

.field public final forceBufferingState:Z

.field public final periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final periodPositionUs:J

.field public final requestedContentPositionUs:J

.field public final setTargetLiveOffset:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    iput-wide p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    iput-boolean p6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    iput-boolean p7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z

    iput-boolean p8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    return-void
.end method
