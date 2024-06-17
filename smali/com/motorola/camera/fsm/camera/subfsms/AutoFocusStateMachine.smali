.class public final Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# instance fields
.field public mCacheAfMode:I

.field public mCurrentAfMode:I

.field public final mFocusMap:Ljava/util/TreeMap;

.field public mIsPassiveFocusSuccessful:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCacheAfMode:I

    return-void
.end method

.method public static getAfModeAsString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string v0, "UNKNOWN("

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "CONTROL_AF_MODE_EDOF"

    goto :goto_0

    :cond_1
    const-string p0, "CONTROL_AF_MODE_CONTINUOUS_PICTURE"

    goto :goto_0

    :cond_2
    const-string p0, "CONTROL_AF_MODE_CONTINUOUS_VIDEO"

    goto :goto_0

    :cond_3
    const-string p0, "CONTROL_AF_MODE_MACRO"

    goto :goto_0

    :cond_4
    const-string p0, "CONTROL_AF_MODE_AUTO"

    goto :goto_0

    :cond_5
    const-string p0, "CONTROL_AF_MODE_OFF"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized isPassiveFocus()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isPassiveFocusEnabledAndSuccessful()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mIsPassiveFocusSuccessful:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 10

    const-string v0, "AutoFocusStateMachine"

    if-nez p2, :cond_0

    const-string p0, "onCaptureCompleted - missing result, skipping AF update"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v2, :cond_1

    const-string p0, "onCaptureCompleted - missing afMode !"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    if-nez v3, :cond_4

    if-eqz p3, :cond_2

    return-void

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    const-string p0, "onCaptureCompleted - missing android.control.afState !"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {p3, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-nez v0, :cond_5

    new-instance v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;-><init>()V

    invoke-virtual {p3, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mFrameNumber:J

    cmp-long p3, v8, v6

    if-lez p3, :cond_6

    return-void

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfMode:I

    if-ne p3, v4, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_7

    iget p3, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastLensState:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p3, v4, :cond_8

    return-void

    :cond_7
    iget p3, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p3, v4, :cond_8

    return-void

    .line 2
    :cond_8
    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onFocusModeChanged(I)V

    goto :goto_1

    .line 4
    :cond_9
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v4, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-eqz v4, :cond_a

    iput-boolean v5, v4, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    monitor-exit p0

    .line 5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfMode:I

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastLensState:I

    :cond_c
    iput-wide v6, v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mFrameNumber:J

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iput-boolean v5, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mIsPassiveFocusSuccessful:Z

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-interface {p1, p2, v5}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-interface {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-interface {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V

    goto :goto_4

    :pswitch_3
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mIsPassiveFocusSuccessful:Z

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-interface {p1, p2, v5}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V

    goto :goto_5

    :pswitch_4
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-interface {p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusScan(Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_6

    :pswitch_5
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-interface {p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onAutoFocusInactive(Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-interface {p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onManualFocusCompleted()V

    goto :goto_8

    :cond_f
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-interface {p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;->onManualFocusStarted()V

    goto :goto_9

    :cond_10
    :goto_a
    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public final declared-synchronized resetState()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCacheAfMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, " cid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " currentAfMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->getAfModeAsString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized triggerAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "AutoFocusStateMachine"

    const-string v1, "handleAfModeUninitialized: AF mode was not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_1

    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_1
    invoke-virtual {p2, p1, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    sget-object v1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray([II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
