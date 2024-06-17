.class public final Lcom/motorola/camera/capturedmediadata/CapturedVideoData;
.super Lcom/motorola/camera/capturedmediadata/CapturedMediaData;
.source "SourceFile"


# instance fields
.field public final mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

.field public mPrivateTempVideoFile:Ljava/io/File;

.field public final mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

.field public mStatus:I

.field public mVideoThumbFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 1
    iget-object v1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 2
    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    new-instance v1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    invoke-direct {v1, p1}, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;-><init>(Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    iput-object p3, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mStatus:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mPrivateTempVideoFile:Ljava/io/File;

    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mVideoThumbFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CapturedVideoData{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mRecTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMediaRecorderData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPrivateTempVideoFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mPrivateTempVideoFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoThumbFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mVideoThumbFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
