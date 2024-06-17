.class public Lcom/motorola/camera/fsm/camera/modes/PhotoMode;
.super Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;


# static fields
.field public static final mMcfHolders:Ljava/util/HashMap;

.field public static final mMcfHoldersLock:Ljava/lang/Object;


# instance fields
.field public final mActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;

.field public final mAeSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

.field public final mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mFeatureLimiterListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda0;

.field public final mFgHandler:Landroid/os/Handler;

.field public final mFlashSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mHighResAutoSwitchAllowed:Z

.field public final mHighResAutoSwitchTurnOnRunnable:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

.field public final mHoldStillPopupListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

.field public mIsControlPanelOpened:Z

.field public final mJpegImageReaders:Ljava/util/ArrayList;

.field public final mMcfControlListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;

.field public final mMcfStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;

.field public mPreAe:I

.field public mPreZoom:F

.field public mPreviewImageReader:Landroid/media/ImageReader;

.field public mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

.field public final mSmartHighResSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

.field public mSubPreviewImageReader:Landroid/media/ImageReader;

.field public mSwitchToPhotoModeReminderOn:Z

.field public mToHighResFrameCnt:I

.field public mToNormalResFrameCnt:I

.field public mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

.field public final mZoomSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFgHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreZoom:F

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreAe:I

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchTurnOnRunnable:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSmartHighResSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mZoomSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mAeSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFlashSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHoldStillPopupListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfControlListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFeatureLimiterListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static checkCreateRawStream(Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;ILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRawStreamNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p9, :cond_1

    move-object/from16 v1, p9

    goto :goto_0

    :cond_1
    move-object/from16 v1, p8

    :goto_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda4;

    const/4 v5, 0x1

    move-object/from16 v6, p4

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getSensorRawMaxResolution(Ljava/lang/String;)Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    :cond_2
    move-object/from16 v6, p4

    :cond_3
    move-object v7, v6

    :goto_1
    sget-object v15, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->RAW_SENSOR:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-nez v1, :cond_4

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v11

    const/4 v13, 0x0

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mCameraMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v12, p5

    move-object/from16 v14, p6

    move-object/from16 v16, v1

    invoke-static/range {v8 .. v16}, Lcom/motorola/camera/mcf/Mcf;->createInputStream(Ljava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)Lcom/motorola/camera/mcf/McfInputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    :cond_4
    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    move/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v7, v3, v1, v2, v5}, Lkotlin/UNINITIALIZED_VALUE;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v9, 0x0

    const/16 v8, 0x20

    move-object v2, v0

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;IZ)V

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    move-object p0, p1

    :cond_0
    sget-object p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    :cond_3
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static closeMcfStreams()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->close()V

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mRawFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraTypes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ZOOM_SEGMENT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    :goto_0
    const-string p2, "CAMERA_TYPE"

    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "ORIGIN_CAMERA_TYPE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "IS_MANUAL_JUMP"

    const/4 p2, 0x1

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "IS_HIGH_RES_AUTO_SWITCH"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    instance-of p2, p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_1

    :cond_2
    instance-of p2, p1, Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1

    :cond_3
    instance-of p2, p1, Lcom/motorola/camera/Controller;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/motorola/camera/Controller;

    iget-object p1, p1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static highResAutoSwitchForSmoothSwitchCase(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->motionPhotosUpdateLock()V

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showHighResAutoSwitchToast(Z)V

    return-void
.end method

.method public static isAeOkForAutoHighResDetection()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFlashOkForAutoHighResDetection()Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isHdrOkForAutoHighResDetection()Z
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    return v1
.end method

.method public static isWithinPhysicalBackMainZoomRatioRange(F)Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/motorola/camera/utility/ZoomHelper;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    cmpg-float p0, v1, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static showHighResAutoSwitchToast(Z)V
    .locals 3

    const v0, 0x7f12059a

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public static showSwitchToPhotoModeReminder(Z)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_SWITCH_PHOTO_REMINDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const v0, 0x7f1205b3

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAutoHide:Z

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final areAllOkForAutoHighResDetection()Z
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isZoomOkForAutoHighResDetection$1()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isAeOkForAutoHighResDetection()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isHdrOkForAutoHighResDetection()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isFlashOkForAutoHighResDetection()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getFullFrameExposureCompensation(Ljava/lang/String;)I
    .locals 1

    sget-object p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameExposureCompensation:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mPreviewFullFrameSkipCount:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;
    .locals 2

    new-instance p0, Lcom/motorola/camera/StreamRequest;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/VideoFormat;

    iget-object v0, v0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    :goto_0
    invoke-static {v0}, Lkotlin/collections/ArraysUtilJVM;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/StreamRequest;-><init>(FLandroid/util/Size;)V

    return-object p0
.end method

.method public final getSlavePreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public final getSubPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PhotoMode"

    return-object p0
.end method

.method public final isPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    const-string p1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, p1}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isZoomOkForAutoHighResDetection$1()Z
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isPhysicalIdBackMain(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v0, p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-virtual {v1, v2, v2}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v2}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2, v2}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    :cond_4
    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStreams()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public onCreateCaptureRequests(Ljava/util/ArrayList;Z)V
    .locals 3

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    invoke-direct {p2, v0, v0, v0}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    invoke-direct {p2, p0, v0, v0}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v1, 0x3

    invoke-direct {p2, v1, p0, v0}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p2, v1, v0, v2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    const/16 v1, 0x8

    invoke-direct {p2, v1, v0, v2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x7

    invoke-direct {p2, v0, p0, v2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    const/4 v5, 0x0

    if-nez v4, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCameraPreviewProcessingNeeded()Z

    move-result v6

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v14

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v15, v7

    check-cast v15, Landroid/util/Size;

    sget-object v16, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-static {v15, v4, v6}, Lkotlin/UNINITIALIZED_VALUE;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v6

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    new-instance v6, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v9

    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v11

    const/16 v17, 0x23

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v10, v16

    move-wide/from16 v18, v2

    move-object v2, v12

    move-object v12, v15

    move-object v3, v13

    move/from16 v13, v17

    invoke-direct/range {v7 .. v13}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v6, v3, v2, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v15, v4, v2}, Lkotlin/UNINITIALIZED_VALUE;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v9

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v11

    const/16 v13, 0x23

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_3

    :cond_0
    move-wide/from16 v18, v2

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v15, v4, v3}, Lkotlin/UNINITIALIZED_VALUE;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    new-instance v6, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v11

    const/16 v3, 0x23

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v10, v16

    move-object/from16 v20, v12

    move-object v12, v15

    move-object/from16 v16, v2

    move-object v2, v13

    move v13, v3

    invoke-direct/range {v7 .. v13}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    move-object/from16 v3, v20

    invoke-direct {v6, v2, v3, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v9, v3

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v15, v4, v3}, Lkotlin/UNINITIALIZED_VALUE;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v11

    const/16 v13, 0x23

    move-object v7, v6

    move-object v8, v14

    move-object/from16 v10, v16

    move-object v12, v15

    invoke-direct/range {v7 .. v13}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v4, v2, v6, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v9, v2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v15, v4, v2}, Lkotlin/UNINITIALIZED_VALUE;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v11

    const/16 v13, 0x23

    move-object v7, v6

    move-object v8, v14

    move-object/from16 v10, v16

    move-object v12, v15

    invoke-direct/range {v7 .. v13}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v4, v3, v6, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    :goto_2
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_3

    :cond_4
    move-wide/from16 v18, v2

    const-string v2, "PhotoMode"

    const-string v3, "preview surface not released!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    if-nez v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaRawImageFormat()I

    move-result v11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v11, v4, v2, v3}, Lkotlin/UNINITIALIZED_VALUE;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Landroidx/work/Configuration$Builder;

    invoke-direct {v8, v6}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v6, v6, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8, v6}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v13, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v6, v6, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    move-object v6, v13

    move-object v8, v3

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v2, v12, v13, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_8

    :cond_6
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    const/4 v6, 0x4

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v6, 0x6

    :goto_5
    new-instance v7, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;Lcom/motorola/camera/fsm/camera/FsmContext;IZ)V

    invoke-static {v7}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_8

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    goto :goto_6

    :cond_b
    move v2, v5

    :goto_6
    if-eqz v2, :cond_c

    :goto_7
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_c
    :goto_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getSensorRawMaxResolution(Ljava/lang/String;)Lcom/motorola/camera/PreviewSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v10

    const/16 v6, 0x20

    invoke-static {v10, v6, v4, v2, v3}, Lkotlin/UNINITIALIZED_VALUE;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    new-instance v6, Landroidx/work/Configuration$Builder;

    invoke-direct {v6, v7}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v8, v8, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v8}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v13, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mRawImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v6, v6, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    const/16 v11, 0x20

    move-object v6, v13

    move-object v8, v3

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v2, v12, v13, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFgHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfControlListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;

    invoke-static {v3, v2}, Lcom/motorola/camera/mcf/Mcf;->setControlListener(Lcom/motorola/camera/mcf/Mcf$OnControlListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    goto :goto_9

    :cond_e
    invoke-virtual {v0, v1, v2, v6, v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    :goto_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->AUX:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager;->mPhysicalCameraMap:Ljava/util/EnumMap;

    invoke-virtual {v7, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_f

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/motorola/camera/settings/CameraType;

    :cond_f
    invoke-virtual {v0, v1, v2, v6, v5}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    goto :goto_a

    :cond_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6, v5}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V

    goto :goto_a

    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v10

    if-nez v10, :cond_12

    goto :goto_a

    :cond_12
    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v3, 0x23

    const/16 v4, 0x8

    invoke-static {v10, v3, v4, v2, v8}, Lkotlin/UNINITIALIZED_VALUE;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    new-instance v3, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v3, v5}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mYuvImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v6, v6, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    const/16 v11, 0x23

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_13
    :goto_a
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreateSessionSurfaces dur:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, v3, v18

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 6

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mAeSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SMART_HIGH_RES:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSmartHighResSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v1, v5}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mZoomSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v1, v5}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFlashSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResAutoSwitchEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->startHighResAutoSwitchDetection()V

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showHighResAutoSwitchToast(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->motionPhotosUpdateLock()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->HOLD_STILL_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHoldStillPopupListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mIsControlPanelOpened:Z

    :cond_6
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFeatureLimiterListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda0;

    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->registerListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    sget-object p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MOTION_PHOTOS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1, v4}, Lcom/motorola/camera/settings/SettingsManager;->setPermanentLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION_SLV:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT_SLV:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMacroCameraWithWide(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getZoomForMacroCameraWithWide()F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1, p0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    :cond_a
    return-void
.end method

.method public onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
    .locals 12

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-boolean v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mIsMaster:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v0

    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, p2, v10}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/motorola/camera/settings/CameraType;->isOfflineReproc()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v8, v0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    iget-object v7, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v9, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTargetWithPhysicalCamera(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, v10}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    invoke-static {p1, p2, v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_5
    :goto_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_7
    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_3

    :cond_8
    invoke-static {v5, p1, p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureWhiteBalance(ILcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    iget v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    if-nez v0, :cond_9

    invoke-static {v5, v6, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setNoiseReduction(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v5, v6, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEdgeMode(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v7, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegThumbnailSize()Landroid/util/Size;

    move-result-object v0

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v7, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {v4, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setStillFlip(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v6, p0, p1, v5, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAeFpsRange(ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/String;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setOIS(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {v5, v0, p0, v6}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAiCameraMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SESSION_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v5

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v5, p0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "QCFA_SHOT"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_c

    iget-boolean v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mFromMcf:Z

    if-eqz v1, :cond_d

    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeMcfShotOnly()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DO_REMOSAIC"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mMcfFinalReproc:Z

    if-nez v0, :cond_e

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    move v0, v5

    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_6

    :cond_f
    move v1, v5

    :goto_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    move v1, v2

    goto :goto_7

    :cond_10
    move v1, v5

    :goto_7
    iget-object v6, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v7

    invoke-static {v6, p0, v1, v7}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMfnr(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;ZZ)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte v0, v0

    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_DO_SW_REMOSAIC_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v6, v1, p0, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_8
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-boolean v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mMcfFinalReproc:Z

    xor-int/2addr v1, v2

    invoke-static {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setQcfaDoRemosaic(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_9

    :cond_12
    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setQcfaDoRemosaic(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_13

    invoke-static {v0, p1}, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->applySceneTags(Lcom/motorola/camera/scenedetection/scene/Scene;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_13
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_SMILE_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p0, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_BLINK_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p0, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_GAZE_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, v0, p0, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte v1, v5

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->DISABLE_UW_DC_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v3, v0, p0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {v4, p0}, Lcom/motorola/camera/SkinToneDetection;->setupCustomScene(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setupMotoFlashTuning(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v0, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-eq v0, p3, :cond_14

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setArcsoftLowLightFlag(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_14
    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkMultiframeBokeh(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-boolean p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mMcfFinalReproc:Z

    if-nez p3, :cond_15

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_15
    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkYuvNrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperNightMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_APP_CUTOUT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, p0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_16
    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoMacro(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setUwDcAppProcess(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDisplayFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_NIGHT_VISION_STATUS_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p3, p0, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSR()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->SR_SCENE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, p3, p0, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->enableMTKISPTuningData(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setInSensorCropMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 10

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-boolean v4, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mIsMaster:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    :cond_1
    invoke-static {p1, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isStreamingSupportedByCurrentMode(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_3
    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_1

    :cond_4
    invoke-static {v2, p1, p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureWhiteBalance(ILcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    :goto_1
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHQPreview:[Z

    iget-object v5, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v6

    aget-boolean v1, v1, v6

    const/4 v6, 0x2

    if-eqz v1, :cond_5

    move v1, v6

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    iget v7, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-static {v1, v7, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setNoiseReduction(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v1, v7, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEdgeMode(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {v5, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v8, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, p0, p1, v2, v8}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAeFpsRange(ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/String;)V

    iget-object v8, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v8, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setOIS(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v8, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v8, p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAiCameraMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/ShotType;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v7, p0, p1, v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->processMcfSceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_6

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v4, v0, p0, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v4

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_MAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v8, v0, p0, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v8

    and-int/2addr v4, v8

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_SESSION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v0, p0, v7}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v4, v7, p0, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v4

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_MAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v8, v7, p0, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v8

    and-int/2addr v4, v8

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->BAYER_MONO_LINK_SESSION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v7, p0, v0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    and-int/2addr v0, v4

    if-nez v0, :cond_7

    const-string v0, "RequestBuilderHelper"

    const-string v4, "Failed to set custom keys for dual session link"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/motorola/camera/device/CameraStateManager;->setLinked(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/motorola/camera/device/CameraStateManager;->setLinked(Ljava/lang/String;Z)V

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SESSION_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v4, p0, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_a

    invoke-static {v0, p1}, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->applySceneTags(Lcom/motorola/camera/scenedetection/scene/Scene;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_a
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_SMILE_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v4, v0, p0, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_BLINK_ENABLE_CAPTURE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v4, v0, p0, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v3

    invoke-static {v0, p0, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {v5, p0}, Lcom/motorola/camera/SkinToneDetection;->setupCustomScene(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setArcsoftLowLightFlag(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setupMotoFlashTuning(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkMultiframeBokeh(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkYuvNrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperNightMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_APP_CUTOUT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, p0, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoMacro(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    int-to-byte v2, v1

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_DO_SW_REMOSAIC_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v0, p0, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_c
    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setUwDcAppProcess(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDisplayFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->enableMTKISPTuningData(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0, v1, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    return-void
.end method

.method public onSurfaceKeysRequired()Ljava/util/ArrayList;
    .locals 12

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v8, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v1, v0, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v1, v0, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v9, v0, v4, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v9, v0, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v9

    :goto_1
    new-instance v10, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v10, v0, v9, v11}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_9

    if-eqz v3, :cond_7

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v9

    new-instance v11, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;

    invoke-direct {v11, v0, p0, v9}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    invoke-static {v11}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    if-nez v9, :cond_9

    new-instance v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v9, v0, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v9

    if-nez v9, :cond_8

    move v9, v8

    goto :goto_3

    :cond_8
    move v9, v10

    :goto_3
    if-eqz v9, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCamIdForJpegImageReader()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v11, v0, v9, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v6, v0, v5}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-object v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-nez v2, :cond_b

    if-eqz v3, :cond_10

    :cond_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v3, v0, v4, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_5

    :cond_c
    if-eqz v3, :cond_d

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    new-instance v3, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda6;

    invoke-direct {v3, v10, p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    goto :goto_6

    :cond_f
    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v3, v0, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isRawStreamNeeded()Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v3, v0, v5}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :goto_5
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v3, v1, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_11

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v3, v1, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v3, v0, v1, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_12

    new-instance v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    invoke-direct {v2, v0, v1, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_7
    return-object p0
.end method

.method public onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFeatureLimiterListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda0;

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->unregisterListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLockedBut(Ljava/util/List;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SMART_HIGH_RES:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSmartHighResSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mZoomSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mAeSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mActivePhysicalCameraListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfStateListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFlashSettingChangeListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;

    invoke-static {p1, v3}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->stopHighResAutoSwitchDetection()V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreZoom:F

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreAe:I

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v0, p1, :cond_2

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v0, p1, :cond_2

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v0, p1, :cond_2

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v0, p1, :cond_6

    const-string p1, "IS_HIGH_RES_AUTO_SWITCH"

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->HIGH_RES_IN_PHOTO_MODE_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showHighResAutoSwitchToast(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    if-eqz p1, :cond_4

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->HOLD_STILL_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHoldStillPopupListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iput v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    iput v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    :cond_6
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method

.method public final onUpdate(Landroid/os/Bundle;)V
    .locals 7

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ISO100_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v1, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, v0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "QCFA_ANALOG_GAIN"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchAllowed:Z

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isShotOngoing(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_TO_HIGH_RES_RG_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mToHighResRgThreshold:F

    :goto_0
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_TO_NORMAL_RES_RG_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v5, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mToNormalResRgThreshold:F

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    cmpl-float p1, v1, v5

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    if-lt p1, v3, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForSmoothSwitchCase(Z)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0, p1, v6}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V

    :cond_3
    :goto_2
    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    goto/16 :goto_4

    :cond_4
    cmpg-float p1, v1, p1

    if-gtz p1, :cond_6

    iget p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    if-lt p1, v3, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForSmoothSwitchCase(Z)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2, p1, v6}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V

    :cond_6
    :goto_3
    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isShotOngoing(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isAeOkForAutoHighResDetection()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mIsControlPanelOpened:Z

    if-nez p1, :cond_b

    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUltraResReminderRgThreshold:F

    iget-boolean v4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    if-eqz v4, :cond_9

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_8

    iget p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    if-lt p1, v3, :cond_b

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    goto :goto_4

    :cond_8
    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    goto :goto_4

    :cond_9
    cmpl-float p1, v1, p1

    if-lez p1, :cond_a

    iget p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    if-lt p1, v3, :cond_b

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    goto :goto_4

    :cond_a
    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    :cond_b
    :goto_4
    return-void
.end method

.method public setupJpegImageReader(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 10

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_RES_BURST_DISABLE_FRONT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v4

    invoke-static {v1}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v1

    if-le v4, v1, :cond_1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->HIGH_RES_BURST_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v4

    if-le v4, v1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->REPROC_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnly(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getAllowedSupportedPictureSizesForAspect(Lcom/motorola/camera/PreviewSize$AspectRatio;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaBinningSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-static {v2}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v6, v5

    if-lt v4, v6, :cond_3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_5

    move-object v6, v3

    goto :goto_4

    :cond_5
    move-object v6, v0

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v0, 0x4

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v0, 0x6

    :goto_6
    move v7, v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getPhysicalCamIdForJpegImageReader()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReaderImpl(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Ljava/lang/String;)V

    return-void
.end method

.method public final setupJpegImageReaderImpl(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Ljava/lang/String;)V
    .locals 8

    invoke-static {p4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v0, 0x100

    invoke-static {p2, v0, p3, p4, v3}, Lkotlin/UNINITIALIZED_VALUE;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object p3

    new-instance p4, Landroidx/work/Configuration$Builder;

    invoke-direct {p4, v1}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, p4, v0}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mJpegImageReaders:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object p3, p3, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/16 v6, 0x100

    move-object v0, v7

    move-object v2, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    const/4 p2, 0x0

    invoke-direct {p0, p4, v7, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final setupMcf(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Z)V
    .locals 22

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v9

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v10, v0

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    goto :goto_1

    :cond_1
    move-object/from16 v0, p2

    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v7

    if-nez v7, :cond_2

    return-void

    :cond_2
    new-instance v6, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_BAYER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v8, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;->AUX:Lcom/motorola/camera/settings/SettingsManager$PhysicalRole;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager;->mPhysicalCameraMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v11

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isDualStreamDepthMode(Z)Z

    move-result v11

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_5
    move v12, v13

    goto :goto_2

    :cond_6
    move v12, v14

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    if-eqz v5, :cond_6

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_8
    move v12, v1

    :goto_2
    invoke-static {v1, v0, v12}, Lcom/motorola/camera/JsonConfig;->getBufferCnt(ILcom/motorola/camera/settings/CameraType;I)I

    move-result v5

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v18, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->YUV_420_888:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    sget-object v11, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->DUAL_DEPTH:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    sget-object v12, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->DUAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    move-object v11, v12

    goto :goto_3

    :cond_b
    sget-object v11, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->NORMAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    :goto_3
    iput-object v11, v6, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mCameraMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    if-eqz p4, :cond_c

    :try_start_0
    sget-object v2, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->FULL_PRIMARY:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    goto :goto_4

    :cond_c
    sget-object v2, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->FULL_AUX:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    :goto_4
    move-object/from16 v20, v2

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getCameraSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v14

    const/16 v16, 0x0

    iget-object v2, v6, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mCameraMode:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    move-object v11, v8

    move-object/from16 v12, v21

    move v15, v5

    move-object/from16 v17, v20

    move-object/from16 v19, v2

    invoke-static/range {v11 .. v19}, Lcom/motorola/camera/mcf/Mcf;->createInputStream(Ljava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)Lcom/motorola/camera/mcf/McfInputStream;

    move-result-object v2

    iput-object v2, v6, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    new-instance v12, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v12

    move-object v2, v7

    move-object v13, v3

    move v3, v5

    move-object/from16 v4, p2

    move-object v5, v6

    move-object v6, v13

    move-object v7, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v20

    move-object v11, v0

    :try_start_1
    invoke-direct/range {v1 .. v11}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/settings/CameraType;)V

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->forEachOfflineReprocCameraType(Ljava/util/function/Consumer;)V

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v13, v3

    goto :goto_5

    :cond_f
    move-object v13, v3

    const/16 v1, 0x23

    invoke-static {v7, v1, v5, v0, v4}, Lkotlin/UNINITIALIZED_VALUE;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v2, v6, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v2, v6, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v12

    const/4 v14, 0x0

    const/16 v15, 0x23

    move-object v1, v11

    move-object v2, v9

    move-object v3, v10

    move/from16 v16, v5

    move-object v5, v12

    move-object v12, v6

    move-object v6, v7

    move-object/from16 v17, v7

    move v7, v15

    move-object v15, v8

    move v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;IZ)V

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v12

    move-object v2, v13

    move-object v3, v15

    move-object/from16 v4, v21

    move-object/from16 v5, v17

    move/from16 v6, v16

    move-object/from16 v7, v20

    move-object v8, v0

    invoke-static/range {v1 .. v10}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->checkCreateRawStream(Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;ILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: create stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_7

    :cond_10
    return-void
.end method

.method public final setupPermissionsRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "perm_request_code"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/PermissionCallback;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    iput-object v0, p0, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    return-void
.end method

.method public final startHighResAutoSwitchDetection()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchAllowed:Z

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchTurnOnRunnable:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0xbb8

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final stopHighResAutoSwitchDetection()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToHighResFrameCnt:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mToNormalResFrameCnt:I

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchAllowed:Z

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchTurnOnRunnable:Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
