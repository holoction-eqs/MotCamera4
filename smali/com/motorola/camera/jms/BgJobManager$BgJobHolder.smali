.class public final Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAlgoContext:Ljava/lang/String;

.field public mIsForegroundService:Z

.field public mIsTransferToJms:Z

.field public mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

.field public mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

.field public mTaskId:Lcom/motorola/camera/background/common/TaskId;

.field public mTransferData:Lcom/motorola/camera/shared/PostProcTransferData;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mAlgoContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTransferData:Lcom/motorola/camera/shared/PostProcTransferData;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mIsTransferToJms:Z

    iput-boolean v1, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mIsForegroundService:Z

    iput-object v0, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mTaskId:Lcom/motorola/camera/background/common/TaskId;

    iput-object v0, p0, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    return-void
.end method
