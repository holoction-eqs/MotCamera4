.class public final Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable$1;
.super Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;ILandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    return-void
.end method


# virtual methods
.method public final getOrientation(Ljava/lang/String;Z)I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoSnapshotCaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$ConfigureVideoCaptureRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    return p0
.end method
