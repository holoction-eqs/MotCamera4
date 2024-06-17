.class public Lcom/motorola/camera/saving/CaptureHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCameraId:Ljava/lang/String;

.field public mCanRelease:Z

.field public mCaptureTimestamp:J

.field public mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

.field public mIsQcfa:Z

.field public mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

.field public mRequest:Landroid/hardware/camera2/CaptureRequest;

.field public mResult:Landroid/hardware/camera2/TotalCaptureResult;

.field public mSensorTimestamp:J

.field public mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

.field public mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public mSwJpegAppX:[B

.field public mSwJpegMakerNote:[B

.field public mSwJpegOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    iput-boolean v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    iput-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    iput-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    return-void
.end method

.method public static copyBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    iget-wide v4, p1, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    iget-wide v4, p1, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    iget-boolean v3, p1, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v3, p1, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p1, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v3, p1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object v3, p1, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object p1, p1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    add-int/2addr v1, v0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    if-eqz p0, :cond_1

    array-length p0, p0

    add-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method public getImageData()Lcom/motorola/camera/saving/ImageDataHolder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData(Z)Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getImageData(Z)Lcom/motorola/camera/saving/ImageDataHolder;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v4, v0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 2
    iget-object v4, v4, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 3
    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 4
    iget-object v5, v0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 5
    iget-object v5, v5, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 6
    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v5

    .line 7
    iget-object v6, v0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v6}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v6, v6, v3

    goto/16 :goto_0

    :cond_0
    iget-object v4, v0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 8
    iget-object v4, v4, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 9
    iget-object v6, v0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 10
    iget-object v6, v6, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 11
    invoke-virtual {v6}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 12
    iget-object v7, v0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 13
    iget-object v7, v7, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 14
    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_2

    .line 15
    iget-object v2, v0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v2}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    iget-object v7, v0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v7}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    filled-new-array {v2, v7}, [I

    move-result-object v2

    iget-object v7, v0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    sget-object v8, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    .line 16
    invoke-virtual {v7}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v7}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    aget-object v9, v9, v5

    invoke-virtual {v7}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    aget-object v1, v10, v1

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 17
    iget-object v7, v7, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v7}, Landroid/media/Image;->getHeight()I

    move-result v7

    mul-int/2addr v7, v10

    .line 18
    invoke-static {v8, v9, v1, v7}, Lcom/motorola/camera/utility/AndroidImageUtils;->getNV21ByteArrayFromYUV_420_888(Landroid/media/Image$Plane;Landroid/media/Image$Plane;Landroid/media/Image$Plane;I)[B

    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 20
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 21
    check-cast v7, Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    .line 22
    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 23
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    move v3, v5

    :cond_1
    const/4 v5, 0x3

    move-object/from16 v20, v2

    move-object v2, v1

    move-object/from16 v1, v20

    move/from16 v21, v6

    move v6, v3

    move v3, v4

    move v4, v8

    move v8, v5

    move/from16 v5, v21

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v1}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v3

    move/from16 v20, v6

    move-object v6, v1

    move v1, v5

    move/from16 v5, v20

    :goto_0
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/camera/saving/CaptureHolder;->copyBytes(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    move v8, v1

    move-object v1, v2

    move v7, v5

    move-object v2, v6

    move v6, v3

    move v3, v4

    :goto_1
    move-object/from16 v16, v1

    move-object v11, v2

    move v12, v3

    move v14, v4

    move v13, v5

    move/from16 v17, v6

    move v15, v7

    move v10, v8

    goto :goto_2

    :cond_3
    move-object v11, v2

    move-object/from16 v16, v11

    move v12, v3

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v17, v15

    move v10, v5

    :goto_2
    if-nez v11, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Capture "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v2, "RAW"

    goto :goto_3

    :cond_4
    const-string v2, "JPEG"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is empty!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CaptureHolder"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Lcom/motorola/camera/saving/ImageDataHolder;

    iget-object v2, v0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object v9, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v0

    invoke-direct/range {v9 .. v19}, Lcom/motorola/camera/saving/ImageDataHolder;-><init>(ILjava/nio/ByteBuffer;IIII[IZLjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-object v1
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v5, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v6, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v7, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object v8, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CaptureHolder{mCameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSensorTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCaptureTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRawImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIsQcfa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
