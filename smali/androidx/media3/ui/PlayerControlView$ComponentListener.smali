.class public final Landroidx/media3/ui/PlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic this$0:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/view/View;

    const/16 v3, 0x9

    if-ne v2, p1, :cond_1

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, v3}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {v0}, Landroidx/media3/common/BasePlayer;->seekToNext()V

    goto/16 :goto_8

    :cond_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/view/View;

    if-ne v2, p1, :cond_2

    check-cast v0, Landroidx/media3/common/BasePlayer;

    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {v0}, Landroidx/media3/common/BasePlayer;->seekToPrevious()V

    goto/16 :goto_8

    :cond_2
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    const/4 v4, 0x4

    const/16 v5, 0xc

    if-ne v2, p1, :cond_3

    move-object p0, v0

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result p0

    if-eq p0, v4, :cond_14

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, v5}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_14

    move-object p0, v0

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-wide p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    invoke-virtual {v0, v5, p0, p1}, Landroidx/media3/common/BasePlayer;->seekToOffset(IJ)V

    goto/16 :goto_8

    :cond_3
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    if-ne v2, p1, :cond_4

    check-cast v0, Landroidx/media3/common/BasePlayer;

    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_14

    move-object p1, v0

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-wide v1, p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    neg-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroidx/media3/common/BasePlayer;->seekToOffset(IJ)V

    goto/16 :goto_8

    :cond_4
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, p1, :cond_8

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    move-object p0, v0

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result p1

    if-eq p1, v7, :cond_6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result p0

    if-ne p0, v4, :cond_5

    goto :goto_0

    :cond_5
    move p0, v6

    goto :goto_1

    :cond_6
    :goto_0
    move p0, v7

    :goto_1
    if-eqz p0, :cond_7

    invoke-static {v0}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    goto/16 :goto_8

    :cond_7
    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, v7}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_14

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    goto/16 :goto_8

    :cond_8
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_f

    const/16 p1, 0xf

    move-object v1, v0

    check-cast v1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v1, p1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_14

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget p1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    move v1, v7

    :goto_2
    const/4 v2, 0x2

    if-gt v1, v2, :cond_e

    add-int v3, p1, v1

    rem-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_c

    if-eq v3, v7, :cond_a

    if-eq v3, v2, :cond_9

    goto :goto_3

    :cond_9
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_a
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    move v2, v6

    goto :goto_5

    :cond_c
    :goto_4
    move v2, v7

    :goto_5
    if-eqz v2, :cond_d

    move p1, v3

    goto :goto_6

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    :goto_6
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setRepeatMode(I)V

    goto/16 :goto_8

    :cond_f
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-ne v2, p1, :cond_10

    const/16 p0, 0xe

    move-object p1, v0

    check-cast p1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {p1, p0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_14

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean p0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    xor-int/2addr p0, v7

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean p1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eq p1, p0, :cond_14

    iput-boolean p0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object p1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v1

    iget-object p1, p1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v5, p0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iput-object p1, v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    new-instance p1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda6;-><init>(Z)V

    iget-object p0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0, v3, p1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    goto :goto_8

    :cond_10
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    if-ne v0, p1, :cond_11

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    goto :goto_7

    :cond_11
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedButton:Landroid/view/View;

    if-ne v0, p1, :cond_12

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    goto :goto_7

    :cond_12
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->audioTrackButton:Landroid/view/View;

    if-ne v0, p1, :cond_13

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    goto :goto_7

    :cond_13
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_14

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    :goto_7
    invoke-virtual {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    :cond_14
    :goto_8
    return-void
.end method

.method public final onDismiss()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->needToHideBars:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    :cond_0
    return-void
.end method

.method public final onEvents(Landroidx/media3/common/Player$Events;)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0xd

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v3

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerControlView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlayPauseButton()V

    :cond_0
    const/4 v3, 0x7

    filled-new-array {v0, v1, v3, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateProgress()V

    :cond_1
    const/16 v0, 0x8

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateRepeatModeButton()V

    :cond_2
    const/16 v0, 0x9

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateShuffleButton()V

    :cond_3
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    :cond_4
    const/16 v0, 0xb

    const/4 v1, 0x0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateTimeline()V

    :cond_5
    const/16 v0, 0xc

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlaybackSpeedList()V

    :cond_6
    const/4 v0, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateTrackLists()V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method
