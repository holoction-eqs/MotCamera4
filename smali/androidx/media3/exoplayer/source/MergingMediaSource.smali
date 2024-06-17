.class public final Landroidx/media3/exoplayer/source/MergingMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "SourceFile"


# static fields
.field public static final PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;


# instance fields
.field public final compositeSequenceableLoaderFactory:L_COROUTINE/ArtificialStackFrames;

.field public final mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

.field public mergeError:Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

.field public final pendingTimelineSources:Ljava/util/ArrayList;

.field public periodCount:I

.field public periodTimeOffsetsUs:[[J

.field public final timelines:[Landroidx/media3/common/Timeline;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string v1, "MergingMediaSource"

    iput-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->mediaId:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/exoplayer/source/BaseMediaSource;)V
    .locals 3

    new-instance v0, L_COROUTINE/ArtificialStackFrames;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, L_COROUTINE/ArtificialStackFrames;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->compositeSequenceableLoaderFactory:L_COROUTINE/ArtificialStackFrames;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    array-length p1, p1

    new-array p1, p1, [Landroidx/media3/common/Timeline;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 p1, 0x0

    new-array p1, p1, [[J

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p0, "expectedKeys"

    const/16 p1, 0x8

    invoke-static {p1, p0}, Lkotlin/LazyKt__LazyKt;->checkNonnegative(ILjava/lang/String;)V

    new-instance p0, Lcom/google/common/collect/MultimapBuilder$1;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$1;-><init>()V

    invoke-virtual {p0}, L_COROUTINE/_BOUNDARY;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->build()Lcom/google/common/collect/Multimaps$CustomListMultimap;

    return-void
.end method


# virtual methods
.method public final createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    array-length v1, v0

    new-array v2, v1, [Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    iget-object v6, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v5

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v6

    aget-object v7, v0, v4

    iget-object v8, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v8, v8, v5

    aget-wide v8, v8, v4

    sub-long v8, p3, v8

    invoke-virtual {v7, v6, p2, v8, v9}, Landroidx/media3/exoplayer/source/BaseMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v6

    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object p2, p2, v5

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->compositeSequenceableLoaderFactory:L_COROUTINE/ArtificialStackFrames;

    invoke-direct {p1, p0, p2, v2}, Landroidx/media3/exoplayer/source/MergingMediaPeriod;-><init>(L_COROUTINE/ArtificialStackFrames;[J[Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-object p1
.end method

.method public final getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    :goto_0
    return-object p0
.end method

.method public final getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    :cond_0
    throw v0
.end method

.method public final onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/common/Timeline;)V
    .locals 4

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-eq v0, v1, :cond_2

    new-instance p1, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    invoke-direct {p1, v2}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    array-length v0, v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    array-length v3, v1

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, v1, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, v1, v2

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 4

    check-cast p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget-object v2, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v2, v2, v0

    instance-of v3, v2, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    :cond_0
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/BaseMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 2

    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method
