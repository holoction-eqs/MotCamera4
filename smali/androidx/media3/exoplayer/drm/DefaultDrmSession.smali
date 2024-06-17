.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSession;


# instance fields
.field public final callback:Lcom/motorola/camera/JsonConfig$CameraMapping;

.field public cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

.field public currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

.field public currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

.field public final eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

.field public final isPlaceholderSession:Z

.field public final keyRequestParameters:Ljava/util/HashMap;

.field public lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

.field public final loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

.field public final mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

.field public final mode:I

.field public offlineLicenseKeySetId:[B

.field public final playClearSamplesWithoutKeys:Z

.field public final playbackLooper:Landroid/os/Looper;

.field public final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final provisioningManager:Landroidx/core/view/MenuHostHelper;

.field public referenceCount:I

.field public final referenceCountListener:Lcom/google/common/base/Joiner;

.field public requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

.field public requestHandlerThread:Landroid/os/HandlerThread;

.field public final responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

.field public final schemeDatas:Ljava/util/List;

.field public sessionId:[B

.field public state:I

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm;Landroidx/core/view/MenuHostHelper;Lcom/google/common/base/Joiner;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/motorola/camera/JsonConfig$CameraMapping;Landroid/os/Looper;Lkotlin/UInt$Companion;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    :cond_0
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/core/view/MenuHostHelper;

    iput-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/common/base/Joiner;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iput p6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    iput-boolean p7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    iput-boolean p8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz p9, :cond_2

    iput-object p9, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iput-object p10, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    iput-object p11, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->callback:Lcom/motorola/camera/JsonConfig$CameraMapping;

    new-instance p1, Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-direct {p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    iput-object p13, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iput-object p14, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    iput-object p12, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    invoke-direct {p1, p0, p12}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    return-void
.end method


# virtual methods
.method public final acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const-string v0, "DefaultDrmSession"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session reference count less than zero: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    iget-object v3, v2, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Landroidx/media3/common/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Landroidx/media3/common/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    iget-object v4, v2, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v2, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v2, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    :cond_1
    iget-object v2, v2, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    iget v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-ne v2, v0, :cond_5

    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    move v1, v0

    :cond_4
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:DrmRequestHandler"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->openInternal()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v1, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_6

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    :cond_6
    :goto_2
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/common/base/Joiner;

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-wide v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object p1, p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final dispatchEvent(Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    iget-object v0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final doLicense(Z)V
    .locals 11

    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    const/4 v3, 0x1

    iget v4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_3

    if-eq v4, v5, :cond_2

    const/4 v0, 0x3

    if-eq v4, v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest(IZ[B)V

    goto/16 :goto_6

    :cond_2
    iget-object v4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v4, :cond_a

    :try_start_0
    invoke-interface {v2, v0, v4}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0, v3, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(ILjava/lang/Exception;)V

    :goto_0
    if-eqz v1, :cond_d

    goto/16 :goto_5

    :cond_3
    iget-object v6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v6, :cond_4

    invoke-virtual {p0, v3, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest(IZ[B)V

    goto/16 :goto_6

    :cond_4
    iget v7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5

    :try_start_1
    invoke-interface {v2, v0, v6}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v3

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {p0, v3, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(ILjava/lang/Exception;)V

    :goto_1
    if-eqz v1, :cond_d

    :cond_5
    sget-object v1, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->queryKeyStatus()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    new-instance v2, Landroid/util/Pair;

    const-string v3, "LicenseDurationRemaining"

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_2
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    :cond_8
    move-wide v9, v6

    :goto_2
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v9, "PlaybackDurationRemaining"

    :try_start_3
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_4
    if-nez v4, :cond_b

    const-wide/16 v3, 0x3c

    cmp-long v3, v1, v3

    if-gtz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    invoke-virtual {p0, v5, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest(IZ[B)V

    goto :goto_6

    :cond_b
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_c

    new-instance p1, Landroidx/media3/exoplayer/drm/KeysExpiredException;

    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/KeysExpiredException;-><init>()V

    invoke-virtual {p0, v5, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(ILjava/lang/Exception;)V

    goto :goto_6

    :cond_c
    iput v8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    new-instance p1, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public final getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    return-object p0
.end method

.method public final getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object p0
.end method

.method public final getState()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    return p0
.end method

.method public final isOpen()Z
    .locals 1

    iget p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onError(ILjava/lang/Exception;)V
    .locals 7

    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DrmUtil$Api21;->isMediaDrmStateException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DrmUtil$Api21;->mediaDrmStateExceptionToErrorCode(Ljava/lang/Throwable;)I

    move-result p1

    goto :goto_2

    :cond_0
    const/16 v2, 0x17

    const/16 v4, 0x1776

    if-lt v1, v2, :cond_1

    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DrmUtil$Api23;->isMediaDrmResetException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move p1, v4

    goto :goto_2

    :cond_1
    const/16 v2, 0x1772

    const/16 v5, 0x12

    if-lt v1, v5, :cond_2

    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DrmUtil$Api18;->isNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    move p1, v2

    goto :goto_2

    :cond_2
    if-lt v1, v5, :cond_3

    invoke-static {p2}, Landroidx/media3/exoplayer/drm/DrmUtil$Api18;->isDeniedByServerException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p1, 0x1777

    goto :goto_2

    :cond_3
    instance-of v1, p2, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    if-eqz v1, :cond_4

    const/16 p1, 0x1771

    goto :goto_2

    :cond_4
    instance-of v1, p2, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v1, :cond_5

    const/16 p1, 0x1773

    goto :goto_2

    :cond_5
    instance-of v1, p2, Landroidx/media3/exoplayer/drm/KeysExpiredException;

    if-eqz v1, :cond_6

    const/16 p1, 0x1778

    goto :goto_2

    :cond_6
    if-ne p1, v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    const/16 p1, 0x1774

    goto :goto_2

    :cond_8
    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    goto :goto_1

    :goto_2
    invoke-direct {v0, p2, p1}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    const-string p1, "DefaultDrmSession"

    const-string v0, "DRM session error"

    invoke-static {p1, v0, p2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    iget-object v0, p1, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_9
    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_a

    iput v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    :cond_a
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final onKeysError(Ljava/lang/Exception;Z)V
    .locals 7

    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/core/view/MenuHostHelper;

    iget-object p2, p1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    iput-object p0, p1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getProvisionRequest()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v6

    iput-object v6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    sget-object p2, Landroidx/media3/exoplayer/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;-><init>(JZJLjava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(ILjava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public final openInternal()Z
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->openSession()[B

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v3, v2, v4}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->setPlayerIdForSession([BLandroidx/media3/exoplayer/analytics/PlayerId;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->createCryptoConfig([B)Landroidx/media3/decoder/CryptoConfig;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    const/4 v2, 0x3

    iput v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    iget-object v4, v3, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, v3, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onError(ILjava/lang/Exception;)V

    goto :goto_1

    :catch_1
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/core/view/MenuHostHelper;

    iget-object v2, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iput-object p0, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getProvisionRequest()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v8

    iput-object v8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    sget-object v2, Landroidx/media3/exoplayer/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;-><init>(JZJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return v0
.end method

.method public final playClearSamplesWithoutKeys()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget-boolean p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    return p0
.end method

.method public final postKeyRequest(IZ[B)V
    .locals 11

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    invoke-interface {v1, p3, v2, p1, v3}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    move-result-object v10

    iput-object v10, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    sget p3, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    sget-object v1, Landroidx/media3/exoplayer/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v4, p3

    move v7, p2

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;-><init>(JZJLjava/lang/Object;)V

    invoke-virtual {p1, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    :goto_0
    return-void
.end method

.method public final queryKeyStatus()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 13

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-gtz v0, :cond_0

    const-string p0, "DefaultDrmSession"

    const-string p1, "release() called on a session that\'s already fully released."

    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iput v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->isReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_1

    iget-object v4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v4, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->closeSession([B)V

    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    iget-object v4, v0, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, v0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_3

    iget-object v5, v0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    goto :goto_1

    :cond_3
    iget-object v0, v0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    :goto_2
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Lcom/google/common/base/Joiner;

    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v0, v1, :cond_5

    iget-object v1, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget v6, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-lez v6, :cond_5

    iget-wide v6, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_5

    iget-object v0, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-wide v4, v4, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto/16 :goto_3

    :cond_5
    if-nez v0, :cond_9

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    if-ne v1, p0, :cond_6

    iput-object v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    :cond_6
    iget-object v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    if-ne v1, p0, :cond_7

    iput-object v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    :cond_7
    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Landroidx/core/view/MenuHostHelper;

    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    if-ne v1, p0, :cond_8

    iput-object v3, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iget-object v0, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getProvisionRequest()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v12

    iput-object v12, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    iget-object v0, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    sget-object v3, Landroidx/media3/exoplayer/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;-><init>(JZJLjava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-wide v1, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_9

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    iget-object p0, p1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    return-void
.end method

.method public final requiresSecureDecoder(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {p0, p1, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->requiresSecureDecoder(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public final verifyPlaybackThread()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nExpected thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "DefaultDrmSession"

    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
