.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSessionManager;


# instance fields
.field public final callback:Lcom/motorola/camera/JsonConfig$CameraMapping;

.field public exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

.field public final exoMediaDrmProvider:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

.field public final keepaliveSessions:Ljava/util/Set;

.field public final keyRequestParameters:Ljava/util/HashMap;

.field public final loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

.field public volatile mediaDrmHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

.field public mode:I

.field public final multiSession:Z

.field public noMultiSessionDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

.field public offlineLicenseKeySetId:[B

.field public placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

.field public final playClearSamplesWithoutKeys:Z

.field public playbackHandler:Landroid/os/Handler;

.field public playbackLooper:Landroid/os/Looper;

.field public playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final preacquiredSessionReferences:Ljava/util/Set;

.field public prepareCallsCount:I

.field public final provisioningManagerImpl:Landroidx/core/view/MenuHostHelper;

.field public final referenceCountListener:Lcom/google/common/base/Joiner;

.field public final sessionKeepaliveMs:J

.field public final sessions:Ljava/util/ArrayList;

.field public final useDrmSessionsForClearContentTrackTypes:[I

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;Lcom/motorola/camera/JsonConfig$CameraMapping;Ljava/util/HashMap;Z[IZLkotlin/UInt$Companion;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v1, v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrmProvider:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->callback:Lcom/motorola/camera/JsonConfig$CameraMapping;

    iput-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keyRequestParameters:Ljava/util/HashMap;

    iput-boolean p5, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->multiSession:Z

    iput-object p6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    iput-boolean p7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playClearSamplesWithoutKeys:Z

    iput-object p8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    new-instance p1, Landroidx/core/view/MenuHostHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Landroidx/core/view/MenuHostHelper;

    new-instance p1, Lcom/google/common/base/Joiner;

    invoke-direct {p1, p0}, Lcom/google/common/base/Joiner;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->referenceCountListener:Lcom/google/common/base/Joiner;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mode:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    iput-wide p9, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    return-void
.end method

.method public static acquisitionFailedIndicatingResourceShortage(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Landroid/media/ResourceBusyException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static getSchemeDatas(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    iget-object v4, v3, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final acquireSession(Landroid/os/Looper;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mediaDrmHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mediaDrmHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    .line 2
    :cond_0
    iget-object p1, p3, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_7

    iget-object p1, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-interface {p2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getCryptoType()I

    move-result p3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p3, v2, :cond_1

    sget-boolean p3, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz p3, :cond_1

    move p3, v3

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-nez p3, :cond_6

    iget-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    .line 6
    :goto_1
    array-length v2, p3

    const/4 v4, -0x1

    if-ge v0, v2, :cond_3

    aget v2, p3, v0

    if-ne v2, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_2
    if-eq v0, v4, :cond_6

    .line 7
    invoke-interface {p2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getCryptoType()I

    move-result p1

    if-ne p1, v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    if-nez p1, :cond_5

    sget-object p1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    .line 8
    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    .line 9
    invoke-virtual {p0, p1, v3, v1, p4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSessionWithRetry(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Z)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    :cond_6
    :goto_4
    return-object v1

    .line 10
    :cond_7
    iget-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    if-nez p3, :cond_9

    iget-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->getSchemeDatas(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;)V

    const-string p0, "DefaultDrmSessionMgr"

    const-string p3, "DRM error"

    invoke-static {p0, p3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    :cond_8
    new-instance p0, Landroidx/media3/exoplayer/drm/ErrorStateDrmSession;

    new-instance p2, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    const/16 p3, 0x1773

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/drm/ErrorStateDrmSession;-><init>(Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    return-object p0

    :cond_9
    move-object p1, v1

    :cond_a
    iget-boolean p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez p3, :cond_b

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    goto :goto_5

    :cond_b
    iget-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v3, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    invoke-static {v3, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v1, v2

    :cond_d
    :goto_5
    if-nez v1, :cond_f

    invoke-virtual {p0, p1, v0, p2, p4}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSessionWithRetry(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Z)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez p1, :cond_e

    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    :cond_e
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :goto_6
    return-object v1
.end method

.method public final acquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 3

    .line 11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v0, v2

    :cond_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {p0, v0, p1, p2, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;Z)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p0

    return-object p0
.end method

.method public final createAndAcquireSession(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playClearSamplesWithoutKeys:Z

    or-int v9, v1, p2

    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v5, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Landroidx/core/view/MenuHostHelper;

    iget-object v6, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->referenceCountListener:Lcom/google/common/base/Joiner;

    iget v8, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mode:I

    iget-object v11, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    iget-object v12, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keyRequestParameters:Ljava/util/HashMap;

    iget-object v13, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->callback:Lcom/motorola/camera/JsonConfig$CameraMapping;

    iget-object v14, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iget-object v10, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    move-object/from16 v7, p1

    move-object/from16 v16, v10

    move/from16 v10, p2

    invoke-direct/range {v2 .. v16}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm;Landroidx/core/view/MenuHostHelper;Lcom/google/common/base/Joiner;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/motorola/camera/JsonConfig$CameraMapping;Landroid/os/Looper;Lkotlin/UInt$Companion;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iget-wide v2, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_0
    return-object v1
.end method

.method public final createAndAcquireSessionWithRetry(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Z)Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    .locals 9

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->acquisitionFailedIndicatingResourceShortage(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v7}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Set;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v8, v6}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->acquisitionFailedIndicatingResourceShortage(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p4, :cond_6

    iget-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p4}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Set;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->release()V

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {v7}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Set;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v1, v6}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    cmp-long p4, v4, v2

    if-eqz p4, :cond_5

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public final getCryptoType(Landroidx/media3/common/Format;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getCryptoType()I

    move-result v1

    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-nez v2, :cond_3

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_1
    if-eq v2, v5, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {v2, p0, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->getSchemeDatas(Landroidx/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, v2, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ne p1, v3, :cond_9

    iget-object p1, v2, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    aget-object p1, p1, v0

    sget-object v4, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v4}, Landroidx/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultDrmSessionMgr"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p0, v2, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p0, :cond_8

    const-string p1, "cenc"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "cbcs"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p1, 0x19

    if-lt p0, p1, :cond_9

    goto :goto_2

    :cond_7
    const-string p1, "cbc1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "cens"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    move v0, v3

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    move v1, v3

    :goto_4
    return v1
.end method

.method public final maybeReleaseMediaDrm()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    :cond_0
    return-void
.end method

.method public final preacquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/4 v1, 0x6

    invoke-direct {p1, v1, v0, p2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final prepare()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrmProvider:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catch Landroidx/media3/exoplayer/drm/UnsupportedDrmException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameworkMediaDrm"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lkotlin/UInt$Companion;

    invoke-direct {v1}, Lkotlin/UInt$Companion;-><init>()V

    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    new-instance v0, Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->setOnEventListener(Landroidx/appcompat/widget/Toolbar$1;)V

    goto :goto_2

    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final release()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Set;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->release()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    return-void
.end method

.method public final setPlayer(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final verifyPlaybackThread(Z)V
    .locals 2

    const-string v0, "DefaultDrmSessionMgr"

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread."

    invoke-static {v0, p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nExpected thread: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
