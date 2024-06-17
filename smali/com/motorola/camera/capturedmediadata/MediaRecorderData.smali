.class public final Lcom/motorola/camera/capturedmediadata/MediaRecorderData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/capturedmediadata/MediaRecorderData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAudioBitRate:I

.field public mAudioChannels:I

.field public final mAudioCodec:I

.field public mAudioSampleRate:I

.field public final mCamcorderProfileQuality:I

.field public final mFileFormat:I

.field public mLocation:Landroid/location/Location;

.field public mMaxFileSize:J

.field public mOrientation:I

.field public mSurface:Landroid/view/Surface;

.field public mVideoBitRate:I

.field public mVideoCodec:I

.field public mVideoDuration:I

.field public mVideoEncoderProfile:I

.field public mVideoFlip:Z

.field public mVideoFrameRateCapture:F

.field public mVideoFrameRateRecord:Landroid/util/Range;

.field public mVideoFrameSize:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/signin/internal/zab;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/signin/internal/zab;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/CamcorderProfile;F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    iput p2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    new-instance p2, Landroid/util/Range;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    new-instance p2, Landroid/util/Size;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p2, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget p2, p1, Landroid/media/CamcorderProfile;->quality:I

    iput p2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    iget p1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iput p1, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    new-instance v0, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    const-class v0, Landroid/location/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    new-instance v0, Landroid/util/Range;

    iget-object v1, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    iget-boolean v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    iput-boolean v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    iget-wide v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    aput-object v3, v1, v2

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/16 v2, 0xf

    aput-object p0, v1, v2

    const-string p0, "RecorderData [profileQuality=%s,video={size=%s,codec=%s,bitRate=%s,frameRateRecord=%s,frameRateCapture=%s,format=%s,sizeLimit=%s,duration=%s},audio={codec=%s,bitRate=%s,sampleRate=%s,channels=%s},ori=%s,videoFlip=%s,gps=%s]"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
