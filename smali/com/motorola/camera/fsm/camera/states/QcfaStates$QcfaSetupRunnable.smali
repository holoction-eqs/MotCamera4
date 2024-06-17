.class public final Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/QcfaStates;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;I)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/QcfaStates;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;Ljava/lang/Object;)V
    .locals 0

    .line 3
    const/4 p2, 0x1

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;I)V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/QcfaStates;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object p0, v1, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    .line 2
    const-class p1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p1

    .line 3
    :try_start_0
    sget-object p2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 4
    iput-object p0, p2, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    .line 5
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 6
    const-class p0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p0

    .line 7
    :try_start_1
    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    const/4 p2, 0x0

    .line 8
    iput-object p2, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 9
    iget-object p0, v1, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    .line 10
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 13
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
