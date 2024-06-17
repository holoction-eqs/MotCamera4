.class public final Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$Factory;


# instance fields
.field public final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field public final delegateFactoryLoader:Lcom/google/android/material/datepicker/CalendarStyle;

.field public final liveMaxOffsetMs:J

.field public final liveMaxSpeed:F

.field public final liveMinOffsetMs:J

.field public final liveMinSpeed:F

.field public final liveTargetOffsetMs:J

.field public loadErrorHandlingPolicy:Lkotlin/UInt$Companion;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/extractor/DefaultExtractorsFactory;)V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    new-instance p1, Lcom/google/android/material/datepicker/CalendarStyle;

    invoke-direct {p1, p2}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/material/datepicker/CalendarStyle;

    iget-object p2, p1, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/datasource/DataSource$Factory;

    if-eq v0, p2, :cond_0

    iput-object v0, p1, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    iget-object p1, p1, Lcom/google/android/material/datepicker/CalendarStyle;->year:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    const p1, -0x800001

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    return-void
.end method

.method public static access$100(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroidx/media3/datasource/DataSource$Factory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/BaseMediaSource;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v5, "ssai"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    throw v4

    :cond_1
    :goto_0
    iget-object v3, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v2, v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    invoke-static {v3, v2}, Landroidx/media3/common/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/material/datepicker/CalendarStyle;

    iget-object v5, v3, Lcom/google/android/material/datepicker/CalendarStyle;->year:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    if-eqz v5, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Lcom/google/android/material/datepicker/CalendarStyle;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iget-object v5, v3, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Ljava/lang/Object;

    invoke-static {v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    iget-object v5, v3, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    if-eqz v5, :cond_4

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    :cond_4
    iget-object v5, v3, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Ljava/lang/Object;

    check-cast v5, Lkotlin/UInt$Companion;

    if-eqz v5, :cond_5

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lkotlin/UInt$Companion;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    :cond_5
    iget-object v3, v3, Lcom/google/android/material/datepicker/CalendarStyle;->year:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "No suitable media source factory found for content type: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v5, v7

    if-nez v3, :cond_6

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    goto :goto_2

    :cond_6
    iget-wide v5, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    :goto_2
    move-wide v10, v5

    iget v3, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v5, -0x800001

    cmpl-float v3, v3, v5

    if-nez v3, :cond_7

    iget v3, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    goto :goto_3

    :cond_7
    iget v3, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    :goto_3
    move/from16 v16, v3

    iget v3, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_8

    iget v3, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    goto :goto_4

    :cond_8
    iget v3, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    :goto_4
    move/from16 v17, v3

    iget-wide v5, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_9

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    goto :goto_5

    :cond_9
    iget-wide v5, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    :goto_5
    move-wide v12, v5

    iget-wide v5, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_a

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    goto :goto_6

    :cond_a
    iget-wide v5, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    :goto_6
    move-wide v14, v5

    new-instance v3, Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-object v9, v3

    invoke-direct/range {v9 .. v17}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    invoke-virtual {v3, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v2, v1}, Landroidx/media3/common/MediaItem$Builder;-><init>(Landroidx/media3/common/MediaItem;)V

    new-instance v1, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v1, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    iput-object v1, v2, Landroidx/media3/common/MediaItem$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v1

    :cond_b
    invoke-interface {v4, v1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/BaseMediaSource;

    move-result-object v2

    iget-object v3, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Landroidx/media3/exoplayer/source/BaseMediaSource;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_d

    const/4 v12, 0x0

    const/4 v7, 0x0

    iget-object v9, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/UInt$Companion;

    invoke-direct {v2}, Lkotlin/UInt$Companion;-><init>()V

    const/4 v11, 0x1

    iget-object v6, v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    if-eqz v6, :cond_c

    move-object v10, v6

    goto :goto_8

    :cond_c
    move-object v10, v2

    :goto_8
    add-int/lit8 v2, v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    new-instance v5, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/datasource/DataSource$Factory;Lkotlin/UInt$Companion;ZLcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V

    aput-object v5, v4, v2

    move v5, v2

    goto :goto_7

    :cond_d
    new-instance v2, Landroidx/media3/exoplayer/source/MergingMediaSource;

    invoke-direct {v2, v4}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    :cond_e
    move-object v6, v2

    iget-object v0, v1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingProperties;

    iget-wide v2, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    iget-wide v7, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    if-nez v4, :cond_f

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v7, v4

    if-nez v4, :cond_f

    iget-boolean v4, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-nez v4, :cond_f

    goto :goto_9

    :cond_f
    new-instance v4, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v9

    iget-boolean v5, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    xor-int/lit8 v11, v5, 0x1

    iget-boolean v12, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v13, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    move-object v5, v4

    move-wide v7, v2

    invoke-direct/range {v5 .. v13}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/BaseMediaSource;JJZZZ)V

    move-object v6, v4

    :goto_9
    iget-object v0, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->adsConfiguration:Landroidx/media3/common/MediaItem$AdsConfiguration;

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    const-string v0, "DMediaSourceFactory"

    const-string v1, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-object v6
.end method

.method public final setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/material/datepicker/CalendarStyle;

    iput-object p1, v0, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setLoadErrorHandlingPolicy(Lkotlin/UInt$Companion;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/material/datepicker/CalendarStyle;

    iput-object p1, v0, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lkotlin/UInt$Companion;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
