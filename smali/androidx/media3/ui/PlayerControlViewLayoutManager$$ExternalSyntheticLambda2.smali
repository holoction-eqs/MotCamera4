.class public final synthetic Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->animateOverflow(F)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->animateOverflow(F)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
