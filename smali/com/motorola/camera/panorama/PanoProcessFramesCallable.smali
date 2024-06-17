.class public final Lcom/motorola/camera/panorama/PanoProcessFramesCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# instance fields
.field public final mByteBuffers:[Ljava/nio/ByteBuffer;

.field public final mCenter:[D

.field public final mImage:Lkotlin/DeepRecursiveFunction;

.field public final mPixelStride:[I

.field public final mRowStride:[I


# direct methods
.method public constructor <init>(Lkotlin/DeepRecursiveFunction;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    const/4 p2, 0x3

    new-array v0, p2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mByteBuffers:[Ljava/nio/ByteBuffer;

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mRowStride:[I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mPixelStride:[I

    const/4 p2, 0x2

    new-array p2, p2, [D

    iput-object p2, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    iput-object p1, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lkotlin/DeepRecursiveFunction;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;

    iget-object v1, v1, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lkotlin/DeepRecursiveFunction;

    iget-object v1, v1, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lkotlin/DeepRecursiveFunction;

    iget-object v1, v1, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->setPlane(Landroid/media/Image$Plane;I)V

    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lkotlin/DeepRecursiveFunction;

    iget-object v1, v1, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->setPlane(Landroid/media/Image$Plane;I)V

    iget-object v1, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lkotlin/DeepRecursiveFunction;

    iget-object v1, v1, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->setPlane(Landroid/media/Image$Plane;I)V

    goto :goto_0

    :cond_0
    const-string v1, "PanoProcessFramesCallable"

    const-string v2, "get abnormal image"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lkotlin/DeepRecursiveFunction;

    iget-object v1, v0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    iput-object v4, v0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, v4}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v1

    iget-boolean v1, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v6

    iget-object v7, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mByteBuffers:[Ljava/nio/ByteBuffer;

    iget-object v8, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mRowStride:[I

    iget-object v9, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mPixelStride:[I

    if-eqz v1, :cond_3

    iget-object v10, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    goto :goto_1

    :cond_3
    move-object v10, v4

    :goto_1
    monitor-enter v6

    :try_start_1
    iget-object v11, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-nez v11, :cond_4

    goto/16 :goto_10

    :cond_4
    iget-boolean v12, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsCapturing:Z

    if-nez v12, :cond_5

    goto/16 :goto_10

    :cond_5
    iget-boolean v12, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    if-nez v12, :cond_6

    invoke-virtual {v11}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v11

    const-wide/16 v13, 0x5

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    invoke-virtual {v6}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setInitialRotationByGravity()V

    iput-boolean v3, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsSensorAverage:Z

    :cond_6
    invoke-virtual {v6}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setSensorFusionValue()V

    iget-object v11, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    aget-object v12, v7, v2

    aget-object v13, v7, v3

    aget-object v14, v7, v5

    aget v15, v8, v2

    aget v16, v8, v3

    aget v17, v8, v5

    aget v18, v9, v2

    aget v19, v9, v3

    aget v20, v9, v5

    move-object/from16 v21, v10

    invoke-virtual/range {v11 .. v21}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[D)I

    move-result v7

    if-eqz v10, :cond_9

    iget-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v8, v8, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    const-wide v11, 0x3ff19999a0000000L    # 1.100000023841858

    if-eqz v8, :cond_8

    if-ne v8, v3, :cond_7

    goto :goto_2

    :cond_7
    aget-wide v8, v10, v2

    div-double/2addr v8, v11

    aput-wide v8, v10, v2

    goto :goto_3

    :cond_8
    :goto_2
    aget-wide v8, v10, v3

    div-double/2addr v8, v11

    aput-wide v8, v10, v3

    :cond_9
    :goto_3
    iget-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPc:Lcom/morphoinc/app/panoramagp3/PerformanceCounter$PerformanceCounterOff;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_a

    const-string v8, "MorphoEngine"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "mMorphoPanoramaGP3.attach error ret:0x%08X"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v2

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_a
    iget-boolean v7, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    if-nez v7, :cond_18

    iget-object v7, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v7}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getDirection()I

    move-result v7

    iget-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v8, v8, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->direction:I

    if-eq v7, v8, :cond_18

    new-array v8, v5, [I

    iget-object v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    invoke-virtual {v9, v8}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->getOutputImageSize([I)I

    move-result v9

    if-eqz v9, :cond_b

    const-string v7, "MorphoEngine"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "MorphoSensorFusion.getOutputImageSize error ret:0x%08X"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v2

    invoke-static {v8, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_b
    aget v9, v8, v2

    aget v8, v8, v3

    const v10, 0x3f8ccccd    # 1.1f

    if-le v9, v8, :cond_c

    iput v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    goto :goto_4

    :cond_c
    int-to-float v9, v9

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iput v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    :goto_4
    invoke-virtual {v6, v7}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->createDirection(I)V

    iput-boolean v3, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    iget-object v7, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v8, v7, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-virtual {v7}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->getHorizontalPreviewSize()Landroid/util/Size;

    move-result-object v7

    goto :goto_6

    :pswitch_1
    invoke-virtual {v7}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->getVerticalPreviewSize()Landroid/util/Size;

    move-result-object v7

    goto :goto_6

    :pswitch_2
    invoke-virtual {v7}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->getVerticalPreviewSize()Landroid/util/Size;

    move-result-object v7

    goto :goto_6

    :goto_5
    invoke-virtual {v7}, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->getHorizontalPreviewSize()Landroid/util/Size;

    move-result-object v7

    :goto_6
    new-instance v15, Lcom/morphoinc/app/panoramagp3/PositionDetector;

    iget-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v9, v8, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    iget v10, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    iget v11, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v13

    iget-object v14, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v7, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mCameraOrientation:I

    move-object v8, v15

    move-object v5, v15

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/morphoinc/app/panoramagp3/PositionDetector;-><init>(IIIIILcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;I)V

    iput-object v5, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    iget-object v5, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    if-eqz v5, :cond_e

    iget v7, v5, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    if-eq v7, v3, :cond_d

    if-nez v7, :cond_e

    :cond_d
    move v7, v3

    goto :goto_7

    :cond_e
    move v7, v2

    :goto_7
    if-eqz v7, :cond_f

    iget-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    iget-object v7, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mInitParam:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;

    iget v9, v7, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->output_rotation:I

    iget v10, v5, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    iget-wide v11, v7, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovx:D

    double-to-float v11, v11

    iget-wide v12, v7, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$InitParam;->aovy:D

    double-to-float v12, v12

    iget-object v5, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mSettings:Lcom/motorola/camera/panorama/morpho/Settings;

    iget-boolean v13, v5, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end:Z

    invoke-virtual/range {v8 .. v13}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->setStartPosition(IIFFZ)V

    :cond_f
    iget-object v5, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iget v5, v5, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    const/16 v7, 0xb4

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v5, :cond_14

    if-ne v5, v3, :cond_10

    goto :goto_b

    :cond_10
    sget-object v5, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget v5, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    if-eqz v5, :cond_12

    if-ne v5, v7, :cond_11

    goto :goto_8

    :cond_11
    move v5, v2

    goto :goto_9

    :cond_12
    :goto_8
    move v5, v3

    :goto_9
    if-eqz v5, :cond_13

    iget v5, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageHeight:I

    goto :goto_a

    :cond_13
    iget v5, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageWidth:I

    :goto_a
    int-to-float v7, v5

    iget v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    int-to-float v9, v9

    mul-float/2addr v7, v9

    iget v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    mul-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_f

    :cond_14
    :goto_b
    sget-object v5, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget v5, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    if-eqz v5, :cond_16

    if-ne v5, v7, :cond_15

    goto :goto_c

    :cond_15
    move v5, v2

    goto :goto_d

    :cond_16
    :goto_c
    move v5, v3

    :goto_d
    if-nez v5, :cond_17

    iget v5, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageHeight:I

    goto :goto_e

    :cond_17
    iget v5, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewImageWidth:I

    :goto_e
    move v7, v5

    int-to-float v5, v7

    iget v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxHeight:I

    int-to-float v9, v9

    mul-float/2addr v5, v9

    iget v9, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMaxWidth:I

    int-to-float v9, v9

    div-float/2addr v5, v9

    mul-float/2addr v5, v8

    float-to-int v5, v5

    :goto_f
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v5}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->setPreviewImage(II)V

    :cond_18
    iget-object v5, v6, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDateTaken:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aput-wide v7, v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_10
    monitor-exit v6

    iget-object v5, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mImage:Lkotlin/DeepRecursiveFunction;

    iget-object v6, v5, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Landroid/media/Image;

    if-eqz v7, :cond_19

    check-cast v6, Landroid/media/Image;

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    iput-object v4, v5, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    :cond_19
    if-eqz v1, :cond_20

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v1

    iget-object v5, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    monitor-enter v1

    :try_start_2
    iget-object v6, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v6, :cond_1c

    iget-object v6, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    if-nez v6, :cond_1a

    goto :goto_11

    :cond_1a
    iget-object v6, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-virtual {v6}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->detect()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_1b

    monitor-exit v1

    move v5, v3

    goto :goto_12

    :cond_1b
    :try_start_3
    iget-object v6, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    aget-wide v7, v5, v2

    aget-wide v9, v5, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/morphoinc/app/panoramagp3/PositionDetector;->detect(DD)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    goto :goto_12

    :cond_1c
    :goto_11
    monitor-exit v1

    const/16 v5, -0xc8

    :goto_12
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object v6, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v6, :cond_1e

    iget-object v6, v1, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    if-nez v6, :cond_1d

    goto :goto_13

    :cond_1d
    iget v6, v6, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    goto :goto_14

    :cond_1e
    :goto_13
    monitor-exit v1

    const/4 v6, -0x1

    :goto_14
    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getPreviewImage()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getMaxOutputSize([I)V

    iget-object v8, v0, Lcom/motorola/camera/panorama/PanoCallable;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    if-eqz v8, :cond_20

    iget-object v0, v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mCenter:[D

    aget-wide v9, v0, v2

    aget-wide v11, v0, v3

    aget v0, v7, v2

    aget v3, v7, v3

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v13, "status"

    invoke-virtual {v7, v13, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "preview"

    invoke-virtual {v7, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "guidePosition"

    invoke-virtual {v7, v1, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v1, "direction"

    invoke-virtual {v7, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "progressX"

    invoke-virtual {v7, v1, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "progressY"

    invoke-virtual {v7, v1, v11, v12}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "maxWidth"

    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "maxHeight"

    invoke-virtual {v7, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_PROGRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v5, v7, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v2, v8, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    iget-object v1, v8, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->this$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v5, "PANO_MAX_OUTPUT_SIZE"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v6, v0, :cond_1f

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v2, v3, :cond_20

    :cond_1f
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    goto :goto_15

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_20
    :goto_15
    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, v4}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catchall_2
    move-exception v0

    monitor-exit v6

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoProcessFramesCallable"

    return-object p0
.end method

.method public final setPlane(Landroid/media/Image$Plane;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mByteBuffers:[Ljava/nio/ByteBuffer;

    aput-object v0, v1, p2

    iget-object v0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mRowStride:[I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    aput v1, v0, p2

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;->mPixelStride:[I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p1

    aput p1, p0, p2

    return-void
.end method
