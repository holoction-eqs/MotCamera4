.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

.field public final mCameraShouldBePressed:Z

.field public final mFocusShouldBePressed:Z


# direct methods
.method public constructor <init>(ZZLcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;->mFocusShouldBePressed:Z

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;->mCameraShouldBePressed:Z

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;->mBundleType:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "FOCUS_KEY_PRESSED"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "CAMERA_KEY_PRESSED"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;->mCameraShouldBePressed:Z

    if-ne v0, p1, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/CameraKeyStatusGuardRunnable;->mFocusShouldBePressed:Z

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
