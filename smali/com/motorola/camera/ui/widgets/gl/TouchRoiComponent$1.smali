.class public final Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocusMoving(Z)V
    .locals 3

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLensMovementBehavior:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method
