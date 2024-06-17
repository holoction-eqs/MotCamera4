.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IJ)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-wide v3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$1:J

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    iget-object v2, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mService:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mBgProcessingJob:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/background/BgJobData;

    iget-object v7, v5, Lcom/motorola/camera/background/BgJobData;->bundle:Landroid/os/Bundle;

    iget v8, v5, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    const-string v9, "action"

    iget v10, v5, Lcom/motorola/camera/background/BgJobData;->action:I

    invoke-virtual {v7, v9, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x2

    if-le v8, v9, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum try reach for Job:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/motorola/camera/background/BgJobData;->taskId:Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SaveImageServiceHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->handleJobComplete(Lcom/motorola/camera/background/common/TaskId;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v6, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/2addr v8, v1

    :try_start_0
    iput v8, v5, Lcom/motorola/camera/background/BgJobData;->retryCount:I

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v5, v2, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    if-eqz v5, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v2, v7}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->processJob(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->retryJob(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->retryJob(J)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/saving/SaveImageService;

    invoke-static {v3, v4}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/CameraData;Z)V

    return-void

    :goto_1
    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    sget-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;IJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
