.class public final Lcom/lenovo/core/WideSelfieRotationDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public mAccumulateX:F

.field public mAccumulateY:F

.field public mAccumulateZ:F

.field public mCurOrientaion:I

.field public mGyroscope:Landroid/hardware/Sensor;

.field public mLineraAccelerometer:Landroid/hardware/Sensor;

.field public mRotationDetectorListener:Lcom/lenovo/core/WideSelfieRotationDetector$RotationDetectorListener;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mSensorSyncObj:Ljava/lang/Object;

.field public mTimestamp:F


# direct methods
.method public constructor <init>(Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    iput v0, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateZ:F

    iput v0, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mCurOrientaion:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorSyncObj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mGyroscope:Landroid/hardware/Sensor;

    iput-object v1, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mLineraAccelerometer:Landroid/hardware/Sensor;

    iput-object v1, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mRotationDetectorListener:Lcom/lenovo/core/WideSelfieRotationDetector$RotationDetectorListener;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_1

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v4, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    const-string v4, "sensorManager"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/shared/Util;->getCamAlignedSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mGyroscope:Landroid/hardware/Sensor;

    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mLineraAccelerometer:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14

    iget-object v0, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mGyroscope:Landroid/hardware/Sensor;

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mTimestamp:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v2, v2

    sub-float/2addr v2, v1

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v1, v1, v5

    iget v5, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mCurOrientaion:I

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    const-wide v8, 0x4066800000000000L    # 180.0

    if-eqz v5, :cond_2

    const/16 v10, 0xb4

    if-ne v5, v10, :cond_0

    goto :goto_0

    :cond_0
    const/16 v10, 0x10e

    if-eq v5, v10, :cond_1

    const/16 v10, 0x5a

    if-ne v5, v10, :cond_3

    :cond_1
    iget v5, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    float-to-double v10, v5

    mul-float/2addr v3, v2

    float-to-double v12, v3

    mul-double/2addr v12, v8

    div-double/2addr v12, v6

    add-double/2addr v12, v10

    double-to-float v3, v12

    iput v3, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    iget v3, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    float-to-double v10, v3

    mul-float/2addr v4, v2

    float-to-double v3, v4

    mul-double/2addr v3, v8

    div-double/2addr v3, v6

    add-double/2addr v3, v10

    double-to-float v3, v3

    iput v3, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    goto :goto_1

    :cond_2
    :goto_0
    iget v5, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    float-to-double v10, v5

    mul-float/2addr v3, v2

    float-to-double v12, v3

    mul-double/2addr v12, v8

    div-double/2addr v12, v6

    add-double/2addr v12, v10

    double-to-float v3, v12

    iput v3, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    iget v3, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    float-to-double v10, v3

    mul-float/2addr v4, v2

    float-to-double v3, v4

    mul-double/2addr v3, v8

    div-double/2addr v3, v6

    add-double/2addr v3, v10

    double-to-float v3, v3

    iput v3, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    :cond_3
    :goto_1
    iget v3, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateZ:F

    float-to-double v3, v3

    mul-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v8

    div-double/2addr v1, v6

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateZ:F

    iget-object v2, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mRotationDetectorListener:Lcom/lenovo/core/WideSelfieRotationDetector$RotationDetectorListener;

    if-eqz v2, :cond_4

    iget v3, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    iget v4, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    invoke-virtual {v2, v3, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->updateAngle(FFF)V

    :cond_4
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v1

    iput p1, p0, Lcom/lenovo/core/WideSelfieRotationDetector;->mTimestamp:F

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
