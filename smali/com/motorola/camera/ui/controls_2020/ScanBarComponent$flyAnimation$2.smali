.class public final Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;->this$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldRepeatBreathingAnimation:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    sget-wide v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->QR_CODE_START_ANIMATION_TIME:J

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :goto_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapComponent;->dualCaptureStateHelper:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->setAllowClickState(Z)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
