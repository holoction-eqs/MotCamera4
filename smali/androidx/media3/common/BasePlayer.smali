.class public abstract Landroidx/media3/common/BasePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player;


# instance fields
.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    return-void
.end method


# virtual methods
.method public final getContentDuration()J
    .locals 3

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1, v0, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getNextMediaItemIndex()I
    .locals 4

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v0, v1, v2, p0}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getPreviousMediaItemIndex()I
    .locals 4

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v0, v1, v2, p0}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final isCommandAvailable(I)Z
    .locals 0

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    iget-object p0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final isCurrentMediaItemDynamic()Z
    .locals 3

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1, v0, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentMediaItemLive()Z
    .locals 3

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1, v0, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentMediaItemSeekable()Z
    .locals 3

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1, v0, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract seekTo(IJZ)V
.end method

.method public final seekToCurrentItem(IJ)V
    .locals 1

    move-object p1, p0

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/common/BasePlayer;->seekTo(IJZ)V

    return-void
.end method

.method public final seekToDefaultPositionInternal(II)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/media3/common/BasePlayer;->seekTo(IJZ)V

    return-void
.end method

.method public final seekToNext()V
    .locals 5

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x9

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v1

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v3, v4, v2}, Landroidx/media3/common/BasePlayer;->seekTo(IJZ)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v4}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final seekToOffset(IJ)V
    .locals 5

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDuration()J

    move-result-wide p2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v3

    if-eqz v0, :cond_0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_0
    const-wide/16 p2, 0x0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(IJ)V

    return-void
.end method

.method public final seekToPrevious()V
    .locals 5

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const-wide/16 v3, 0xbb8

    cmp-long v0, v1, v3

    if-gtz v0, :cond_3

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->seekToPreviousMediaItemInternal()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(IJ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final seekToPreviousMediaItemInternal()V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media3/common/BasePlayer;->seekTo(IJZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    :goto_0
    return-void
.end method
