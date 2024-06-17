.class public final Lcom/motorola/camera/jms/BgJobTransferService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mJmsHandlerThread:Landroid/os/HandlerThread;

.field public mJmsJobHandler:Landroid/os/Handler;

.field public final mJobMgrServiceWatchDog:Lcom/motorola/camera/background/common/SimpleWatchDog;

.field public mJobRefCount:I

.field public mPendingCancelCompleteRunnable:Ljava/lang/Runnable;

.field public final mPendingTransferJobs:Ljava/util/HashMap;

.field public final mTransferJmsList:Ljava/util/ArrayList;

.field public final mTransferJobListener:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJobListener:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJmsList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    new-instance v2, Lcom/motorola/camera/background/common/SimpleWatchDog;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v4, 0xb

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-string v4, "BgJobTransferService Watchdog"

    const-wide/16 v5, 0x4e20

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/motorola/camera/background/common/SimpleWatchDog;-><init>(Ljava/lang/String;JLjava/lang/Runnable;)V

    iput-object v2, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJobMgrServiceWatchDog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    monitor-enter p0

    :try_start_0
    iput v0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "jms_job_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsJobHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static notifyTransferJobStatus(JZLandroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;-><init>(JZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static processBgJob(Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iget v1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p2, p1, p0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter p0

    :try_start_0
    iget-object p1, v0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/motorola/camera/jms/BgJobTransferService;->mJmsJobHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static saveCaptureData(Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 4

    invoke-virtual {p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lkotlin/ResultKt;->saveRecord(Landroid/content/Context;[BLjava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mByteBufferUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/motorola/camera/utility/GsonUtility;->convertToJson(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1, p2}, Lkotlin/ResultKt;->saveRecord(Landroid/content/Context;[BLjava/lang/Long;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
