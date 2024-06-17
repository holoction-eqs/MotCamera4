.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public isReleased:Z

.field public final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    const/4 v1, 0x1

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v3, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->callback:Lcom/motorola/camera/JsonConfig$CameraMapping;

    iget-object v2, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/JsonConfig$CameraMapping;->executeKeyRequest(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v1

    goto/16 :goto_7

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->callback:Lcom/motorola/camera/JsonConfig$CameraMapping;

    iget-object v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/JsonConfig$CameraMapping;->executeProvisionRequest(Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1
    :try_end_0
    .catch Landroidx/media3/exoplayer/drm/MediaDrmCallbackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v1

    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_1
    move-exception v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    iget-boolean v4, v3, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto/16 :goto_5

    :cond_2
    iget v4, v3, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->errorCount:I

    add-int/2addr v4, v1

    iput v4, v3, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->errorCount:I

    iget-object v6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v6, v6, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lkotlin/UInt$Companion;->getMinimumLoadableRetryCount(I)I

    move-result v6

    if-le v4, v6, :cond_3

    goto/16 :goto_5

    :cond_3
    new-instance v4, Landroidx/media3/exoplayer/source/LoadEventInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/IOException;

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/Throwable;I)V

    :goto_0
    iget-object v6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v6, v6, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iget v3, v3, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->errorCount:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v4, Landroidx/media3/common/ParserException;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v6, :cond_8

    instance-of v6, v4, Ljava/io/FileNotFoundException;

    if-nez v6, :cond_8

    instance-of v6, v4, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez v6, :cond_8

    instance-of v6, v4, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    if-nez v6, :cond_8

    sget v6, Landroidx/media3/datasource/DataSourceException;->$r8$clinit:I

    :goto_1
    if-eqz v4, :cond_6

    instance-of v6, v4, Landroidx/media3/datasource/DataSourceException;

    if-eqz v6, :cond_5

    move-object v6, v4

    check-cast v6, Landroidx/media3/datasource/DataSourceException;

    iget v6, v6, Landroidx/media3/datasource/DataSourceException;->reason:I

    const/16 v9, 0x7d8

    if-ne v6, v9, :cond_5

    move v4, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    :cond_6
    move v4, v5

    :goto_2
    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    sub-int/2addr v3, v1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0x1388

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    goto :goto_4

    :cond_8
    :goto_3
    move-wide v3, v7

    :goto_4
    cmp-long v6, v3, v7

    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v6, :cond_a

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    goto :goto_6

    :cond_a
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    move v1, v5

    :goto_6
    if-eqz v1, :cond_b

    return-void

    :cond_b
    move-object v1, v2

    :goto_7
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iget-wide v3, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->taskId:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_2
    iget-boolean v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
