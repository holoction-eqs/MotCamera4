.class public final Landroidx/recyclerview/widget/AsyncListDiffer$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->this$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    iget v3, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->$r8$classId:I

    const/4 v4, 0x0

    iget-object v5, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->val$result:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;->this$1:Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    move-object v13, v0

    check-cast v13, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v7, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v11, v7

    :goto_1
    iget-object v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_2

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v14, v7

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    iget-object v15, v13, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iget-wide v8, v13, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v8, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v8, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v10, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v9, Landroidx/recyclerview/widget/DefaultItemAnimator$7;

    const/16 v16, 0x0

    move-object v7, v9

    move-object v8, v13

    move-object v2, v9

    move-object v9, v6

    move-object v1, v12

    move/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Landroidx/recyclerview/widget/DefaultItemAnimator$7;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v1, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-wide v7, v13, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator$7;

    const/4 v12, 0x1

    move-object v7, v2

    move-object v8, v13

    move-object v9, v6

    move-object v11, v14

    invoke-direct/range {v7 .. v12}, Landroidx/recyclerview/widget/DefaultItemAnimator$7;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v8, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v3, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iget v6, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    sub-int v9, v3, v6

    iget v3, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    iget v2, v2, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    sub-int v11, v3, v2

    if-eqz v9, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    iget-object v2, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, v7, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    invoke-virtual {v12, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator$6;

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroidx/recyclerview/widget/DefaultItemAnimator$6;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    check-cast v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v1, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget v2, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget v3, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$runGeneration:I

    if-ne v2, v3, :cond_14

    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    iget-object v2, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iget-object v3, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iput-object v3, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    instance-of v4, v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    if-eqz v4, :cond_8

    check-cast v3, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    goto :goto_4

    :cond_8
    new-instance v4, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-direct {v4, v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    move-object v3, v4

    :goto_4
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v6, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iget v9, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    iget v10, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    move v11, v10

    move v10, v9

    :goto_5
    if-ltz v7, :cond_13

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v13, v12, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v14, v12, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v13, v14

    iget v15, v12, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int v8, v14, v15

    move-object/from16 v16, v6

    :goto_6
    iget-object v6, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    move/from16 v18, v11

    iget-object v11, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/loader/app/LoaderManager;

    if-le v10, v13, :cond_c

    add-int/lit8 v10, v10, -0x1

    aget v6, v6, v10

    and-int/lit8 v19, v6, 0xc

    if-eqz v19, :cond_a

    move/from16 v19, v13

    shr-int/lit8 v13, v6, 0x4

    move/from16 v20, v15

    const/4 v15, 0x0

    invoke-static {v4, v13, v15}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v15

    if-eqz v15, :cond_9

    iget v15, v15, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v15, v9, v15

    move-object/from16 v21, v1

    const/4 v1, 0x1

    sub-int/2addr v15, v1

    invoke-virtual {v3, v10, v15}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_b

    invoke-virtual {v11, v10, v13}, Landroidx/loader/app/LoaderManager;->getChangePayload(II)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v15, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(Ljava/lang/Object;II)V

    goto :goto_7

    :cond_9
    move-object/from16 v21, v1

    const/4 v1, 0x1

    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v11, v9, v10

    sub-int/2addr v11, v1

    invoke-direct {v6, v10, v11, v1}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    move-object/from16 v21, v1

    move/from16 v19, v13

    move/from16 v20, v15

    const/4 v1, 0x1

    invoke-virtual {v3, v10, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    add-int/lit8 v9, v9, -0x1

    :cond_b
    :goto_7
    move/from16 v11, v18

    move/from16 v13, v19

    move/from16 v15, v20

    move-object/from16 v1, v21

    goto :goto_6

    :cond_c
    move-object/from16 v21, v1

    move/from16 v20, v15

    move/from16 v1, v18

    :goto_8
    if-le v1, v8, :cond_10

    add-int/lit8 v1, v1, -0x1

    iget-object v13, v5, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v13, v13, v1

    and-int/lit8 v15, v13, 0xc

    if-eqz v15, :cond_e

    shr-int/lit8 v15, v13, 0x4

    move-object/from16 v18, v5

    move/from16 v19, v8

    const/4 v5, 0x1

    invoke-static {v4, v15, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v8

    if-nez v8, :cond_d

    new-instance v8, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v13, v9, v10

    const/4 v15, 0x0

    invoke-direct {v8, v1, v13, v15}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move/from16 v17, v15

    goto :goto_9

    :cond_d
    const/16 v17, 0x0

    iget v8, v8, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v8, v9, v8

    sub-int/2addr v8, v5

    invoke-virtual {v3, v8, v10}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v8, v13, 0x4

    if-eqz v8, :cond_f

    invoke-virtual {v11, v15, v1}, Landroidx/loader/app/LoaderManager;->getChangePayload(II)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v10, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(Ljava/lang/Object;II)V

    goto :goto_9

    :cond_e
    move-object/from16 v18, v5

    move/from16 v19, v8

    const/4 v5, 0x1

    const/16 v17, 0x0

    invoke-virtual {v3, v10, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    add-int/lit8 v9, v9, 0x1

    :cond_f
    :goto_9
    move-object/from16 v5, v18

    move/from16 v8, v19

    goto :goto_8

    :cond_10
    move-object/from16 v18, v5

    const/16 v17, 0x0

    iget v10, v12, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    move v5, v10

    move/from16 v1, v17

    move/from16 v8, v20

    :goto_a
    if-ge v1, v14, :cond_12

    aget v12, v6, v5

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x2

    if-ne v12, v13, :cond_11

    invoke-virtual {v11, v5, v8}, Landroidx/loader/app/LoaderManager;->getChangePayload(II)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v3, v12, v5, v13}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(Ljava/lang/Object;II)V

    goto :goto_b

    :cond_11
    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_b
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    const/4 v12, 0x0

    const/4 v13, 0x1

    add-int/lit8 v7, v7, -0x1

    move v8, v13

    move-object/from16 v6, v16

    move-object/from16 v5, v18

    move/from16 v11, v20

    move-object/from16 v1, v21

    goto/16 :goto_5

    :cond_13
    move-object/from16 v21, v1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$commitCallback:Ljava/lang/Runnable;

    move-object/from16 v1, v21

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_14
    return-void

    :goto_c
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v2, v7, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v10, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-wide v11, v7, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mAddDuration:J

    invoke-virtual {v3, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroidx/fragment/app/FragmentManager$7;

    const/4 v11, 0x2

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Landroidx/fragment/app/FragmentManager$7;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewPropertyAnimator;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_d

    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
