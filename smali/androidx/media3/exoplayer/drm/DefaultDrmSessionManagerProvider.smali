.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

.field public final lock:Ljava/lang/Object;

.field public manager:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static createManager(Landroidx/media3/common/MediaItem$DrmConfiguration;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    new-instance v6, Lcom/motorola/camera/JsonConfig$CameraMapping;

    iget-object v3, v0, Landroidx/media3/common/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-boolean v4, v0, Landroidx/media3/common/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    invoke-direct {v6, v3, v4, v1}, Lcom/motorola/camera/JsonConfig$CameraMapping;-><init>(Ljava/lang/String;ZLandroidx/media3/datasource/DefaultHttpDataSource$Factory;)V

    iget-object v1, v0, Landroidx/media3/common/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v6, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v7, v6, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    new-instance v11, Lkotlin/UInt$Companion;

    invoke-direct {v11}, Lkotlin/UInt$Companion;-><init>()V

    const-wide/32 v12, 0x493e0

    iget-object v4, v0, Landroidx/media3/common/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    sget-object v5, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v8, v0, Landroidx/media3/common/MediaItem$DrmConfiguration;->multiSession:Z

    iget-boolean v10, v0, Landroidx/media3/common/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iget-object v1, v0, Landroidx/media3/common/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1}, Lkotlin/ResultKt;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    array-length v3, v1

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_4

    aget v15, v1, v9

    const/4 v2, 0x2

    const/4 v14, 0x1

    if-eq v15, v2, :cond_3

    if-ne v15, v14, :cond_2

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :cond_3
    :goto_3
    invoke-static {v14}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [I

    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;Lcom/motorola/camera/JsonConfig$CameraMapping;Ljava/util/HashMap;Z[IZLkotlin/UInt$Companion;J)V

    iget-object v0, v0, Landroidx/media3/common/MediaItem$DrmConfiguration;->keySetId:[B

    if-eqz v0, :cond_5

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iget-object v0, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    const/4 v0, 0x0

    iput v0, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mode:I

    iput-object v2, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    return-object v1
.end method
