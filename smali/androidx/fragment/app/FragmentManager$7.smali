.class public final Landroidx/fragment/app/FragmentManager$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$animatingView:Landroid/view/View;

.field public final synthetic val$container:Ljava/lang/Object;

.field public final synthetic val$fragment:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager$7;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$7;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$7;->val$container:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager$7;->val$fragment:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/FragmentManager$7;->val$animatingView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewPropertyAnimator;I)V
    .locals 0

    .line 2
    iput p5, p0, Landroidx/fragment/app/FragmentManager$7;->$r8$classId:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$7;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$7;->val$container:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager$7;->val$animatingView:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/FragmentManager$7;->val$fragment:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/FragmentManager$7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$7;->val$animatingView:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget v0, p0, Landroidx/fragment/app/FragmentManager$7;->$r8$classId:I

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$7;->this$0:Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager$7;->val$animatingView:Landroid/view/View;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager$7;->val$fragment:Ljava/lang/Object;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManager$7;->val$container:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v4, Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v3, p0}, Landroid/view/View;->setAlpha(F)V

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void

    :pswitch_1
    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    check-cast v4, Landroidx/fragment/app/Fragment;

    iget-object p0, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    iget-boolean p1, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :goto_0
    check-cast v4, Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/FragmentManager$7;->$r8$classId:I

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$7;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
