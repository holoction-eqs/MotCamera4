.class public final Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;
.super Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
.source "SourceFile"


# instance fields
.field public mCaptureTone:Landroid/media/MediaActionSound;

.field public mGainDetectImageReader:Landroid/media/ImageReader;

.field public mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

.field public mIsCliDisplay:Z

.field public mPanoAttachImage:Lkotlin/DeepRecursiveFunction;

.field public mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

.field public mStillImageReader:Landroid/media/ImageReader;

.field public mYuvImageReader:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;-><init>()V

    new-instance v0, Lkotlin/DeepRecursiveFunction;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lkotlin/DeepRecursiveFunction;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPanoAttachImage:Lkotlin/DeepRecursiveFunction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    return-void
.end method

.method public static getWideSelfieImageData(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/media/ImageReader;[Landroid/graphics/Rect;Ljava/lang/String;)Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;
    .locals 10

    const-string v0, " ImageReader#acquireNextImage() is null."

    const-string v1, "PanoramaMode"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-static {p1}, Lcom/motorola/camera/utility/AndroidImageUtils;->getCompactNV21ByteArrayFromYUV_420_888(Landroid/media/Image;)[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v4, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    const-string v0, " exception: "

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_3

    return-object v2

    :cond_3
    sget v8, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string p1, "WIDE_SELFIE_ROTATION_X"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    const-string p1, "WIDE_SELFIE_ROTATION_Y"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    const-string p1, "PANO_SELFIE_IMAGE_ID"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object p1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v0, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mRequestNum:I

    if-lt p3, v0, :cond_4

    if-lez v0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget p1, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mProcessedNum:I

    if-le p3, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    move-object v3, p0

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;-><init>([BFFII[Landroid/graphics/Rect;)V

    return-object p0

    :cond_4
    return-object v2
.end method

.method public static setupAeFps(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->PANORAMA_CAPTURE_FPS_24:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Range;

    if-eqz p2, :cond_2

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    array-length p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static setupImageQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {p0, v1}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    :goto_0
    new-instance v0, Lcom/motorola/camera/StreamRequest;

    invoke-static {p0}, Lkotlin/collections/ArraysUtilJVM;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/StreamRequest;-><init>(FLandroid/util/Size;)V

    return-object v0
.end method

.method public final onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mYuvImageReader:Landroid/media/ImageReader;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mYuvImageReader:Landroid/media/ImageReader;

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mStillImageReader:Landroid/media/ImageReader;

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public final onCreateCaptureRequests(Ljava/util/ArrayList;Z)V
    .locals 2

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupYuvImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isPanoAutoExMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupStillImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupGainDetectImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupYuvImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupStillImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public final onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/MediaActionSound;->load(I)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method

.method public final onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
    .locals 9

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-static {p3}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupImageQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isFocusModeAuto()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object v4, v3

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :goto_0
    invoke-virtual {p3, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string v0, "PANO_SENSOR_EXPOSURE_TIME"

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "PANO_SENSOR_SENSITIVITY"

    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_1

    if-lez v0, :cond_1

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v4, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/motorola/camera/panorama/PanoHelper;->PANO_SENSOR_FRAME_DURATION:Ljava/lang/Long;

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_PANO_SHOT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoExpAdj:F

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_PANO_EXP_ADJUSTMENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v4, p3, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoMaxGain:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_PANO_MAX_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v4, p3, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->PANORAMA_CAPTURE_FPS_24:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    filled-new-array {v2}, [I

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->CS_KEY_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v4, v0, p3, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p3, v2}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupAeFps(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :goto_2
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->GAIN_DETECT:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupImageQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_7
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    const/16 p2, 0x11

    invoke-static {p1, p3, p2, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    return-void
.end method

.method public final onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 7

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result p0

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    const/16 v1, 0x9

    if-eqz p0, :cond_3

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupImageQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isFocusModeAuto()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, p0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v5, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->PANORAMA_CAPTURE_FPS_24:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    filled-new-array {v3}, [I

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->CS_KEY_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v6, p0, v0, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->setupAeFps(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_4
    :goto_2
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    const/16 p1, 0x11

    invoke-static {p0, v0, p1, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    return-void
.end method

.method public final onSurfaceKeysRequired()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {p0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result p0

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->GAIN_DETECT:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v1, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isPanoAutoExMode()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p0

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v1, v4}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v1, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {p0, v1, v4}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public final onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaActionSound;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLockedBut(Ljava/util/List;)V

    return-void
.end method

.method public final processFrames(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;

    invoke-direct {v4, v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;-><init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;Z)V

    invoke-virtual {v3, v4}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    new-instance v2, Lcom/motorola/camera/PermissionCallback;

    const/4 v4, 0x1

    invoke-direct {v2, p1, v4}, Lcom/motorola/camera/PermissionCallback;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    new-instance p1, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;

    invoke-direct {p1, v0, v1, v2}, Lcom/motorola/camera/panorama/WideSelfieStitchImageCallable;-><init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;Lcom/motorola/camera/PermissionCallback;)V

    invoke-virtual {v3, p1}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    :cond_0
    return-void
.end method

.method public final setupGainDetectImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 10

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    invoke-static {v1, v2}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    :goto_0
    move-object v7, v1

    const/16 v1, 0x140

    int-to-float v3, v1

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    and-int/lit8 v3, v3, -0x2

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-static {v5, v2}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v3}, Landroid/util/Size;-><init>(II)V

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getStreamConfigurationMap(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v3

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-ne v8, v1, :cond_3

    move-object v2, v6

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->GAIN_DETECT:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v3, 0x3

    invoke-static {v2, v4, v3, v1, v8}, Lkotlin/UNINITIALIZED_VALUE;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v5}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_5
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mGainDetectImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    const/16 v9, 0x23

    move-object v3, v2

    move-object v4, v6

    move-object v5, v8

    move-object v6, p0

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final setupStillImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 9

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfiePictureSize(Z)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePictureSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    :goto_0
    move-object v5, v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v1, 0x23

    const/4 v4, 0x3

    invoke-static {v5, v1, v4, v0, v3}, Lkotlin/UNINITIALIZED_VALUE;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mStillImageReader:Landroid/media/ImageReader;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v1, p0, p1, v4}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mStillImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/16 v6, 0x23

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    const/4 p0, 0x0

    invoke-direct {v0, v7, v8, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final setupYuvImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 10

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mIsCliDisplay:Z

    invoke-static {v0, v1}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    :goto_0
    move-object v5, v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v1, 0x23

    const/4 v4, 0x3

    invoke-static {v5, v1, v4, v0, v3}, Lkotlin/UNINITIALIZED_VALUE;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mYuvImageReader:Landroid/media/ImageReader;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v1, p0, p1, v7}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mYuvImageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/16 v6, 0x23

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v0, v8, v9, v7}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
