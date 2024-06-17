.class public Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "SourceFile"


# instance fields
.field public final mAutoMode:Z

.field public final mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

.field public final mForceSetRoi:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mForceSetRoi:Z

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 2
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4
    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "ROI_INNER"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "LOCK_FOCUS_STATE"

    invoke-virtual {v7, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "ENABLE"

    invoke-virtual {v7, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const/4 v11, 0x1

    xor-int/2addr v7, v11

    iget-boolean v12, v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mForceSetRoi:Z

    const/4 v13, 0x0

    if-nez v12, :cond_1

    if-eqz v8, :cond_1

    if-nez v7, :cond_0

    if-eqz v9, :cond_1

    :cond_0
    move v7, v11

    goto :goto_0

    :cond_1
    move v7, v13

    .line 5
    :goto_0
    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const/4 v9, 0x2

    const/4 v12, 0x5

    if-eqz v7, :cond_6

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 6
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    .line 7
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v2, v6}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 8
    :cond_2
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    invoke-direct {v4, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v4, v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v11, v13

    :goto_1
    if-nez v11, :cond_4

    .line 10
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 11
    :cond_4
    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    new-array v6, v13, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-array v4, v13, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v2, v4, v13}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->setupRequestBuilders(Lcom/motorola/camera/fsm/camera/FsmContext;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v4, v9

    invoke-static {v5, v6, v7, v4}, Lkotlin/io/ExceptionsKt;->addRoi(JII)V

    goto/16 :goto_b

    :cond_5
    invoke-static {}, Lkotlin/io/ExceptionsKt;->cancelRoi()V

    goto/16 :goto_b

    .line 13
    :cond_6
    invoke-static {v2, v5}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->setExposureCompensation(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    .line 14
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    invoke-direct {v4, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v4, v1, v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result v4

    if-nez v4, :cond_7

    move v4, v11

    goto :goto_2

    :cond_7
    move v4, v13

    :goto_2
    if-nez v4, :cond_8

    .line 16
    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 17
    :cond_8
    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;

    const-string v6, "LOCATION"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const-string v12, "ROI_WIDTH"

    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v14, "ROI_HIGHT"

    invoke-virtual {v4, v14}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "ROI_WEIGHT"

    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v15

    new-instance v11, Lcom/motorola/camera/PreviewSize;

    const-string v13, "SURFACE_WIDTH"

    invoke-virtual {v4, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v9, "SURFACE_HEIGHT"

    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v11, v13, v9}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    new-instance v9, Landroid/graphics/PointF;

    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v9, v13, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v6, "ROI_TARGET_LOCATION"

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "ROI_TARGET_WIDTH"

    invoke-virtual {v4, v6, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "ROI_TARGET_HIGHT"

    invoke-virtual {v4, v6, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "ROI_TARGET_WEIGHT"

    invoke-virtual {v4, v6, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "ROI_DRAG"

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v6, :cond_a

    if-eqz v4, :cond_a

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    int-to-float v6, v7

    int-to-float v7, v8

    .line 18
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iget v9, v11, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v9

    const/high16 v10, -0x40000000    # -2.0f

    div-float/2addr v9, v10

    iget v10, v11, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v10, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v9, 0x2

    new-array v10, v9, [F

    const/16 v19, 0x0

    aput v6, v10, v19

    const/4 v6, 0x1

    aput v7, v10, v6

    new-array v7, v9, [F

    invoke-virtual {v8, v7, v10}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance v8, Landroid/graphics/PointF;

    aget v9, v7, v19

    aget v7, v7, v6

    invoke-direct {v8, v9, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 19
    iget v6, v8, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget v7, v8, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v5, v6

    int-to-float v6, v7

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v7

    .line 21
    new-instance v8, Landroid/graphics/RectF;

    .line 22
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 23
    iget-object v9, v9, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 24
    invoke-direct {v8, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/PointF;

    iget v10, v11, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v10, v10

    iget v11, v11, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v11, v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Lcom/google/common/base/Splitter$1;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    iget v1, v9, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v13

    sub-float/2addr v11, v1

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    sub-float v3, v9, v3

    div-float v19, v9, v13

    sub-float v3, v3, v19

    iget v13, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v1

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v1

    sub-float v9, v9, v19

    invoke-direct {v10, v11, v3, v13, v9}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V

    .line 25
    invoke-virtual {v10}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result v1

    invoke-virtual {v10}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result v3

    neg-float v8, v1

    neg-float v9, v3

    .line 26
    iget-object v11, v10, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/RectF;

    invoke-virtual {v11, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    sub-float/2addr v5, v1

    sub-float/2addr v6, v3

    .line 27
    invoke-virtual {v10, v5, v6}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_8

    :cond_b
    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->getActiveSensorRect()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 28
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 29
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_d

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_6

    :cond_d
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_6
    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v3, v9, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 30
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 31
    iget-boolean v7, v7, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v7, :cond_e

    .line 32
    sget v7, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    add-int/lit16 v7, v7, -0x168

    .line 33
    rem-int/lit16 v7, v7, 0x168

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v10}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v9

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v8

    div-float/2addr v7, v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v10}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v9

    :goto_7
    div-float/2addr v8, v9

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v7, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v7

    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    add-float/2addr v1, v7

    invoke-virtual {v3, v8, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v1, 0x2

    new-array v7, v1, [F

    const/4 v8, 0x0

    aput v5, v7, v8

    const/4 v5, 0x1

    aput v6, v7, v5

    new-array v6, v1, [F

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance v1, Landroid/graphics/PointF;

    aget v3, v6, v8

    aget v6, v6, v5

    invoke-direct {v1, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 34
    :goto_8
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 35
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 36
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRatioControlSupported()Z

    move-result v5

    if-nez v5, :cond_f

    int-to-float v5, v12

    mul-float/2addr v5, v3

    float-to-int v12, v5

    int-to-float v5, v14

    mul-float/2addr v5, v3

    float-to-int v14, v5

    .line 37
    :cond_f
    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    .line 38
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x2

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_10

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v9, v6, v3

    cmpl-float v3, v9, v5

    if-ltz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_11

    const/16 v3, 0x1f4

    goto :goto_a

    :cond_11
    const/16 v3, 0x190

    :goto_a
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->getActiveSensorRect()Landroid/graphics/Rect;

    move-result-object v6

    iget v7, v1, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v8

    .line 39
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 40
    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    div-int/lit8 v8, v3, 0x2

    sub-int/2addr v1, v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v8

    .line 41
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v8, 0x0

    .line 42
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    move-object/from16 v16, v8

    move/from16 v17, v7

    move/from16 v18, v1

    move/from16 v19, v5

    move/from16 v20, v3

    move/from16 v21, v15

    invoke-direct/range {v16 .. v21}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v9, 0x0

    aput-object v8, v6, v9

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x2

    div-int/2addr v5, v10

    add-int/2addr v5, v7

    div-int/2addr v3, v10

    add-int/2addr v3, v1

    invoke-direct {v9, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v8, v9}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v2, v6, v4}, Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;->setupRequestBuilders(Lcom/motorola/camera/fsm/camera/FsmContext;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const/4 v1, 0x0

    aget-object v1, v6, v1

    .line 43
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-static {v3, v4, v5, v1}, Lkotlin/io/ExceptionsKt;->addRoi(JII)V

    .line 44
    :goto_b
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mFocusModeChangedListener:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable$1;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final switchFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    const-string v6, "VIDEO_RECORDING"

    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ROI_DRAG"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;->mAutoMode:Z

    const/4 v6, 0x2

    if-eqz p0, :cond_7

    if-nez v1, :cond_7

    if-nez v5, :cond_7

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusSupported()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_5

    :cond_3
    iput v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v7, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result v1

    if-ne v1, v6, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_6
    :goto_5
    monitor-exit v0

    goto :goto_7

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_7
    monitor-enter v0

    :try_start_1
    iget p0, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCacheAfMode:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_8

    iput p0, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    :cond_8
    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result p0

    if-ne p0, v6, :cond_9

    move v2, v4

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :cond_a
    monitor-exit v0

    :goto_7
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
