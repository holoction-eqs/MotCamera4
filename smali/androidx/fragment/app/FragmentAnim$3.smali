.class public final Landroidx/fragment/app/FragmentAnim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic val$callback:Landroidx/fragment/app/FragmentManager$2;

.field public final synthetic val$container:Landroid/view/ViewGroup;

.field public final synthetic val$fragment:Landroidx/fragment/app/Fragment;

.field public final synthetic val$signal:Landroidx/core/os/CancellationSignal;

.field public final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManager$2;Landroidx/core/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$container:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/FragmentAnim$3;->val$viewToAnimate:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/FragmentAnim$3;->val$fragment:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Landroidx/fragment/app/FragmentAnim$3;->val$callback:Landroidx/fragment/app/FragmentManager$2;

    iput-object p5, p0, Landroidx/fragment/app/FragmentAnim$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object p1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$container:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v4

    iput-object v3, v4, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/FragmentAnim$3;->val$callback:Landroidx/fragment/app/FragmentManager$2;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-virtual {p1, v1, p0}, Landroidx/fragment/app/FragmentManager$2;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    :cond_1
    return-void
.end method
