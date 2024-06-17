.class public final Lcom/motorola/camera/saving/SoftJpegCaptureHolder;
.super Lcom/motorola/camera/saving/CaptureHolder;
.source "SourceFile"


# instance fields
.field public mHeight:I

.field public mJpegData:Ljava/nio/ByteBuffer;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/saving/CaptureHolder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mWidth:I

    iput v0, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mHeight:I

    return-void
.end method

.method public static wrap(Lcom/motorola/camera/saving/CaptureHolder;)Lcom/motorola/camera/saving/SoftJpegCaptureHolder;
    .locals 3

    new-instance v0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;

    invoke-direct {v0}, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mJpegData:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object v1, v1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mHeight:I

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object v1, v1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mWidth:I

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object v1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-object v1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object v1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iput-object v1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-boolean v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    iput-boolean v1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    iget-wide v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    iput-wide v1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    iput-object v1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    iget-boolean v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    iput-boolean v1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    iput-object p0, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    return-object v0
.end method


# virtual methods
.method public final getDataSize()I
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/saving/CaptureHolder;->getDataSize()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mJpegData:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final getImageData()Lcom/motorola/camera/saving/ImageDataHolder;
    .locals 7

    new-instance v6, Lcom/motorola/camera/saving/ImageDataHolder;

    iget-object v1, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mJpegData:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mWidth:I

    iget v3, p0, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->mHeight:I

    iget-object v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/saving/ImageDataHolder;-><init>(Ljava/nio/ByteBuffer;IILjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-object v6
.end method
