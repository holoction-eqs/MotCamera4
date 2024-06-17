.class public final Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# instance fields
.field public mBaseZoom:F

.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mDragNumber:I

.field public mFirstFrame:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInMagneticRange:Z

.field public mMagneticValues:[I

.field public mMagneticX:[F

.field public mZoomCompleted:Z

.field public mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

.field public mZoomTarget:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mHandler:Landroid/os/Handler;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->resetState()V

    return-void
.end method

.method public static getReciprocal(F)F
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double v2, p0

    div-double/2addr v0, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    const v0, 0x4b189680    # 1.0E7f

    div-float/2addr p0, v0

    return p0
.end method

.method public static smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 9

    invoke-static {p0, p1}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomRect(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v3, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p1, v3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoomRect(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    sget-object v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHQPreview:[Z

    iget-object v5, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v5

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget-object v5, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v6, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget v7, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-static {v7, v6, p2, v3, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->processMcfSceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v3, v5, v6, v7}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->containsTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Z

    move-result v3

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v5, p0, v5

    const/4 v6, 0x0

    if-gtz v5, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    if-nez v8, :cond_4

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    iget-object v4, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v2, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v4, v2, v7}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    :cond_4
    if-gtz v5, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    iget-object v3, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    iget-object v4, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v2, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v4, v2, v7}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0, p2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final resetState()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->NOT_ZOOMED:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    return-void
.end method

.method public final zoom(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    const/4 v5, 0x1

    if-eqz v3, :cond_23

    const-string v6, "VIDEO_RECORDING"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result v8

    or-int/2addr v6, v8

    :cond_0
    const-string v8, "TYPE"

    invoke-virtual {v3, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "VALUE"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    const-string v10, "ZOOM_SEG_UNIT"

    invoke-virtual {v3, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    const/16 v10, 0x87

    :cond_1
    const-string v11, "START_ZOOM"

    invoke-virtual {v3, v11, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    iput v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    invoke-virtual {v3, v11, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    if-eqz v8, :cond_23

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v3

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    const/4 v8, 0x2

    const/4 v11, 0x3

    if-nez v6, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v6

    const v13, 0x3dcccccd    # 0.1f

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v15

    if-eqz v6, :cond_4

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v15, v7, :cond_3

    :goto_0
    move v7, v5

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v14, v7, :cond_3

    goto :goto_0

    :goto_1
    sget-object v12, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v12, :cond_5

    move v12, v5

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    :goto_2
    if-nez v12, :cond_6

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v7, :cond_7

    :cond_6
    sub-float/2addr v3, v13

    :cond_7
    if-eqz v6, :cond_8

    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    goto :goto_3

    :cond_8
    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_12

    if-eqz v6, :cond_12

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-eq v2, v6, :cond_a

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v6, :cond_b

    :cond_a
    sub-float/2addr v3, v13

    :cond_b
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->BACK_KNIFE_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackWideCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eq v6, v5, :cond_c

    if-ne v6, v8, :cond_d

    :cond_c
    move v7, v5

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCaptureSensorCombination()Ljava/util/HashMap;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureCameraGroupType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    sget-object v13, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    and-int/2addr v7, v12

    :cond_e
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v12

    if-eqz v12, :cond_10

    if-eq v6, v11, :cond_f

    if-ne v6, v8, :cond_10

    :cond_f
    move v6, v5

    goto :goto_5

    :cond_10
    const/4 v6, 0x0

    :goto_5
    if-nez v7, :cond_11

    if-eqz v6, :cond_12

    :cond_11
    :goto_6
    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v4, v6

    :cond_12
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpl-float v6, v6, v7

    const/4 v7, 0x0

    if-lez v6, :cond_13

    int-to-float v6, v10

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v10

    neg-float v9, v9

    div-float/2addr v9, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v9, v6

    float-to-double v9, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    mul-double/2addr v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    mul-double/2addr v9, v12

    iget v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mBaseZoom:F

    float-to-double v12, v6

    div-double/2addr v9, v12

    double-to-float v6, v9

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_7

    :cond_13
    move v3, v7

    :goto_7
    cmpl-float v4, v3, v7

    if-nez v4, :cond_14

    iget v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    goto :goto_8

    :cond_14
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result v3

    :goto_8
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v9, 0x4

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    if-nez v10, :cond_16

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v10

    if-eqz v10, :cond_15

    sget-object v10, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v10, v10, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    new-array v12, v9, [F

    sget-object v13, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    sget-object v14, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v15, v10, v13

    const v16, 0x3d4ccccd    # 0.05f

    sub-float v15, v15, v16

    aput v15, v12, v5

    aget v13, v10, v13

    add-float v13, v13, v16

    const/4 v15, 0x0

    aput v13, v12, v15

    aget v13, v10, v14

    sub-float v13, v13, v16

    aput v13, v12, v11

    aget v10, v10, v14

    add-float v10, v10, v16

    aput v10, v12, v8

    goto :goto_9

    :cond_15
    move-object v12, v6

    :goto_9
    iput-object v12, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    :cond_16
    if-eqz v4, :cond_1a

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    if-eqz v10, :cond_1a

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v12, v10, v3

    sget-object v10, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v4, v10

    sget-object v13, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v4, v13

    const/4 v14, 0x0

    aget v15, v4, v14

    cmpl-float v14, v15, v7

    if-eqz v14, :cond_18

    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    aget v15, v14, v5

    cmpl-float v15, v12, v15

    if-lez v15, :cond_17

    cmpg-float v15, v12, v10

    if-gez v15, :cond_17

    move v15, v5

    goto :goto_a

    :cond_17
    cmpl-float v10, v12, v10

    if-lez v10, :cond_18

    const/4 v10, 0x0

    aget v14, v14, v10

    cmpg-float v10, v12, v14

    if-gez v10, :cond_18

    move v15, v8

    goto :goto_a

    :cond_18
    aget v4, v4, v8

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticX:[F

    aget v7, v4, v11

    cmpl-float v7, v12, v7

    if-lez v7, :cond_19

    cmpg-float v7, v12, v13

    if-gez v7, :cond_19

    move v15, v11

    goto :goto_a

    :cond_19
    cmpl-float v7, v12, v13

    if-lez v7, :cond_1a

    aget v4, v4, v8

    cmpg-float v4, v12, v4

    if-gez v4, :cond_1a

    move v15, v9

    goto :goto_a

    :cond_1a
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_21

    iget-boolean v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    if-nez v4, :cond_1d

    iget v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_1d

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    if-nez v4, :cond_1b

    new-array v4, v9, [I

    iput-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    :cond_1b
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    invoke-static {v15}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v7

    aget v10, v4, v7

    add-int/2addr v10, v5

    aput v10, v4, v7

    iget v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    if-ne v4, v6, :cond_1c

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v6, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v6}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v7, v5

    goto :goto_b

    :cond_1c
    const/4 v7, 0x0

    :goto_b
    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    :cond_1d
    iget-boolean v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    if-eqz v4, :cond_22

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    invoke-static {v5, v15}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v6

    if-nez v6, :cond_20

    invoke-static {v8, v15}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_c

    :cond_1e
    invoke-static {v11, v15}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-static {v9, v15}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->equals(II)Z

    move-result v6

    if-eqz v6, :cond_22

    :cond_1f
    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_20
    :goto_c
    const/high16 v6, 0x3f800000    # 1.0f

    sget-object v3, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    :goto_d
    div-float v3, v6, v3

    goto :goto_e

    :cond_21
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mInMagneticRange:Z

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mMagneticValues:[I

    iput v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mDragNumber:I

    :cond_22
    :goto_e
    move v4, v3

    invoke-static {v4, v2}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    :cond_23
    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/utility/ZoomHelper;->getMaxSupportedZoomByCamera(Lcom/motorola/camera/settings/CameraType;)F

    move-result v4

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->getReciprocal(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    invoke-static {v3, v2, v1}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->smoothZoom(FLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->ZOOMING:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    return-void
.end method
