.class public final Lcom/motorola/camera/saving/SaveImageService$ImageContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAltmAttempted:I

.field public mExposureMode:I

.field public final mFileName:Lcom/motorola/camera/saving/FileName;

.field public mHeight:I

.field public mIsEnhanced:Z

.field public final mIsOnlyCaptureRecord:Z

.field public final mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

.field public mOrientation:I

.field public mWidth:I

.field public mXmpData:Lcom/motorola/camera/saving/XmpData;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    new-instance v0, Lcom/motorola/camera/saving/FileName;

    .line 2
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v0, p1}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    new-instance p1, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {p1}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsOnlyCaptureRecord:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v0, p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    new-instance v0, Lcom/motorola/camera/saving/FileName;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v0, p1}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    new-instance p1, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {p1}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsOnlyCaptureRecord:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageContainer{mMediaData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExposureMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAltmAttempted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAltmAttempted:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
