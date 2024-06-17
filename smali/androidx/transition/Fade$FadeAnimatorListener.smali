.class public final Landroidx/transition/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mLayerTypeChanged:Z

.field public final mView:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-boolean v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    iput-object p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->$r8$classId:I

    .line 3
    iput-boolean p2, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    iput-object p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    goto :goto_0

    :cond_0
    check-cast v2, Landroidx/recyclerview/widget/FastScroller;

    iget-object p0, v2, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    iput v1, v2, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    iput p0, v2, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    iget-object p0, v2, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :pswitch_1
    check-cast v2, Landroid/view/View;

    sget-object p1, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v2, p1}, Landroid/view/View;->setTransitionAlpha(F)V

    iget-boolean p0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v2, v1, p0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void

    :goto_1
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-nez p0, :cond_3

    move-object p0, v2

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->INFLATION_STATES:Ljava/util/Set;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setMenuUIVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateShowModePill()V

    :cond_3
    check-cast v2, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    iget-boolean p0, v2, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modeChangeTriggered:Z

    if-nez p0, :cond_4

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->setUIClickable(Z)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mView:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api16Impl;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    const/4 p0, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
