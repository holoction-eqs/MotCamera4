.class public final Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleError(Ljava/lang/Exception;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "received codec error: exception in codecLooper"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " with exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    const-string v1, " code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;I)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    sget p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->$r8$clinit:I

    const-string p0, "MotionPhotosComponent"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoFormat:Landroid/media/MediaFormat;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mOutputFormatAvailable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public final handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 10

    const-string v0, "MotionPhotosComponent"

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    new-instance v2, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v2}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/media/Image;

    if-nez v4, :cond_0

    sget p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->$r8$clinit:I

    const-string p0, "Received null input, EOS"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v5, :cond_2

    sget v5, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    :goto_1
    invoke-static {v4, p1, v1, v0, v5}, Lcom/motorola/camera/mcf/MotUtil;->copyImageToByteBuffer(Landroid/media/Image;Ljava/nio/ByteBuffer;ZZI)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mInputStride:I

    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    move-result v5

    if-ne v1, v5, :cond_3

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mInputSliceHeight:I

    invoke-virtual {v4}, Landroid/media/Image;->getHeight()I

    move-result v5

    if-eq v1, v5, :cond_4

    :cond_3
    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/media/Image;->getHeight()I

    move-result v1

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mInputStride:I

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mInputSliceHeight:I

    invoke-static {p1, v0, v1, v4, p0}, Lcom/motorola/camera/mcf/MotUtil;->alignYuvBuffer(Ljava/nio/ByteBuffer;IIII)I

    move-result v0

    :cond_4
    move v6, v0

    new-instance p0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v5, 0x0

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v7, 0x3e8

    div-long v7, v0, v7

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iput-object p0, v2, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-object p1, v2, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget-object p0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_5
    return-object v2

    :catch_0
    sget p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->$r8$clinit:I

    const-string p0, "Unable to get input frame"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1
.end method

.method public final handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 7

    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v1, Lcom/motorola/camera/mediacodec/BufferChunk;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;ILandroid/media/MediaCodec;)V

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/mediacodec/MuxerRunnable;

    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mRunning:Z

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mBufferCheck:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, v5, Lcom/motorola/camera/mediacodec/MuxerRunnable;->mChunks:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mKeyFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object v1, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v2, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->-$$Nest$mpruneEncodeBuffers(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;J)V

    :cond_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFrameCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFrameCount:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFrameRate:I

    div-int/lit8 v1, v1, 0x3

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_6
    :goto_2
    invoke-virtual {p1, v4}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void
.end method
