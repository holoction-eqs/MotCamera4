.class public final synthetic Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070166

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_3

    iget-boolean v6, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v6, :cond_2

    move v4, v1

    :cond_2
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    instance-of v4, v0, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v4, :cond_9

    check-cast v0, Landroidx/media3/ui/DefaultTimeBar;

    iget-boolean v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    const/4 v5, 0x0

    iget-object v6, v0, Landroidx/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget-object v7, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iput-boolean v2, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    :goto_1
    iput v5, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberScale:F

    invoke-virtual {v0, v6}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_5
    iget v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    if-ne v4, v2, :cond_7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iput-boolean v1, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    goto :goto_1

    :cond_7
    const/4 v2, 0x3

    if-eq v4, v2, :cond_9

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8
    iput-boolean v1, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroidx/media3/ui/DefaultTimeBar;->scrubberScale:F

    iget-object v2, v0, Landroidx/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_9
    :goto_2
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->shownButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-boolean v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz v4, :cond_a

    invoke-static {v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->shouldHideInMinimalMode(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v3

    goto :goto_4

    :cond_a
    move v4, v1

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_b
    return-void

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->postDelayedRunnable(Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;J)V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_5
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBars()V

    return-void

    :goto_5
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    if-nez v3, :cond_c

    goto/16 :goto_b

    :cond_c
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v5, v4

    :goto_6
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, v2, :cond_d

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_d
    iget-object v4, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    if-eqz v4, :cond_e

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    invoke-static {v6}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v2

    move v8, v1

    :goto_7
    if-ge v8, v7, :cond_f

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v9

    add-int/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_f
    if-le v6, v5, :cond_13

    if-eqz v4, :cond_10

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result p0

    add-int/2addr v6, p0

    :cond_10
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_8
    if-ge v4, v7, :cond_12

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gt v6, v5, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_12
    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->removeViews(II)V

    :goto_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_14

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_13
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_14
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
