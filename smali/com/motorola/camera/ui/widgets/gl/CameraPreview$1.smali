.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
    .locals 6

    .line 1
    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method


# virtual methods
.method public final processPreview(Landroid/media/Image;Z[JZ)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->$r8$classId:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    move v0, v4

    return v0

    :pswitch_0
    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMcfSupport:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION_SLV:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    if-eqz p2, :cond_0

    sget-object v4, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_0
    invoke-static {v1, v4, v3, v0, v2}, Lcom/motorola/camera/mcf/Mcf;->processPreviewImage(Landroid/media/Image;Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;FLandroid/graphics/Rect;[J)Z

    move-result v4

    :cond_1
    return v4

    :pswitch_1
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMcfSupport:Z

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-boolean v3, v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCliGestureRecording:Z

    if-nez v3, :cond_1d

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v3, :cond_2

    sget-boolean v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDump:Z

    if-eqz v5, :cond_2

    sget v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    sget v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMaxDumpCount:I

    if-ge v5, v6, :cond_2

    const-string v5, "CameraPreview"

    const-string v6, "processPreviewImage start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Input%03d_ts-%d.yuv"

    sget v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpFolder:Ljava/io/File;

    invoke-static {v1, v6, v5}, Lcom/motorola/camera/utility/AndroidImageUtils;->dumpImage(Landroid/media/Image;Ljava/io/File;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v7, :cond_3

    const/16 v8, 0x30

    if-ne v7, v8, :cond_4

    :cond_3
    move v7, v4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v4

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v21, v3

    move v0, v4

    move-object v4, v1

    move-object v1, v2

    goto/16 :goto_f

    :cond_7
    :goto_3
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v9

    iget-object v15, v9, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz v15, :cond_13

    iget-object v9, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    if-eqz v9, :cond_13

    iget-object v9, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v9

    if-eqz v9, :cond_8

    goto/16 :goto_a

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-wide v9, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    iget v11, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mBackoffTimeBetweenScansFactor:I

    add-int/2addr v11, v4

    int-to-long v4, v11

    move-object/from16 p4, v7

    iget-wide v6, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mTimeBetweenScans:J

    mul-long/2addr v6, v4

    add-long/2addr v6, v9

    cmp-long v4, v12, v6

    if-lez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    iget-boolean v5, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    if-eqz v5, :cond_12

    iget-boolean v5, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    if-nez v5, :cond_12

    if-eqz v4, :cond_12

    sget v11, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v5

    const/4 v6, 0x1

    iput-boolean v6, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanning:Z

    sget-object v7, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    const/4 v10, 0x2

    aget-object v6, v6, v10

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v17

    mul-int v14, v14, v17

    invoke-static {v7, v9, v6, v14}, Lcom/motorola/camera/utility/AndroidImageUtils;->getNV21ByteArrayFromYUV_420_888(Landroid/media/Image$Plane;Landroid/media/Image$Plane;Landroid/media/Image$Plane;I)[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    new-instance v14, Lcom/google/mlkit/vision/common/InputImage;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-direct {v14, v9, v4, v7, v5}, Lcom/google/mlkit/vision/common/InputImage;-><init>(Ljava/nio/ByteBuffer;III)V

    array-length v6, v6

    const-class v9, Landroidx/media3/ui/HtmlUtils;

    monitor-enter v9

    :try_start_0
    const-string v10, "vision-common"

    move/from16 v21, v3

    const/4 v3, 0x1

    int-to-byte v2, v3

    const/16 v16, 0x2

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzma;

    const/4 v3, 0x1

    invoke-direct {v2, v10, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzma;-><init>(Ljava/lang/String;ZI)V

    const-class v3, Landroidx/media3/ui/HtmlUtils;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v10, Landroidx/media3/ui/HtmlUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    if-nez v10, :cond_a

    new-instance v10, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    move/from16 v22, v8

    const/4 v8, 0x2

    invoke-direct {v10, v8}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(I)V

    sput-object v10, Landroidx/media3/ui/HtmlUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    goto :goto_5

    :cond_a
    move/from16 v22, v8

    :goto_5
    sget-object v8, Landroidx/media3/ui/HtmlUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    invoke-virtual {v8, v2}, Landroidx/transition/ViewOverlayApi14;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v18

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_common/zziv;->zzbA:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    iget-object v10, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzk:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_b

    move-wide/from16 v30, v12

    goto :goto_6

    :cond_b
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    sub-long v23, v18, v23

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v30, v12

    const-wide/16 v12, 0x1e

    invoke-virtual {v1, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    cmp-long v1, v23, v12

    if-gtz v1, :cond_c

    goto/16 :goto_8

    :cond_c
    :goto_6
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/widget/TooltipPopup;

    invoke-direct {v1}, Landroidx/appcompat/widget/TooltipPopup;-><init>()V

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    iput-object v10, v1, Landroidx/appcompat/widget/TooltipPopup;->mMessageView:Ljava/lang/Object;

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    iput-object v10, v1, Landroidx/appcompat/widget/TooltipPopup;->mContentView:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v10, 0x7fffffff

    and-int/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Landroidx/appcompat/widget/TooltipPopup;->mLayoutParams:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Landroidx/appcompat/widget/TooltipPopup;->mTmpDisplayFrame:Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Landroidx/appcompat/widget/TooltipPopup;->mTmpAppPos:Ljava/lang/Object;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;-><init>(Landroidx/appcompat/widget/TooltipPopup;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;-><init>()V

    iput-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzan;->zzc:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v4, v1}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzan;)V

    iget-object v1, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzg:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_7

    :cond_d
    sget-object v1, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    iget-object v5, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzi:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    move-object/from16 v27, v1

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v5, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    const/16 v28, 0x8

    const/16 v29, 0x0

    move-object/from16 v23, v5

    move-object/from16 v24, v2

    move-object/from16 v25, v4

    move-object/from16 v26, v3

    invoke-direct/range {v23 .. v29}, Landroidx/work/impl/utils/WorkProgressUpdater$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v1, v5}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    :goto_8
    iget-object v1, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1

    :try_start_3
    iget-object v2, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v15, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;

    move-object v10, v3

    move-wide/from16 v12, v30

    invoke-direct/range {v10 .. v15}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;-><init>(IJLcom/google/mlkit/vision/common/InputImage;Lcom/motorola/camera/detector/MLKitBarcodeDetector;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_e
    monitor-exit v1

    goto :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_10

    const-string v1, " enableFirelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const/4 v1, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_11

    const-string v1, " firelogEventType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_12
    move/from16 v21, v3

    :goto_9
    move/from16 v22, v8

    goto :goto_b

    :cond_13
    :goto_a
    move/from16 v21, v3

    move-object/from16 p4, v7

    goto :goto_9

    :goto_b
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFilterSupport:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateThumbnails:Z

    if-eqz v2, :cond_17

    sget-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    const-class v2, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v2

    :try_start_5
    sget-object v3, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LIB_NAME:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_NAMES_ORDER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, [Ljava/lang/String;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAILS_THREADS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v4}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    sget-object v6, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAIL_SIZE_DP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v0, v6}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v8, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->displayRotation:I

    add-int/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aget v11, v4, v10

    aget v0, v0, v10

    move v4, v6

    move-object v6, v2

    move v10, v11

    move v11, v0

    invoke-static/range {v4 .. v11}, Lcom/motorola/camera/meishe/MeisheEffects;->configureThumbnails(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)V

    :cond_14
    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    if-eqz v0, :cond_15

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    monitor-exit v0

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    move-object/from16 v4, p1

    const/4 v2, 0x0

    invoke-static {v4, v2, v0}, Lcom/motorola/camera/meishe/MeisheEffects;->processThumbnails(Landroid/media/Image;II)V

    goto :goto_c

    :cond_15
    move-object/from16 v4, p1

    const/4 v2, 0x0

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    const-class v2, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v2

    monitor-exit v2

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v5, v0}, Lcom/motorola/camera/meishe/MeisheEffects;->processThumbnails(Landroid/media/Image;II)V

    :cond_16
    :goto_c
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    const-class v1, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v1

    monitor-exit v1

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit v2

    throw v1

    :cond_17
    move-object/from16 v4, p1

    :goto_d
    if-eqz p2, :cond_18

    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_e

    :cond_18
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_e
    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move/from16 v2, v22

    invoke-static {v4, v0, v2, v7, v1}, Lcom/motorola/camera/mcf/Mcf;->processPreviewImage(Landroid/media/Image;Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;FLandroid/graphics/Rect;[J)Z

    move-result v0

    :goto_f
    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz v2, :cond_1a

    sget v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_19

    const-string v2, "CameraPreview"

    const-string v3, "frame coming"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    sget v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    :cond_1a
    if-eqz v21, :cond_1c

    sget-boolean v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDump:Z

    if-eqz v2, :cond_1c

    sget v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    sget v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMaxDumpCount:I

    if-ge v2, v3, :cond_1c

    array-length v2, v1

    if-nez v2, :cond_1b

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Output%03d.yuv"

    sget v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_1b
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Output%03d_ts-%d.yuv"

    sget v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpFolder:Ljava/io/File;

    invoke-static {v4, v2, v1}, Lcom/motorola/camera/utility/AndroidImageUtils;->dumpImage(Landroid/media/Image;Ljava/io/File;Ljava/lang/String;)V

    sget v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    const-string v1, "CameraPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processPreviewImage end with displayFrame:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move v4, v0

    goto :goto_12

    :cond_1d
    move-object v4, v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    const-class v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;

    monitor-enter v1

    :try_start_6
    sget-boolean v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sStarted:Z

    if-eqz v0, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->analyzeImage(Landroid/media/Image;)F

    move-result v0

    new-instance v4, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;

    invoke-direct {v4, v0, v2, v3}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;-><init>(FJ)V

    sget-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_1e
    monitor-exit v1

    goto :goto_11

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1f
    :goto_11
    const/4 v4, 0x1

    :goto_12
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
