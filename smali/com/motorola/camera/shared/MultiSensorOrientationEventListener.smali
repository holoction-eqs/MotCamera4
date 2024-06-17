.class public abstract Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isCamAlignedSensor:Z

.field public mEnabled:Z

.field public mOrientation:I

.field public final mRate:I

.field public mSensor:Landroid/hardware/Sensor;

.field public final mSensorEventListener:Lcom/motorola/camera/mcf/Mcf$1;

.field public final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mEnabled:Z

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iput p2, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mRate:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/motorola/camera/mcf/Mcf$1;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/mcf/Mcf$1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensorEventListener:Lcom/motorola/camera/mcf/Mcf$1;

    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const-string p0, "OrientationEventListener"

    const-string v0, "Cannot detect sensors. Invalid disable"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensorEventListener:Lcom/motorola/camera/mcf/Mcf$1;

    iget-object v1, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mEnabled:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public enable()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const-string p0, "OrientationEventListener"

    const-string v0, "Cannot detect sensors. Not enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mEnabled:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mRate:I

    iget-object v2, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensorEventListener:Lcom/motorola/camera/mcf/Mcf$1;

    invoke-virtual {v2, v3, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mEnabled:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public final switchSensor(Z)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const-string p1, "mSensorManager"

    invoke-static {v1, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/motorola/camera/shared/Util;->getCamAlignedSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mEnabled:Z

    invoke-virtual {p0}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->disable()V

    iput-object p1, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->isCamAlignedSensor(Landroid/hardware/Sensor;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->isCamAlignedSensor:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->enable()V

    :cond_2
    :goto_1
    return-void
.end method
