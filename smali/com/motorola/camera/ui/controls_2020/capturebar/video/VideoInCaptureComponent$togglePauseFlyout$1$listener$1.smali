.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $it:Landroid/view/View;

.field public final synthetic $show:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;


# direct methods
.method public constructor <init>(Landroid/view/View;ZLcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->$it:Landroid/view/View;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->$show:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->$show:Z

    if-eqz v0, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->$it:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent$togglePauseFlyout$1$listener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->pauseButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
