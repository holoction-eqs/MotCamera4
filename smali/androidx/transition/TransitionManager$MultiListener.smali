.class public final Landroidx/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final mSceneRoot:Landroid/view/ViewGroup;

.field public final mTransition:Landroidx/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    iput-object p1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v2, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-nez v2, :cond_0

    return v6

    :cond_0
    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, v3

    :goto_1
    iget-object v7, v0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/transition/Fade$1;

    invoke-direct {v4, v6, v0, v2}, Landroidx/transition/Fade$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v0}, Landroidx/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition;

    invoke-virtual {v4, v1}, Landroidx/transition/Transition;->resume(Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    iget-object v2, v7, Landroidx/transition/Transition;->mStartValues:Landroidx/work/WorkQuery;

    iget-object v4, v7, Landroidx/transition/Transition;->mEndValues:Landroidx/work/WorkQuery;

    new-instance v5, Landroidx/collection/ArrayMap;

    iget-object v8, v2, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    check-cast v8, Landroidx/collection/ArrayMap;

    invoke-direct {v5, v8}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/ArrayMap;)V

    new-instance v8, Landroidx/collection/ArrayMap;

    iget-object v9, v4, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    check-cast v9, Landroidx/collection/ArrayMap;

    invoke-direct {v8, v9}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/ArrayMap;)V

    move v9, v0

    :goto_3
    iget-object v10, v7, Landroidx/transition/Transition;->mMatchOrder:[I

    array-length v11, v10

    if-ge v9, v11, :cond_f

    aget v10, v10, v9

    if-eq v10, v6, :cond_c

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a

    const/4 v11, 0x3

    if-eq v10, v11, :cond_8

    const/4 v11, 0x4

    if-eq v10, v11, :cond_5

    :cond_4
    move-object v15, v1

    goto/16 :goto_9

    :cond_5
    iget-object v10, v2, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    check-cast v10, Landroidx/collection/LongSparseArray;

    iget-object v11, v4, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    check-cast v11, Landroidx/collection/LongSparseArray;

    invoke-virtual {v10}, Landroidx/collection/LongSparseArray;->size()I

    move-result v12

    move v13, v0

    :goto_4
    if-ge v13, v12, :cond_4

    invoke-virtual {v10, v13}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    if-eqz v14, :cond_6

    invoke-virtual {v7, v14}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v1

    invoke-virtual {v10, v13}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1, v3}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v7, v0}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v5, v14, v3}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    invoke-virtual {v8, v0, v3}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroidx/transition/TransitionValues;

    if-eqz v1, :cond_7

    if-eqz v6, :cond_7

    iget-object v3, v7, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v14}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    move-object v15, v1

    :cond_7
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object v1, v15

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    move-object v15, v1

    iget-object v0, v2, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, v4, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v3, :cond_e

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_9

    invoke-virtual {v7, v10}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_9

    invoke-virtual {v7, v11}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    invoke-virtual {v5, v10, v12}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/transition/TransitionValues;

    invoke-virtual {v8, v11, v12}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/transition/TransitionValues;

    if-eqz v13, :cond_9

    if-eqz v14, :cond_9

    iget-object v12, v7, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v7, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v10}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v11}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    move-object v15, v1

    iget-object v0, v2, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/ArrayMap;

    iget-object v1, v4, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/ArrayMap;

    iget v3, v0, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v3, :cond_e

    invoke-virtual {v0, v6}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_b

    invoke-virtual {v7, v10}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v0, v6}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_b

    invoke-virtual {v7, v11}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v5, v10, v12}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/transition/TransitionValues;

    invoke-virtual {v8, v11, v12}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/transition/TransitionValues;

    if-eqz v13, :cond_b

    if-eqz v14, :cond_b

    iget-object v12, v7, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v7, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v10}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v11}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    move-object v15, v1

    iget v0, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    :cond_d
    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_e

    invoke-virtual {v5, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-virtual {v7, v1}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v8, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    if-eqz v1, :cond_d

    iget-object v3, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v5, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionValues;

    iget-object v6, v7, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v7, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object v1, v15

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_f
    move-object v15, v1

    const/4 v0, 0x0

    :goto_a
    iget v1, v5, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v0, v1, :cond_11

    invoke-virtual {v5, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    iget-object v2, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v7, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_b
    iget v1, v8, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-ge v0, v1, :cond_13

    invoke-virtual {v8, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    iget-object v2, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v7, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_13
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    iget v1, v0, Landroidx/collection/SimpleArrayMap;->mSize:I

    sget-object v2, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    invoke-virtual {v15}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_c
    if-ltz v1, :cond_1c

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_1a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$AnimationInfo;

    if-eqz v5, :cond_1a

    iget-object v4, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v4, :cond_1a

    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    instance-of v8, v6, Landroidx/transition/WindowIdApi18;

    if-eqz v8, :cond_14

    check-cast v6, Landroidx/transition/WindowIdApi18;

    iget-object v6, v6, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {v6, v2}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    goto :goto_d

    :cond_14
    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_1a

    const/4 v6, 0x1

    invoke-virtual {v7, v4, v6}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v8

    invoke-virtual {v7, v4, v6}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v9

    if-nez v8, :cond_15

    if-nez v9, :cond_15

    iget-object v6, v7, Landroidx/transition/Transition;->mEndValues:Landroidx/work/WorkQuery;

    iget-object v6, v6, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    check-cast v6, Landroidx/collection/ArrayMap;

    const/4 v10, 0x0

    invoke-virtual {v6, v4, v10}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroidx/transition/TransitionValues;

    goto :goto_e

    :cond_15
    const/4 v10, 0x0

    :goto_e
    if-nez v8, :cond_16

    if-eqz v9, :cond_17

    :cond_16
    iget-object v4, v5, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    iget-object v5, v5, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    invoke-virtual {v4, v5, v9}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    goto :goto_f

    :cond_17
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_10

    :cond_18
    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_19
    :goto_10
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    goto :goto_11

    :cond_1a
    const/4 v10, 0x0

    :cond_1b
    :goto_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_1c
    iget-object v2, v7, Landroidx/transition/Transition;->mStartValues:Landroidx/work/WorkQuery;

    iget-object v3, v7, Landroidx/transition/Transition;->mEndValues:Landroidx/work/WorkQuery;

    iget-object v4, v7, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v5, v7, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v0, v7

    move-object v1, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/work/WorkQuery;Landroidx/work/WorkQuery;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Landroidx/transition/Transition;->runAnimators()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v0, Landroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Landroidx/transition/TransitionManager;->getRunningTransitions()Landroidx/collection/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->resume(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/transition/TransitionManager$MultiListener;->mTransition:Landroidx/transition/Transition;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->clearValues(Z)V

    return-void
.end method
