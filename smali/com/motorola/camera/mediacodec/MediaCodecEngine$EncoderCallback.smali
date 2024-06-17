.class public final Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# instance fields
.field public final mAudioRecorder:Landroid/media/AudioRecord;

.field public mAudioTimestamp:Ljava/lang/Long;

.field public mTrack:I

.field public final synthetic this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;Landroid/media/AudioRecord;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    return-void
.end method


# virtual methods
.method public final handleError(Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string v0, "MediaCodecEngine"

    const-string v1, "exception in codecLooper"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v1, v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string p1, "MediaCodecEngine"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 14

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioRecorder:Landroid/media/AudioRecord;

    if-nez v3, :cond_1

    iget-boolean p0, v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/util/Pair;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :catch_0
    sget-object p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string p0, "Unable to get input image"

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string p0, "Expecting valid buffer to fill"

    goto :goto_0

    :cond_2
    iget v4, v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioBufferSize:I

    invoke-virtual {v3, p1, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v4

    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v6, 0x0

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v4, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v7, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const-wide/32 v8, 0xf4240

    const-wide/16 v10, 0x3e8

    if-nez v7, :cond_4

    new-instance v7, Landroid/media/AudioTimestamp;

    invoke-direct {v7}, Landroid/media/AudioTimestamp;-><init>()V

    invoke-virtual {v3, v7, v6}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    move-result v3

    if-eqz v3, :cond_3

    sget-object p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    const-string p0, "Unable to get timestamp - error code:"

    invoke-static {p0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "MediaCodecEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    iget-wide v6, v7, Landroid/media/AudioTimestamp;->framePosition:J

    mul-long/2addr v6, v8

    iget-object v1, v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    int-to-long v12, v1

    div-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    div-long/2addr v12, v10

    sub-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    :cond_4
    iget-object v1, v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioChannels:I

    int-to-long v6, v1

    const-wide/16 v12, 0x2

    mul-long/2addr v6, v12

    int-to-long v3, v4

    div-long/2addr v3, v6

    mul-long/2addr v3, v8

    iget-object v1, v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    int-to-long v6, v1

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-instance v1, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v1}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    iget-object v6, v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v6, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-nez v0, :cond_6

    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_6
    iget-wide v8, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    div-long/2addr v8, v10

    :goto_1
    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mAudioTimestamp:Ljava/lang/Long;

    iput-object p1, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iput-object v5, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    :goto_2
    return-object v1
.end method

.method public final handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 5

    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->STARTED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->this$0:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v3, v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;->mTrack:I

    invoke-virtual {v3, p0, v1, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void
.end method
