.class public final Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;
.super Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->$r8$classId:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_11

    :pswitch_0
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v5, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    if-nez v5, :cond_1

    goto/16 :goto_10

    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v5

    if-eqz v5, :cond_1c

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v6, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v7, "PANO_GAIN_DETECT"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-static {v5}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getGain(Landroid/media/Image;)D

    move-result-wide v6

    invoke-virtual {v5}, Landroid/media/Image;->close()V

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v5, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    sget-object v9, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    const/4 v11, 0x1

    if-eqz v9, :cond_14

    if-eqz v8, :cond_14

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_14

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_14

    const-wide/16 v12, 0x0

    cmpl-double v14, v6, v12

    if-nez v14, :cond_2

    goto/16 :goto_b

    :cond_2
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Range;

    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Range;

    sget-object v16, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/Rational;

    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/Integer;

    const/16 v17, 0x640

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14, v4, v12}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object v13, v12, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_3

    move v13, v11

    goto :goto_1

    :cond_3
    move v13, v3

    :goto_1
    monitor-exit v12

    if-eqz v13, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v12

    iget-object v14, v5, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->PREVIEW_GAIN_RANGE:Landroid/util/Range;

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    mul-double v16, v16, v12

    int-to-double v12, v11

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_2

    :cond_4
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :goto_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v12, v8

    mul-double/2addr v6, v12

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, v5, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBufIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v5, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBufIndex:I

    and-int/lit8 v8, v8, 0x7

    iget-object v9, v5, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBuf:[D

    aput-wide v6, v9, v8

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    :goto_3
    const/16 v12, 0x8

    if-ge v6, v12, :cond_5

    int-to-double v12, v6

    iget v14, v5, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mEVBufIndex:I

    add-int/2addr v14, v6

    and-int/lit8 v14, v14, 0x7

    aget-wide v16, v9, v14

    mul-double v12, v12, v16

    add-double/2addr v7, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const-wide v12, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v7, v12

    new-instance v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    invoke-direct {v6, v3}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(I)V

    sget-object v9, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PANO_ANTI_FLICKER_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-wide v12, 0x4157d78400000000L    # 6250000.0

    cmpg-double v12, v7, v12

    const-wide v13, 0x416312d000000000L    # 1.0E7

    if-gtz v12, :cond_6

    if-nez v9, :cond_6

    const-wide v16, 0x40fe848000000000L    # 125000.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->rint(D)D

    move-result-wide v10

    double-to-long v9, v10

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v9, v9

    div-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    double-to-int v9, v9

    goto/16 :goto_4

    :cond_6
    const-wide v10, 0x4177d78400000000L    # 2.5E7

    cmpg-double v10, v7, v10

    if-gtz v10, :cond_7

    if-nez v9, :cond_7

    const-wide v9, 0x410e848000000000L    # 250000.0

    goto/16 :goto_6

    :cond_7
    const-wide v10, 0x4197d78400000000L    # 1.0E8

    cmpg-double v12, v7, v10

    if-gtz v12, :cond_8

    if-nez v9, :cond_8

    const-wide v9, 0x411e848000000000L    # 500000.0

    goto/16 :goto_6

    :cond_8
    const-wide v16, 0x41b7d78400000000L    # 4.0E8

    cmpg-double v12, v7, v16

    if-gtz v12, :cond_9

    if-nez v9, :cond_9

    const-wide v9, 0x412e848000000000L    # 1000000.0

    goto/16 :goto_6

    :cond_9
    const-wide v16, 0x41edcd6500000000L    # 4.0E9

    cmpg-double v12, v7, v16

    if-gtz v12, :cond_a

    if-nez v9, :cond_a

    const/16 v9, 0x190

    goto :goto_4

    :cond_a
    const-wide v16, 0x41f65a0bc0000000L    # 6.0E9

    cmpg-double v9, v7, v16

    if-gtz v9, :cond_b

    invoke-static {v13, v14}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    goto/16 :goto_7

    :cond_b
    const-wide v16, 0x41fbf08eb0000000L    # 7.5E9

    cmpg-double v9, v7, v16

    if-gtz v9, :cond_c

    const/16 v9, 0x258

    goto :goto_4

    :cond_c
    const-wide v16, 0x4222a05f20000000L    # 4.0E10

    cmpg-double v9, v7, v16

    if-gtz v9, :cond_d

    const-wide v9, 0x416fca0555555555L    # 1.6666666666666666E7

    goto/16 :goto_6

    :cond_d
    const-wide v16, 0x4238d5d42aaaaaabL    # 1.0666666666666667E11

    cmpg-double v9, v7, v16

    if-gtz v9, :cond_e

    const/16 v9, 0xc80

    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5

    :cond_e
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v10, v9

    const-wide v18, 0x41cdcd6500000000L    # 1.0E9

    mul-double v10, v10, v18

    const-wide/high16 v20, 0x403e000000000000L    # 30.0

    div-double v10, v10, v20

    cmpg-double v9, v7, v10

    if-gtz v9, :cond_f

    const-wide v9, 0x417fca0555555555L    # 3.3333333333333332E7

    goto :goto_6

    :cond_f
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v9, v9

    mul-double v9, v9, v18

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    div-double/2addr v9, v11

    cmpg-double v9, v7, v9

    if-gtz v9, :cond_10

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    :goto_5
    invoke-virtual {v4, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    int-to-double v9, v9

    div-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    double-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    goto :goto_8

    :cond_10
    const-wide v9, 0x4197d78400000000L    # 1.0E8

    :goto_6
    invoke-static {v9, v10}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    :goto_7
    double-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v9, v9

    div-double v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    :goto_8
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v2, :cond_11

    const-wide v12, 0x415fca0555555555L    # 8333333.333333333

    goto :goto_9

    :cond_11
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    move-wide v12, v13

    goto :goto_9

    :cond_12
    const-wide/16 v12, 0x0

    :goto_9
    const-wide v9, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v9, v12

    iget-wide v2, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v2, v2

    cmpg-double v9, v9, v2

    if-gtz v9, :cond_13

    cmpg-double v9, v2, v12

    if-gez v9, :cond_13

    invoke-static {v12, v13}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    goto :goto_a

    :cond_13
    cmpl-double v9, v2, v12

    if-ltz v9, :cond_15

    div-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    :goto_a
    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-double v2, v2

    div-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v12

    throw v1

    :cond_14
    :goto_b
    const/4 v6, 0x0

    :cond_15
    :goto_c
    if-nez v6, :cond_16

    goto/16 :goto_e

    :cond_16
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession$enumunboxing$(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_19

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    goto/16 :goto_f

    :cond_17
    iget-object v2, v5, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v4, "PANO_SENSOR_EXPOSURE_TIME"

    iget-wide v7, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    invoke-virtual {v2, v4, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "PANO_SENSOR_SENSITIVITY"

    iget v7, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    invoke-virtual {v2, v4, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v7, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    const-wide/32 v9, 0x3938700

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iput-wide v7, v6, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, v5, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, v5, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    monitor-enter v2

    :try_start_1
    iget-object v4, v5, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v6, "PANO_GAIN_DETECT"

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_d

    :cond_18
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v5, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;->mSetRepeatingRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;

    iget-object v8, v5, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v6, v5, v7, v8}, Lcom/motorola/camera/device/CameraService;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    :goto_d
    monitor-exit v2

    goto :goto_f

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_19
    :goto_e
    const/4 v3, 0x2

    goto :goto_f

    :cond_1a
    move v3, v2

    invoke-virtual {v5}, Landroid/media/Image;->close()V

    :cond_1b
    :goto_f
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    move v2, v3

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1c
    :goto_10
    return-void

    :goto_11
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    sget-object v3, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    if-eqz v1, :cond_1d

    array-length v3, v1

    goto :goto_12

    :cond_1d
    const/4 v3, -0x1

    :goto_12
    if-gtz v3, :cond_1e

    goto :goto_14

    :cond_1e
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    sget v5, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v0, v8

    new-array v8, v3, [Landroid/graphics/Rect;

    :goto_13
    if-ge v6, v3, :cond_23

    aget-object v9, v1, v6

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v5, :cond_22

    const/16 v10, 0x5a

    if-eq v5, v10, :cond_21

    const/16 v10, 0xb4

    if-eq v5, v10, :cond_20

    const/16 v10, 0x10e

    if-eq v5, v10, :cond_1f

    :goto_14
    const/4 v4, 0x0

    goto/16 :goto_16

    :cond_1f
    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    new-instance v13, Landroid/graphics/Rect;

    int-to-float v10, v10

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    and-int/lit8 v10, v10, -0x2

    int-to-float v12, v12

    mul-float/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    and-int/lit8 v12, v12, -0x2

    int-to-float v11, v11

    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    and-int/lit8 v11, v11, -0x2

    int-to-float v9, v9

    mul-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    and-int/lit8 v9, v9, -0x2

    invoke-direct {v13, v10, v12, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v13, v8, v6

    goto/16 :goto_15

    :cond_20
    iget v10, v9, Landroid/graphics/Rect;->top:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    iget v9, v9, Landroid/graphics/Rect;->right:I

    new-instance v13, Landroid/graphics/Rect;

    int-to-float v10, v10

    mul-float/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    and-int/lit8 v10, v10, -0x2

    int-to-float v11, v11

    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    and-int/lit8 v11, v11, -0x2

    int-to-float v12, v12

    mul-float/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    and-int/lit8 v12, v12, -0x2

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    and-int/lit8 v9, v9, -0x2

    invoke-direct {v13, v10, v11, v12, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v13, v8, v6

    goto/16 :goto_15

    :cond_21
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v11, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget v12, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v9

    new-instance v9, Landroid/graphics/Rect;

    int-to-float v10, v10

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    and-int/lit8 v10, v10, -0x2

    int-to-float v12, v12

    mul-float/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    and-int/lit8 v12, v12, -0x2

    int-to-float v11, v11

    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    and-int/lit8 v11, v11, -0x2

    int-to-float v13, v13

    mul-float/2addr v13, v0

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    and-int/lit8 v13, v13, -0x2

    invoke-direct {v9, v10, v12, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v8, v6

    goto :goto_15

    :cond_22
    iget v10, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget v12, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v9

    new-instance v9, Landroid/graphics/Rect;

    int-to-float v10, v10

    mul-float/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    and-int/lit8 v10, v10, -0x2

    int-to-float v11, v11

    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    and-int/lit8 v11, v11, -0x2

    int-to-float v12, v12

    mul-float/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    and-int/lit8 v12, v12, -0x2

    int-to-float v13, v13

    mul-float/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    and-int/lit8 v13, v13, -0x2

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v8, v6

    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    :cond_23
    move-object v4, v8

    :goto_16
    const-string v0, "WIDE_SELFIE_FACE_RECT"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x1

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoPreviewRequestRunnable;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, p0}, Lcom/motorola/camera/device/CameraService;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceAborted()V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceCompleted()V
    .locals 0

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0

    return-void
.end method
