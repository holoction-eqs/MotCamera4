.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final callback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

.field public final decodeOutput:Ljava/util/concurrent/LinkedBlockingQueue;

.field public encoderHeight:I

.field public final extractor:Landroid/media/MediaExtractor;

.field public frameCount:I

.field public frameCountAfterSuperSlowMotion:I

.field public final frameIntervalUs:J

.field public presentationTimeUs:J

.field public processProgress:I

.field public final processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

.field public final slowDownFactor:I

.field public final slowMotionProgressFactor:I

.field public final speedUpFactor:I

.field public superSlowMotionRangeStarted:Z

.field public final superSlowMotionTimeRange:Lkotlin/ranges/LongRange;

.field public final trimTimeRange:Lkotlin/ranges/LongRange;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaExtractor;IIILkotlin/ranges/LongRange;Lkotlin/ranges/LongRange;Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p7, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingCallback"

    invoke-static {p8, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->extractor:Landroid/media/MediaExtractor;

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->slowDownFactor:I

    iput p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->speedUpFactor:I

    iput-object p5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->superSlowMotionTimeRange:Lkotlin/ranges/LongRange;

    iput-object p6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->trimTimeRange:Lkotlin/ranges/LongRange;

    iput-object p7, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->callback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

    iput-object p8, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->decodeOutput:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 p1, 0x1

    int-to-float p1, p1

    int-to-float p2, p4

    div-float/2addr p1, p2

    const p2, 0x49742400    # 1000000.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    iput-wide p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameIntervalUs:J

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b007d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->slowMotionProgressFactor:I

    return-void
.end method

.method public static createCopy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method


# virtual methods
.method public final handleError(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "received codec error: exception in codecLooper"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " with exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->callback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    const-string v0, "Decoder error"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 0

    const-string p0, "mediaCodec"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 8

    new-instance v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    iget-object v1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    return-object v2

    :cond_0
    if-eqz p1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    if-gez v3, :cond_1

    sget-object p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    const-string p1, "handleInput: no data found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iput-object p1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget-object p1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v7}, [Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    and-int v7, v2, v6

    if-ne v7, v6, :cond_2

    or-int/2addr v1, v5

    goto :goto_0

    :cond_3
    iput v1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object p1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p0}, Landroid/media/MediaExtractor;->advance()Z

    return-object v0

    :cond_4
    return-object v2
.end method

.method public final handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCount:I

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->superSlowMotionTimeRange:Lkotlin/ranges/LongRange;

    iget-wide v4, v0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v6, v0, Lkotlin/ranges/LongProgression;->last:J

    cmp-long v0, v2, v6

    const/4 v6, 0x0

    if-gtz v0, :cond_0

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->trimTimeRange:Lkotlin/ranges/LongRange;

    iget-wide v7, v4, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v4, v4, Lkotlin/ranges/LongProgression;->last:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    cmp-long v2, v7, v2

    if-gtz v2, :cond_1

    move v6, v1

    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->slowMotionProgressFactor:I

    :cond_2
    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->processProgress:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->processProgress:I

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    check-cast v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processProgress:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, v6}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->processBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;ZZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    const-string v1, "handleOutput: cannot add buf to queue"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->callback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    const-string v0, "Decoder error"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public final processBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;ZZ)V
    .locals 8

    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->isInitialized()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, "processBuffer: FRC is not initialized"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    const/4 v2, 0x0

    if-eqz p3, :cond_15

    iget-object p3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    if-nez p3, :cond_2

    goto/16 :goto_d

    :cond_2
    iget-object p3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->codec:Landroid/media/MediaCodec;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "height"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    if-eqz v5, :cond_7

    iget v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->encoderHeight:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string v2, "stride"

    invoke-virtual {p3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    const-string p3, "null codec?  stride cannot be determined"

    goto :goto_2

    :cond_5
    iget-object p3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    if-nez p3, :cond_6

    const-string p3, "null buffer, cannot trim"

    :goto_2
    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->encoderHeight:I

    mul-int/2addr v1, v6

    div-int/lit8 v6, v1, 0x2

    add-int v7, v1, v6

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v1, v5

    add-int/2addr v6, v1

    invoke-virtual {p3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v7, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v7, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    :cond_7
    :goto_3
    iget-object p3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_14

    if-eqz p2, :cond_a

    if-nez v0, :cond_a

    iget p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->slowDownFactor:I

    sub-int/2addr p2, v3

    new-array v0, p2, [Ljava/nio/ByteBuffer;

    move v1, v4

    :goto_4
    if-ge v1, p2, :cond_8

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    invoke-static {p3, v0}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->interpolateFrc(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)I

    iget-boolean v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->superSlowMotionRangeStarted:Z

    if-nez v1, :cond_9

    iput-boolean v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->superSlowMotionRangeStarted:Z

    goto/16 :goto_c

    :cond_9
    move v1, v4

    :goto_5
    if-ge v1, p2, :cond_13

    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->setAndEnqueueBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    iget p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCount:I

    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->speedUpFactor:I

    rem-int/2addr p2, v1

    if-nez p2, :cond_b

    move p2, v3

    goto :goto_6

    :cond_b
    move p2, v4

    :goto_6
    if-eqz p2, :cond_c

    goto :goto_b

    :cond_c
    iget-boolean p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->superSlowMotionRangeStarted:Z

    if-eqz p2, :cond_11

    iget p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCountAfterSuperSlowMotion:I

    mul-int/lit8 v2, v1, 0x2

    if-le p2, v2, :cond_d

    goto :goto_a

    :cond_d
    if-ge p2, v1, :cond_e

    div-int/lit8 v5, v1, 0x4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    rem-int/2addr p2, v5

    if-nez p2, :cond_e

    move p2, v3

    goto :goto_7

    :cond_e
    move p2, v4

    :goto_7
    iget v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCountAfterSuperSlowMotion:I

    if-gt v1, v5, :cond_f

    if-gt v5, v2, :cond_f

    move v2, v3

    goto :goto_8

    :cond_f
    move v2, v4

    :goto_8
    if-eqz v2, :cond_10

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    rem-int/2addr v5, v1

    if-nez v5, :cond_10

    move v1, v3

    goto :goto_9

    :cond_10
    move v1, v4

    :goto_9
    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCountAfterSuperSlowMotion:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameCountAfterSuperSlowMotion:I

    if-nez p2, :cond_12

    if-eqz v1, :cond_11

    goto :goto_b

    :cond_11
    :goto_a
    move v3, v4

    :cond_12
    :goto_b
    if-nez v3, :cond_13

    if-eqz v0, :cond_14

    :cond_13
    invoke-static {p3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->createCopy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->setAndEnqueueBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;Ljava/nio/ByteBuffer;)V

    :cond_14
    :goto_c
    invoke-virtual {p1, v4}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void

    :cond_15
    :goto_d
    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->setAndEnqueueBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;Ljava/nio/ByteBuffer;)V

    :cond_16
    invoke-virtual {p1, v4}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void
.end method

.method public final setAndEnqueueBuffer(Lcom/motorola/camera/mediacodec/BufferChunk;Ljava/nio/ByteBuffer;)V
    .locals 7

    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-wide v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->frameIntervalUs:J

    add-long v3, v0, v2

    iput-wide v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->presentationTimeUs:J

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->decodeOutput:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Lcom/motorola/camera/mediacodec/BufferChunk;

    const/16 v0, 0xc

    invoke-direct {p1, p2, v6, v0}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method
