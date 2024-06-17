.class public final Lcom/motorola/camera/panorama/PanoInitCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# instance fields
.field public final mPanoCameraInfo:Lcom/motorola/camera/panorama/PanoCameraInfo;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/PanoCameraInfo;Lcom/motorola/camera/panorama/PanoListener;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->mPanoCameraInfo:Lcom/motorola/camera/panorama/PanoCameraInfo;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;

    iget-object v0, v0, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoInitCallable;->mPanoCameraInfo:Lcom/motorola/camera/panorama/PanoCameraInfo;

    monitor-enter v0

    :try_start_1
    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-direct {v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget-object v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mImageFormat:Ljava/lang/String;

    iput-object v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_format:Ljava/lang/String;

    iput-object v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_format:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget-object v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleH:F

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovx:D

    iget v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleV:F

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovy:D

    iget v2, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mCameraOrientation:I

    iput v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    iget v3, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDisplayRotation:I

    iget v4, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDeviceOrientation:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    iput v3, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    sget-object v2, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_GOAL_ANGLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->goal_angle:D

    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_ASPECT_RATION_GAIN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aspect_ratio_gain:D

    iget-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    invoke-static {v1, v2}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->initializeEngine(Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;)V

    new-instance v1, Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-direct {v1}, Lcom/motorola/camera/panorama/morpho/Settings;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-virtual {v0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->initSensorFusion()V

    invoke-virtual {v0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setupRoundSensorFusion()V

    iget p0, p0, Lcom/motorola/camera/panorama/PanoCameraInfo;->mCameraOrientation:I

    invoke-virtual {v0, p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setSensorFusionRotation(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->registerSensorListeners()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoInitCallable"

    return-object p0
.end method
