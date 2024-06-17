.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;
.source "SourceFile"


# instance fields
.field public final mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$InstanceType;Ljava/util/List;Ljava/util/ArrayList;Landroid/os/Handler;)V
    .locals 7

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Ljava/util/List;Ljava/util/ArrayList;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    return-void
.end method


# virtual methods
.method public final onRequest(ILcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 10

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->onRequest(ILcom/motorola/camera/fsm/RequestWrapper;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v3, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v4}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->isAppResponsibleForSettingMfnrTags()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v4, v0, v5, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;ZZ)V

    :cond_0
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    sget-object v6, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v7, Lcom/motorola/camera/AppFeatures$Feature;->QC_MFNR_BURST:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_1

    if-nez v3, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    if-eqz v6, :cond_2

    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, v0, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->enableQcBurstMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mQcMfnrBurstRefCount:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iget-object v8, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result v8

    monitor-enter v6

    :try_start_0
    iget v9, v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v9, v8

    iput v9, v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v6

    throw p0

    :cond_2
    move v3, v7

    :cond_3
    :goto_1
    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v8, Lcom/motorola/camera/IqConfigManager;->mIqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v8, v6, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    if-lez v9, :cond_4

    move v9, v5

    goto :goto_2

    :cond_4
    move v9, v7

    :goto_2
    if-eqz v9, :cond_5

    invoke-static {v6, v0}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result v9

    if-lez v9, :cond_5

    move v9, v5

    goto :goto_3

    :cond_5
    move v9, v7

    :goto_3
    if-nez v9, :cond_8

    sget-object v9, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v9, v6, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_6

    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v7

    :goto_4
    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    move v6, v7

    goto :goto_6

    :cond_8
    :goto_5
    move v6, v5

    :goto_6
    if-eqz v6, :cond_e

    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-virtual {v8, v6, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    if-lez v8, :cond_9

    move v8, v5

    goto :goto_7

    :cond_9
    move v8, v7

    :goto_7
    if-eqz v8, :cond_a

    invoke-static {v6, v0}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result v6

    if-lez v6, :cond_a

    move v6, v5

    goto :goto_8

    :cond_a
    move v6, v7

    :goto_8
    if-eqz v6, :cond_c

    if-eqz v3, :cond_b

    iget-object v3, v4, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mQcMfnrBurstRefCount:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->block()Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_9

    :cond_b
    move v5, v7

    :goto_9
    iget-object p2, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)I

    move-result p2

    invoke-static {p2, v5}, Lcom/motorola/camera/IqConfigManager;->mfnrProcessTimeEstimates(IZ)I

    move-result p2

    goto :goto_a

    :cond_c
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/IqConfigManager;->mMtkMfnrSettings:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/motorola/camera/IqConfigManager;->getSettingFromListForLux(Ljava/util/List;)Lcom/motorola/camera/IqConfigManager$ZoomLuxSetting;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;

    if-eqz p2, :cond_d

    iget p2, p2, Lcom/motorola/camera/IqConfigManager$MtkMfnrSetting;->estimate:I

    goto :goto_a

    :cond_d
    const p2, 0x7fffffff

    :goto_a
    new-instance v0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;-><init>()V

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->mSeqIds:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iput-wide v1, v0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTimeStamp:J

    iput p2, v0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mFrameCollectionTimeEst:I

    iget v1, v0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mMiscTimeEst:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;->mTotalTimeEst:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateOnDemandRequestsRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mOnFullFrameListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->onProcessTimeEstimate(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;)V

    :cond_e
    return-void
.end method
