.class public final Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

.field public final mVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/VideoSessionData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iput-object p3, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->setNextVideoFile()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SetNextVideoFileCallable"

    return-object p0
.end method

.method public final setNextVideoFile()V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    new-instance v3, Lcom/motorola/camera/saving/FileName;

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v3, v4}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    iget-object p0, p0, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;->mSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    iget-object v4, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mCaptureVideoDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/camera/saving/FileName;->setFileNumber(I)Lcom/motorola/camera/saving/FileName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-object v4, v4, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v3}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mNextCaptureVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "sharedMediaFile is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Media recorder is null, it may be closed"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
