.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$2;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final runnableWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$2;->runnableWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 25

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v1, :cond_33

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$2;->runnableWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    if-eqz v1, :cond_32

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v3, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v2, :cond_0

    goto/16 :goto_17

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mCancelled:Z

    if-eqz v3, :cond_2

    iget-boolean v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    if-eqz v0, :cond_34

    :goto_0
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->cancelCleanup(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    goto/16 :goto_17

    :cond_2
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;

    invoke-direct {v3, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    iget-boolean v4, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->noOnDemandRequests:Z

    if-nez v4, :cond_3

    iget-boolean v4, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allMetadataCollected:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    if-nez v4, :cond_3

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_3
    iget-boolean v4, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allCollectionDone:Z

    if-nez v4, :cond_8

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mFullFrameRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    iget-boolean v8, v7, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v8, :cond_5

    iget-object v8, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v4}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->normalFramesCollected:Z

    if-eqz v4, :cond_7

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_7
    iget-boolean v4, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allFailed:Z

    if-nez v4, :cond_9

    goto/16 :goto_17

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    iget-boolean v4, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isDeterminateFgProcessingShot:Z

    if-nez v4, :cond_9

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_9
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-boolean v5, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allJpegsReceived:Z

    const/4 v6, 0x0

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;ZI)V

    iget-boolean v5, v4, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    if-eqz v5, :cond_a

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_a
    iget-boolean v5, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allFailed:Z

    if-eqz v5, :cond_b

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1, v2, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;I)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    iget-boolean v5, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allComplete:Z

    if-eqz v5, :cond_34

    iget-boolean v5, v4, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    if-eqz v5, :cond_34

    iget-boolean v5, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mSequenceStopped:Z

    if-eqz v5, :cond_34

    iget-boolean v3, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RunnablesStatus;->allJpegsReceived:Z

    if-eqz v3, :cond_34

    iget-boolean v3, v4, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v3

    const-string v5, "REPROCESS_FAILURE"

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    sget-boolean v3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v3, :cond_d

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v0, :cond_d

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfSwJpegTimeSummationMap:Ljava/util/Map;

    iget v0, v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mBundle:Landroid/os/Bundle;

    const-string v3, "REPROCESS_FAILURE"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v5

    :try_start_2
    iget-object v7, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v14, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mReprocRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v4, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    move-object/from16 v16, v7

    const/4 v7, 0x6

    invoke-direct {v4, v7}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v6, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v14, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mSoftJpegRequest:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e

    const/4 v4, 0x1

    goto :goto_3

    :cond_e
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v15

    if-eqz v15, :cond_f

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v15

    if-eqz v15, :cond_10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v15

    if-eqz v15, :cond_11

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v15

    if-eqz v15, :cond_12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_12
    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v15

    if-eqz v15, :cond_13

    add-int/lit8 v13, v13, 0x1

    :cond_13
    :goto_5
    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    invoke-static {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->hasInstanceFailed(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z

    move-result v17

    if-nez v17, :cond_16

    if-nez v15, :cond_14

    new-instance v15, Landroid/util/Pair;

    move/from16 v17, v4

    iget v4, v14, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-direct {v15, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v15}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_14
    move/from16 v17, v4

    move-object/from16 v19, v6

    iget v4, v14, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mPriority:I

    iget-object v6, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v4, v6, :cond_15

    iget-object v4, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/util/Pair;

    iget v6, v14, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mPriority:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-direct {v4, v6, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_15
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_16
    move/from16 v17, v4

    move-object/from16 v19, v6

    :goto_6
    move/from16 v4, v17

    move-object/from16 v6, v19

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_13

    :cond_17
    move/from16 v17, v4

    move-object/from16 v7, v16

    move/from16 v11, v17

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_18
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gtz v8, :cond_1c

    if-gtz v9, :cond_1c

    if-lez v10, :cond_19

    if-eqz v11, :cond_1c

    :cond_19
    if-lez v12, :cond_1a

    if-eqz v11, :cond_1c

    :cond_1a
    if-lez v13, :cond_1b

    if-nez v11, :cond_1b

    goto :goto_7

    :cond_1b
    const/4 v4, 0x0

    goto :goto_8

    :cond_1c
    :goto_7
    const/4 v4, 0x1

    :goto_8
    const-string v5, ""

    if-eqz v4, :cond_1d

    sget-object v5, Lcom/motorola/camera/BurstShotFileUtils;->FORMAT_BURST_SUFFIX:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1d
    add-int/2addr v8, v9

    add-int/2addr v10, v8

    add-int/2addr v12, v10

    add-int/2addr v13, v12

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->COMPOSITION:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v0, v6}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    if-eqz v6, :cond_1e

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;

    const/4 v14, 0x2

    invoke-direct {v0, v14}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_1e
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v14, v9

    const/4 v7, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v15}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v16

    invoke-virtual {v15}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v18

    invoke-virtual {v15}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v19

    invoke-virtual {v15}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v20

    invoke-virtual {v15}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v21

    if-eqz v11, :cond_1f

    if-eqz v18, :cond_1f

    sget-object v15, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-object/from16 v22, v15

    sget-object v15, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-object/from16 v15, v22

    :cond_1f
    if-eqz v11, :cond_20

    if-eqz v19, :cond_20

    sget-object v15, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-object/from16 v22, v15

    sget-object v15, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-object/from16 v15, v22

    :cond_20
    if-eqz v11, :cond_21

    if-eqz v20, :cond_21

    sget-object v15, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-object/from16 v22, v15

    sget-object v15, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iput-object v15, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-object/from16 v15, v22

    :cond_21
    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    move-object/from16 v23, v1

    const-string v1, "ALTERNATE_SHOT"

    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v3, "UUID"

    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_22

    if-eqz v21, :cond_22

    add-int/lit8 v1, v7, 0x1

    move/from16 v16, v4

    const/4 v4, 0x1

    goto :goto_d

    :cond_22
    if-eqz v16, :cond_23

    add-int/lit8 v1, v14, 0x1

    move/from16 v16, v4

    const/4 v4, 0x1

    move/from16 v24, v14

    move v14, v1

    :goto_a
    move v1, v12

    move/from16 v12, v24

    goto :goto_c

    :cond_23
    if-eqz v18, :cond_24

    if-nez v11, :cond_24

    add-int/lit8 v1, v8, 0x1

    move/from16 v16, v4

    const/4 v4, 0x1

    goto :goto_e

    :cond_24
    if-eqz v19, :cond_25

    if-nez v11, :cond_25

    add-int/lit8 v1, v10, 0x1

    move/from16 v16, v4

    const/4 v4, 0x1

    move/from16 v24, v10

    move v10, v1

    goto :goto_f

    :cond_25
    if-eqz v20, :cond_26

    if-nez v11, :cond_26

    add-int/lit8 v1, v12, 0x1

    move/from16 v16, v4

    const/4 v4, 0x1

    goto :goto_c

    :cond_26
    if-lez v9, :cond_27

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "ANALYTICS_COMPOSITION_TRIGGERED"

    move/from16 v16, v4

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_27
    move/from16 v16, v4

    const/4 v4, 0x1

    :goto_b
    add-int/lit8 v1, v13, 0x1

    move/from16 v24, v13

    move v13, v1

    goto :goto_a

    :goto_c
    move/from16 v24, v12

    move v12, v1

    move v1, v7

    move/from16 v7, v24

    :goto_d
    move/from16 v24, v7

    move v7, v1

    move v1, v8

    move/from16 v8, v24

    :goto_e
    move/from16 v24, v8

    move v8, v1

    :goto_f
    move/from16 v1, v24

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v18, v5

    const-string v5, "alternate_shot_index_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v3, :cond_28

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPhotoSolidDataManager:Landroidx/work/Data$Builder;

    iget-wide v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mStartTime:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v5, v5, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    move/from16 v19, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, v1, Landroidx/work/Data$Builder;->mValues:Ljava/util/AbstractMap;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v3, "ANALYTICS_PHOTO_SOLID_TIME"

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_10

    :cond_28
    move/from16 v19, v6

    :cond_29
    :goto_10
    iget-boolean v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->isBgBound:Z

    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-eqz v1, :cond_2a

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_11

    :cond_2a
    const/4 v1, 0x0

    :goto_11
    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessInForeground:Z

    invoke-static {v0, v15}, Lcom/motorola/camera/saving/ImageCaptureManager;->processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostCaptureReview()Z

    move-result v0

    move-object/from16 v1, v23

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "MCF_PROCESSING"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2b
    move/from16 v4, v16

    move-object/from16 v0, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v3, v22

    goto/16 :goto_9

    :cond_2c
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v3

    :try_start_3
    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_12

    :goto_13
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2d
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    monitor-enter v3

    :try_start_5
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_1
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-class v5, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v5
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v5

    goto :goto_14

    :catchall_2
    move-exception v0

    goto/16 :goto_16

    :catchall_3
    move-exception v0

    monitor-exit v5

    throw v0
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_2e
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_2f
    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onJobCompleted(I)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mCaptureQueueListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda0;

    const-class v3, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v3

    :try_start_a
    sget-object v4, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v4, v4, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    monitor-exit v3

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getHandlerMessageId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_30
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCancelSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_15

    :catchall_4
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_31
    :goto_15
    const-string v0, "McfCaptureRequestRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Capture time:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sceneMode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :goto_16
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :cond_32
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string v0, "McfCaptureRequestRunnable"

    const-string v1, "Missing McfCaptureRequestRunnable object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_33
    move-object/from16 v1, p0

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string v2, "McfCaptureRequestRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Message obj is not a SequenceIdentifier "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_34
    :goto_17
    return-void
.end method
