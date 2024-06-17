.class public final Landroidx/core/view/ViewPropertyAnimatorCompat$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$listener:Ljava/lang/Object;

.field public final synthetic val$view:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Ljava/lang/Object;

    check-cast p1, Landroidx/core/view/ViewPropertyAnimatorListener;

    iget-object p0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->$r8$classId:I

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    goto :goto_0

    :pswitch_0
    check-cast v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    invoke-interface {v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd()V

    return-void

    :goto_0
    iget-object p1, v0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->setFraction(F)V

    iget-object p0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$view:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl21;->dispatchOnEnd(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$1;->val$listener:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/ViewPropertyAnimatorListener;

    invoke-interface {p0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
