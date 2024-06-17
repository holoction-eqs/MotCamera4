.class public final Lcom/morphoinc/app/panoramagp3/SensorFusion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final SensorSynchronizedObject:Ljava/lang/Object;


# instance fields
.field public camera_rotation:I

.field public final mAllValueList:Ljava/util/ArrayList;

.field public mMode:I

.field public mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

.field public final mPartOfAccelerometerList:Ljava/util/ArrayList;

.field public final mPartOfGyroscopeList:Ljava/util/ArrayList;

.field public final mPartOfMagneticFieldList:Ljava/util/ArrayList;

.field public final mPartOfRotationVectorList:Ljava/util/ArrayList;

.field public final mSensorMatrix:[[D

.field public final mStock:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->SensorSynchronizedObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->camera_rotation:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mStock:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v2, [[D

    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    :goto_1
    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/16 v2, 0x9

    new-array v2, v2, [D

    fill-array-data v2, :array_0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-direct {v0}, Lcom/morphoinc/core/MorphoSensorFusion;-><init>()V

    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v0}, Lcom/morphoinc/core/MorphoSensorFusion;->initialize()I

    move-result p0

    if-eqz p0, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "MorphoSensorFusion.initialize error ret:0x%08X"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SensorFusion"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;

    iget-wide v4, v4, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;

    iget-object v6, v6, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;->mValues:[D

    invoke-direct {v3, v4, v5, v6}, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;-><init>(J[D)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-object v1
.end method


# virtual methods
.method public final clearStockData()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mStock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isUpdateSensorMatrix()Z
    .locals 5

    sget-object v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->SensorSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    if-eq v1, v3, :cond_9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    move v2, v3

    :cond_2
    and-int p0, v1, v2

    monitor-exit v0

    return p0

    :cond_3
    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    move v2, v3

    :cond_5
    and-int p0, v1, v2

    monitor-exit v0

    return p0

    :cond_6
    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    move v2, v3

    :cond_8
    and-int p0, v1, v2

    monitor-exit v0

    return p0

    :cond_9
    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    move v2, v3

    :cond_a
    monitor-exit v0

    return v2

    :cond_b
    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v3

    goto :goto_3

    :cond_c
    move v1, v2

    :goto_3
    iget-object v4, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    move v4, v3

    goto :goto_4

    :cond_d
    move v4, v2

    :goto_4
    and-int/2addr v1, v4

    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    move v2, v3

    :cond_e
    and-int p0, v1, v2

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    sget-object v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->SensorSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {v1, v2, v3, v4}, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;-><init>(J[F)V

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    const/16 v2, 0xf

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->camera_rotation:I

    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    iget-object p1, v1, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;->mValues:[D

    aget-wide v4, p1, v3

    neg-double v4, v4

    aput-wide v4, p1, v3

    aget-wide v4, p1, v2

    neg-double v4, v4

    aput-wide v4, p1, v2

    :cond_2
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x200

    if-le p1, v1, :cond_5

    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_6

    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_7

    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_8

    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setInputSensorData(I[Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {p0, p2, p1}, Lcom/morphoinc/core/MorphoSensorFusion;->setSensorData([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final updateSensorMatrix()I
    .locals 12

    sget-object v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->SensorSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mStock:Z

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->setInputSensorData(I[Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "SensorFusion"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "SensorFusion.setSensorData(SENSOR_TYPE_GYROSCOPE) error ret:0x%08X"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v8

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->setInputSensorData(I[Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "SensorFusion"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SensorFusion.setSensorData(SENSOR_TYPE_ACCELEROMETER) error ret:0x%08X"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v3}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->setInputSensorData(I[Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "SensorFusion"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SensorFusion.setSensorData(SENSOR_TYPE_MAGNETIC_FIELD) error ret:0x%08X"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v4}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->setInputSensorData(I[Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "SensorFusion"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SensorFusion.setSensorData(SENSOR_TYPE_ROTATION_VECTOR) error ret:0x%08X"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v1}, Lcom/morphoinc/core/MorphoSensorFusion;->calc()I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    aget-object v2, v2, v7

    invoke-virtual {v1, v7, v2}, Lcom/morphoinc/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    aget-object v2, v2, v8

    invoke-virtual {v1, v8, v2}, Lcom/morphoinc/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    iget-object p0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    aget-object p0, p0, v6

    invoke-virtual {v1, v6, p0}, Lcom/morphoinc/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    move-result p0

    or-int/2addr p0, v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
