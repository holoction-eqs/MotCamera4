.class public final synthetic Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;->mAvailabilityListener:Lcom/adobe/xmp/impl/xpath/XMPPath;

    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/AddOrRemoveAvailabilityCallbackRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_UNAVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;->mAvailabilityListener:Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraOpen$enumunboxing$(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen$enumunboxing$(Ljava/lang/String;I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession$enumunboxing$(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus$enumunboxing$(Ljava/lang/String;I)V

    :cond_0
    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/AddOrRemoveAvailabilityCallbackRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
