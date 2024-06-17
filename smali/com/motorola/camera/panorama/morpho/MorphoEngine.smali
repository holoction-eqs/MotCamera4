.class public final Lcom/motorola/camera/panorama/morpho/MorphoEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static sMorphoEngine:Lcom/motorola/camera/panorama/morpho/MorphoEngine;


# instance fields
.field public final mACMatrix:[D

.field public mAccelerometer:Landroid/hardware/Sensor;

.field public mCameraOrientation:I

.field public final mDateTaken:[J

.field public mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

.field public mGravities:[F

.field public final mGyroMatrix:[D

.field public mGyroscope:Landroid/hardware/Sensor;

.field public final mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

.field public mIsCapturing:Z

.field public mIsDirectionDecided:Z

.field public mIsSensorAverage:Z

.field public mMagnetic:Landroid/hardware/Sensor;

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

.field public final mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

.field public mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

.field public mPreviewBitmap:Landroid/graphics/Bitmap;

.field public mPreviewImageHeight:I

.field public mPreviewImageWidth:I

.field public final mRVMatrix:[D

.field public mRotationVector:Landroid/hardware/Sensor;

.field public mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

.field public mSensorCnt:I

.field public mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSettings:Lcom/motorola/camera/panorama/morpho/Settings;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    new-instance v0, Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroscope:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mAccelerometer:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRotationVector:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMagnetic:Landroid/hardware/Sensor;

    const/16 v1, 0x9

    new-array v2, v1, [D

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroMatrix:[D

    new-array v2, v1, [D

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRVMatrix:[D

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mACMatrix:[D

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;
    .locals 2

    const-class v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->sMorphoEngine:Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    invoke-direct {v1}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;-><init>()V

    sput-object v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->sMorphoEngine:Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    :cond_0
    sget-object v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->sMorphoEngine:Lcom/motorola/camera/panorama/morpho/MorphoEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeEngine(Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;)V
    .locals 4

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->createNativeOutputInfo()I

    move-result v0

    const-string v1, "MorphoEngine"

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "MorphoPanoramaGP3.createNativeOutputInfo error ret:0x%08X"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->initialize(Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;)I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "MorphoPanoramaGP3.initialize error ret:0x%08X"

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final applySettings()V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    const/16 v1, 0x7e90

    iput v1, v0, Lcom/motorola/camera/panorama/morpho/Settings;->calcseam_pixnum:I

    sget-object v1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoDistortions:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    iput-wide v4, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k1:D

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    iput-wide v4, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k2:D

    const/4 v4, 0x2

    aget-wide v4, v2, v4

    iput-wide v4, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k3:D

    const/4 v4, 0x3

    aget-wide v4, v2, v4

    iput-wide v4, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k4:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v0, Lcom/motorola/camera/panorama/morpho/Settings;->draw_threshold:D

    iget-wide v4, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoRotationRatio:D

    iput-wide v4, v0, Lcom/motorola/camera/panorama/morpho/Settings;->rotation_ratio:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v0, Lcom/motorola/camera/panorama/morpho/Settings;->seamsearch_ratio:D

    const-wide/high16 v6, 0x401e000000000000L    # 7.5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x200

    iput v2, v0, Lcom/motorola/camera/panorama/morpho/Settings;->unsharp_strength:I

    const-wide v8, 0x3fee666666666666L    # 0.95

    iput-wide v8, v0, Lcom/motorola/camera/panorama/morpho/Settings;->zrotation_coeff:D

    iget v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoNoiseReductionLevel:I

    iput v1, v0, Lcom/motorola/camera/panorama/morpho/Settings;->noise_reduction_level:I

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v0, v6, v7}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setShrinkRatio(D)I

    move-result v0

    const-string v1, "MorphoEngine"

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "MorphoPanoramaGP3.setShrinkRatio error ret:0x%08X"

    invoke-static {v2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v2, v2, Lcom/motorola/camera/panorama/morpho/Settings;->calcseam_pixnum:I

    invoke-virtual {v0, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setCalcseamPixnum(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "MorphoPanoramaGP3.setCalcseamPixnum error ret:0x%08X"

    invoke-static {v2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setUseDeform(Z)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "MorphoPanoramaGP3.setUseDeform error ret:0x%08X"

    invoke-static {v2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setUseLuminanceCorrection(Z)I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "MorphoPanoramaGP3.setUseLuminanceCorrection error ret:0x%08X"

    invoke-static {v2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-wide v6, v2, Lcom/motorola/camera/panorama/morpho/Settings;->seamsearch_ratio:D

    invoke-virtual {v0, v6, v7}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setSeamsearchRatio(D)I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "MorphoPanoramaGP3.setSeamsearchRatio error ret:0x%08X"

    invoke-static {v2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-wide v6, v2, Lcom/motorola/camera/panorama/morpho/Settings;->zrotation_coeff:D

    invoke-virtual {v0, v6, v7}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setZrotationCoeff(D)I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "MorphoPanoramaGP3.setZrotationCoeff error ret:0x%08X"

    invoke-static {v2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-wide v6, v2, Lcom/motorola/camera/panorama/morpho/Settings;->draw_threshold:D

    invoke-virtual {v0, v6, v7}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setDrawThreshold(D)I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "MorphoPanoramaGP3.setDrawThreshold error ret:0x%08X"

    invoke-static {v2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v2, v2, Lcom/motorola/camera/panorama/morpho/Settings;->unsharp_strength:I

    invoke-virtual {v0, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setUnsharpStrength(I)I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "MorphoPanoramaGP3.setUnsharpStrength error ret:0x%08X"

    invoke-static {v2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setAovGain(D)I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "MorphoPanoramaGP3.setAovGain error ret:0x%08X"

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v4, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-wide v5, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k1:D

    iget-wide v7, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k2:D

    iget-wide v9, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k3:D

    iget-wide v11, v0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k4:D

    invoke-virtual/range {v4 .. v12}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setDistortionCorrectionParam(DDDD)I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "MorphoPanoramaGP3.setDistortionCorrectionParam error ret:0x%08X"

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-wide v4, v2, Lcom/motorola/camera/panorama/morpho/Settings;->rotation_ratio:D

    invoke-virtual {v0, v4, v5}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setRotationRatio(D)I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "MorphoPanoramaGP3.setRotationRatio error ret:0x%08X"

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setSensorUseMode(I)I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "MorphoPanoramaGP3.setSensorUseMode error ret:0x%08X"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v2, v2, Lcom/motorola/camera/panorama/morpho/Settings;->projection_mode:I

    invoke-virtual {v0, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setProjectionMode(I)I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "MorphoPanoramaGP3.setProjectionMode error ret:0x%08X"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v2, v2, Lcom/motorola/camera/panorama/morpho/Settings;->motion_detection_mode:I

    invoke-virtual {v0, v2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setMotionDetectionMode(I)I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "MorphoPanoramaGP3.setMotionDetectionMode error ret:0x%08X"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget p0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->noise_reduction_level:I

    invoke-virtual {v0, p0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setNoiseReductionParam(I)I

    move-result p0

    if-eqz p0, :cond_e

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "MorphoPanoramaGP3.setNoiseReductionParam error ret:0x%08X"

    invoke-static {v0, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final createDirection(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v3, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0x5a

    if-eq v3, v8, :cond_9

    const/16 v9, 0x10e

    if-ne v3, v9, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleV()I

    move-result v15

    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v8, :cond_2

    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v11, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v12, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v13, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v14, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/16 v17, 0x3

    move-object v10, v1

    move/from16 v16, v2

    invoke-direct/range {v10 .. v17}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto/16 :goto_2

    :cond_2
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v11, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v12, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v13, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v14, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/16 v17, 0x2

    move-object v10, v1

    move/from16 v16, v2

    invoke-direct/range {v10 .. v17}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleV()I

    move-result v1

    iget v3, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    new-instance v11, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v4, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v6, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v9, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    if-ne v3, v8, :cond_4

    const/4 v10, 0x2

    move-object v3, v11

    move v8, v1

    invoke-direct/range {v3 .. v10}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto :goto_0

    :cond_4
    const/4 v10, 0x3

    move-object v3, v11

    move v8, v1

    invoke-direct/range {v3 .. v10}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    :goto_0
    iput-object v11, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    goto/16 :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleH()I

    move-result v17

    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v8, :cond_6

    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v13, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v14, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v15, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v3, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/16 v19, 0x1

    move-object v12, v1

    move/from16 v16, v3

    move/from16 v18, v2

    invoke-direct/range {v12 .. v19}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto/16 :goto_2

    :cond_6
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v13, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v14, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v15, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v3, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/16 v19, 0x0

    move-object v12, v1

    move/from16 v16, v3

    move/from16 v18, v2

    invoke-direct/range {v12 .. v19}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleH()I

    move-result v9

    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v8, :cond_8

    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v6, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v8, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v10, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto/16 :goto_2

    :cond_8
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v6, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v8, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v10, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/4 v11, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto/16 :goto_2

    :cond_9
    :goto_1
    if-eq v1, v7, :cond_10

    if-eq v1, v6, :cond_e

    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_a

    goto/16 :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleH()I

    move-result v17

    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v8, :cond_b

    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v13, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v14, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v15, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v3, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/16 v19, 0x1

    move-object v12, v1

    move/from16 v16, v3

    move/from16 v18, v2

    invoke-direct/range {v12 .. v19}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto/16 :goto_2

    :cond_b
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v13, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v14, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v15, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v3, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/16 v19, 0x0

    move-object v12, v1

    move/from16 v16, v3

    move/from16 v18, v2

    invoke-direct/range {v12 .. v19}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleH()I

    move-result v9

    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v8, :cond_d

    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v6, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v8, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v10, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto/16 :goto_2

    :cond_d
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v6, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v8, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v10, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/4 v11, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto :goto_2

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleV()I

    move-result v17

    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v8, :cond_f

    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v13, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v14, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v15, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v3, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/16 v19, 0x2

    move-object v12, v1

    move/from16 v16, v3

    move/from16 v18, v2

    invoke-direct/range {v12 .. v19}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto :goto_2

    :cond_f
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v13, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v14, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v15, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v3, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v2, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/16 v19, 0x3

    move-object v12, v1

    move/from16 v16, v3

    move/from16 v18, v2

    invoke-direct/range {v12 .. v19}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto :goto_2

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getScaleV()I

    move-result v9

    iget v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    if-ne v1, v8, :cond_11

    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v6, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v8, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v10, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/4 v11, 0x3

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    goto :goto_2

    :cond_11
    new-instance v1, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v5, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v6, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    iget v7, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v8, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget v10, v2, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    const/4 v11, 0x2

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIII)V

    :goto_2
    iput-object v1, v0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    :goto_3
    return-void
.end method

.method public final declared-synchronized getMaxOutputSize([I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    const/4 v1, 0x0

    aput v0, p1, v1

    iget v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    const/4 v1, 0x1

    aput v0, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getPreviewImage()Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->updatePreviewImage(Landroid/graphics/Bitmap;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "MorphoEngine"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "mMorphoPanoramaGP3.updatePreviewImage error ret:0x%08X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getScaleH()I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v1, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v2, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    invoke-static {v1, v2}, Lcom/motorola/camera/panorama/PanoHelper;->getDisplaySize(II)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget p0, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    invoke-static {v2, p0}, Lcom/motorola/camera/panorama/PanoHelper;->getDisplaySize(II)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    div-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getScaleV()I
    .locals 3

    iget v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v1, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget v2, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    invoke-static {v1, v2}, Lcom/motorola/camera/panorama/PanoHelper;->getDisplaySize(II)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_width:I

    iget p0, p0, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->input_height:I

    invoke-static {v2, p0}, Lcom/motorola/camera/panorama/PanoHelper;->getDisplaySize(II)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    div-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final initSensorFusion()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroscope:Landroid/hardware/Sensor;

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mAccelerometer:Landroid/hardware/Sensor;

    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRotationVector:Landroid/hardware/Sensor;

    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iput-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMagnetic:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v1, v1, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    monitor-enter v0

    :try_start_0
    iput v1, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMode:I

    iget-object v3, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v3, v1}, Lcom/morphoinc/core/MorphoSensorFusion;->setMode(I)I

    move-result v1

    const/4 v3, 0x0

    or-int/2addr v1, v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_5

    const-string v0, "MorphoEngine"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SensorFusion.setMode error ret:0x%08X"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v0, v3}, Lcom/morphoinc/core/MorphoSensorFusion;->setOffsetMode(I)I

    move-result v0

    or-int/2addr v0, v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_6

    const-string v1, "MorphoEngine"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SensorFusion.setOffsetMode error ret:0x%08X"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v0, v2}, Lcom/morphoinc/core/MorphoSensorFusion;->setAppState(I)I

    move-result v0

    or-int/2addr v0, v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    const-string p0, "MorphoEngine"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "SensorFusion.setAppState error ret:0x%08X"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-boolean v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsSensorAverage:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGravities:[F

    aget v4, v0, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, p1, v2

    add-float/2addr v4, v5

    aput v4, v0, v2

    aget v2, v0, v3

    aget v4, p1, v3

    add-float/2addr v2, v4

    aput v2, v0, v3

    aget v2, v0, v1

    aget p1, p1, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    iget p1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorCnt:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorCnt:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGravities:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, p1, v2

    aput v4, v0, v2

    aget v2, p1, v3

    aput v2, v0, v3

    aget p1, p1, v1

    aput p1, v0, v1

    iput v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorCnt:I

    :goto_0
    return-void
.end method

.method public final registerSensorListeners()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsSensorAverage:Z

    iput v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorCnt:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGravities:[F

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-boolean v1, v1, Lcom/motorola/camera/panorama/morpho/Settings;->use_gravity_sensor:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v1, v1, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    monitor-enter v3

    :try_start_0
    iput v1, v3, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMode:I

    iget-object v4, v3, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v4, v1}, Lcom/morphoinc/core/MorphoSensorFusion;->setMode(I)I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {v3, v4, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v3, v3, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    if-ne v3, v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {v2, v3, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {v2, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final releaseSensorFusion()V
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    if-eqz p0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v0}, Lcom/morphoinc/core/MorphoSensorFusion;->finish()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SensorFusion"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MorphoSensorFusion.finish error ret:0x%08X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized saveOutputImage(I[I)Z
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "savePanorama360 ret = "

    const-string v2, "mMorphoPanoramaGP3.createOutputImage error ret:"

    monitor-enter p0

    :try_start_0
    iget-object v3, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v5, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const-string v0, "MorphoEngine"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "mMorphoPanoramaGP3.getClippingRect error ret:0x%08X"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v4

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eqz v8, :cond_6

    if-nez v9, :cond_2

    goto/16 :goto_1

    :cond_2
    aput v8, p2, v4

    aput v9, p2, v6

    iget-object v5, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v5, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->createOutputImage(Landroid/graphics/Rect;)I

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "MorphoEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v4

    :cond_3
    :try_start_3
    iget-object v2, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    aget-wide v2, v2, v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    iget-object v2, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    aget-wide v2, v2, v6

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v2, v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$GalleryInfoData;

    invoke-direct {v14}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$GalleryInfoData;-><init>()V

    iget-object v7, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    const/4 v13, 0x0

    const/4 v15, 0x0

    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->PANORAMA_360_VIEW_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v2

    xor-int/2addr v2, v6

    if-eqz v2, :cond_4

    iget v2, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v3, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    if-le v2, v3, :cond_4

    move/from16 v16, v6

    goto :goto_0

    :cond_4
    move/from16 v16, v4

    :goto_0
    move/from16 v10, p1

    invoke-virtual/range {v7 .. v16}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->savePanorama360(IIILjava/lang/String;Ljava/lang/String;ZLcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$GalleryInfoData;ZZ)I

    move-result v2

    if-eqz v2, :cond_5

    const-string v3, "PanoramaGP3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v4

    :cond_5
    monitor-exit p0

    return v6

    :cond_6
    :goto_1
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setInitialRotationByGravity()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-boolean v0, v0, Lcom/motorola/camera/panorama/morpho/Settings;->use_gravity_sensor:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorCnt:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGravities:[F

    const/4 v2, 0x0

    aget v2, p0, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, p0, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget p0, p0, v4

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-double v4, v2

    float-to-double v6, v3

    float-to-double v8, p0

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setInitialRotationByGravity(DDD)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "MorphoPanoramaGP3.setInitialRotationByGravity error ret:0x%08X"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MorphoEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final declared-synchronized setPreviewImage(II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setPreviewImage(II)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "MorphoEngine"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MorphoPanoramaGP3.setPreviewImage error ret:0x%08X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSensorFusionRotation(I)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    if-eqz p0, :cond_3

    const/16 v0, 0x5a

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->camera_rotation:I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mMorphoSensorFusion:Lcom/morphoinc/core/MorphoSensorFusion;

    invoke-virtual {v0, p1}, Lcom/morphoinc/core/MorphoSensorFusion;->setRotation(I)I

    move-result p1

    or-int/2addr p1, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    const-string p0, "MorphoEngine"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "SensorFusion.setRotation error ret:0x%08X"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final setSensorFusionValue()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v1, v1, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    const/4 v1, 0x4

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroMatrix:[D

    iget-object v4, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRVMatrix:[D

    iget-object v5, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mACMatrix:[D

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->isUpdateSensorMatrix()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->updateSensorMatrix()I

    move-result v6

    or-int/2addr v6, v7

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    if-eqz v3, :cond_1

    iget-object v8, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    aget-object v8, v8, v7

    array-length v9, v8

    invoke-static {v8, v7, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v3, 0x3

    if-eqz v4, :cond_2

    iget-object v8, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    aget-object v8, v8, v3

    array-length v9, v8

    invoke-static {v8, v7, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 v4, 0x1

    if-eqz v5, :cond_3

    iget-object v8, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mSensorMatrix:[[D

    aget-object v8, v8, v4

    array-length v9, v8

    invoke-static {v8, v7, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-boolean v5, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mStock:Z

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v1, v5, :cond_4

    move v5, v7

    :goto_1
    iget-object v8, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    iget-object v8, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    aput v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_5

    const-string v0, "MorphoEngine"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SensorFusion.getSensorMatrix error ret:0x%08X"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v5, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mStock:Z

    if-eqz v5, :cond_6

    monitor-enter v0

    :try_start_1
    iget-object v2, v0, Lcom/morphoinc/app/panoramagp3/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v0, v0, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-array v2, v3, [Lcom/morphoinc/core/MorphoSensorFusion$SensorData;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/morphoinc/core/MorphoSensorFusion$SensorData;

    invoke-virtual {v0, v1}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setGyroscopeData([Lcom/morphoinc/core/MorphoSensorFusion$SensorData;)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "MorphoEngine"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MorphoPanoramaGP3.setGyroscopeData error ret:0x%08X"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    if-ne v0, v1, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    iget-object v0, v0, Lcom/morphoinc/core/MorphoSensorFusion$SensorData;->mValues:[D

    invoke-virtual {v1, v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setRotationVector([D)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "MorphoEngine"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MorphoPanoramaGP3.setRotationVector error ret:0x%08X"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorFusion:Lcom/morphoinc/app/panoramagp3/SensorFusion;

    invoke-virtual {p0}, Lcom/morphoinc/app/panoramagp3/SensorFusion;->clearStockData()V

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_9
    :goto_4
    return-void
.end method

.method public final setupRoundSensorFusion()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget v0, v0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end_sensor_mode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMagnetic:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/GyroscopeRoundDetector;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-direct {v0}, Lcom/morphoinc/app/panoramagp3/RoundDetector;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    :cond_3
    :goto_0
    return-void
.end method
