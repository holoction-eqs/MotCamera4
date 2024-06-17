.class public final Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
