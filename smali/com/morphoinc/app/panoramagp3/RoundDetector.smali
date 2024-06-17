.class public Lcom/morphoinc/app/panoramagp3/RoundDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final SynchronizedObject:Ljava/lang/Object;


# instance fields
.field public isLandscape:Z

.field public mAccelerometerValues:[F

.field public mCurrentDegreeLandscape:I

.field public mCurrentDegreePortrait:I

.field public mDirection:I

.field public mEndDegreeRange:Lcom/motorola/camera/fsm/ChangeEvent;

.field public final mI:[F

.field public final mInR:[F

.field public mIsEndOk:Z

.field public mMagneticValues:[F

.field public final mOutR:[F

.field public mStartDegree:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/fsm/ChangeEvent;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(II)V

    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mEndDegreeRange:Lcom/motorola/camera/fsm/ChangeEvent;

    const/4 v0, 0x1

    iput v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mInR:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mOutR:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mI:[F

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mMagneticValues:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mAccelerometerValues:[F

    return-void
.end method


# virtual methods
.method public final currentDegree()I
    .locals 1

    iget-boolean v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->isLandscape:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreeLandscape:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreePortrait:I

    :goto_0
    return p0
.end method

.method public detect()Z
    .locals 4

    sget-object v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mStartDegree:I

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p0

    if-lt v1, p0, :cond_1

    move v2, v3

    :cond_1
    monitor-exit v0

    return v2

    :cond_2
    iget v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mStartDegree:I

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p0

    if-gt v1, p0, :cond_3

    move v2, v3

    :cond_3
    monitor-exit v0

    return v2

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

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mMagneticValues:[F

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mAccelerometerValues:[F

    :goto_0
    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mMagneticValues:[F

    array-length v0, p1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mAccelerometerValues:[F

    array-length v2, v0

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mInR:[F

    iget-object v3, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mI:[F

    invoke-static {v2, v3, v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    const/4 p1, 0x3

    new-array v0, p1, [F

    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mInR:[F

    const/16 v3, 0x81

    iget-object v4, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mOutR:[F

    invoke-static {v2, p1, v3, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-object v2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mOutR:[F

    invoke-static {v2, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v2, 0x0

    aget v3, v0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    if-gez v3, :cond_3

    add-int/lit16 v3, v3, 0x168

    :cond_3
    iget-object v4, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mInR:[F

    iget-object v5, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mOutR:[F

    invoke-static {v4, v1, p1, v5}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mOutR:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget p1, v0, v2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    if-gez p1, :cond_4

    add-int/lit16 p1, p1, 0x168

    :cond_4
    sget-object v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput v3, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreeLandscape:I

    iput p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mCurrentDegreePortrait:I

    iget-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mEndDegreeRange:Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->contains(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public setStartPosition(IIFFZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->isLandscape:Z

    if-eqz p1, :cond_2

    float-to-int p1, p3

    goto :goto_2

    :cond_2
    float-to-int p1, p4

    :goto_2
    sget-object p3, Lcom/morphoinc/app/panoramagp3/RoundDetector;->SynchronizedObject:Ljava/lang/Object;

    monitor-enter p3

    const/16 p4, 0x168

    if-eqz p5, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p5

    goto :goto_4

    :cond_3
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p5

    add-int/lit8 v2, p1, -0x14

    add-int/2addr v2, p5

    if-gez v2, :cond_5

    add-int/2addr v2, p4

    :cond_4
    :goto_3
    move p5, v2

    goto :goto_4

    :cond_5
    if-ge p4, v2, :cond_4

    add-int/lit16 v2, v2, -0x168

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result p5

    add-int/lit8 v2, p1, -0x14

    sub-int/2addr p5, v2

    if-gez p5, :cond_7

    add-int/2addr p5, p4

    goto :goto_4

    :cond_7
    if-ge p4, p5, :cond_8

    add-int/lit16 p5, p5, -0x168

    :cond_8
    :goto_4
    if-eqz p2, :cond_a

    if-eq p2, v0, :cond_9

    iput-boolean v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    new-instance p1, Lcom/motorola/camera/fsm/ChangeEvent;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(II)V

    iput-object p1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mEndDegreeRange:Lcom/motorola/camera/fsm/ChangeEvent;

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_a

    :cond_9
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p5, v0

    goto :goto_5

    :cond_a
    add-int v0, p5, p1

    :goto_5
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    if-gez v0, :cond_b

    add-int/2addr v0, p4

    goto :goto_6

    :cond_b
    if-ge p4, v0, :cond_c

    add-int/lit16 v0, v0, -0x168

    :cond_c
    :goto_6
    if-gez p1, :cond_d

    add-int/2addr p1, p4

    goto :goto_7

    :cond_d
    if-ge p4, p1, :cond_e

    add-int/lit16 p1, p1, -0x168

    :cond_e
    :goto_7
    if-nez p2, :cond_10

    if-ge v0, p5, :cond_f

    goto :goto_8

    :cond_f
    move p4, v0

    :goto_8
    new-instance v0, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRangeLeft;

    invoke-direct {v0, p4, p1}, Lcom/morphoinc/app/panoramagp3/RoundDetector$LoopRangeLeft;-><init>(II)V

    goto :goto_9

    :cond_10
    if-ge p5, p1, :cond_11

    move p1, v1

    :cond_11
    new-instance p4, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {p4, v0, p1}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(II)V

    move-object v0, p4

    :goto_9
    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mEndDegreeRange:Lcom/motorola/camera/fsm/ChangeEvent;

    iput p2, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    iput p5, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mStartDegree:I

    iput-boolean v1, p0, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mIsEndOk:Z

    monitor-exit p3

    return-void

    :goto_a
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
