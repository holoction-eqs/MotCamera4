.class public Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V
    .locals 0

    .line 3
    const/4 p1, 0x3

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable$$ExternalSynthetic$IA0;)V
    .locals 0

    .line 4
    const/4 p1, 0x5

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 5
    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const/4 v3, 0x0

    .line 1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x10e

    const/16 v8, 0xb4

    const/16 v9, 0x5a

    const/4 v10, 0x3

    move-object/from16 v11, p0

    iget v12, v11, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    const/4 v13, 0x1

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_f

    .line 3
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    if-eqz v0, :cond_3

    .line 4
    sget-object v2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v2, v2, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    const-string v4, "null cannot be cast to non-null type com.motorola.camera.scenedetection.scene.VendorTagScene"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->revertTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    .line 5
    :cond_1
    :goto_0
    sget-object v2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v2, :cond_3

    .line 6
    instance-of v3, v2, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v2, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    .line 7
    :cond_3
    :goto_1
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 8
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    move-object v5, v1

    check-cast v5, Landroid/os/Bundle;

    const-string v7, "TORCH_AUTO_TYPE"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_2
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 9
    :pswitch_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_7

    :cond_5
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mFlashMode:Ljava/lang/Integer;

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_8

    move v2, v13

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;

    if-eqz v7, :cond_9

    .line 10
    iget-boolean v7, v7, Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine;->mIsTorchOn:Z

    if-eqz v7, :cond_9

    move v7, v13

    goto :goto_5

    :cond_9
    move v7, v3

    .line 11
    :goto_5
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    if-nez v7, :cond_a

    .line 12
    iget-object v7, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 13
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_b

    :cond_a
    move v3, v13

    :cond_b
    if-ne v2, v3, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v3, :cond_d

    invoke-virtual {v7, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object v4, v6

    goto :goto_6

    :cond_d
    invoke-virtual {v7, v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    :goto_6
    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    :goto_7
    return-void

    .line 14
    :pswitch_4
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;->TRACKING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 15
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;

    .line 16
    sget v4, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    if-eq v4, v9, :cond_10

    if-eq v4, v8, :cond_f

    if-eq v4, v7, :cond_e

    goto :goto_8

    :cond_e
    move v3, v10

    goto :goto_8

    :cond_f
    move v3, v5

    goto :goto_8

    :cond_10
    move v3, v13

    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v5, v5, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 19
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_ORIENTATION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v5, v7}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_9

    .line 20
    :cond_11
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 21
    :pswitch_5
    instance-of v4, v1, Landroid/os/Bundle;

    if-nez v4, :cond_12

    goto/16 :goto_d

    :cond_12
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;->TRACKING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 22
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;

    .line 23
    move-object v4, v1

    check-cast v4, Landroid/os/Bundle;

    const-string v12, "LOCATION"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v12, v4, Landroid/graphics/PointF;->x:F

    float-to-int v12, v12

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    sget-object v14, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v14

    .line 24
    iget-object v14, v14, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 25
    check-cast v14, Landroid/graphics/Point;

    new-instance v15, Lcom/motorola/camera/PreviewSize;

    iget v10, v14, Landroid/graphics/Point;->x:I

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-direct {v15, v10, v14}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    int-to-float v10, v12

    int-to-float v4, v4

    .line 26
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iget v14, v15, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v14, v14

    const/high16 v16, -0x40000000    # -2.0f

    div-float v14, v14, v16

    iget v7, v15, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    const/high16 v17, 0x40000000    # 2.0f

    div-float v7, v7, v17

    invoke-virtual {v12, v14, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v14, -0x40800000    # -1.0f

    invoke-virtual {v12, v7, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    new-array v8, v5, [F

    aput v10, v8, v3

    aput v4, v8, v13

    new-array v4, v5, [F

    invoke-virtual {v12, v4, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance v8, Landroid/graphics/PointF;

    aget v10, v4, v3

    aget v4, v4, v13

    invoke-direct {v8, v10, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 27
    iget v4, v8, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v8, v8, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v2, v4

    int-to-float v4, v8

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v8

    .line 29
    new-instance v10, Landroid/graphics/RectF;

    .line 30
    sget-object v12, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 31
    iget-object v12, v12, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 32
    invoke-direct {v10, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v12, Landroid/graphics/PointF;

    iget v9, v15, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    iget v15, v15, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v15, v15

    invoke-direct {v12, v9, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Lcom/google/common/base/Splitter$1;

    iget v15, v10, Landroid/graphics/RectF;->left:F

    iget v13, v12, Landroid/graphics/PointF;->x:F

    div-float v13, v13, v17

    sub-float/2addr v15, v13

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget v3, v10, Landroid/graphics/RectF;->top:F

    sub-float v3, v12, v3

    div-float v18, v12, v17

    sub-float v3, v3, v18

    iget v5, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v13

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v10

    sub-float v12, v12, v18

    invoke-direct {v9, v15, v3, v5, v12}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V

    .line 33
    invoke-virtual {v9}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result v3

    invoke-virtual {v9}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result v5

    neg-float v10, v3

    neg-float v12, v5

    .line 34
    iget-object v13, v9, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/RectF;

    invoke-virtual {v13, v10, v12}, Landroid/graphics/RectF;->offset(FF)V

    sub-float/2addr v2, v3

    sub-float/2addr v4, v5

    .line 35
    invoke-virtual {v9, v2, v4}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_13

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v14, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    const/4 v8, 0x0

    goto :goto_a

    :cond_13
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 36
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 37
    check-cast v3, Landroid/util/Size;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v14, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v9}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v9}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v9

    div-float/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v17

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v17

    invoke-virtual {v5, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v3, 0x2

    new-array v7, v3, [F

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v2, 0x1

    aput v4, v7, v2

    new-array v4, v3, [F

    invoke-virtual {v5, v4, v7}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance v5, Landroid/graphics/PointF;

    aget v7, v4, v8

    aget v4, v4, v2

    invoke-direct {v5, v7, v4}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v2, v5

    .line 38
    :goto_a
    iget v4, v2, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    filled-new-array {v4, v2, v4, v2}, [I

    move-result-object v2

    .line 39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    .line 40
    sget v5, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    const/16 v7, 0x5a

    if-eq v5, v7, :cond_15

    const/16 v7, 0xb4

    if-eq v5, v7, :cond_16

    const/16 v7, 0x10e

    if-eq v5, v7, :cond_14

    move v3, v8

    goto :goto_b

    :cond_14
    const/4 v3, 0x3

    goto :goto_b

    :cond_15
    const/4 v3, 0x1

    .line 41
    :cond_16
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v8, v7, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 42
    sget-object v9, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v9, v4, v8, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 43
    iget-object v8, v7, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 44
    sget-object v9, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_REGISTER_ROI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v9, v4, v8, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 45
    iget-object v7, v7, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 46
    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_ORIENTATION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v4, v7, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_c

    .line 47
    :cond_17
    :goto_d
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 48
    :pswitch_6
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates;->TRACKING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 49
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v5, v5, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 52
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v6, v2, v5, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_e

    .line 53
    :cond_18
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 54
    :pswitch_7
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_19

    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "ZOOM_JUMP_X"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    const-string v4, "CAMERA_TYPE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    .line 55
    iput-object v2, v4, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    .line 56
    sget-object v5, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->ZOOMING:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    iput-object v5, v4, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result v3

    iput v3, v4, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    invoke-static {v3, v2}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    iget v3, v4, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    invoke-static {v3, v2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 57
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    :cond_19
    return-void

    .line 58
    :goto_f
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 60
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 61
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 62
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 63
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 64
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 65
    :pswitch_6
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 66
    :pswitch_7
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 67
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
