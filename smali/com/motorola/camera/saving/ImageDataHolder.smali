.class public final Lcom/motorola/camera/saving/ImageDataHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCameraId:Ljava/lang/String;

.field public mData:Ljava/nio/ByteBuffer;

.field public final mFinalHeight:I

.field public final mFinalWidth:I

.field public final mFlip:Z

.field public final mHeight:I

.field public mImageType:I

.field public final mResult:Landroid/hardware/camera2/TotalCaptureResult;

.field public final mStride:[I

.field public final mWidth:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;IIII[IZLjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mImageType:I

    iput-object p2, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    iput p4, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    iput p5, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalWidth:I

    iput p6, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalHeight:I

    iput-object p7, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mStride:[I

    iput-boolean p8, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFlip:Z

    iput-object p9, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mCameraId:Ljava/lang/String;

    iput-object p10, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IILjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 11

    .line 2
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p2

    move v6, p3

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/motorola/camera/saving/ImageDataHolder;-><init>(ILjava/nio/ByteBuffer;IIII[IZLjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/nio/ByteBuffer;
    .locals 14

    iget v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mImageType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v1, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    iget v4, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    iget v5, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalWidth:I

    iget v6, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalHeight:I

    iget-object v7, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mStride:[I

    iget-boolean v10, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFlip:Z

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    const/4 v13, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    if-lez v9, :cond_0

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-static {v9}, Lcom/motorola/camera/utility/ExifUtility;->getJpegQuality(Ljava/lang/Byte;)I

    move-result v12

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v11

    sget-object v8, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    move v8, v9

    move v9, v11

    move v11, v0

    invoke-static/range {v2 .. v12}, Lcom/motorola/camera/mcf/MotUtil;->createThumbnail([BIIII[IIIZII)[B

    move-result-object v2

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object v11, v13

    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-static {v2}, Lcom/motorola/camera/utility/ExifUtility;->getJpegQuality(Ljava/lang/Byte;)I

    move-result v10

    iget-object v2, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    iget v4, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    iget-object v5, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mStride:[I

    iget v6, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalWidth:I

    iget v7, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFinalHeight:I

    iget-boolean v8, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mFlip:Z

    move v9, v0

    invoke-static/range {v2 .. v10}, Lcom/motorola/camera/mcf/MotUtil;->compressJpeg([BII[IIIZII)[B

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mCameraId:Ljava/lang/String;

    invoke-static {v0, v1, v13, v2, v11}, Lcom/motorola/camera/utility/ExifUtility;->appendExifToJpeg([BLandroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mImageType:I

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/saving/ImageDataHolder;->mData:Ljava/nio/ByteBuffer;

    return-object p0
.end method
