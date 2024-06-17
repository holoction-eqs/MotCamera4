.class public final Lcom/motorola/camera/fsm/Fsm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAutoTransEvent:Ljava/lang/Object;

.field public mChangeListenersMap:Ljava/util/HashMap;

.field public mCurrentState:Ljava/lang/Object;

.field public final mFsmContext:Ljava/lang/Object;

.field public final mFsmLoader:Lcom/motorola/camera/fsm/camera/iFsmLoader;

.field public mStates:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/iFsmLoader;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Lcom/motorola/camera/fsm/camera/iFsmLoader;

    return-void
.end method

.method public static findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/State;Lcom/motorola/camera/fsm/State;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public final addState(Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/HashMap;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final fireChangeEvent(Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V

    iget-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/ChangeListener;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeListener;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleEvent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/State;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/fsm/State;->mTransitions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/camera/fsm/Fsm;->processTransition(Lcom/motorola/camera/fsm/State;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    array-length v2, v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    if-nez v1, :cond_2

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/motorola/camera/fsm/State;->mTransitions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {p0, v1, p1, p2}, Lcom/motorola/camera/fsm/Fsm;->processTransition(Lcom/motorola/camera/fsm/State;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return v1
.end method

.method public final processTransition(Lcom/motorola/camera/fsm/State;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v1, Lcom/motorola/camera/fsm/State;->mTransitions:Ljava/util/HashMap;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/CameraTransition;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    if-eqz v6, :cond_2

    invoke-interface {v6, v8, v2}, Lcom/motorola/camera/fsm/GuardedTransitionRunnable;->canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v7

    :goto_1
    if-eqz v6, :cond_0

    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/State;

    iget-boolean v6, v4, Lcom/motorola/camera/fsm/camera/CameraTransition;->mFireChangeEvent:Z

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/CameraTransition;->mDoAfter:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v10, v4, Lcom/motorola/camera/fsm/camera/CameraTransition;->mDoBefore:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/CameraTransition;->mEndState:Ljava/lang/Object;

    if-nez v4, :cond_5

    if-eqz v10, :cond_3

    iget-object v1, v0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v10, v1, v8, v2}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    if-eqz v9, :cond_4

    iget-object v1, v0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v9, v1, v8, v2}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    if-eqz v6, :cond_19

    iget-object v1, v0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/ChangeEvent$Type;->REENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/Fsm;->fireChangeEvent(Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V

    goto/16 :goto_e

    :cond_5
    iget-object v11, v0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/fsm/State;

    const/4 v12, 0x0

    if-nez v11, :cond_9

    iget-object v11, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Lcom/motorola/camera/fsm/camera/iFsmLoader;

    check-cast v11, Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v13, v4

    check-cast v13, Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v14, v11, Lcom/motorola/camera/fsm/camera/CameraFsm;->mDelayStates:Ljava/util/EnumMap;

    iget-object v13, v13, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    if-eqz v13, :cond_6

    array-length v15, v13

    if-lez v15, :cond_6

    aget-object v13, v13, v5

    goto :goto_2

    :cond_6
    move-object v13, v12

    :goto_2
    invoke-virtual {v14, v13}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/camera/fsm/camera/states/iCameraState;

    if-eqz v13, :cond_7

    new-instance v14, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {v14, v12}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Landroidx/media3/common/Format$$ExternalSyntheticLambda0;)V

    invoke-interface {v13, v14}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/fsm/ChangeEvent;)V

    iget-object v13, v14, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v15, v11, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v15, v14}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    goto :goto_3

    :cond_7
    iget-object v11, v0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/fsm/State;

    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transition \"to\" state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasn\'t been loaded!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    move-object v13, v12

    :goto_5
    iget-object v14, v1, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    array-length v15, v14

    if-ge v5, v15, :cond_b

    iget-object v15, v11, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    array-length v12, v15

    if-gt v12, v5, :cond_a

    goto :goto_6

    :cond_a
    aget-object v12, v14, v5

    aget-object v14, v15, v5

    if-ne v12, v14, :cond_b

    add-int/lit8 v5, v5, 0x1

    move-object v13, v12

    const/4 v12, 0x0

    goto :goto_5

    :cond_b
    :goto_6
    iget-object v1, v0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v7

    if-eqz v10, :cond_c

    iget-object v5, v0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v10, v5, v8, v2}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz v1, :cond_e

    move-object v5, v3

    :goto_7
    if-eqz v5, :cond_e

    if-eq v5, v13, :cond_e

    iget-object v10, v5, Lcom/motorola/camera/fsm/State;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    if-eqz v10, :cond_d

    iget-object v12, v5, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-virtual {v10, v12, v8, v2}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iget-object v5, v5, Lcom/motorola/camera/fsm/State;->mParent:Lcom/motorola/camera/fsm/State;

    goto :goto_7

    :cond_e
    iput-object v4, v0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-static {v11, v13}, Lcom/motorola/camera/fsm/Fsm;->findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/State;Lcom/motorola/camera/fsm/State;)I

    move-result v4

    :goto_8
    iget-object v5, v11, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    array-length v10, v5

    if-ge v4, v10, :cond_10

    aget-object v5, v5, v4

    iget-object v10, v5, Lcom/motorola/camera/fsm/State;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    if-eqz v10, :cond_f

    iget-object v5, v5, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-virtual {v10, v5, v8, v2}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_10
    if-eqz v1, :cond_12

    invoke-static {v11, v13}, Lcom/motorola/camera/fsm/Fsm;->findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/State;Lcom/motorola/camera/fsm/State;)I

    move-result v4

    :goto_9
    array-length v10, v5

    if-ge v4, v10, :cond_12

    aget-object v10, v5, v4

    iget-object v12, v10, Lcom/motorola/camera/fsm/State;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    if-eqz v12, :cond_11

    iget-object v10, v10, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-virtual {v12, v10, v8, v2}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_12
    if-eqz v9, :cond_13

    iget-object v4, v0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v9, v4, v8, v2}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    if-eqz v6, :cond_16

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v6, v3

    :goto_a
    if-eqz v6, :cond_14

    if-eq v6, v13, :cond_14

    new-instance v9, Landroid/util/Pair;

    sget-object v10, Lcom/motorola/camera/fsm/ChangeEvent$Type;->EXITING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    iget-object v12, v6, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-direct {v9, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Lcom/motorola/camera/fsm/State;->mParent:Lcom/motorola/camera/fsm/State;

    goto :goto_a

    :cond_14
    invoke-static {v11, v13}, Lcom/motorola/camera/fsm/Fsm;->findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/State;Lcom/motorola/camera/fsm/State;)I

    move-result v6

    :goto_b
    array-length v9, v5

    if-ge v6, v9, :cond_15

    new-instance v9, Landroid/util/Pair;

    aget-object v10, v5, v6

    iget-object v10, v10, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    sget-object v12, Lcom/motorola/camera/fsm/ChangeEvent$Type;->ENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-direct {v9, v10, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_15
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-virtual {v0, v6, v5}, Lcom/motorola/camera/fsm/Fsm;->fireChangeEvent(Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V

    goto :goto_c

    :cond_16
    if-eqz v1, :cond_18

    :goto_d
    if-eqz v3, :cond_18

    if-eq v3, v13, :cond_18

    iget-object v1, v3, Lcom/motorola/camera/fsm/State;->mExitAfterFireChange:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    if-eqz v1, :cond_17

    iget-object v4, v3, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-virtual {v1, v4, v8, v2}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    iget-object v3, v3, Lcom/motorola/camera/fsm/State;->mParent:Lcom/motorola/camera/fsm/State;

    goto :goto_d

    :cond_18
    iget-boolean v1, v11, Lcom/motorola/camera/fsm/State;->mAutoTransitionState:Z

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/Fsm;->handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_19
    :goto_e
    move v5, v7

    :cond_1a
    return v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
