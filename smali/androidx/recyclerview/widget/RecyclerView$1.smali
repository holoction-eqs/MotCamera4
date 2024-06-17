.class public final Landroidx/recyclerview/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$1;->$r8$classId:I

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_2

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    :cond_3
    :goto_0
    return-void

    :goto_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_f

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v4, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    iget-object v6, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v2

    iget-object v8, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v2

    iget-object v10, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v2

    if-nez v5, :cond_4

    if-nez v7, :cond_4

    if-nez v11, :cond_4

    if-nez v9, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    iget-wide v14, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mRemoveDuration:J

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    move-object/from16 v16, v12

    iget-object v12, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v14, Landroidx/fragment/app/FragmentManager$7;

    invoke-direct {v14, v1, v13, v2, v3}, Landroidx/fragment/app/FragmentManager$7;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v12, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    move-object/from16 v12, v16

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1, v2}, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-eqz v5, :cond_6

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v2, v3, v14, v15}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->run()V

    :cond_7
    :goto_3
    if-eqz v9, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1, v2}, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-eqz v5, :cond_8

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v2, v3, v14, v15}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->run()V

    :cond_9
    :goto_4
    if-eqz v11, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v1, v2}, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    if-nez v5, :cond_b

    if-nez v7, :cond_b

    if-eqz v9, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->run()V

    goto :goto_8

    :cond_b
    :goto_5
    const-wide/16 v10, 0x0

    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    move-wide v14, v10

    :goto_6
    if-eqz v7, :cond_d

    iget-wide v4, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    goto :goto_7

    :cond_d
    move-wide v4, v10

    :goto_7
    if-eqz v9, :cond_e

    iget-wide v10, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    :cond_e
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v14

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
