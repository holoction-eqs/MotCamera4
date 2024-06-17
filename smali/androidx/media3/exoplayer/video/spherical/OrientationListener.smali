.class public final Landroidx/media3/exoplayer/video/spherical/OrientationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final angles:[F

.field public final deviceOrientationMatrix4x4:[F

.field public final display:Landroid/view/Display;

.field public final listeners:[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

.field public final recenterMatrix4x4:[F

.field public recenterMatrixComputed:Z

.field public final tempMatrix4x4:[F


# direct methods
.method public varargs constructor <init>(Landroid/view/Display;[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->display:Landroid/view/Display;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->listeners:[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object v1, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v5, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    const/16 v7, 0x81

    if-eq v1, v6, :cond_1

    const/16 v8, 0x82

    if-eq v1, v3, :cond_2

    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    move v7, v8

    move v8, v6

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    move v8, v7

    move v7, v3

    :cond_2
    :goto_0
    array-length v1, v5

    invoke-static {v2, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v7, v8, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    :cond_3
    const/16 v1, 0x83

    invoke-static {v2, v6, v1, v5}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-object v1, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    invoke-static {v5, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget v1, v1, v3

    iget-object v7, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    const/4 v8, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v13, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrixComputed:Z

    if-nez v3, :cond_4

    iget-object v3, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    invoke-static {v3, v13}, Lcom/motorola/camera/JsonConfig$CameraMapping;->computeRecenterMatrix([F[F)V

    iput-boolean v6, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrixComputed:Z

    :cond_4
    array-length v3, v5

    invoke-static {v13, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v14, 0x0

    iget-object v15, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    const/16 v16, 0x0

    iget-object v3, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    const/16 v18, 0x0

    move-object/from16 v17, v3

    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->listeners:[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

    array-length v3, v0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    invoke-interface {v5, v2, v1}, Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;->onOrientationChange([FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
