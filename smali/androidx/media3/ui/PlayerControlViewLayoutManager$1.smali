.class public final Landroidx/media3/ui/PlayerControlViewLayoutManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    iget-object p0, v3, Landroidx/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_2
    iget-object p0, v3, Landroidx/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_3
    invoke-virtual {v3, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :pswitch_4
    invoke-virtual {v3, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :pswitch_5
    iget-object p0, v3, Landroidx/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, v3, Landroidx/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p0, v3, Landroidx/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    iget p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->$r8$classId:I

    const-wide/16 v0, 0xfa

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1, v5}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :pswitch_2
    invoke-virtual {p0, v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :pswitch_3
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    iget-boolean v6, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v6, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    instance-of v4, p1, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v4, :cond_6

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-nez p0, :cond_6

    check-cast p1, Landroidx/media3/ui/DefaultTimeBar;

    iget-object p0, p1, Landroidx/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iput-boolean v5, p1, Landroidx/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    new-array v3, v3, [F

    iget p1, p1, Landroidx/media3/ui/DefaultTimeBar;->scrubberScale:F

    aput p1, v3, v5

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v3, v2

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    return-void

    :pswitch_4
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    instance-of v4, p1, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v4, :cond_8

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-nez p0, :cond_8

    check-cast p1, Landroidx/media3/ui/DefaultTimeBar;

    iget-object p0, p1, Landroidx/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    new-array v3, v3, [F

    iget p1, p1, Landroidx/media3/ui/DefaultTimeBar;->scrubberScale:F

    aput p1, v3, v5

    const/4 p1, 0x0

    aput p1, v3, v2

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    return-void

    :goto_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
