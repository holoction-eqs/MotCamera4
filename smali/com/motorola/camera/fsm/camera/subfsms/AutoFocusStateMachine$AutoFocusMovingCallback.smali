.class public abstract Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;


# virtual methods
.method public final onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;->onAutoFocusMoving(Z)V

    return-void
.end method

.method public final onAutoFocusInactive(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public abstract onAutoFocusMoving(Z)V
.end method

.method public final onAutoFocusScan(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;->onAutoFocusMoving(Z)V

    return-void
.end method

.method public final onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;->onAutoFocusMoving(Z)V

    return-void
.end method

.method public onFocusModeChanged(I)V
    .locals 0

    return-void
.end method

.method public final onManualFocusCompleted()V
    .locals 0

    return-void
.end method

.method public final onManualFocusStarted()V
    .locals 0

    return-void
.end method
