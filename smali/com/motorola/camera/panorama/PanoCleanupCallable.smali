.class public final Lcom/motorola/camera/panorama/PanoCleanupCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 7

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->deleteNativeOutputInfo()I

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->finish(Z)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v3, "MorphoEngine"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP3.finish error ret:0x%08X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v2, v6

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-boolean v0, v0, Lcom/motorola/camera/panorama/morpho/Settings;->use_gravity_sensor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->releaseSensorFusion()V

    iput-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iput-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v1}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoCleanupCallable"

    return-object p0
.end method
