.class public final Lcom/motorola/camera/mcf/Mcf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/mcf/Mcf$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/motorola/camera/mcf/Mcf$1;->$r8$classId:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    iget v2, v0, Lcom/motorola/camera/ui/UIManager;->mAmbientLux:F

    const v3, 0x461c4000    # 10000.0f

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_0

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_1

    :cond_0
    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_2

    :cond_1
    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_0
    if-eqz v2, :cond_4

    cmpg-float v2, v1, v3

    if-gez v2, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/UIManager;->adjustScreenBrightness(Z)V

    :cond_4
    iput v1, v0, Lcom/motorola/camera/ui/UIManager;->mAmbientLux:F

    :cond_5
    return-void

    :pswitch_1
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v1, v6

    neg-float v2, v2

    aget v3, v1, v7

    neg-float v3, v3

    aget v1, v1, v8

    neg-float v1, v1

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v5, v4

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v5, v4

    mul-float/2addr v1, v1

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_7

    neg-float v1, v3

    float-to-double v3, v1

    float-to-double v1, v2

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x42652ee1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5a

    :goto_1
    const/16 v2, 0x168

    if-lt v1, v2, :cond_6

    add-int/lit16 v1, v1, -0x168

    goto :goto_1

    :cond_6
    :goto_2
    if-gez v1, :cond_8

    add-int/lit16 v1, v1, 0x168

    goto :goto_2

    :cond_7
    const/4 v1, -0x1

    :cond_8
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;

    iget v2, v0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mOrientation:I

    if-eq v1, v2, :cond_9

    iput v1, v0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->onOrientationChanged(I)V

    :cond_9
    return-void

    :pswitch_2
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    float-to-int v1, v1

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Controller;

    iget-object v2, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v2, :cond_10

    const/16 v4, 0x50

    if-le v1, v4, :cond_a

    move v4, v7

    goto :goto_3

    :cond_a
    move v4, v6

    :goto_3
    iget-object v2, v2, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v5, Lcom/motorola/camera/cli/content/CliContentManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v5, v5, v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lkotlin/properties/ObservableProperty;->setValue(Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    if-nez v1, :cond_b

    iget-object v2, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-virtual {v2}, Lcom/motorola/camera/cli/content/CliContentManager;->finishPresentationHolder()V

    :cond_b
    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v2

    if-nez v2, :cond_e

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->ENABLE_SPLIT_SCREEN:Z

    if-eqz v2, :cond_c

    const/16 v1, 0x64

    :cond_c
    const/16 v2, 0x87

    if-ge v1, v2, :cond_d

    invoke-virtual {v0, v7, v6}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    goto :goto_4

    :cond_d
    const/16 v2, 0x91

    if-le v1, v2, :cond_e

    invoke-virtual {v0, v6, v6}, Lcom/motorola/camera/Controller;->setLayoutChanged(ZZ)V

    :cond_e
    :goto_4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSmartCompositionSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    const/16 v4, 0xa0

    if-ge v1, v4, :cond_f

    iget-boolean v4, v2, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-nez v4, :cond_f

    invoke-static {v6, v7}, Lcom/motorola/camera/settings/SettingsManager;->updateCompositionValue(ZZ)V

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, v7}, Lcom/motorola/camera/settings/Setting;->setLocked(Z)V

    goto :goto_5

    :cond_f
    const/16 v4, 0xb4

    if-ne v1, v4, :cond_10

    iget-boolean v1, v2, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz v1, :cond_10

    invoke-static {v0, v3, v6}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, v2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v2, v4}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0, v7}, Lcom/motorola/camera/settings/SettingsManager;->updateCompositionValue(ZZ)V

    :cond_10
    :goto_5
    return-void

    :pswitch_3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetsTimebaseDeltaNs()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_11

    iget-wide v2, v1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetsTimebaseDeltaNs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/hardware/SensorEvent;->timestamp:J

    :cond_11
    iget-object v0, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-wide v2, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smnative_sensor_event(IJ[F)V

    return-void

    :goto_6
    if-eqz v1, :cond_27

    iget-object v2, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchingBar:Z

    if-eqz v2, :cond_12

    goto/16 :goto_13

    :cond_12
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v2, v6

    aget v10, v2, v7

    aget v2, v2, v8

    iget-object v11, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v11

    const/4 v14, 0x0

    const/16 v15, 0xa

    if-ne v11, v15, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-wide v7, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLastT:J

    cmp-long v16, v7, v4

    if-eqz v16, :cond_20

    sub-long v7, v12, v7

    long-to-float v7, v7

    const/high16 v8, 0x42200000    # 40.0f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_13

    goto/16 :goto_13

    :cond_13
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    mul-float/2addr v9, v7

    add-float/2addr v9, v8

    iput v9, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    mul-float/2addr v10, v7

    add-float/2addr v10, v8

    iput v10, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    mul-float/2addr v2, v7

    add-float/2addr v2, v8

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v15, :cond_17

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v15, :cond_14

    goto/16 :goto_8

    :cond_14
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    monitor-enter v1

    move v9, v6

    move v10, v14

    move/from16 v16, v10

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    :goto_7
    if-ge v9, v8, :cond_15

    :try_start_0
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v3, v23

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-wide v4, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v3, v4

    add-float v16, v16, v3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    aget v3, v3, v6

    add-float v18, v18, v3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    add-float v20, v20, v3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    add-float v22, v22, v3

    float-to-double v3, v10

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    move-wide/from16 v24, v12

    iget-wide v11, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-double v10, v11

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v3, v10

    double-to-float v10, v3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-wide v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v3, v3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    aget v4, v4, v6

    mul-float/2addr v3, v4

    add-float v17, v3, v17

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-wide v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v3, v3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float v19, v3, v19

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-wide v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mTime:J

    long-to-float v3, v3

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;->mVelocities:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float v21, v3, v21

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v12, v24

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    goto/16 :goto_7

    :cond_15
    move-wide/from16 v24, v12

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v8

    mul-float/2addr v10, v1

    mul-float v3, v16, v16

    sub-float/2addr v10, v3

    cmpl-float v3, v10, v14

    if-nez v3, :cond_16

    goto :goto_9

    :cond_16
    mul-float v17, v17, v1

    mul-float v18, v18, v16

    sub-float v17, v17, v18

    div-float v17, v17, v10

    mul-float v19, v19, v1

    mul-float v20, v20, v16

    sub-float v19, v19, v20

    div-float v19, v19, v10

    mul-float v1, v1, v21

    mul-float v16, v16, v22

    sub-float v1, v1, v16

    div-float/2addr v1, v10

    new-array v3, v2, [F

    aput v17, v3, v6

    const/4 v4, 0x1

    aput v19, v3, v4

    const/4 v4, 0x2

    aput v1, v3, v4

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_17
    :goto_8
    move-wide/from16 v24, v12

    :goto_9
    const/4 v3, 0x0

    :goto_a
    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v15, :cond_1c

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    monitor-enter v1

    move v4, v14

    move v5, v4

    const/4 v7, 0x1

    :goto_b
    :try_start_2
    iget-object v8, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_18

    iget-object v8, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v8, v8, v6

    iget-object v9, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v9, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    add-int/lit8 v10, v7, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    aget v9, v9, v6

    sub-float/2addr v8, v9

    add-float/2addr v14, v8

    iget-object v8, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v9, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    const/4 v12, 0x1

    aget v9, v9, v12

    sub-float/2addr v8, v9

    add-float/2addr v4, v8

    iget-object v8, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    const/4 v9, 0x2

    aget v8, v8, v9

    iget-object v9, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v9, v9, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    const/4 v10, 0x2

    aget v9, v9, v10

    sub-float/2addr v8, v9

    add-float/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_18
    iget-object v7, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    if-nez v8, :cond_19

    move-object v8, v7

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    new-array v9, v2, [F

    aput v14, v9, v6

    const/4 v10, 0x1

    aput v4, v9, v10

    const/4 v10, 0x2

    aput v5, v9, v10

    iput-object v9, v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    :cond_19
    move-object v8, v7

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    aget v7, v7, v6

    invoke-static {v8, v14, v7}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->-$$Nest$misAcceleration(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    const/4 v9, 0x1

    aget v7, v7, v9

    invoke-static {v8, v4, v7}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->-$$Nest$misAcceleration(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mStartAcc:[F

    const/4 v8, 0x2

    aget v4, v4, v8

    invoke-static {v7, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->-$$Nest$misAcceleration(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;FF)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_c

    :cond_1a
    move v4, v6

    goto :goto_d

    :cond_1b
    :goto_c
    const/4 v4, 0x1

    :goto_d
    monitor-exit v1

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_e

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1c
    move v4, v6

    :goto_e
    if-eqz v3, :cond_1e

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v3, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v15, :cond_1d

    iget-object v3, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAccList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1d
    monitor-exit v1

    goto :goto_f

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_1e
    :goto_f
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;

    iget-object v3, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-wide v7, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    sub-long v12, v24, v7

    new-array v2, v2, [F

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelX:F

    aput v5, v2, v6

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelY:F

    const/4 v7, 0x1

    aput v5, v2, v7

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelZ:F

    const/4 v5, 0x2

    aput v3, v2, v5

    invoke-direct {v1, v12, v13, v2}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$SensorData;-><init>(J[F)V

    iget-object v2, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    monitor-enter v1

    :try_start_4
    iget-object v2, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v15, :cond_1f

    iget-object v2, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mVelocityList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1f
    monitor-exit v1

    move v7, v4

    goto :goto_10

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :cond_20
    move-wide/from16 v24, v12

    move v7, v6

    :goto_10
    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    move-wide/from16 v2, v24

    iput-wide v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLastT:J

    iget-wide v4, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_25

    iput-wide v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFirstT:J

    goto/16 :goto_12

    :cond_21
    iget-object v3, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_24

    iget-object v3, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mGyroTimestamp:F

    cmpl-float v5, v4, v14

    if-eqz v5, :cond_22

    iget-wide v11, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v5, v11

    sub-float/2addr v5, v4

    const v4, 0x3089705f    # 1.0E-9f

    mul-float/2addr v5, v4

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleX:F

    mul-float v8, v9, v5

    add-float/2addr v8, v4

    iput v8, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleX:F

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    mul-float v11, v10, v5

    add-float/2addr v11, v4

    iput v11, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    iput v5, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    float-to-double v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v14, v3

    iget-object v3, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleY:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mAngleZ:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    goto :goto_11

    :cond_22
    move v3, v14

    move v4, v3

    :goto_11
    iget-object v5, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-wide v11, v1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v1, v11

    iput v1, v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mGyroTimestamp:F

    float-to-double v8, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v6, v10

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v8

    float-to-double v7, v2

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    float-to-double v5, v14

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v7, v3

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v7, v5

    float-to-double v3, v4

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3fe66666    # 1.8f

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_23

    const/high16 v2, 0x41c80000    # 25.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_24

    :cond_23
    const/4 v7, 0x1

    goto :goto_12

    :cond_24
    const/4 v7, 0x0

    :cond_25
    :goto_12
    if-eqz v7, :cond_27

    iget-object v2, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->registerSensor(Z)V

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dispatchReset()V

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mShouldKeepHidden:Z

    if-nez v2, :cond_26

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isShutterButtonMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyCenterRoiAnimation(Z)V

    :cond_26
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->resetSensorValues()V

    :cond_27
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
