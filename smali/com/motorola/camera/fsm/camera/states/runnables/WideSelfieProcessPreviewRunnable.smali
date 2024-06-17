.class public final Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# instance fields
.field public final ImageWH:[I

.field public final mHeight:I

.field public final mOutputPreviewData:[B

.field public final mPanoListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

.field public final mPreviewHeight:I

.field public final mPreviewWidth:I

.field public final mRotateData:[B

.field public final mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;Z)V
    .locals 8

    invoke-direct {p0, p2}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x140

    const/16 v5, 0xf0

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    :goto_0
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWidth:I

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mHeight:I

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPanoListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    mul-int p1, v4, v3

    mul-int/lit8 p1, p1, 0x3

    div-int/2addr p1, v0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    sget p1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-static {p1, p3}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfieStitchingRatio(IZ)F

    move-result p2

    const/16 p3, 0x5a

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    if-eq p1, p3, :cond_2

    const/16 p3, 0x10e

    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    int-to-float p1, v3

    mul-float/2addr p2, v6

    add-float/2addr p2, v5

    mul-float/2addr p2, p1

    float-to-int p1, p2

    aput p1, v1, v7

    aput v4, v1, v2

    iput v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewWidth:I

    iput v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewHeight:I

    goto :goto_2

    :cond_2
    :goto_1
    int-to-float p1, v4

    mul-float/2addr p2, v6

    add-float/2addr p2, v5

    mul-float/2addr p2, p1

    float-to-int p1, p2

    aput p1, v1, v7

    aput v3, v1, v2

    iput v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewWidth:I

    iput v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewHeight:I

    :goto_2
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object p1

    aget p2, v1, v7

    aget p3, v1, v2

    iget-object v1, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mOutputPreviewData:[B

    if-eqz v1, :cond_3

    array-length v1, v1

    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v0

    if-eq v1, v2, :cond_4

    :cond_3
    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x3

    div-int/2addr p2, v0

    new-array p2, p2, [B

    iput-object p2, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mOutputPreviewData:[B

    :cond_4
    iget-object p1, p1, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mOutputPreviewData:[B

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mOutputPreviewData:[B

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v8, v1, [I

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWideSelfieImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    iget v2, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    iget-object v3, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:Ljava/io/Serializable;

    const/16 v4, 0x10e

    const/4 v9, 0x0

    if-eq v2, v4, :cond_1

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    check-cast v3, [B

    iget v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mWidth:I

    iget v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mHeight:I

    iget v6, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mOrientation:I

    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    iget-boolean v10, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    invoke-virtual/range {v2 .. v8}, Lcom/lenovo/core/LenovoPanoramaSelfie;->pictureRotate([BIII[B[I)V

    goto :goto_0

    :cond_1
    check-cast v3, [B

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    array-length v4, v2

    invoke-static {v3, v9, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v2

    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mRotateData:[B

    iget-object v12, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mOutputPreviewData:[B

    iget v15, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewWidth:I

    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPreviewHeight:I

    const/16 v17, 0x7

    iget v4, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationX:F

    iget v5, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationY:F

    iget v1, v1, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    iget-object v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    iget-boolean v7, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mIsCapturing:Z

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v10, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    move v13, v15

    move v14, v3

    move/from16 v16, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v1

    move-object/from16 v21, v6

    invoke-virtual/range {v10 .. v21}, Lcom/lenovo/core/LenovoPanoramaSelfie;->yuvResizeAndStitch([B[BIIIIIFFI[I)V

    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->ImageWH:[I

    aget v2, v1, v9

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->getInstance()Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/panorama/lenovo/WideSelfieEngine;->mLenovoPanoramaSelfie:Lcom/lenovo/core/LenovoPanoramaSelfie;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mOutputPreviewData:[B

    invoke-virtual {v3, v4, v1, v2}, Lcom/lenovo/core/LenovoPanoramaSelfie;->yuv2Bitmap([B[ILandroid/graphics/Bitmap;)V

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v15, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v13, v1, v9

    const/4 v3, 0x1

    aget v14, v1, v3

    const/16 v16, 0x1

    move-object v10, v2

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    aget v5, v1, v9

    aget v1, v1, v3

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/WideSelfieProcessPreviewRunnable;->mPanoListener:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v6, "preview"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "maxWidth"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "maxHeight"

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_PROGRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v4, v3, v9}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
