.class public final synthetic Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$motorola$camera$jms$BgJobTransferService$$InternalSyntheticLambda$7$a56fc4e48a5f5594a7a2516a16d581f38d90686780ac198a55eee72022c7e92b$0()V
    .locals 12

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lcom/motorola/camera/background/common/TaskId;

    iget-boolean p0, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mIsForegroundService:Z

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iget-object v3, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v6, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    monitor-exit v3

    goto/16 :goto_5

    :cond_0
    iget-object v4, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v6, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget v3, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    monitor-enter p0

    :try_start_1
    iget v4, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    iget-object v4, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJmsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/motorola/camera/service/CameraForegroundProcessingService;

    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "CameraForegroundProcessingService.EXTRA_ALGO_CONTEXT"

    iget-object v7, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mAlgoContext:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v6, "CameraForegroundProcessingService.EXTRA_TASK_ID"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    :try_start_2
    iget-wide v6, v5, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-object v10, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    sget-object v11, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v11, v11, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v11, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, v5, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-object v7, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTransferData:Lcom/motorola/camera/shared/PostProcTransferData;

    invoke-static {v5, v6, v7}, Lcom/motorola/camera/shared/PostProcTransferData;->savePostProcTransferDataForForegroundProcessing(JLcom/motorola/camera/shared/PostProcTransferData;)V

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v6, "USE_EXTENDED_TIMEOUT"

    invoke-virtual {v5, v6, v2}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iput-object v9, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v3, v0

    invoke-static {v3, v4, v2, v9}, Lcom/motorola/camera/jms/BgJobTransferService;->notifyTransferJobStatus(JZLandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BgJobTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "transferToForegroundProcessing exception for seq ID"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ERROR_TYPE"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ERROR_MSG"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v3, v0

    invoke-static {v3, v4, v8, v2}, Lcom/motorola/camera/jms/BgJobTransferService;->notifyTransferJobStatus(JZLandroid/os/Bundle;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v2, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingCancelCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v9, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingCancelCompleteRunnable:Ljava/lang/Runnable;

    :cond_3
    monitor-exit v0

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_4
    sget-object p0, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    iget-object v3, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    iget-object v4, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v6, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    monitor-exit v3

    goto/16 :goto_5

    :cond_5
    iget-object v4, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v6, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget v3, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    monitor-enter p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    iget v4, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    iget-object v2, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJmsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit p0

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget v6, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/motorola/camera/jms/BgJobTransferService;->saveCaptureData(Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/motorola/camera/service/JmsServiceInterface;->startAndBindJMSSync()V

    :cond_6
    invoke-virtual {v3}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    move-result v4
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3

    if-eqz v4, :cond_b

    :try_start_a
    iget-object v4, v3, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    invoke-interface {v4}, Ljms/IJobMgrService;->getPid()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_b
    const-string v6, "BgJobTransferService"

    const-string v7, "Process Manager Service getPid exception: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_3

    :goto_1
    :try_start_c
    sget-object v4, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    iget-object v6, v3, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    iget v7, v3, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceClientId:I

    invoke-interface {v6, v7, v4}, Ljms/IJobMgrService;->setPriority(ILcom/motorola/camera/background/common/Priority;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_d
    const-string v6, "BgJobTransferService"

    const-string v7, "Process Manager Service setPriority exception: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mAlgoContext:Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    invoke-static {v2, v0}, Lcom/motorola/camera/settings/CacheBehavior;->createMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v3, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v4, "task_id"

    invoke-virtual {v2, v4, v5}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->addBgRecord(Lcom/motorola/camera/CameraData;)V

    :cond_7
    iget-object v0, v3, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    invoke-interface {v0}, Ljms/IJobMgrService;->msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    move-result-object v2

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    const/4 v3, 0x1

    sget-object v6, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    sget-object v4, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v0, v9

    :goto_3
    if-eqz v0, :cond_a

    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mJobMgrServiceWatchDog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/SimpleWatchDog;->reset()V

    goto/16 :goto_4

    :cond_9
    const-string v0, "BgJobTransferService"

    const-string v2, "Jms Can not process Job"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Jms can not process Job"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "BgJobTransferService"

    const-string v2, "JobMgrService is null. Probably killed by lowmemorykiller"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Jms is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v2, "Unable to send JMS message (transferToJMS) "

    invoke-direct {v0, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_3

    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_3

    :catch_3
    move-exception v0

    const-string v2, "BgJobTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Process Manager Service processJob exception: for seq ID"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ERROR_TYPE"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ERROR_MSG"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    iget-object v0, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v5, "THUMB_PATH"

    invoke-virtual {v0, v5}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v6, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;

    invoke-direct {v6, v5, v3, v4, v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :cond_c
    iget v0, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    int-to-long v3, v0

    invoke-static {v3, v4, v8, v2}, Lcom/motorola/camera/jms/BgJobTransferService;->notifyTransferJobStatus(JZLandroid/os/Bundle;)V

    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_10
    iget-object v2, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingTransferJobs:Ljava/util/HashMap;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingCancelCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v9, p0, Lcom/motorola/camera/jms/BgJobTransferService;->mPendingCancelCompleteRunnable:Ljava/lang/Runnable;

    :cond_d
    monitor-exit v0

    :goto_5
    return-void

    :catchall_5
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_14

    :pswitch_1
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    iget-object v5, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const-string v6, "this$0"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$activity"

    invoke-static {v0, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;->feature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    iget-object v7, v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;->targetFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne v6, v7, :cond_2

    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v6, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    iget v0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    iget-object v7, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v8, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget v0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    iget-object v7, v6, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v8, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget v0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    if-eqz v0, :cond_0

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;I)V

    invoke-virtual {v6, v0, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    :cond_0
    iget v0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    if-eqz v0, :cond_1

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;I)V

    invoke-virtual {v6, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    :cond_1
    invoke-virtual {v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput-object v4, v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;->targetFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    :cond_2
    return-void

    :pswitch_2
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const-string v5, "this$0"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result v0

    iput-boolean v0, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->halFlash:Z

    :goto_1
    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->autoSetting:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v2, "FLASH.mName"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->halFlash:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->updateItems$1()V

    goto :goto_3

    :cond_4
    iget-boolean v6, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->isInCapture:Z

    if-nez v6, :cond_a

    const/4 v6, 0x4

    if-nez v5, :cond_7

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v6, v0, :cond_a

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_a

    :cond_7
    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_9

    move v2, v3

    :cond_9
    :goto_2
    iput-boolean v2, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->halFlash:Z

    goto :goto_1

    :cond_a
    :goto_3
    return-void

    :pswitch_3
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    sget v2, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->$r8$clinit:I

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->actionMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_b

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;->CANCEL:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction$EventType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downDuration:J

    iget v12, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downCount:I

    iget-object v13, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-virtual/range {v5 .. v13}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;->execute(JJJILcom/motorola/camera/EventListener;)V

    :cond_b
    iput-object v4, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    return-void

    :pswitch_4
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/core/view/ContentInfoCompat$CompatImpl;

    iget-object v5, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/motorola/camera/CameraData;

    const-string v0, "$previewFrame"

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {v5, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Landroidx/core/view/ContentInfoCompat$CompatImpl;->getBitmapFromBuffer()Landroid/graphics/Bitmap;

    move-result-object v7

    iget v8, v1, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mFlags:I

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v8

    goto :goto_5

    :cond_d
    :goto_4
    iget-object v8, v1, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Ljava/lang/Object;

    check-cast v8, Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v8

    :goto_5
    sget-boolean v9, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f070073

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v10, v0

    div-int/2addr v10, v9

    invoke-static {v7, v0, v10, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit v1

    if-eqz v6, :cond_11

    iget-object v0, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v10, "THUMB_PATH"

    invoke-virtual {v0, v10}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v10, "PROCESSING_URI"

    invoke-virtual {v0, v10}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "null cannot be cast to non-null type java.nio.ByteBuffer"

    invoke-static {v8, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    monitor-enter v1

    :try_start_1
    iget v8, v1, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mFlags:I

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v8

    if-eqz v8, :cond_e

    iget v8, v1, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mSource:I

    rem-int/lit16 v8, v8, 0xb4

    if-eqz v8, :cond_e

    new-instance v8, Landroid/graphics/Point;

    iget-object v10, v1, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/os/Parcelable;

    move-object v11, v10

    check-cast v11, Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    check-cast v10, Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-direct {v8, v11, v10}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_6

    :cond_e
    iget-object v8, v1, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/os/Parcelable;

    check-cast v8, Landroid/graphics/Point;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_6
    monitor-exit v1

    invoke-virtual {v6}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    if-eqz v1, :cond_f

    move v2, v3

    :cond_f
    invoke-virtual {v6}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v12

    invoke-virtual {v6}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v10

    iget v1, v8, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v8, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-instance v1, Lcom/motorola/camera/saving/FileName;

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-direct {v1, v3, v10, v11}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    const-string v3, "_CAPTURE_THUMB"

    invoke-virtual {v1, v3}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    sget-object v3, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v1

    :try_start_2
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v4, v1

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v4, v1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v10, v4

    :goto_7
    :try_start_5
    const-string v1, "FileUtility"

    const-string v11, "write failed"

    invoke-static {v1, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v4

    :goto_8
    move-object v0, v10

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v2, :cond_10

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;

    move-object v10, v1

    move-object v11, v3

    move-object v14, v0

    invoke-direct/range {v10 .. v16}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/io/File;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v3, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v2, "THUMB_PATH"

    invoke-virtual {v1, v2, v0}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "THUMB_WIDTH"

    iget v2, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    iget-object v0, v6, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "THUMB_HEIGHT"

    iget v2, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    goto :goto_a

    :goto_9
    invoke-static {v4}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_11
    :goto_a
    invoke-virtual {v5, v6, v9, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->handleCameraData(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    :cond_12
    :try_start_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Try to using recycled bitmap"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_5
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraData;

    const-string v4, "this$0"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    if-eqz v4, :cond_13

    goto :goto_c

    :cond_13
    if-eqz v2, :cond_16

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/motorola/camera/Util;->setupGalleryWithCustomAnimation()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->isRaw()Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    invoke-static {v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getLargeKindThumbnailKey(Lcom/motorola/camera/CameraData;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->mLargeKindFiles:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {v0, v2, v3}, Lcom/motorola/camera/provider/photos/PhotosProvider;->updateLargeKindThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_b

    :cond_15
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_16
    :goto_b
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;I)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_c
    return-void

    :pswitch_6
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v1

    const-string v6, "SaveImageService"

    if-nez v1, :cond_17

    const-string v0, "Image canceled before processing could register!"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_17
    iget-object v7, v1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    :try_start_7
    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;

    :cond_18
    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-eqz v0, :cond_19

    check-cast v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getProcessingMediaUri()Landroid/net/Uri;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    const-string v8, "Failed to create processing media URI"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    move-object v0, v4

    :goto_d
    if-eqz v0, :cond_1b

    const-string v5, "ID"

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v5}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    const-string v5, "URI"

    invoke-virtual {v7, v5, v0}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v4, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v3}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v4, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-static {v4, v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->startBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    iget-object v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_f

    :cond_1c
    const-string v0, "addProcessingImage: failed to insert in MediaStore"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    iget-object v1, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v6, v6, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v6, v1, :cond_1d

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    :cond_1e
    const-string v1, "ERROR_CASE"

    const/4 v2, 0x2

    invoke-virtual {v7, v2, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    if-eqz v0, :cond_1f

    if-eqz v4, :cond_1f

    invoke-static {v5, v4}, Lcom/motorola/camera/saving/SaveImageService;->notifyFailedBgShot(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_1f
    :goto_f
    return-void

    :pswitch_7
    invoke-direct/range {p0 .. p0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->run$com$motorola$camera$jms$BgJobTransferService$$InternalSyntheticLambda$7$a56fc4e48a5f5594a7a2516a16d581f38d90686780ac198a55eee72022c7e92b$0()V

    return-void

    :pswitch_8
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget v4, v1, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;->mRetryCount:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/motorola/camera/fsm/camera/states/runnables/RetryCheckRunnable;->mRetryCount:I

    const-string v1, "error_retry_count"

    invoke-virtual {v2, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_9
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v1, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_21
    return-void

    :pswitch_a
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    monitor-enter v1

    :try_start_8
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/Trigger;->mData:Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/fsm/Fsm;->handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/motorola/camera/fsm/camera/Trigger;->mResult:Z

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :pswitch_b
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v5, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Lcom/motorola/camera/fsm/camera/StateKey$Key;->values()[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v8

    array-length v8, v8

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, v9, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v9, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    iget-object v8, v9, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance v10, Lcom/motorola/camera/fsm/camera/SurfaceManager;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/SurfaceManager;-><init>()V

    iput-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-result-object v11

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    move-result-object v11

    array-length v11, v11

    invoke-direct {v10, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v10, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v10, :cond_22

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v10, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mEnable:Z

    if-eqz v10, :cond_23

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v10

    if-eqz v10, :cond_24

    iget-object v10, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->DEBUG:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    new-instance v12, Lcom/motorola/camera/fsm/camera/subfsms/DebugStateMachine;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/subfsms/DebugStateMachine;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    invoke-static {}, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->values()[Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-result-object v10

    array-length v11, v10

    move v12, v2

    :goto_11
    if-ge v12, v11, :cond_25

    aget-object v13, v10, v12

    iget-object v14, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v14, v13, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_25
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/Main;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/ErrorState;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/ErrorState;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraInit;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/Zoom;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SettingsStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/SettingsStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SecondUseStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/SecondUseStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/ExposureStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/HistoryState;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/HistoryState;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/GalleryStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/BokehStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/BokehStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/SpotColorState;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;-><init>()V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->buildState(Lcom/motorola/camera/fsm/camera/states/iCameraState;)V

    new-instance v5, Ljava/util/EnumMap;

    const-class v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-direct {v5, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    iget-object v0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v5, v0}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RESET:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v0

    new-array v5, v3, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/iCameraState;

    if-eqz v0, :cond_26

    new-instance v5, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Landroidx/media3/common/Format$$ExternalSyntheticLambda0;)V

    invoke-interface {v0, v5}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/fsm/ChangeEvent;)V

    iget-object v0, v5, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/CameraState;

    invoke-virtual {v9, v5}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    goto :goto_12

    :cond_26
    sget-object v0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v0

    new-array v5, v3, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    aget-object v1, v5, v2

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/iCameraState;

    if-eqz v0, :cond_27

    new-instance v1, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Landroidx/media3/common/Format$$ExternalSyntheticLambda0;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/fsm/ChangeEvent;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraState;

    invoke-virtual {v9, v1}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    goto :goto_13

    :cond_27
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iput-object v0, v9, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fsm init dur:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraFsm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void

    :pswitch_c
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v1, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x3f9

    invoke-virtual {v1, v3, v0, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_d
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget v3, v1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object v1, v1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v2, v3, v1, v0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void

    :pswitch_e
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget v3, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v2, v3, v1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void

    :pswitch_f
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/device/CameraService;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    iget-object v1, v1, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v1, v3, v2, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void

    :pswitch_10
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/device/CameraService;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v1, v1, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {v1, v3, v2, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void

    :pswitch_11
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/collect/ImmutableList$Builder;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v3

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iput-object v5, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v3, v2}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object v2, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :cond_29
    iget-object v0, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_2a

    iget-object v0, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v4, v0, v2, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :cond_2a
    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Landroidx/media3/common/Timeline;)V

    return-void

    :pswitch_12
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Landroidx/room/QueryInterceptorDatabase;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const-string v3, "this$0"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$sql"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$inputArguments"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    throw v4

    :goto_14
    iget-object v1, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v2, Landroid/view/Window;

    iget-object v0, v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "$isChanged"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$window"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_2b

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
