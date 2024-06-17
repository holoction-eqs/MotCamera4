.class public final Lcom/motorola/camera/jms/BgJobManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/jms/BgJobManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/jms/BgJobManager;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/jms/BgJobManager$1;->this$0:Lcom/motorola/camera/jms/BgJobManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJobTransferComplete(J)V
    .locals 1

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_APP_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    long-to-int p0, p1

    invoke-static {p0}, Lcom/motorola/camera/jms/BgJobManager;->removeJob(I)Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/motorola/camera/saving/SaveImageService;->commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    iget-object p1, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {p0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->closeWriteParcelFileDescriptor()V

    :cond_2
    return-void
.end method
