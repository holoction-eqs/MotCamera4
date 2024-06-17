.class public final Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;
.source "SourceFile"


# direct methods
.method public static captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V
    .locals 4

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Landroidx/collection/MapCollections$KeySet;

    invoke-virtual {p0}, Landroidx/collection/MapCollections$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final executeOperations(Ljava/util/ArrayList;Z)V
    .locals 35

    move-object/from16 v6, p0

    move/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v2, v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->_from(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v13, :cond_1

    if-eq v3, v12, :cond_2

    if-eq v3, v11, :cond_2

    goto :goto_0

    :cond_1
    if-eq v2, v12, :cond_0

    move-object v10, v1

    goto :goto_0

    :cond_2
    if-ne v2, v12, :cond_0

    if-nez v9, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    new-instance v2, Landroidx/core/os/CancellationSignal;

    invoke-direct {v2}, Landroidx/core/os/CancellationSignal;-><init>()V

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->onStart()V

    iget-object v3, v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-direct {v3, v1, v2, v7}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/core/os/CancellationSignal;Z)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/core/os/CancellationSignal;

    invoke-direct {v2}, Landroidx/core/os/CancellationSignal;-><init>()V

    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->onStart()V

    iget-object v3, v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    if-eqz v7, :cond_4

    if-ne v1, v9, :cond_5

    goto :goto_2

    :cond_4
    if-ne v1, v10, :cond_5

    :goto_2
    move v4, v13

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-direct {v3, v1, v2, v7, v4}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/core/os/CancellationSignal;ZZ)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/fragment/app/FragmentTransition$1;

    invoke-direct {v2, v6, v5, v1}, Landroidx/fragment/app/FragmentTransition$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mCompletionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->isVisibilityUnchanged()Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v16, v0

    goto/16 :goto_7

    :cond_7
    iget-object v12, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-virtual {v1, v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v13

    iget-object v11, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    invoke-virtual {v1, v11}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    move-result-object v8

    const-string v4, " returned Transition "

    move-object/from16 v16, v0

    const-string v0, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v13, :cond_9

    if-eqz v8, :cond_9

    if-ne v13, v8, :cond_8

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_5
    if-eqz v13, :cond_a

    goto :goto_6

    :cond_a
    move-object v13, v8

    :goto_6
    if-nez v2, :cond_b

    move-object v2, v13

    goto :goto_7

    :cond_b
    if-eqz v13, :cond_d

    if-ne v2, v13, :cond_c

    goto :goto_7

    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    :goto_7
    move-object/from16 v0, v16

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_e
    iget-object v13, v6, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    const-string v12, "FragmentManager"

    if-nez v2, :cond_10

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    iget-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->completeSpecialEffect()V

    goto :goto_8

    :cond_f
    move-object v15, v6

    move-object/from16 v25, v14

    const/4 v0, 0x0

    move-object v6, v5

    move-object v14, v12

    goto/16 :goto_1c

    :cond_10
    new-instance v8, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object v5, v9

    move-object/from16 v26, v12

    move-object/from16 v25, v14

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v27, 0x0

    move-object v14, v10

    :goto_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_23

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v28, v3

    move-object/from16 v3, v18

    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    iget-object v3, v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    if-eqz v3, :cond_11

    const/16 v18, 0x1

    goto :goto_a

    :cond_11
    const/16 v18, 0x0

    :goto_a
    if-eqz v18, :cond_22

    if-eqz v5, :cond_22

    if-eqz v14, :cond_22

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iget-object v3, v14, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v14, v3, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v14, :cond_12

    iget-object v14, v14, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v14, :cond_13

    :cond_12
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    iget-object v5, v5, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v6, :cond_14

    iget-object v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v6, :cond_15

    :cond_14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    move-object/from16 v29, v15

    iget-object v15, v5, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v15, :cond_16

    iget-object v15, v15, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-nez v15, :cond_17

    :cond_16
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    move-object/from16 v30, v8

    move-object/from16 v31, v11

    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v18, v2

    const/4 v2, -0x1

    if-ge v8, v11, :cond_19

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-eq v11, v2, :cond_18

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14, v11, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v18

    goto :goto_b

    :cond_19
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v6, :cond_1a

    iget-object v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-nez v6, :cond_1b

    :cond_1a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_1b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v8, :cond_1c

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v15, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    const/4 v2, -0x1

    goto :goto_c

    :cond_1c
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iget-object v8, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v2, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    invoke-static {v2, v14}, Landroidx/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v0, v8}, Landroidx/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    iget-object v11, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v8, v11}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    invoke-static {v8, v6}, Landroidx/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-static {v8, v11}, Landroidx/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    sget-object v11, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionCompat21;

    iget v11, v0, Landroidx/collection/SimpleArrayMap;->mSize:I

    :cond_1d
    :goto_d
    const/4 v15, -0x1

    add-int/2addr v11, v15

    if-ltz v11, :cond_1e

    invoke-virtual {v0, v11}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v8, v15}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    invoke-virtual {v0, v11}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_d

    :cond_1e
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-static {v2, v11}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-static {v8, v11}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object v15, v0

    move-object v7, v4

    move-object v5, v9

    move-object v14, v10

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    move-object/from16 v0, v30

    const/4 v12, 0x0

    goto/16 :goto_10

    :cond_1f
    invoke-static {v3, v5, v7}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    invoke-direct {v3, v10, v9, v7, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;ZLandroidx/collection/ArrayMap;)V

    invoke-static {v13, v3}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v3, v18

    invoke-virtual {v3, v2, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v28, v2

    goto :goto_e

    :cond_20
    move-object/from16 v3, v18

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_e
    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2, v11}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_21

    new-instance v8, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    const/4 v11, 0x2

    move-object v15, v0

    move-object v0, v8

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v33, v3

    move-object/from16 v32, v16

    move-object v3, v6

    move v6, v5

    move-object v5, v4

    move-object/from16 v4, v31

    move-object v7, v5

    move-object/from16 v6, v17

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/utils/WorkProgressUpdater$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v13, v8}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, v30

    move-object/from16 v2, v33

    const/16 v27, 0x1

    goto :goto_f

    :cond_21
    move-object v15, v0

    move-object v14, v1

    move-object/from16 v33, v3

    move-object v7, v4

    move-object/from16 v32, v16

    move-object/from16 v6, v17

    move-object/from16 v0, v30

    move-object/from16 v2, v33

    :goto_f
    invoke-virtual {v2, v12, v0, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v12

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    invoke-virtual/range {v16 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v3, v32

    invoke-virtual {v3, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v9

    move-object v1, v14

    move-object v14, v10

    goto :goto_10

    :cond_22
    move-object v7, v4

    move-object/from16 v31, v11

    move-object/from16 v29, v15

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object v15, v0

    move-object v0, v8

    :goto_10
    move-object v8, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object v4, v7

    move-object v0, v15

    move-object/from16 v3, v28

    move-object/from16 v15, v29

    move-object/from16 v11, v31

    move-object/from16 v6, p0

    move/from16 v7, p2

    goto/16 :goto_9

    :cond_23
    move-object/from16 v28, v3

    move-object v7, v4

    move-object/from16 v31, v11

    move-object/from16 v29, v15

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object v15, v0

    move-object v0, v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v24, v15

    const/4 v11, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_30

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p2, v8

    move-object/from16 v8, v16

    check-cast v8, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->isVisibilityUnchanged()Z

    move-result v16

    if-eqz v16, :cond_24

    move-object/from16 v30, v10

    iget-object v10, v8, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v10, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    move-object/from16 v32, v9

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->completeSpecialEffect()V

    move-object/from16 v8, p2

    move-object/from16 v10, v30

    move-object/from16 v9, v32

    goto :goto_11

    :cond_24
    move-object/from16 v32, v9

    move-object/from16 v30, v10

    iget-object v9, v8, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    invoke-virtual {v2, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v8, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v10, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    if-eqz v12, :cond_26

    if-eq v10, v5, :cond_25

    if-ne v10, v15, :cond_26

    :cond_25
    const/4 v15, 0x1

    goto :goto_12

    :cond_26
    const/4 v15, 0x0

    :goto_12
    if-nez v9, :cond_28

    if-nez v15, :cond_27

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->completeSpecialEffect()V

    :cond_27
    const/4 v8, 0x0

    move-object/from16 v15, p0

    move-object/from16 v34, v11

    move-object/from16 v33, v12

    move-object/from16 v11, v28

    move-object/from16 v5, v31

    goto/16 :goto_16

    :cond_28
    move-object/from16 v33, v12

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v34, v11

    iget-object v11, v10, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v12, v11}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v15, :cond_2a

    if-ne v10, v5, :cond_29

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_29
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2a
    :goto_13
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v2, v0, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Landroid/view/View;Ljava/lang/Object;)V

    :cond_2b
    move-object/from16 v15, p0

    goto :goto_14

    :cond_2c
    invoke-virtual {v2, v9, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v9

    move-object/from16 v18, v9

    move-object/from16 v19, v12

    invoke-virtual/range {v16 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget v5, v10, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    const/4 v11, 0x3

    if-ne v5, v11, :cond_2b

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, v10, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v15, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v9, v11, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v5, Landroidx/fragment/app/Fragment$3;

    const/4 v11, 0x1

    move-object/from16 v15, p0

    invoke-direct {v5, v11, v15, v12}, Landroidx/fragment/app/Fragment$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v13, v5}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_14
    iget v5, v10, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    const/4 v11, 0x2

    if-ne v5, v11, :cond_2e

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v5, v31

    if-eqz v27, :cond_2d

    invoke-virtual {v2, v9, v5}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_2d
    move-object/from16 v11, v28

    goto :goto_15

    :cond_2e
    move-object/from16 v11, v28

    move-object/from16 v5, v31

    invoke-virtual {v2, v11, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Landroid/view/View;Ljava/lang/Object;)V

    :goto_15
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v8, v8, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    if-eqz v8, :cond_2f

    const/4 v8, 0x0

    invoke-virtual {v2, v14, v9, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    goto :goto_16

    :cond_2f
    move-object/from16 v10, v34

    const/4 v8, 0x0

    invoke-virtual {v2, v10, v9, v8}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v34, v9

    :goto_16
    move-object/from16 v8, p2

    move-object/from16 v31, v5

    move-object/from16 v28, v11

    move-object/from16 v10, v30

    move-object v15, v10

    move-object/from16 v5, v32

    move-object v9, v5

    move-object/from16 v12, v33

    move-object/from16 v11, v34

    goto/16 :goto_11

    :cond_30
    move-object/from16 v15, p0

    move-object/from16 v32, v9

    move-object/from16 v30, v10

    move-object v10, v11

    invoke-virtual {v2, v14, v10, v12}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->isVisibilityUnchanged()Z

    move-result v9

    if-eqz v9, :cond_31

    goto :goto_17

    :cond_31
    iget-object v9, v8, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v9, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    if-eqz v12, :cond_33

    move-object/from16 v10, v32

    move-object/from16 v11, v30

    if-eq v9, v10, :cond_32

    if-ne v9, v11, :cond_34

    :cond_32
    move-object/from16 p2, v5

    const/4 v14, 0x1

    goto :goto_18

    :cond_33
    move-object/from16 v11, v30

    move-object/from16 v10, v32

    :cond_34
    move-object/from16 p2, v5

    const/4 v14, 0x0

    :goto_18
    iget-object v5, v8, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    if-nez v5, :cond_36

    if-eqz v14, :cond_35

    goto :goto_19

    :cond_35
    move-object/from16 v5, p2

    move-object/from16 v32, v10

    goto :goto_1b

    :cond_36
    :goto_19
    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v13}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_38

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_37

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "SpecialEffectsController: Container "

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " has not been laid out. Completing operation "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v14, v26

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_37
    move-object/from16 v14, v26

    :goto_1a
    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->completeSpecialEffect()V

    move-object/from16 v5, p2

    move-object/from16 v32, v10

    move-object/from16 v30, v11

    move-object/from16 v26, v14

    goto :goto_17

    :cond_38
    move-object/from16 v14, v26

    iget-object v5, v8, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v5, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v5, v5, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v5, v8, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Ljava/lang/Object;

    check-cast v5, Landroidx/core/os/CancellationSignal;

    new-instance v9, Landroidx/fragment/app/Fragment$3;

    move-object/from16 v32, v10

    const/4 v10, 0x2

    invoke-direct {v9, v10, v15, v8}, Landroidx/fragment/app/Fragment$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v5, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    move-object/from16 v5, p2

    :goto_1b
    move-object/from16 v30, v11

    goto/16 :goto_17

    :cond_39
    move-object/from16 v14, v26

    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v13}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_3a

    const/4 v0, 0x0

    goto :goto_1c

    :cond_3a
    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    invoke-static {v1}, Landroidx/fragment/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v13, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v0, v24

    invoke-static {v13, v7, v1, v5, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;)V

    const/4 v0, 0x0

    invoke-static {v4, v0}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v12, v7, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_1c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v0

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v12}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->isVisibilityUnchanged()Z

    move-result v8

    if-eqz v8, :cond_3b

    goto :goto_1e

    :cond_3b
    invoke-virtual {v12, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v8

    if-nez v8, :cond_3d

    :cond_3c
    :goto_1e
    invoke-virtual {v12}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->completeSpecialEffect()V

    goto :goto_1f

    :cond_3d
    iget-object v11, v8, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-nez v11, :cond_3e

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_3e
    iget-object v8, v12, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    move-object v10, v8

    check-cast v10, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v8, v10, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring Animator set on "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as this Fragment was involved in a Transition."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :goto_1f
    const/4 v0, 0x0

    goto :goto_1d

    :cond_3f
    iget v0, v10, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    const/4 v9, 0x3

    if-ne v0, v9, :cond_40

    const/4 v0, 0x1

    goto :goto_20

    :cond_40
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_41

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_41
    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v7, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    move-object/from16 p2, v7

    move-object/from16 v16, v8

    move-object v8, v13

    move/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 v18, v10

    move v10, v0

    move-object v0, v11

    move-object/from16 v11, v18

    move-object/from16 v32, v3

    move-object v3, v14

    move-object v14, v12

    invoke-direct/range {v7 .. v12}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v7, v16

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v7, v14, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Ljava/lang/Object;

    check-cast v7, Landroidx/core/os/CancellationSignal;

    new-instance v8, Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-direct {v8, v15, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;)V

    invoke-virtual {v7, v8}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    move-object v14, v3

    move-object/from16 v3, v32

    const/4 v0, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1d

    :cond_42
    move-object v3, v14

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    iget-object v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v5, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v8, v5, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    const-string v9, "Ignoring Animation set on "

    if-eqz v1, :cond_43

    const/4 v10, 0x2

    invoke-static {v10}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_44

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as Animations cannot run alongside Transitions."

    goto :goto_22

    :cond_43
    const/4 v10, 0x2

    if-eqz v7, :cond_45

    invoke-static {v10}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_44

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as Animations cannot run alongside Animators."

    :goto_22
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->completeSpecialEffect()V

    goto :goto_21

    :cond_45
    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v5, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    const/4 v11, 0x1

    if-eq v5, v11, :cond_46

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->completeSpecialEffect()V

    goto :goto_23

    :cond_46
    invoke-virtual {v13, v8}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v5, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    invoke-direct {v5, v9, v13, v8}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v9, Landroidx/fragment/app/FragmentAnim$2;

    invoke-direct {v9, v8, v13, v4, v15}, Landroidx/fragment/app/FragmentAnim$2;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/DefaultSpecialEffectsController;)V

    invoke-virtual {v5, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v8, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_23
    iget-object v5, v4, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Ljava/lang/Object;

    check-cast v5, Landroidx/core/os/CancellationSignal;

    new-instance v9, Landroidx/work/WorkQuery;

    invoke-direct {v9, v8, v13, v4, v15}, Landroidx/work/WorkQuery;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/DefaultSpecialEffectsController;)V

    invoke-virtual {v5, v9}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    goto/16 :goto_21

    :cond_47
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v2, v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v1, v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    invoke-static {v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->_applyState(ILandroid/view/View;)V

    goto :goto_24

    :cond_48
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
