.class public final Landroidx/recyclerview/widget/DefaultItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field public final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field public final synthetic val$deltaX:I

.field public final synthetic val$deltaY:I

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    iput p5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaY:I

    iput-object p6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaX:I

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->val$view:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz p0, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
