.class public final Landroidx/media3/exoplayer/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allRenderersInCorrectState:Z

.field public hasEnabledTracks:Z

.field public info:Landroidx/media3/exoplayer/MediaPeriodInfo;

.field public final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field public final mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

.field public next:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public prepared:Z

.field public final rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

.field public rendererPositionOffsetUs:J

.field public final sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

.field public trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public final trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

.field public trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/MappingTrackSelector;Landroidx/media3/exoplayer/upstream/DefaultAllocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    iput-wide p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iput-object p4, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iput-object p6, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p2, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p3, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    sget-object p3, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object p8, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    array-length p3, p1

    new-array p3, p3, [Landroidx/media3/exoplayer/source/SampleStream;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-wide v5, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/media3/exoplayer/PlaylistTimeline;->$r8$clinit:I

    iget-object p1, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    iget-object p2, p6, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p6, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p3, p6, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    if-eqz p3, :cond_0

    iget-object p4, p3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object p3, p3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-virtual {p4, p3}, Landroidx/media3/exoplayer/source/BaseMediaSource;->enable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_0
    iget-object p3, p2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-wide p7, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {p3, p1, p5, p7, p8}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object v1

    iget-object p1, p6, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, Landroidx/media3/exoplayer/MediaSourceList;->disableUnusedMediaSources()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, p1

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    move-object v1, p1

    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    return-void
.end method


# virtual methods
.method public final applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    if-nez p4, :cond_0

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v4, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v6, v4

    const/4 v7, -0x2

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    if-ge v3, v6, :cond_3

    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v4, 0x0

    aput-object v4, v8, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    iget-object v9, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v10, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v11, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v12, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    move-object/from16 v13, p5

    move-wide/from16 v14, p2

    invoke-interface/range {v9 .. v15}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v9

    move v3, v2

    :goto_3
    array-length v6, v4

    if-ge v3, v6, :cond_5

    aget-object v6, v4, v3

    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v6

    if-ne v6, v7, :cond_4

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {v6, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lkotlin/UInt$Companion;

    invoke-direct {v6}, Lkotlin/UInt$Companion;-><init>()V

    aput-object v6, v8, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    move v3, v2

    :goto_4
    array-length v6, v8

    if-ge v3, v6, :cond_9

    aget-object v6, v8, v3

    if-eqz v6, :cond_6

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    invoke-static {v6}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    aget-object v6, v4, v3

    invoke-interface {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v6

    if-eq v6, v7, :cond_8

    iput-boolean v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_6

    :cond_6
    iget-object v6, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v6, v6, v3

    if-nez v6, :cond_7

    move v6, v5

    goto :goto_5

    :cond_7
    move v6, v2

    :goto_5
    invoke-static {v6}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    return-wide v9
.end method

.method public final disableTrackSelectionsInResult()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget v2, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v0

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v1

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->disable()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final enableTrackSelectionsInResult()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget v2, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v0

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v1

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->enable()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final getBufferedPositionUs()J
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    :cond_2
    return-wide v3
.end method

.method public final getStartPositionRendererTime()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final release()V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    :try_start_0
    instance-of v1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v1, :cond_0

    check-cast p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v3, p0}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    check-cast p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->disableUnusedMediaSources()V

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/MediaSourceList;->maybeReleaseChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MediaPeriodHolder"

    const-string v1, "Period release failed."

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final selectTracks(FLandroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, v2

    const/4 v4, 0x1

    add-int/2addr v0, v4

    new-array v0, v0, [I

    array-length v5, v2

    add-int/2addr v5, v4

    new-array v6, v5, [[Landroidx/media3/common/TrackGroup;

    array-length v7, v2

    add-int/2addr v7, v4

    new-array v7, v7, [[[I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_0

    iget v9, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array v10, v9, [Landroidx/media3/common/TrackGroup;

    aput-object v10, v6, v8

    new-array v9, v9, [[I

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    array-length v5, v2

    new-array v15, v5, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    aget-object v9, v2, v8

    invoke-interface {v9}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v9

    aput v9, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    iget v8, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    const/4 v13, 0x5

    if-ge v5, v8, :cond_a

    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v8

    iget v9, v8, Landroidx/media3/common/TrackGroup;->type:I

    if-ne v9, v13, :cond_2

    move v9, v4

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_3
    array-length v10, v2

    move v13, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    array-length v14, v2

    if-ge v11, v14, :cond_7

    aget-object v14, v2, v11

    move-object/from16 v17, v1

    move-object/from16 v16, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    iget v1, v8, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v4, v1, :cond_3

    iget-object v1, v8, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v1, v1, v4

    invoke-interface {v14, v1}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    aget v1, v0, v11

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :goto_6
    if-gt v3, v12, :cond_5

    if-ne v3, v12, :cond_6

    if-eqz v9, :cond_6

    if-nez v13, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    move v13, v1

    move v12, v3

    move v10, v11

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    move-object/from16 v1, v17

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v16, v3

    array-length v1, v2

    if-ne v10, v1, :cond_8

    iget v1, v8, Landroidx/media3/common/TrackGroup;->length:I

    new-array v1, v1, [I

    goto :goto_8

    :cond_8
    aget-object v1, v2, v10

    iget v3, v8, Landroidx/media3/common/TrackGroup;->length:I

    new-array v3, v3, [I

    const/4 v4, 0x0

    :goto_7
    iget v9, v8, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v4, v9, :cond_9

    iget-object v9, v8, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v9, v9, v4

    invoke-interface {v1, v9}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v9

    aput v9, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v3

    :goto_8
    aget v3, v0, v10

    aget-object v4, v6, v10

    aput-object v8, v4, v3

    aget-object v4, v7, v10

    aput-object v1, v4, v3

    const/4 v1, 0x1

    add-int/2addr v3, v1

    aput v3, v0, v10

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    move-object/from16 v1, v17

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_a
    move-object/from16 v17, v1

    array-length v1, v2

    new-array v10, v1, [Landroidx/media3/exoplayer/source/TrackGroupArray;

    array-length v1, v2

    new-array v1, v1, [Ljava/lang/String;

    array-length v3, v2

    new-array v9, v3, [I

    const/4 v3, 0x0

    :goto_9
    array-length v4, v2

    if-ge v3, v4, :cond_b

    aget v4, v0, v3

    new-instance v5, Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v8, v6, v3

    invoke-static {v4, v8}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v5, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    aput-object v5, v10, v3

    aget-object v5, v7, v3

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    aput-object v4, v7, v3

    aget-object v4, v2, v3

    invoke-interface {v4}, Landroidx/media3/exoplayer/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aget-object v4, v2, v3

    invoke-interface {v4}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v4

    aput v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    array-length v1, v2

    aget v0, v0, v1

    new-instance v1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    array-length v2, v2

    aget-object v2, v6, v2

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    new-instance v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v8, v0

    move-object v11, v15

    move-object v12, v7

    move v2, v13

    move-object v13, v1

    invoke-direct/range {v8 .. v13}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Landroidx/media3/exoplayer/source/TrackGroupArray;[I[[[ILandroidx/media3/exoplayer/source/TrackGroupArray;)V

    move-object/from16 v1, v17

    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v3, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v5, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    const/16 v6, 0x20

    if-eqz v5, :cond_c

    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v5, v6, :cond_c

    iget-object v5, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lcom/motorola/camera/JsonConfig$CameraMapping;

    if-eqz v5, :cond_c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {v8}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v1, v8}, Lcom/motorola/camera/JsonConfig$CameraMapping;->ensureInitialized(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroid/os/Looper;)V

    :cond_c
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v3, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    new-array v5, v3, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    new-instance v8, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;

    const/16 v9, 0xe

    invoke-direct {v8, v9, v4, v15}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v11, 0x2

    invoke-static {v11, v0, v7, v8, v9}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v8, v5, v9

    :cond_d
    const/4 v8, 0x0

    :goto_a
    iget v9, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    iget-object v12, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v13, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    if-ge v8, v9, :cond_f

    aget v9, v13, v8

    if-ne v11, v9, :cond_e

    aget-object v9, v12, v8

    iget v9, v9, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-lez v9, :cond_e

    const/4 v8, 0x1

    goto :goto_b

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_f
    const/4 v8, 0x0

    :goto_b
    new-instance v9, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v4, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z)V

    new-instance v8, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/4 v14, 0x3

    invoke-direct {v8, v14}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v15, 0x1

    invoke-static {v15, v0, v7, v9, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_10

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v15, v5, v9

    :cond_10
    if-nez v8, :cond_11

    const/4 v8, 0x0

    goto :goto_c

    :cond_11
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget-object v15, v8, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v8, v8, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    const/16 v16, 0x0

    aget v8, v8, v16

    iget-object v15, v15, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v8, v15, v8

    iget-object v8, v8, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    :goto_c
    new-instance v15, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;

    const/16 v10, 0xf

    invoke-direct {v15, v10, v4, v8}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-direct {v8, v2}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v14, v0, v7, v15, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectTracksForType(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    aput-object v2, v5, v8

    :cond_12
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v3, :cond_1a

    aget v8, v13, v2

    if-eq v8, v11, :cond_19

    const/4 v10, 0x1

    if-eq v8, v10, :cond_19

    if-eq v8, v14, :cond_19

    aget-object v8, v12, v2

    aget-object v10, v7, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_e
    iget v6, v8, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v15, v6, :cond_17

    invoke-virtual {v8, v15}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v6

    aget-object v19, v10, v15

    move-object/from16 v11, v18

    move/from16 v18, v17

    move-object/from16 v17, v14

    const/4 v14, 0x0

    :goto_f
    iget v9, v6, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v14, v9, :cond_16

    aget v9, v19, v14

    move-object/from16 v20, v8

    iget-boolean v8, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v9, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, v6, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v8, v8, v14

    new-instance v9, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;

    move-object/from16 v21, v6

    aget v6, v19, v14

    invoke-direct {v9, v8, v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;-><init>(Landroidx/media3/common/Format;I)V

    if-eqz v11, :cond_13

    sget-object v6, Lcom/google/common/collect/ComparisonChain;->ACTIVE:Lcom/google/common/collect/ComparisonChain$1;

    iget-boolean v8, v11, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isWithinRendererCapabilities:Z

    move-object/from16 v22, v10

    iget-boolean v10, v9, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isWithinRendererCapabilities:Z

    invoke-virtual {v6, v10, v8}, Lcom/google/common/collect/ComparisonChain$1;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v6

    iget-boolean v8, v9, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isDefault:Z

    iget-boolean v10, v11, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$OtherTrackScore;->isDefault:Z

    invoke-virtual {v6, v8, v10}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v6

    if-lez v6, :cond_15

    goto :goto_10

    :cond_13
    move-object/from16 v22, v10

    :goto_10
    move-object v11, v9

    move/from16 v18, v14

    move-object/from16 v17, v21

    goto :goto_11

    :cond_14
    move-object/from16 v21, v6

    move-object/from16 v22, v10

    :cond_15
    :goto_11
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v20

    move-object/from16 v6, v21

    move-object/from16 v10, v22

    goto :goto_f

    :cond_16
    move-object/from16 v20, v8

    move-object/from16 v22, v10

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v14, v17

    move/from16 v17, v18

    move-object/from16 v18, v11

    const/4 v11, 0x2

    goto :goto_e

    :cond_17
    if-nez v14, :cond_18

    const/4 v6, 0x0

    goto :goto_12

    :cond_18
    new-instance v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v14, v8}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(ILandroidx/media3/common/TrackGroup;[I)V

    :goto_12
    aput-object v6, v5, v2

    :cond_19
    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x20

    const/4 v11, 0x2

    const/4 v14, 0x3

    goto/16 :goto_d

    :cond_1a
    iget v2, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    :goto_13
    iget-object v9, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    if-ge v8, v2, :cond_1b

    aget-object v9, v9, v8

    invoke-static {v9, v4, v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/util/HashMap;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_1b
    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v8, v4, v6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->collectTrackSelectionOverrides(Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/util/HashMap;)V

    const/4 v8, 0x0

    :goto_14
    const/4 v10, -0x1

    if-ge v8, v2, :cond_1f

    iget-object v11, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v11, v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/common/TrackSelectionOverride;

    if-nez v11, :cond_1c

    goto :goto_17

    :cond_1c
    iget-object v12, v11, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1e

    aget-object v13, v9, v8

    iget-object v11, v11, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v13, v13, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v13, v11}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_1d

    goto :goto_15

    :cond_1d
    move v13, v10

    :goto_15
    if-eq v13, v10, :cond_1e

    new-instance v10, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    invoke-static {v12}, Lkotlin/ResultKt;->toArray(Ljava/util/Collection;)[I

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v10, v13, v11, v12}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(ILandroidx/media3/common/TrackGroup;[I)V

    goto :goto_16

    :cond_1e
    const/4 v10, 0x0

    :goto_16
    aput-object v10, v5, v8

    :goto_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_1f
    iget v2, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    const/4 v6, 0x0

    :goto_18
    if-ge v6, v2, :cond_24

    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v8, v8, v6

    iget-object v9, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_20

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x1

    goto :goto_19

    :cond_20
    const/4 v9, 0x0

    :goto_19
    if-nez v9, :cond_21

    goto :goto_1c

    :cond_21
    iget-object v9, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_22

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_1a

    :cond_22
    const/4 v9, 0x0

    :goto_1a
    if-eqz v9, :cond_23

    iget-object v11, v9, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v12, v11

    if-eqz v12, :cond_23

    new-instance v12, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    iget v13, v9, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    invoke-virtual {v8, v13}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v8

    iget v9, v9, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    invoke-direct {v12, v9, v8, v11}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(ILandroidx/media3/common/TrackGroup;[I)V

    goto :goto_1b

    :cond_23
    const/4 v12, 0x0

    :goto_1b
    aput-object v12, v5, v6

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_24
    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v3, :cond_27

    iget-object v6, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v6, v6, v2

    iget-object v8, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_26

    iget-object v8, v4, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_1e

    :cond_25
    const/4 v6, 0x0

    goto :goto_1f

    :cond_26
    :goto_1e
    const/4 v6, 0x0

    aput-object v6, v5, v2

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_27
    const/4 v6, 0x0

    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->trackSelectionFactory:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {v2, v5, v1}, Lkotlin/UNINITIALIZED_VALUE;->createTrackSelections([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object v1

    new-array v2, v3, [Landroidx/media3/exoplayer/RendererConfiguration;

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v3, :cond_2d

    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v8, v8, v5

    iget-object v9, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_29

    iget-object v9, v4, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    goto :goto_21

    :cond_28
    const/4 v8, 0x0

    goto :goto_22

    :cond_29
    :goto_21
    const/4 v8, 0x1

    :goto_22
    if-nez v8, :cond_2b

    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v8, v8, v5

    const/4 v9, -0x2

    if-eq v8, v9, :cond_2a

    aget-object v8, v1, v5

    if-eqz v8, :cond_2b

    :cond_2a
    const/4 v8, 0x1

    goto :goto_23

    :cond_2b
    const/4 v8, 0x0

    :goto_23
    if-eqz v8, :cond_2c

    sget-object v8, Landroidx/media3/exoplayer/RendererConfiguration;->DEFAULT:Landroidx/media3/exoplayer/RendererConfiguration;

    goto :goto_24

    :cond_2c
    move-object v8, v6

    :goto_24
    aput-object v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_2d
    iget-boolean v3, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-eqz v3, :cond_39

    move v4, v10

    move v5, v4

    const/4 v3, 0x0

    :goto_25
    iget v8, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    if-ge v3, v8, :cond_37

    iget-object v8, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v8, v8, v3

    aget-object v9, v1, v3

    const/4 v11, 0x1

    if-eq v8, v11, :cond_2f

    const/4 v11, 0x2

    if-ne v8, v11, :cond_2e

    goto :goto_26

    :cond_2e
    const/16 v6, 0x20

    goto :goto_2b

    :cond_2f
    const/4 v11, 0x2

    :goto_26
    if-eqz v9, :cond_2e

    aget-object v12, v7, v3

    iget-object v13, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v13, v13, v3

    invoke-interface {v9}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v14

    iget-object v13, v13, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v13, v14}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_30

    goto :goto_27

    :cond_30
    move v13, v10

    :goto_27
    const/4 v14, 0x0

    :goto_28
    invoke-interface {v9}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v15

    if-ge v14, v15, :cond_32

    aget-object v15, v12, v13

    invoke-interface {v9, v14}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v17

    aget v15, v15, v17

    const/16 v6, 0x20

    and-int/2addr v15, v6

    if-eq v15, v6, :cond_31

    const/4 v9, 0x0

    goto :goto_29

    :cond_31
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    goto :goto_28

    :cond_32
    const/16 v6, 0x20

    const/4 v9, 0x1

    :goto_29
    if-eqz v9, :cond_36

    const/4 v9, 0x1

    if-ne v8, v9, :cond_34

    if-eq v5, v10, :cond_33

    goto :goto_2a

    :cond_33
    move v5, v3

    goto :goto_2b

    :cond_34
    if-eq v4, v10, :cond_35

    :goto_2a
    const/4 v3, 0x0

    goto :goto_2c

    :cond_35
    move v4, v3

    :cond_36
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    goto :goto_25

    :cond_37
    const/4 v3, 0x1

    :goto_2c
    if-eq v5, v10, :cond_38

    if-eq v4, v10, :cond_38

    const/4 v6, 0x1

    goto :goto_2d

    :cond_38
    const/4 v6, 0x0

    :goto_2d
    and-int/2addr v3, v6

    if-eqz v3, :cond_39

    new-instance v3, Landroidx/media3/exoplayer/RendererConfiguration;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroidx/media3/exoplayer/RendererConfiguration;-><init>(Z)V

    aput-object v3, v2, v5

    aput-object v3, v2, v4

    :cond_39
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v3, v2

    new-array v3, v3, [Ljava/util/List;

    const/4 v4, 0x0

    :goto_2e
    array-length v5, v2

    if-ge v4, v5, :cond_3b

    aget-object v5, v2, v4

    if-eqz v5, :cond_3a

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v5

    goto :goto_2f

    :cond_3a
    sget-object v5, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v5, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    :goto_2f
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_3b
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v4, 0x0

    :goto_30
    iget v5, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    if-ge v4, v5, :cond_47

    iget-object v5, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v6, v5, v4

    aget-object v7, v3, v4

    const/4 v8, 0x0

    :goto_31
    iget v9, v6, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v8, v9, :cond_46

    invoke-virtual {v6, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    aget-object v11, v5, v4

    invoke-virtual {v11, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v11

    iget v11, v11, Landroidx/media3/common/TrackGroup;->length:I

    new-array v12, v11, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_32
    if-ge v13, v11, :cond_3d

    iget-object v15, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v15, v15, v4

    aget-object v15, v15, v8

    aget v15, v15, v13

    and-int/lit8 v15, v15, 0x7

    const/4 v10, 0x4

    if-eq v15, v10, :cond_3c

    goto :goto_33

    :cond_3c
    add-int/lit8 v15, v14, 0x1

    aput v13, v12, v14

    move v14, v15

    :goto_33
    add-int/lit8 v13, v13, 0x1

    const/4 v10, -0x1

    goto :goto_32

    :cond_3d
    const/4 v10, 0x4

    invoke-static {v12, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_34
    array-length v10, v11

    if-ge v13, v10, :cond_3f

    aget v10, v11, v13

    move-object/from16 v18, v3

    aget-object v3, v5, v4

    invoke-virtual {v3, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object v3, v3, v10

    iget-object v3, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    add-int/lit8 v10, v14, 0x1

    if-nez v14, :cond_3e

    move-object v15, v3

    const/4 v14, 0x1

    goto :goto_35

    :cond_3e
    invoke-static {v15, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v14, 0x1

    xor-int/2addr v3, v14

    or-int v3, v3, v16

    move/from16 v16, v3

    :goto_35
    iget-object v3, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v3, v3, v4

    aget-object v3, v3, v8

    aget v3, v3, v13

    and-int/lit8 v3, v3, 0x18

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v13, v13, 0x1

    move v14, v10

    move-object/from16 v3, v18

    goto :goto_34

    :cond_3f
    move-object/from16 v18, v3

    const/4 v14, 0x1

    if-eqz v16, :cond_40

    iget-object v3, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    aget v3, v3, v4

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    :cond_40
    if-eqz v12, :cond_41

    move v3, v14

    goto :goto_36

    :cond_41
    const/4 v3, 0x0

    :goto_36
    iget v10, v9, Landroidx/media3/common/TrackGroup;->length:I

    new-array v11, v10, [I

    new-array v10, v10, [Z

    const/4 v12, 0x0

    :goto_37
    iget v13, v9, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v12, v13, :cond_45

    iget-object v13, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    aget-object v13, v13, v4

    aget-object v13, v13, v8

    aget v13, v13, v12

    and-int/lit8 v13, v13, 0x7

    aput v13, v11, v12

    const/4 v13, 0x0

    :goto_38
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_44

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v15}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_42

    invoke-interface {v15, v12}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_43

    const/4 v13, 0x1

    goto :goto_39

    :cond_42
    const/4 v15, -0x1

    :cond_43
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_38

    :cond_44
    const/4 v15, -0x1

    const/4 v13, 0x0

    :goto_39
    aput-boolean v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x1

    goto :goto_37

    :cond_45
    const/4 v15, -0x1

    new-instance v12, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v12, v9, v3, v11, v10}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v2, v12}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move v10, v15

    move-object/from16 v3, v18

    goto/16 :goto_31

    :cond_46
    move-object/from16 v18, v3

    move v15, v10

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_30

    :cond_47
    const/4 v3, 0x0

    :goto_3a
    iget-object v4, v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget v5, v4, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v3, v5, :cond_48

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    iget v5, v4, Landroidx/media3/common/TrackGroup;->length:I

    new-array v5, v5, [I

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    iget v7, v4, Landroidx/media3/common/TrackGroup;->length:I

    new-array v7, v7, [Z

    new-instance v8, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v8, v4, v6, v5, v7}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v2, v8}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_48
    const/4 v6, 0x0

    new-instance v3, Landroidx/media3/common/Tracks;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/media3/common/Tracks;-><init>(Lcom/google/common/collect/ImmutableList;)V

    new-instance v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-direct {v2, v4, v1, v3, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;)V

    iget-object v0, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v1, v0

    move v14, v6

    :goto_3b
    if-ge v14, v1, :cond_4a

    aget-object v3, v0, v14

    move/from16 v4, p1

    if-eqz v3, :cond_49

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    :cond_49
    add-int/lit8 v14, v14, 0x1

    goto :goto_3b

    :cond_4a
    return-object v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateClipping()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    instance-of v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    :cond_1
    return-void
.end method
