.class public final Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;


# instance fields
.field public final mBgProcessingJob:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public mJobCallbackHandler:Landroid/os/Handler;

.field public mJobProcessHandler:Landroid/os/Handler;

.field public final mService:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

.field public mServiceCallbackHandler:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

.field public final saveImgSvcHndler:Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;


# direct methods
.method public static -$$Nest$mprocessJob(Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/background/BgJobData;

    invoke-direct {v3, p1, p2, p3}, Lcom/motorola/camera/background/BgJobData;-><init>(Lcom/motorola/camera/background/common/TaskId;ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mBgProcessingJob:Ljava/util/Map;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3, v0, v1}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;IJ)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->SAVE_IMAGE_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mBgProcessingJob:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mServiceCallbackHandler:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    new-instance v0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->saveImgSvcHndler:Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bg_job_callback_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobCallbackHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bg_job_process_handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.motorola.camera.service.BgJobService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobCallbackHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/common/base/Joiner;

    const/16 v4, 0x13

    invoke-direct {v3, p0, v4}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Handler;Lcom/google/common/base/Joiner;)V

    iput-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mService:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    return-void
.end method


# virtual methods
.method public final handleJobComplete(Lcom/motorola/camera/background/common/TaskId;)V
    .locals 6

    :try_start_0
    sget-object v2, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    const-string v0, "status"

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;

    invoke-direct {v0, v2}, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;-><init>(Lcom/motorola/camera/background/common/ReturnCode;)V

    sget-object v1, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v3, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$Companion;

    invoke-virtual {v3}, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lkotlinx/serialization/json/Json$Default;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mServiceCallbackHandler:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v1, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v4, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE:Lcom/motorola/camera/background/common/msg/MsgType;

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "JobMgrService processJobComplete() exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaveImageServiceHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final retryJob(J)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mBgProcessingJob:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/BgJobData;

    const-string v1, "SaveImageServiceHandler"

    if-nez v0, :cond_0

    const-string p0, "Job not present or removed from queue"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, v0, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mServiceCallbackHandler:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    if-eqz v2, :cond_1

    sget-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v3, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v6, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_RETRY:Lcom/motorola/camera/background/common/msg/MsgType;

    const-string v7, ""

    sget-object v4, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error while sending Job Progress"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mService:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mContext:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceComponentInfo:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceConnection:Lcom/google/android/play/core/appupdate/internal/zzw;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;IJ)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
