.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProcessingComplete(Lcom/motorola/camera/CameraData;Landroid/os/Bundle;)V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaving:Z

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v3

    int-to-long v3, v3

    new-instance v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    long-to-int v3, v3

    sget-object v4, Lcom/motorola/camera/ShotType;->CINEMA_GRAPH:Lcom/motorola/camera/ShotType;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v1, v6, v4}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-virtual {v5, v3, v1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/settings/CameraType;Z)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "SEQ_ID"

    iget-object v4, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "CAPTURE_TRIGGER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "KEY_CODE"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iput-object p2, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string p2, "ORIENTATION"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iget-object p2, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    iget-object v0, v2, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v1, "SEQID"

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v3, "ANALYTICS_SEQID"

    invoke-virtual {p2, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {p2, v5}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    invoke-virtual {v2, p2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-boolean p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsActivityRunning:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/motorola/camera/SecureMediaIdsManager;->addMediaId(Landroid/net/Uri;JI)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroidx/work/JobListenableFuture$1;

    const/16 p2, 0xa

    invoke-direct {v9, p0, p2}, Landroidx/work/JobListenableFuture$1;-><init>(Ljava/lang/Object;I)V

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->start(Lcom/motorola/camera/CameraData;Landroidx/constraintlayout/utils/widget/ImageFilterButton;ZZZLandroidx/work/JobListenableFuture$1;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onProcessingFailed()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaving:Z

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
