.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# instance fields
.field public final data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

.field public dataLoaded:Z

.field public final defaultDuration:I

.field public final editActions:Ljava/util/LinkedHashSet;

.field public final exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

.field public final frameRateRatio:I

.field public final handler:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

.field public final listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;

.field public final messages:Ljava/util/ArrayList;

.field public final slowMotionProgressFactor:I

.field public superSlowMotionProcess:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

.field public superSlowMotionRange:[I

.field public trimRange:[I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;ILcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const-string v3, "data"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    move/from16 v3, p2

    iput v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->defaultDuration:I

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;

    iget v3, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    div-int/lit8 v3, v3, 0x1e

    iput v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    new-instance v3, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v4, 0x15

    invoke-direct {v3, v0, v4}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iput-object v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->handler:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->slowMotionProgressFactor:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    filled-new-array {v3, v4}, [I

    move-result-object v5

    iput-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    filled-new-array {v3, v4}, [I

    move-result-object v5

    iput-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/LinkedHashSet;

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    new-instance v6, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    new-instance v7, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;

    invoke-direct {v7, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;)V

    invoke-direct {v6, v2, v7}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;-><init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;)V

    invoke-direct {v5, v2, v6}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;)V

    iget-boolean v2, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v2, v4

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-boolean v4, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    new-instance v6, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-direct {v6, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V

    iput-object v6, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v6, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    invoke-virtual {v6, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setRepeatMode(I)V

    sget-object v2, Landroidx/media3/exoplayer/SeekParameters;->CLOSEST_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez v2, :cond_0

    sget-object v2, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    :cond_0
    iget-object v5, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    invoke-virtual {v5, v2}, Landroidx/media3/exoplayer/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    if-nez v5, :cond_1

    iput-object v2, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iget-object v5, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v8, 0x5

    invoke-virtual {v5, v8, v2}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    :cond_1
    iget-object v2, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iput-object v1, v2, Landroidx/media3/common/MediaItem$Builder;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    invoke-virtual {v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_0
    iget v8, v1, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v5, v8, :cond_2

    invoke-virtual {v1, v5}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/MediaItem;

    iget-object v9, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v9, v8}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/BaseMediaSource;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v1, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v6, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    invoke-virtual {v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    iget v1, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v1, v4

    iput v1, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object v1, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v8, v5, -0x1

    :goto_1
    if-ltz v8, :cond_3

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_3
    iget-object v8, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    add-int/lit8 v9, v5, 0x0

    iget-object v10, v8, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v11, v10

    sub-int/2addr v11, v9

    new-array v11, v11, [I

    move v12, v3

    move v13, v12

    :goto_2
    array-length v14, v10

    if-ge v12, v14, :cond_6

    aget v14, v10, v12

    if-ltz v14, :cond_4

    if-ge v14, v5, :cond_4

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    sub-int v15, v12, v13

    if-ltz v14, :cond_5

    sub-int/2addr v14, v9

    :cond_5
    aput v14, v11, v15

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    new-instance v5, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v9, Ljava/util/Random;

    iget-object v8, v8, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextLong()J

    move-result-wide v12

    invoke-direct {v9, v12, v13}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v5, v11, v9}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    iput-object v5, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    :cond_7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_8

    new-instance v8, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-boolean v10, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    invoke-direct {v8, v9, v10}, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/BaseMediaSource;Z)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v5, 0x0

    new-instance v10, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v11, v8, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    iget-object v8, v8, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-object v8, v8, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-direct {v10, v8, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;Ljava/lang/Object;)V

    invoke-virtual {v1, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    iget-object v2, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->cloneAndInsert(I)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move-result-object v2

    iput-object v2, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v5, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v2, v1, v5}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/4 v5, -0x1

    iget v8, v2, Landroidx/media3/exoplayer/PlaylistTimeline;->windowCount:I

    if-nez v1, :cond_a

    if-ge v5, v8, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Landroidx/media3/common/IllegalSeekPositionException;

    invoke-direct {v0}, Landroidx/media3/common/IllegalSeekPositionException;-><init>()V

    throw v0

    :cond_a
    :goto_5
    iget-boolean v1, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/PlaylistTimeline;->getFirstWindowIndex(Z)I

    move-result v1

    iget-object v9, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v6, v2, v1, v10, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v6, v9, v2, v12}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v9

    const/4 v12, 0x2

    iget v13, v9, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v5, :cond_d

    if-eq v13, v4, :cond_d

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    if-lt v1, v8, :cond_b

    goto :goto_6

    :cond_b
    move v13, v12

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v13, 0x4

    :cond_d
    :goto_7
    invoke-virtual {v9, v13}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v18

    iget-object v5, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object v7, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    move-object v14, v8

    move-object/from16 v16, v5

    move/from16 v17, v1

    invoke-direct/range {v14 .. v19}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;IJ)V

    const/16 v1, 0x11

    invoke-virtual {v7, v1, v8}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    iget-object v1, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v6, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    move v10, v4

    goto :goto_8

    :cond_e
    move v10, v3

    :goto_8
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x4

    invoke-virtual {v6, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v13

    const/4 v1, -0x1

    const/4 v15, 0x0

    move-object v7, v2

    move v2, v12

    move-wide v12, v13

    move v14, v1

    invoke-virtual/range {v6 .. v15}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    cmpl-float v5, v5, v3

    if-nez v5, :cond_f

    goto :goto_9

    :cond_f
    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    iget v5, v5, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5, v4, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(F)V

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    const/16 v3, 0x16

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :goto_9
    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare()V

    return-void
.end method


# virtual methods
.method public final getRecordingDuration()J
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 11

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->dataLoaded:Z

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v0

    iget p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->defaultDuration:I

    mul-int/lit8 v2, p1, 0x3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, v0

    div-int/lit8 p1, p1, 0x3

    :goto_0
    sget-object v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    const-string v2, "Default window is shorter than video length. Suggested window: start=0ms, end="

    const-class v3, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;

    monitor-enter v3

    int-to-long v4, p1

    cmp-long v6, v4, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ltz v6, :cond_1

    long-to-int p1, v0

    :try_start_0
    const-string v0, "McfStandAloneSubjectMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    move v2, v7

    :goto_1
    sget-object v6, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    iget v6, v6, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;->motion:F

    const v9, 0x3da3d70a    # 0.08f

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_2

    move v2, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v7

    :goto_2
    if-nez v2, :cond_4

    sub-long v9, v0, v4

    long-to-float p1, v9

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    add-long/2addr v0, v4

    long-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const-string v1, "McfStandAloneSubjectMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough motion detected. Suggested window: start="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms, end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto/16 :goto_8

    :cond_4
    :try_start_1
    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;

    invoke-direct {v2, p1, v0, v1}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;-><init>(IJ)V

    :goto_3
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->increaseEndIfPossible()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getCloserToMidpointScore()F

    move-result p1

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getRange()Landroid/util/Pair;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_6
    :goto_4
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->isEndExceeded()Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->startIndex:I

    add-int/2addr v1, v8

    iput v1, v2, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->startIndex:I

    :goto_5
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->increaseEndIfPossible()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->isEndExceeded()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getCloserToMidpointScore()F

    move-result v1

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;->getRange()Landroid/util/Pair;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    cmpl-float v5, v1, p1

    if-lez v5, :cond_6

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_8

    move v5, v8

    goto :goto_6

    :cond_8
    move v5, v7

    :goto_6
    if-eqz v5, :cond_6

    move p1, v1

    move-object v0, v4

    goto :goto_4

    :cond_9
    const-string p1, "McfStandAloneSubjectMotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suggested window: start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "ms, end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    monitor-exit v3

    move-object v1, v0

    :goto_8
    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v0, "highestMotionWindowRange.first"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "highestMotionWindowRange.second"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v0

    long-to-int p1, v0

    filled-new-array {v7, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;

    if-eqz p1, :cond_c

    check-cast p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->INITIALIZING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-eq v1, v2, :cond_a

    goto :goto_a

    :cond_a
    iget-object v1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget v3, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->defaultMinRange:I

    if-le v3, v2, :cond_b

    goto :goto_9

    :cond_b
    move v2, v3

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->resetVideoPosition()V

    sget-object p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->IDLE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_c
    :goto_a
    iput-boolean v8, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->dataLoaded:Z

    goto :goto_b

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_d
    :goto_b
    return-void
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    iget p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    :goto_0
    return-void
.end method

.method public final processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v4, "ANALYTICS_SSMACTION"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ANALYTICS_SSMEDIT"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-void
.end method

.method public final resetVideoPosition()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v5, v4, v2, v3}, Landroidx/media3/common/BasePlayer;->seekToCurrentItem(IJ)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    return-void
.end method

.method public final schedulePlaybackSpeedChangeMessages()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/PlayerMessage;

    monitor-enter v1

    :try_start_0
    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-boolean v3, v1, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->handler:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v1

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    aget v4, v4, v2

    int-to-long v4, v4

    iget v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-boolean v6, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v6, v3

    invoke-static {v6}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-wide v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-boolean v2, v1, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v4, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    iget-boolean v5, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v5, v3

    invoke-static {v5}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-object v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->handler:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v1

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    aget v4, v4, v3

    int-to-long v4, v4

    iget v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-boolean v6, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v6, v3

    invoke-static {v6}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-wide v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    iget v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-boolean v2, v1, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-object p0, v1, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 1

    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v0, p1, p1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final updatePlaybackSpeed(J)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-long v4, v1

    cmp-long p1, p1, v4

    if-gtz p1, :cond_1

    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    float-to-int p1, v0

    iget p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    if-eq p1, p2, :cond_2

    int-to-float p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->setPlaybackSpeed(F)V

    :cond_2
    return-void
.end method
