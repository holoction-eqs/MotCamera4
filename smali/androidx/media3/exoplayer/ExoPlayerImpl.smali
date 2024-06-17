.class public final Landroidx/media3/exoplayer/ExoPlayerImpl;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field public final applicationContext:Landroid/content/Context;

.field public final applicationLooper:Landroid/os/Looper;

.field public final audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public final audioBecomingNoisyManager:Lcom/google/android/gms/tasks/zzr;

.field public final audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

.field public final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public availableCommands:Landroidx/media3/common/Player$Commands;

.field public final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field public final clock:Landroidx/media3/common/util/SystemClock;

.field public final componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field public final constructorFinished:Landroidx/media3/common/FlagSet$Builder;

.field public currentCueGroup:Landroidx/media3/common/text/CueGroup;

.field public final detachSurfaceTimeoutMs:J

.field public final emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public final frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

.field public hasNotifiedFullWrongThreadWarning:Z

.field public final internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field public final listeners:Landroidx/media3/common/util/ListenerSet;

.field public maskingWindowIndex:I

.field public maskingWindowPositionMs:J

.field public mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field public final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field public final mediaSourceHolderSnapshots:Ljava/util/ArrayList;

.field public ownedSurface:Landroid/view/Surface;

.field public pendingDiscontinuity:Z

.field public pendingDiscontinuityReason:I

.field public pendingOperationAcks:I

.field public pendingPlayWhenReadyChangeReason:I

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public final permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

.field public playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

.field public final playbackInfoUpdateHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

.field public final playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

.field public final renderers:[Landroidx/media3/exoplayer/Renderer;

.field public repeatMode:I

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field public shuffleModeEnabled:Z

.field public shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

.field public sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field public staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

.field public surfaceHolder:Landroid/view/SurfaceHolder;

.field public surfaceHolderSurfaceIsVideoOutput:Z

.field public surfaceSize:Landroidx/media3/common/util/Size;

.field public textureView:Landroid/view/TextureView;

.field public final throwsWhenUsingWrongThread:Z

.field public final trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

.field public final useLazyPreparation:Z

.field public videoOutput:Ljava/lang/Object;

.field public final videoScalingMode:I

.field public videoSize:Landroidx/media3/common/VideoSize;

.field public volume:F

.field public final wakeLockManager:Landroidx/appcompat/widget/TintInfo;

.field public final wifiLockManager:Landroidx/appcompat/widget/TintInfo;

.field public final wrappingPlayer:Landroidx/media3/common/Player;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, " [AndroidXMedia3/1.1.1] ["

    const-string v3, "Init "

    invoke-direct/range {p0 .. p0}, Landroidx/media3/common/BasePlayer;-><init>()V

    new-instance v4, Landroidx/media3/common/FlagSet$Builder;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroidx/media3/common/FlagSet$Builder;-><init>(I)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/FlagSet$Builder;

    :try_start_0
    const-string v4, "ExoPlayerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/SystemClock;

    invoke-interface {v2, v3}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-wide v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    new-instance v11, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    iput-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;-><init>()V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-object v7, v2

    move-object v8, v11

    move-object v9, v11

    move-object v10, v11

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)[Landroidx/media3/exoplayer/Renderer;

    move-result-object v3

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v4, v3

    const/4 v6, 0x0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    iput-boolean v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iget-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    iput-wide v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    iget-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    iput-wide v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/SystemClock;

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    iput-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    new-instance v7, Landroidx/media3/common/util/ListenerSet;

    new-instance v8, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v8, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    invoke-direct {v7, v4, v5, v8}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/ArrayList;

    new-instance v4, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v4}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    array-length v5, v3

    new-array v5, v5, [Landroidx/media3/exoplayer/RendererConfiguration;

    array-length v3, v3

    new-array v3, v3, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    sget-object v7, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v3, v7, v8}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    new-instance v3, Landroidx/media3/common/FlagSet$Builder;

    invoke-direct {v3, v6}, Landroidx/media3/common/FlagSet$Builder;-><init>(I)V

    const/16 v4, 0x13

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    move v7, v6

    :goto_1
    if-ge v7, v4, :cond_1

    aget v9, v5, v7

    invoke-virtual {v3, v9}, Landroidx/media3/common/FlagSet$Builder;->add(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Landroidx/media3/common/FlagSet$Builder;->add(I)V

    new-instance v4, Landroidx/media3/common/Player$Commands;

    invoke-virtual {v3}, Landroidx/media3/common/FlagSet$Builder;->build()Landroidx/media3/common/FlagSet;

    move-result-object v3

    invoke-direct {v4, v3}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    new-instance v4, Landroidx/media3/common/FlagSet$Builder;

    invoke-direct {v4, v6}, Landroidx/media3/common/FlagSet$Builder;-><init>(I)V

    :goto_2
    invoke-virtual {v3}, Landroidx/media3/common/FlagSet;->size()I

    move-result v5

    if-ge v6, v5, :cond_2

    invoke-virtual {v3, v6}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/FlagSet$Builder;->add(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Landroidx/media3/common/FlagSet$Builder;->add(I)V

    const/16 v3, 0xa

    invoke-virtual {v4, v3}, Landroidx/media3/common/FlagSet$Builder;->add(I)V

    new-instance v3, Landroidx/media3/common/Player$Commands;

    invoke-virtual {v4}, Landroidx/media3/common/FlagSet$Builder;->build()Landroidx/media3/common/FlagSet;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v3, v4, v8}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object v3

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v3, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-static {v4}, Landroidx/media3/exoplayer/PlaybackInfo;->createDummy(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    check-cast v4, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v4, v5, v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->setPlayer(Landroidx/media3/common/Player;Landroid/os/Looper;)V

    sget v15, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x1f

    if-ge v15, v4, :cond_3

    new-instance v4, Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-direct {v4}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>()V

    goto :goto_3

    :cond_3
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    invoke-static {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31;->registerMediaMetricsListener(Landroid/content/Context;Landroidx/media3/exoplayer/ExoPlayerImpl;Z)Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v4

    :goto_3
    move-object/from16 v21, v4

    new-instance v14, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroidx/media3/exoplayer/LoadControl;

    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    iget-boolean v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-object/from16 v22, v2

    move-object/from16 v20, v3

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    const/16 v17, 0x0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    move-object/from16 v18, v0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    move-object/from16 v16, v4

    move-object v4, v14

    move-object/from16 v23, v14

    move-object/from16 v14, v16

    move/from16 v24, v15

    move-wide v15, v2

    move-object/from16 v19, v0

    invoke-direct/range {v4 .. v21}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;-><init>([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;JZLandroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    move-object/from16 v0, v23

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    const/4 v0, 0x0

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    const/4 v0, -0x1

    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const/16 v2, 0x15

    move/from16 v3, v24

    if-ge v3, v2, :cond_6

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    :cond_4
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_5

    const/16 v4, 0xfa0

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    :cond_5
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    goto :goto_4

    :cond_6
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v0

    :goto_4
    sget-object v2, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    check-cast v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->eventDispatcher:Lkotlin/DeepRecursiveFunction;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v4}, Lkotlin/DeepRecursiveFunction;->removeListener(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V

    iget-object v2, v2, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    invoke-direct {v5, v3, v4}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/tasks/zzr;

    move-object/from16 v3, p1

    iget-object v4, v3, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    move-object/from16 v6, v22

    invoke-direct {v2, v4, v6, v5}, Lcom/google/android/gms/tasks/zzr;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/gms/tasks/zzr;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/tasks/zzr;->setEnabled(Z)V

    new-instance v2, Landroidx/media3/exoplayer/AudioFocusManager;

    iget-object v4, v3, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-direct {v2, v4, v6, v5}, Landroidx/media3/exoplayer/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioAttributes()V

    new-instance v2, Landroidx/appcompat/widget/TintInfo;

    iget-object v4, v3, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Landroidx/appcompat/widget/TintInfo;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {v2}, Landroidx/appcompat/widget/TintInfo;->setEnabled()V

    new-instance v2, Landroidx/appcompat/widget/TintInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/TintInfo;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {v2}, Landroidx/appcompat/widget/TintInfo;->setEnabled()V

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createDeviceInfo(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;

    sget-object v2, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    sget-object v2, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    check-cast v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v5, v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v6, v3}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    iput-object v3, v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_8

    :try_start_2
    invoke-virtual {v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->maybeInvalidateForAudioChannelCountConstraints()V

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v4, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v5, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v4, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v4, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v4, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v0}, Landroidx/media3/common/FlagSet$Builder;->open()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v1}, Landroidx/media3/common/FlagSet$Builder;->open()Z

    throw v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static createDeviceInfo(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;
    .locals 4

    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(III)V

    if-eqz p0, :cond_0

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioManager;

    iget v3, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, v0, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    if-eqz p0, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioManager;

    iget p0, p0, Landroidx/media3/exoplayer/StreamVolumeManager;->streamType:I

    invoke-virtual {v2, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    iput p0, v0, Landroidx/media3/common/DeviceInfo$Builder;->maxVolume:I

    iget v2, v0, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    if-gt v2, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    new-instance p0, Landroidx/media3/common/DeviceInfo;

    invoke-direct {p0, v0}, Landroidx/media3/common/DeviceInfo;-><init>(Landroidx/media3/common/DeviceInfo$Builder;)V

    return-object p0
.end method

.method public static getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 6

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v4, p0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    goto :goto_0

    :cond_0
    iget-wide v0, v1, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v0, v4

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v1, p0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>(Landroidx/media3/common/MediaMetadata;)V

    iget-object p0, v0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->artist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    :cond_3
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->albumTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    :cond_4
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->albumArtist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    :cond_5
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->displayTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    :cond_6
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->subtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    :cond_7
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->description:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    :cond_8
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->userRating:Landroidx/media3/common/Rating;

    if-eqz v0, :cond_9

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->userRating:Landroidx/media3/common/Rating;

    :cond_9
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->overallRating:Landroidx/media3/common/Rating;

    if-eqz v0, :cond_a

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->overallRating:Landroidx/media3/common/Rating;

    :cond_a
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-eqz v0, :cond_b

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->artworkDataType:Ljava/lang/Integer;

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    :cond_b
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->artworkUri:Landroid/net/Uri;

    if-eqz v0, :cond_c

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    :cond_c
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->trackNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    :cond_d
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->totalTrackCount:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    :cond_e
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->folderType:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    :cond_f
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->isBrowsable:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    :cond_10
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->isPlayable:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    :cond_11
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->year:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    :cond_12
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingYear:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    :cond_13
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    :cond_14
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->recordingDay:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    :cond_15
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseYear:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    :cond_16
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseMonth:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    :cond_17
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->releaseDay:Ljava/lang/Integer;

    if-eqz v0, :cond_18

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    :cond_18
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->writer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    :cond_19
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->composer:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    :cond_1a
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->conductor:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    :cond_1b
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->discNumber:Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    :cond_1c
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->totalDiscCount:Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    :cond_1d
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->genre:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1e

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    :cond_1e
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->compilation:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    :cond_1f
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->station:Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    :cond_20
    iget-object v0, p0, Landroidx/media3/common/MediaMetadata;->mediaType:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    iput-object v0, v1, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    :cond_21
    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_22

    iput-object p0, v1, Landroidx/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    :cond_22
    :goto_0
    new-instance p0, Landroidx/media3/common/MediaMetadata;

    invoke-direct {p0, v1}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    return-object p0
.end method

.method public final clearVideoSurface()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public final createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v0

    new-instance v8, Landroidx/media3/exoplayer/PlayerMessage;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/SystemClock;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v7, v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/PlayerMessage;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroidx/media3/common/util/Clock;Landroid/os/Looper;)V

    return-object v8
.end method

.method public final getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 7

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v3, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1, p1, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide p0, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    iget-wide p0, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    add-long/2addr p0, v0

    :goto_0
    return-wide p0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getCurrentAdGroupIndex()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget p0, p0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getCurrentAdIndexInAdGroup()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget p0, p0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getCurrentMediaItemIndex()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final getCurrentPeriodIndex()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p0, p0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 3

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlaybackInfo;->getEstimatedPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    :goto_0
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, p1, p0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide p0, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    return-object p0
.end method

.method public final getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I
    .locals 1

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    return p0

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p1, v0, p0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    return p0
.end method

.method public final getDuration()J
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v2, p0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v0, v1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlayWhenReady()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    return p0
.end method

.method public final getPlaybackState()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    return p0
.end method

.method public final getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isPlayingAd()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result p0

    return p0
.end method

.method public final maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    move-object/from16 v3, p1

    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Landroidx/media3/exoplayer/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    sget-object v19, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    sget-object v21, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    move-object v10, v1

    move-wide v11, v15

    move-wide v13, v15

    move-object/from16 v20, v0

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    return-object v0

    :cond_2
    iget-object v3, v9, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v5

    if-eqz v10, :cond_3

    new-instance v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v11, v12}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v11, v9, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_2
    move-object v15, v11

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v7

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6, v3, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-wide v2, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    sub-long/2addr v7, v2

    :cond_4
    if-nez v10, :cond_a

    cmp-long v2, v13, v7

    if-gez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez v2, :cond_8

    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v3, v15, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-eq v2, v3, :cond_e

    :cond_6
    iget-object v2, v15, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v15}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v1

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    if-eqz v1, :cond_7

    iget v1, v15, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v2, v15, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    goto :goto_3

    :cond_7
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :goto_3
    iget-wide v11, v9, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v13, v9, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-wide v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    sub-long v17, v0, v4

    iget-object v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v5, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v6, v9, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object v10, v15

    move-object v7, v15

    move-wide v15, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v9

    iput-wide v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    goto/16 :goto_8

    :cond_8
    move-object v1, v15

    invoke-virtual {v1}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-wide v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    sub-long v4, v13, v7

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-long v2, v13, v17

    :cond_9
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v4, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v5, v9, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object v10, v1

    move-wide v11, v13

    move-wide v6, v13

    move-wide v15, v6

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v9

    iput-wide v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    goto :goto_8

    :cond_a
    :goto_4
    move-wide v6, v13

    move-object v1, v15

    invoke-virtual {v1}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    const-wide/16 v17, 0x0

    if-eqz v10, :cond_b

    sget-object v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_5

    :cond_b
    iget-object v2, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_5
    move-object/from16 v19, v2

    if-eqz v10, :cond_c

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_6

    :cond_c
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_6
    move-object/from16 v20, v0

    if-eqz v10, :cond_d

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_7

    :cond_d
    iget-object v0, v9, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_7
    move-object/from16 v21, v0

    move-object v10, v1

    move-wide v11, v6

    move-wide v13, v6

    move-wide v15, v6

    invoke-virtual/range {v9 .. v21}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v9

    iput-wide v6, v9, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    :cond_e
    :goto_8
    return-object v9
.end method

.method public final maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;
    .locals 6

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    iget-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    iget-object p3, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p3

    iget-wide p3, p3, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p3

    :cond_3
    move v3, p2

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final maybeNotifySurfaceSizeChanged(II)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    iget v1, v0, Landroidx/media3/common/util/Size;->width:I

    if-ne p1, v1, :cond_0

    iget v0, v0, Landroidx/media3/common/util/Size;->height:I

    if-eq p2, v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;-><init>(II)V

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(Ljava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public final prepare()V
    .locals 14

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(IZ)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-eq v1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {p0, v1, v4, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(IIZ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v3, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v5

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v13}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    return-void
.end method

.method public final removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->verifyCurrentThread()V

    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet;->listeners:Ljava/util/AbstractCollection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-object v3, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    iget-boolean v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    iget-object v4, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v4}, Landroidx/media3/common/FlagSet$Builder;->build()Landroidx/media3/common/FlagSet;

    move-result-object v4

    iget-object v5, v2, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final removeSurfaceCallbacks()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    iget-boolean v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    const/16 v3, 0x2710

    iput v3, v0, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eq v0, v1, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v3, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public final seekTo(IJZ)V
    .locals 11

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    check-cast v4, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-boolean v5, v4, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v5

    iput-boolean v3, v4, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    new-instance v6, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;

    invoke-direct {v6, v5, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v5, v2, v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v4

    if-lt p1, v4, :cond_2

    return-void

    :cond_2
    iget v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v4, v3

    iput v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    const-string v1, "ExoPlayerImpl"

    const-string v2, "seekTo ignored because an ad is playing"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    invoke-direct {v3, v5, v0, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4

    if-ne v4, v5, :cond_5

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v8

    invoke-virtual {p0, v2, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {p0, v3, v2, v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v7, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v9, v2, p1, v4, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    invoke-virtual {v7, v6, v9}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v9

    move-object v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v9

    move v9, p4

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    return-void
.end method

.method public final sendRendererMessage(Ljava/lang/Object;II)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v3

    iget-boolean v4, v3, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput p3, v3, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(IZ)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(IIZ)V

    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 11

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    return-void
.end method

.method public final setRepeatMode(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    new-instance v0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 p1, 0x8

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v1, p1, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public final setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v1, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1, v2}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParametersInternal(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    invoke-virtual {v1, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->init(Landroidx/media3/common/TrackSelectionParameters;)V

    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->setParametersInternal(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    new-instance v0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final setVideoOutputInternal(Ljava/lang/Object;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v2, :cond_1

    aget-object v7, v1, v4

    invoke-interface {v7}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v8

    if-ne v8, v5, :cond_0

    invoke-virtual {p0, v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v5

    iget-boolean v7, v5, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v7, v6

    invoke-static {v7}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput v6, v5, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    invoke-virtual {v5, p1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/PlayerMessage;

    iget-wide v7, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    invoke-virtual {v1, v7, v8}, Landroidx/media3/exoplayer/PlayerMessage;->blockUntilDelivered(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v3, v6

    goto :goto_2

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_3

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v3, :cond_4

    new-instance p1, Lkotlin/UninitializedPropertyAccessException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lkotlin/UninitializedPropertyAccessException;-><init>(I)V

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/16 v1, 0x3eb

    invoke-direct {v0, v5, p1, v1}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    :cond_4
    return-void
.end method

.method public final stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object p1, v0, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    return-void
.end method

.method public final updateAvailableCommands()V
    .locals 15

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v2

    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v3

    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v8

    if-eq v8, v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v8

    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v9

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    new-instance v10, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v10}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    iget-object v11, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    iget-object v11, v11, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    iget-object v12, v10, Landroidx/media3/common/Player$Commands$Builder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v13, v6

    :goto_2
    invoke-virtual {v11}, Landroidx/media3/common/FlagSet;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    invoke-virtual {v11, v13}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroidx/media3/common/FlagSet$Builder;->add(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    xor-int/lit8 v11, v2, 0x1

    const/4 v13, 0x4

    invoke-virtual {v10, v13, v11}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)V

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    move v13, v7

    goto :goto_3

    :cond_3
    move v13, v6

    :goto_3
    const/4 v14, 0x5

    invoke-virtual {v10, v14, v13}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)V

    if-eqz v4, :cond_4

    if-nez v2, :cond_4

    move v13, v7

    goto :goto_4

    :cond_4
    move v13, v6

    :goto_4
    const/4 v14, 0x6

    invoke-virtual {v10, v14, v13}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)V

    if-nez v1, :cond_6

    if-nez v4, :cond_5

    if-eqz v8, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    if-nez v2, :cond_6

    move v4, v7

    goto :goto_5

    :cond_6
    move v4, v6

    :goto_5
    const/4 v13, 0x7

    invoke-virtual {v10, v13, v4}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)V

    if-eqz v5, :cond_7

    if-nez v2, :cond_7

    move v4, v7

    goto :goto_6

    :cond_7
    move v4, v6

    :goto_6
    const/16 v13, 0x8

    invoke-virtual {v10, v13, v4}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)V

    if-nez v1, :cond_9

    if-nez v5, :cond_8

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    :cond_8
    if-nez v2, :cond_9

    move v1, v7

    goto :goto_7

    :cond_9
    move v1, v6

    :goto_7
    const/16 v4, 0x9

    invoke-virtual {v10, v4, v1}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)V

    const/16 v1, 0xa

    invoke-virtual {v10, v1, v11}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)V

    if-eqz v3, :cond_a

    if-nez v2, :cond_a

    move v1, v7

    goto :goto_8

    :cond_a
    move v1, v6

    :goto_8
    const/16 v4, 0xb

    invoke-virtual {v10, v4, v1}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)V

    if-eqz v3, :cond_b

    if-nez v2, :cond_b

    move v6, v7

    :cond_b
    const/16 v1, 0xc

    invoke-virtual {v10, v1, v6}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)V

    new-instance v1, Landroidx/media3/common/Player$Commands;

    invoke-virtual {v12}, Landroidx/media3/common/FlagSet$Builder;->build()Landroidx/media3/common/FlagSet;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/Player$Commands;-><init>(Landroidx/media3/common/FlagSet;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_c
    return-void
.end method

.method public final updatePlayWhenReady(IIZ)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p3, :cond_1

    if-eq p1, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-ne v2, p3, :cond_2

    iget v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v2, v0, :cond_2

    return-void

    :cond_2
    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-boolean v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithEstimatedPosition()Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    :cond_3
    invoke-virtual {p1, v0, p3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlayWhenReady(IZ)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v2

    iget-object p1, p1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iput-object p1, v2, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v2}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v2 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    return-void
.end method

.method public final updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iget-object v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v8

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v8

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v14

    if-eq v8, v14, :cond_1

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    iget-object v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v14, v8, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v15, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6, v14, v15}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v14

    iget v14, v14, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v12, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v6, v14, v12}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v14, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v9, v14, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v9, v15}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v9

    iget v9, v9, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v7, v9, v12}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p4, :cond_2

    if-nez v2, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    if-ne v2, v5, :cond_3

    move v6, v11

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const/4 v6, 0x3

    :goto_0
    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v7

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_5
    if-eqz p4, :cond_6

    if-nez v2, :cond_6

    iget-wide v6, v8, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget-wide v8, v14, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_7

    if-ne v2, v5, :cond_7

    if-eqz p9, :cond_7

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    if-eqz v7, :cond_9

    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v12, v12, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v10, v12, v14}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v10

    iget v10, v10, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v14, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v12, v10, v14}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v10

    iget-object v10, v10, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    :goto_2
    sget-object v12, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    :goto_3
    if-nez v7, :cond_a

    iget-object v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v1, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    :cond_a
    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v12, v8}, Landroidx/media3/common/MediaMetadata$Builder;-><init>(Landroidx/media3/common/MediaMetadata;)V

    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move v14, v13

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_c

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/common/Metadata;

    move v9, v13

    :goto_5
    iget-object v11, v15, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v13, v11

    if-ge v9, v13, :cond_b

    aget-object v11, v11, v9

    invoke-interface {v11, v12}, Landroidx/media3/common/Metadata$Entry;->populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x2

    const/4 v13, 0x0

    goto :goto_4

    :cond_c
    new-instance v8, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v8, v12}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v8

    :cond_d
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v8, v9}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v5

    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-boolean v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eq v8, v11, :cond_e

    move v8, v5

    goto :goto_6

    :cond_e
    const/4 v8, 0x0

    :goto_6
    iget v11, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    iget v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v11, v12, :cond_f

    move v11, v5

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    :goto_7
    if-nez v11, :cond_10

    if-eqz v8, :cond_11

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateWakeAndWifiLock()V

    :cond_11
    iget-boolean v12, v3, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    iget-boolean v13, v1, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-eq v12, v13, :cond_12

    move v12, v5

    goto :goto_8

    :cond_12
    const/4 v12, 0x0

    :goto_8
    if-eqz v4, :cond_13

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v13, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;

    move/from16 v14, p2

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;-><init>(IILandroidx/media3/exoplayer/PlaybackInfo;)V

    invoke-virtual {v4, v15, v13}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_13
    if-eqz p4, :cond_1b

    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iget-object v13, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v13}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_14

    iget-object v13, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v13, v13, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v14, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v14, v13, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v14, v4, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v15, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v15, v13}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v15

    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    move-object/from16 p2, v13

    iget-object v13, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v5, v14, v13}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v13, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v13, v13, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move-object/from16 v20, p2

    move-object/from16 v17, v5

    move-object/from16 v19, v13

    move/from16 v18, v14

    move/from16 v21, v15

    goto :goto_9

    :cond_14
    move/from16 v18, p8

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    :goto_9
    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v5}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v5

    if-nez v2, :cond_17

    if-eqz v5, :cond_15

    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v13, v5, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v5, v5, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v4, v13, v5}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v4

    goto :goto_a

    :cond_15
    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v5, v5, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_16

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v4

    goto :goto_c

    :cond_16
    iget-wide v13, v4, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v4, v4, Landroidx/media3/common/Timeline$Period;->durationUs:J

    goto :goto_b

    :cond_17
    if-eqz v5, :cond_18

    iget-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    :goto_a
    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v13

    goto :goto_d

    :cond_18
    iget-wide v4, v4, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v13, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    :goto_b
    add-long/2addr v4, v13

    :goto_c
    move-wide v13, v4

    :goto_d
    new-instance v15, Landroidx/media3/common/Player$PositionInfo;

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v22

    invoke-static {v13, v14}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v24

    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v5, v4, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v4, v4, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    move-object/from16 v16, v15

    move/from16 v26, v5

    move/from16 v27, v4

    invoke-direct/range {v16 .. v27}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v4

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v13, v5, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v13, v13, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5, v13, v14}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v5, v13}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v5

    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v14, v14, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    move/from16 p2, v5

    iget-object v5, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v14, v4, v5}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v14

    iget-object v14, v14, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v5, v5, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move/from16 v31, p2

    move-object/from16 v29, v5

    move-object/from16 v30, v13

    move-object/from16 v27, v14

    goto :goto_e

    :cond_19
    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, -0x1

    :goto_e
    invoke-static/range {p6 .. p7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v32

    new-instance v5, Landroidx/media3/common/Player$PositionInfo;

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v13, v13, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v13}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v13

    if-eqz v13, :cond_1a

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v13}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v13

    invoke-static {v13, v14}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v13

    move-wide/from16 v34, v13

    goto :goto_f

    :cond_1a
    move-wide/from16 v34, v32

    :goto_f
    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v13, v13, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v14, v13, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v13, v13, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    move-object/from16 v26, v5

    move/from16 v28, v4

    move/from16 v36, v14

    move/from16 v37, v13

    invoke-direct/range {v26 .. v37}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v13, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v13, v2, v15, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    const/16 v2, 0xb

    invoke-virtual {v4, v2, v13}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1b
    if-eqz v7, :cond_1c

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, v10, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1c
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v5, 0x4

    if-eq v2, v4, :cond_1d

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_1d

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v2, v6, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1d
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v6, 0x5

    if-eq v2, v4, :cond_1e

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v4, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1e
    if-eqz v9, :cond_1f

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v7, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/4 v9, 0x3

    invoke-direct {v7, v2, v9}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2, v7}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_10

    :cond_1f
    const/4 v9, 0x3

    :goto_10
    const/4 v2, 0x6

    if-eqz v12, :cond_20

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v7, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v7, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v4, v9, v7}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_20
    const/4 v4, 0x7

    if-nez v11, :cond_21

    if-eqz v8, :cond_22

    :cond_21
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v9, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v9, v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v10, -0x1

    invoke-virtual {v7, v10, v9}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_22
    if-eqz v11, :cond_23

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v9, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    const/16 v10, 0x8

    invoke-direct {v9, v1, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v7, v5, v9}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_23
    if-eqz v8, :cond_24

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v7, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;

    move/from16 v8, p3

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;-><init>(IILandroidx/media3/exoplayer/PlaybackInfo;)V

    invoke-virtual {v5, v6, v7}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_11

    :cond_24
    const/4 v9, 0x1

    :goto_11
    iget v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget v6, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-eq v5, v6, :cond_25

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v6, v1, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v5, v2, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_25
    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v5

    if-eq v2, v5, :cond_26

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    const/4 v6, 0x2

    invoke-direct {v5, v1, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v2, v4, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_26
    iget-object v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v2, v4}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    iget-boolean v2, v3, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    iget-boolean v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eq v2, v1, :cond_28

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateWakeAndWifiLock()V

    goto :goto_12

    :cond_28
    return-void
.end method

.method public final updateWakeAndWifiLock()V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/appcompat/widget/TintInfo;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/appcompat/widget/TintInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/4 p0, 0x4

    if-ne v0, p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintInfo;->setStayAwake(Z)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/TintInfo;->setStayAwake(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/TintInfo;->setStayAwake(Z)V

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintInfo;->setStayAwake(Z)V

    :goto_2
    return-void
.end method

.method public final verifyApplicationThread()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/FlagSet$Builder;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-boolean v2, v0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move v1, v3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_4

    const-string v0, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    if-nez v1, :cond_3

    const-string v1, "ExoPlayerImpl"

    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_1
    invoke-static {v1, v0, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
