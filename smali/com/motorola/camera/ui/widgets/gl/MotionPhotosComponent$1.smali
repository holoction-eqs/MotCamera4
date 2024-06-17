.class public final Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBestShotVideoTrigger(Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;)V
    .locals 13

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionPhotoEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v0, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->jobId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->motionPhotosNotEnabledForZoomValue(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-wide v1, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStartTs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v5, p1, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;->videoStopTs:J

    div-long v6, v5, v3

    sub-long v3, v6, v1

    const-wide/16 v8, 0x0

    cmp-long p1, v1, v8

    if-nez p1, :cond_2

    cmp-long p1, v6, v8

    if-eqz p1, :cond_b

    :cond_2
    const-wide/32 v8, 0xf4240

    cmp-long p1, v3, v8

    if-ltz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->PROCESS_FRAME:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMotionPhotosJobs:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/motorola/camera/mediacodec/MuxerRunnable;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/mediacodec/MuxerRunnable;-><init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoFormat:Landroid/media/MediaFormat;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mOutputFormatAvailable:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    :cond_5
    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mBufferLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->findNearestKeyFrame(J)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v5, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v9, v11

    if-nez v5, :cond_7

    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    if-lez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    :cond_8
    const/4 v5, -0x1

    :goto_1
    if-ltz v5, :cond_6

    cmp-long v5, v9, v6

    if-gtz v5, :cond_6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_9
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_a

    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    goto :goto_2

    :cond_a
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    :goto_2
    move v4, v1

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoFormat:Landroid/media/MediaFormat;

    move-object v1, p1

    move-object v2, v3

    move-object v3, v5

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/mediacodec/MuxerRunnable;->encodeData(Ljava/util/ArrayList;Landroid/media/MediaFormat;IIJ)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    monitor-exit p0

    goto :goto_6

    :goto_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_VIDEO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->generateMotionPhoto(I)V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onQueueEmpty()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfCloseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfClose:Z

    if-nez v2, :cond_0

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfClose:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
