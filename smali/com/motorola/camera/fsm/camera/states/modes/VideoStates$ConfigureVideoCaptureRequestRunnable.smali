.class public final Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    return-void

    :cond_0
    sget-object p1, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    return-void
.end method


# virtual methods
.method public final onCreateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable$1;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;ILandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "SEQ_ID"

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
