.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$Factory;


# instance fields
.field public final continueLoadingCheckIntervalBytes:I

.field public final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field public drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

.field public loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

.field public final progressiveMediaExtractorFactory:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v1, 0xb

    invoke-direct {v0, p2, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    new-instance v1, Lkotlin/UInt$Companion;

    invoke-direct {v1}, Lkotlin/UInt$Companion;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    const/high16 p1, 0x100000

    iput p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method


# virtual methods
.method public final createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/BaseMediaSource;
    .locals 8

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    if-eqz v2, :cond_2

    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x12

    if-ge v5, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-static {v2, v6}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iput-object v2, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-static {v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->createManager(Landroidx/media3/common/MediaItem$DrmConfiguration;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->manager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    :cond_1
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->manager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object v1, Landroidx/media3/exoplayer/drm/DrmSessionManager;->DRM_UNSUPPORTED:Landroidx/media3/exoplayer/drm/DrmSessionManager$1;

    :goto_1
    move-object v5, v1

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iget v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;Landroidx/media3/exoplayer/drm/DrmSessionManager;Lkotlin/UInt$Companion;I)V

    return-object v0
.end method

.method public final setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setLoadErrorHandlingPolicy(Lkotlin/UInt$Companion;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
