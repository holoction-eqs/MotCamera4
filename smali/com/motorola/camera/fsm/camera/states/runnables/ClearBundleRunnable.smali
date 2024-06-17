.class public Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mBundleType:Ljava/lang/Object;

.field public final mPost:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mBundleType:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mPost:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mBundleType:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mPost:Z

    return-void
.end method

.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 4
    const/4 p2, 0x1

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mPost:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mBundleType:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    :goto_0
    return-void

    .line 6
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "REVIEW_ACCEPT"

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mPost:Z

    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "SEQ_ID"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getSequenceListForRoot(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mPost:Z

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mBundleType:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable$$ExternalSyntheticLambda0;

    .line 7
    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    .line 8
    :try_start_0
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 9
    iget-object v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v5, "REVIEW_ACCEPT"

    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureHolderForSeqId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/saving/CaptureHolder;

    move-result-object p3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSetResultListener:Ljava/lang/ref/WeakReference;

    if-nez p3, :cond_1

    .line 10
    iget-object p3, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-static {v3, p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    goto :goto_3

    .line 11
    :cond_1
    invoke-static {p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v2

    goto :goto_2

    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Setting result on invalid capture!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    .line 12
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "SHOULD_EXIT"

    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mPost:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mPost:Z

    if-nez p1, :cond_5

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 14
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_4

    .line 15
    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 16
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    :goto_4
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "save failed for invalid capture!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 17
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 18
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
