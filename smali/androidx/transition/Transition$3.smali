.class public final Landroidx/transition/Transition$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    iput-object p1, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    const/4 v1, 0x0

    const-string v2, "animation"

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    const/4 p0, 0x2

    iput p0, v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->state:I

    return-void

    :pswitch_1
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_2
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    const/16 p0, 0x8

    invoke-virtual {v4, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_3
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    iget-object p0, v4, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->removeSelf:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    :cond_1
    return-void

    :pswitch_4
    check-cast v4, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_5
    check-cast v4, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    iget-object p0, v4, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_6
    invoke-static {v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v3

    :pswitch_7
    check-cast v4, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    iput-object v3, v4, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-void

    :pswitch_8
    new-instance p0, Ljava/util/ArrayList;

    check-cast v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object p1, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v4}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :pswitch_9
    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v3, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    iput-boolean v1, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return-void

    :pswitch_a
    check-cast v4, Landroidx/transition/Transition;

    invoke-virtual {v4}, Landroidx/transition/Transition;->end()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :sswitch_0
    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :sswitch_1
    invoke-static {v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :sswitch_2
    new-instance p0, Ljava/util/ArrayList;

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object p1, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v2}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
