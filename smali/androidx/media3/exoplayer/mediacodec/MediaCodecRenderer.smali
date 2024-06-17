.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"


# static fields
.field public static final ADAPTATION_WORKAROUND_BUFFER:[B


# instance fields
.field public final assumedMinimumCodecOperatingRate:F

.field public availableCodecInfos:Ljava/util/ArrayDeque;

.field public final buffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public final bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

.field public bypassDrainAndReinitialize:Z

.field public bypassEnabled:Z

.field public final bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public bypassSampleBufferPending:Z

.field public c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

.field public codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

.field public codecAdaptationWorkaroundMode:I

.field public final codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

.field public codecDrainAction:I

.field public codecDrainState:I

.field public codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field public codecHasOutputMediaFormat:Z

.field public codecHotswapDeadlineMs:J

.field public codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public codecInputFormat:Landroidx/media3/common/Format;

.field public codecNeedsAdaptationWorkaroundBuffer:Z

.field public codecNeedsDiscardToSpsWorkaround:Z

.field public codecNeedsEosBufferTimestampWorkaround:Z

.field public codecNeedsEosFlushWorkaround:Z

.field public codecNeedsEosOutputExceptionWorkaround:Z

.field public codecNeedsEosPropagation:Z

.field public codecNeedsFlushWorkaround:Z

.field public codecNeedsMonoChannelCountWorkaround:Z

.field public codecNeedsSosFlushWorkaround:Z

.field public codecOperatingRate:F

.field public codecOutputMediaFormat:Landroid/media/MediaFormat;

.field public codecOutputMediaFormatChanged:Z

.field public codecReceivedBuffers:Z

.field public codecReceivedEos:Z

.field public codecReconfigurationState:I

.field public codecReconfigured:Z

.field public currentPlaybackSpeed:F

.field public final decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

.field public decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field public final enableDecoderFallback:Z

.field public inputFormat:Landroidx/media3/common/Format;

.field public inputIndex:I

.field public inputStreamEnded:Z

.field public isDecodeOnlyOutputBuffer:Z

.field public isLastOutputBuffer:Z

.field public largestQueuedPresentationTimeUs:J

.field public lastBufferInStreamPresentationTimeUs:J

.field public lastProcessedOutputBufferTimeUs:J

.field public final mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field public mediaCrypto:Landroid/media/MediaCrypto;

.field public mediaCryptoRequiresSecureDecoder:Z

.field public needToNotifyOutputFormatChangeAfterStreamChange:Z

.field public final noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public final oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public outputFormat:Landroidx/media3/common/Format;

.field public outputIndex:I

.field public outputStreamEnded:Z

.field public outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

.field public pendingOutputEndOfStream:Z

.field public final pendingOutputStreamChanges:Ljava/util/ArrayDeque;

.field public pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

.field public preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field public final renderTimeLimitMs:J

.field public shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field public sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field public targetPlaybackSpeed:F

.field public waitingForFirstSampleInFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(Landroidx/core/graphics/PathParser$ExtractFloatResult;)V
    .locals 4

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {v0, p1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {v0, p1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    sget-object v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    invoke-virtual {v0, p1}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iput-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void
.end method


# virtual methods
.method public final bypassRender(JJ)Z
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const/4 v12, 0x0

    const/4 v5, 0x4

    if-nez v3, :cond_20

    iget-boolean v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v3, :cond_1

    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v4

    :cond_1
    iget-boolean v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-eqz v3, :cond_2

    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->append(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v3

    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-boolean v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    :cond_2
    iget-boolean v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    iget-object v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    const/4 v8, 0x2

    if-eqz v3, :cond_5

    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    if-lez v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    return v2

    :cond_4
    iput-boolean v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    invoke-virtual {v6}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput-boolean v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    iput-boolean v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v3, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    iput v4, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    iput v8, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    iput-boolean v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    iget-boolean v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v3, :cond_5

    return v4

    :cond_5
    iget-boolean v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    xor-int/2addr v3, v2

    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v3, v0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/MutablePair;->clear()V

    invoke-virtual {v6}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    :goto_2
    invoke-virtual {v6}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    invoke-virtual {v0, v3, v6, v4}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v9

    const/4 v10, -0x5

    if-eq v9, v10, :cond_1a

    const/4 v10, -0x4

    if-eq v9, v10, :cond_7

    const/4 v3, -0x3

    if-ne v9, v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_7
    invoke-virtual {v6, v5}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v9

    if-eqz v9, :cond_8

    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    :goto_3
    move v12, v4

    goto/16 :goto_12

    :cond_8
    iget-boolean v9, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v9, :cond_9

    iget-object v9, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v9, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v9, v12}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    iput-boolean v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    :cond_9
    invoke-virtual {v6}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-object v9, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-eqz v9, :cond_18

    iget-object v9, v9, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v9, :cond_18

    const-string v10, "audio/opus"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object v9, v9, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v6, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v6, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v10

    iget-object v11, v6, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/Buffer;->position()I

    move-result v11

    sub-int/2addr v10, v11

    if-nez v10, :cond_a

    goto/16 :goto_10

    :cond_a
    iget v10, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    if-ne v10, v8, :cond_c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-eq v10, v2, :cond_b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_c

    :cond_b
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    goto :goto_4

    :cond_c
    move-object v9, v12

    :goto_4
    iget-object v10, v6, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v11

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v13

    sub-int v14, v13, v11

    add-int/lit16 v15, v14, 0xff

    const/16 v12, 0xff

    div-int/2addr v15, v12

    add-int/lit8 v16, v15, 0x1b

    add-int v16, v16, v14

    iget v5, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    if-ne v5, v8, :cond_e

    if-eqz v9, :cond_d

    array-length v5, v9

    add-int/lit8 v5, v5, 0x1c

    goto :goto_5

    :cond_d
    const/16 v5, 0x2f

    :goto_5
    add-int/lit8 v17, v5, 0x2c

    add-int v16, v17, v16

    goto :goto_6

    :cond_e
    move v5, v4

    :goto_6
    move/from16 v12, v16

    iget-object v2, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v12, :cond_f

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_f
    iget-object v2, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_7
    iget-object v2, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v12, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    if-ne v12, v8, :cond_12

    if-eqz v9, :cond_11

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v21}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    array-length v12, v9

    move/from16 p2, v5

    int-to-long v4, v12

    const/16 v12, 0x8

    shr-long v16, v4, v12

    const-wide/16 v18, 0x0

    cmp-long v12, v16, v18

    if-nez v12, :cond_10

    const/4 v12, 0x1

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    :goto_8
    const-string v8, "out of range: %s"

    invoke-static {v4, v5, v8, v12}, Lkotlin/collections/ArraysUtilJVM;->checkArgument(JLjava/lang/String;Z)V

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    array-length v8, v9

    add-int/lit8 v8, v8, 0x1c

    const/4 v12, 0x0

    invoke-static {v5, v4, v8, v12}, Landroidx/media3/common/util/Util;->crc32(I[BII)I

    move-result v4

    const/16 v5, 0x16

    invoke-virtual {v2, v5, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    array-length v4, v9

    add-int/lit8 v4, v4, 0x1c

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_9

    :cond_11
    move/from16 p2, v5

    sget-object v4, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_9
    sget-object v4, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_a

    :cond_12
    move/from16 p2, v5

    :goto_a
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v4

    const/4 v8, 0x1

    if-le v4, v8, :cond_13

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    goto :goto_b

    :cond_13
    const/4 v12, 0x0

    :goto_b
    invoke-static {v5, v12}, Landroidx/room/util/DBUtil;->getPacketDurationUs(BB)J

    move-result-wide v4

    const-wide/32 v8, 0xbb80

    mul-long/2addr v4, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v4, v8

    long-to-int v4, v4

    iget v5, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    add-int/2addr v5, v4

    iput v5, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    int-to-long v4, v5

    iget v8, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-wide/from16 v17, v4

    move/from16 v19, v8

    move/from16 v20, v15

    invoke-static/range {v16 .. v21}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v15, :cond_15

    const/16 v4, 0xff

    if-lt v14, v4, :cond_14

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit16 v14, v14, -0xff

    goto :goto_d

    :cond_14
    int-to-byte v5, v14

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v14, 0x0

    :goto_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_15
    :goto_e
    if-ge v11, v13, :cond_16

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_16
    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget v4, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_17

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    add-int v8, v8, p2

    add-int/lit8 v8, v8, 0x2c

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v9

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v10

    sub-int/2addr v9, v10

    const/4 v12, 0x0

    invoke-static {v8, v4, v9, v12}, Landroidx/media3/common/util/Util;->crc32(I[BII)I

    move-result v4

    add-int/lit8 v8, p2, 0x2c

    const/16 v9, 0x16

    add-int/2addr v8, v9

    move/from16 v22, v8

    move v8, v4

    move/from16 v4, v22

    goto :goto_f

    :cond_17
    const/16 v9, 0x16

    const/4 v12, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v10

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v8, v4, v10, v12}, Landroidx/media3/common/util/Util;->crc32(I[BII)I

    move-result v4

    move v8, v4

    move v4, v9

    :goto_f
    invoke-virtual {v2, v4, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget v4, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v8, 0x1

    add-int/2addr v4, v8

    iput v4, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    iput-object v2, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v2, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v6, v2}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object v2, v6, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v4, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    goto :goto_11

    :cond_18
    :goto_10
    move v12, v4

    move v5, v8

    :goto_11
    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->append(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    goto :goto_12

    :cond_19
    move v8, v5

    move v4, v12

    const/4 v2, 0x1

    const/4 v5, 0x4

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_1a
    move v12, v4

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/airbnb/lottie/model/MutablePair;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    :goto_12
    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    if-lez v3, :cond_1b

    move v3, v2

    goto :goto_13

    :cond_1b
    move v3, v12

    :goto_13
    if-eqz v3, :cond_1c

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    :cond_1c
    iget v1, v1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->sampleCount:I

    if-lez v1, :cond_1d

    move v1, v2

    goto :goto_14

    :cond_1d
    move v1, v12

    :goto_14
    if-nez v1, :cond_1f

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_1f

    iget-boolean v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v0, :cond_1e

    goto :goto_15

    :cond_1e
    move v2, v12

    :cond_1f
    :goto_15
    return v2

    :cond_20
    const/4 v5, 0x0

    iget v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-wide v7, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {v1}, Landroidx/media3/decoder/Buffer;->isDecodeOnly()Z

    move-result v9

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v10

    iget-object v11, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJZZLandroidx/media3/common/Format;)Z

    const/4 v0, 0x0

    throw v0
.end method

.method public final drainAndUpdateCodecDrmSessionV23()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    :goto_1
    return v1
.end method

.method public final drainOutputBuffer(JJ)Z
    .locals 16

    move-object/from16 v12, p0

    iget v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ltz v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    iget-object v15, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    if-nez v0, :cond_10

    iget-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v0, v15}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    iget-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_1
    return v13

    :cond_2
    iget-object v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v0, v15}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_1
    if-gez v0, :cond_8

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    iput-boolean v14, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    iget-object v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget v1, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz v1, :cond_3

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    iput-boolean v14, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    goto :goto_2

    :cond_3
    iget-boolean v1, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    if-eqz v1, :cond_4

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_4
    iput-object v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    iput-boolean v14, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    :goto_2
    return v14

    :cond_5
    iget-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_6

    iget v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_7
    return v13

    :cond_8
    iget-boolean v1, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v1, :cond_9

    iput-boolean v13, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iget-object v1, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v1, v0, v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    return v14

    :cond_9
    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_a

    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v13

    :cond_a
    iput v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_b

    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_b
    iget-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    if-eqz v0, :cond_c

    iget-wide v0, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iget v0, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    iget-wide v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    iput-wide v0, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_c
    iget-wide v0, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v13

    :goto_3
    if-ge v4, v3, :cond_e

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-nez v5, :cond_d

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v14

    goto :goto_4

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_e
    move v0, v13

    :goto_4
    iput-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-wide v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iget-wide v2, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    move v0, v14

    goto :goto_5

    :cond_f
    move v0, v13

    :goto_5
    iput-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    invoke-virtual {v12, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    :cond_10
    iget-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_12

    :try_start_1
    iget-object v5, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v6, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget v0, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v7, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v9, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v10, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v11, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJZZLandroidx/media3/common/Format;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    iget-boolean v0, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_11
    return v13

    :cond_12
    iget-object v5, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v6, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget v0, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v7, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v9, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v10, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v11, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJZZLandroidx/media3/common/Format;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_15

    iget-wide v0, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v12, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    iget v0, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    move v0, v14

    goto :goto_7

    :cond_13
    move v0, v13

    :goto_7
    const/4 v1, -0x1

    iput v1, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v1, 0x0

    iput-object v1, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_14

    return v14

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_15
    return v13
.end method

.method public final feedInputBuffer()Z
    .locals 29

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_34

    iget-boolean v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v3, :cond_0

    goto/16 :goto_f

    :cond_0
    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-gez v3, :cond_2

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueInputBufferIndex()I

    move-result v0

    iput v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_1

    return v2

    :cond_1
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v3, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    :cond_2
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    iget-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v12, 0x0

    const-wide/16 v9, 0x0

    const/4 v13, 0x4

    invoke-interface/range {v8 .. v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(JIII)V

    iput v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput-object v3, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    :goto_0
    iput v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    return v2

    :cond_4
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_5

    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iget-object v0, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/16 v12, 0x26

    const-wide/16 v9, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v8 .. v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(JIII)V

    iput v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput-object v3, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iput-boolean v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    return v7

    :cond_5
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v7, :cond_7

    move v0, v2

    :goto_1
    iget-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    iget-object v8, v8, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    iget-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    iget-object v8, v8, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iget-object v9, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput v4, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_7
    iget-object v0, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v8, v1, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {v8}, Lcom/airbnb/lottie/model/MutablePair;->clear()V

    :try_start_0
    invoke-virtual {v1, v8, v5, v2}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v9
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v10

    if-nez v10, :cond_8

    const/high16 v10, 0x20000000

    invoke-virtual {v5, v10}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    iget-wide v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    :cond_9
    const/4 v10, -0x3

    if-ne v9, v10, :cond_a

    return v2

    :cond_a
    const/4 v10, -0x5

    if-ne v9, v10, :cond_c

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v4, :cond_b

    invoke-virtual {v5}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_b
    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/airbnb/lottie/model/MutablePair;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    return v7

    :cond_c
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v9

    if-eqz v9, :cond_10

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v4, :cond_d

    invoke-virtual {v5}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_d
    iput-boolean v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v2

    :cond_e
    :try_start_1
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_f

    goto :goto_2

    :cond_f
    iput-boolean v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    iget-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v12, 0x0

    const-wide/16 v9, 0x0

    const/4 v13, 0x4

    invoke-interface/range {v8 .. v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(JIII)V

    iput v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iput-object v3, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return v2

    :catch_0
    move-exception v0

    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v4

    invoke-virtual {v1, v4, v3, v0, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(ILandroidx/media3/common/Format;Ljava/lang/Exception;Z)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_10
    iget-boolean v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v9, :cond_12

    invoke-virtual {v5, v7}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v5}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v4, :cond_11

    iput v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_11
    return v7

    :cond_12
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v5, v9}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v9

    iget-object v10, v5, Landroidx/media3/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media3/decoder/CryptoInfo;

    if-eqz v9, :cond_15

    if-nez v0, :cond_13

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_13
    iget-object v11, v10, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-nez v11, :cond_14

    new-array v11, v7, [I

    iput-object v11, v10, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v12, v10, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v11, v12, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_14
    iget-object v11, v10, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    aget v12, v11, v2

    add-int/2addr v12, v0

    aput v12, v11, v2

    :cond_15
    :goto_3
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    const/4 v11, 0x3

    const/4 v12, 0x7

    if-eqz v0, :cond_1b

    if-nez v9, :cond_1b

    iget-object v0, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget-object v13, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v13

    move v14, v2

    move v15, v14

    :goto_4
    add-int/lit8 v3, v14, 0x1

    if-ge v3, v13, :cond_19

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-ne v15, v11, :cond_16

    if-ne v6, v7, :cond_17

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v16

    and-int/lit8 v4, v16, 0x1f

    if-ne v4, v12, :cond_17

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v14, v11

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_16
    if-nez v6, :cond_17

    add-int/lit8 v15, v15, 0x1

    :cond_17
    if-eqz v6, :cond_18

    move v15, v2

    :cond_18
    move v14, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, -0x1

    goto :goto_4

    :cond_19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_5
    iget-object v0, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_1a

    return v7

    :cond_1a
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    :cond_1b
    iget-wide v3, v5, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    if-eqz v0, :cond_2a

    iget-object v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-wide v13, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    const-wide/16 v11, 0x0

    cmp-long v13, v13, v11

    if-nez v13, :cond_1c

    iput-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    :cond_1c
    iget-boolean v13, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->seenInvalidMpegAudioHeader:Z

    const-wide/32 v17, 0xf4240

    const-wide/16 v19, 0x211

    if-eqz v13, :cond_1d

    goto/16 :goto_b

    :cond_1d
    iget-object v3, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, v2

    move v13, v4

    :goto_6
    if-ge v4, v8, :cond_1e

    shl-int/lit8 v13, v13, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v13, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_1e
    const/high16 v3, -0x200000

    and-int v4, v13, v3

    if-ne v4, v3, :cond_1f

    move v3, v7

    goto :goto_7

    :cond_1f
    move v3, v2

    :goto_7
    if-nez v3, :cond_20

    goto :goto_9

    :cond_20
    ushr-int/lit8 v3, v13, 0x13

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v7, :cond_21

    goto :goto_9

    :cond_21
    ushr-int/lit8 v14, v13, 0x11

    and-int/2addr v14, v4

    if-nez v14, :cond_22

    goto :goto_9

    :cond_22
    ushr-int/lit8 v15, v13, 0xc

    const/16 v8, 0xf

    and-int/2addr v15, v8

    ushr-int/lit8 v13, v13, 0xa

    and-int/2addr v13, v4

    if-eqz v15, :cond_28

    if-eq v15, v8, :cond_28

    if-ne v13, v4, :cond_23

    goto :goto_9

    :cond_23
    const/16 v8, 0x480

    if-eq v14, v7, :cond_25

    const/4 v13, 0x2

    if-eq v14, v13, :cond_27

    if-ne v14, v4, :cond_24

    const/16 v3, 0x180

    move v8, v3

    goto :goto_8

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_25
    if-ne v3, v4, :cond_26

    goto :goto_8

    :cond_26
    const/16 v8, 0x240

    :cond_27
    :goto_8
    const/4 v3, -0x1

    goto :goto_a

    :cond_28
    :goto_9
    const/4 v3, -0x1

    const/4 v8, -0x1

    :goto_a
    if-ne v8, v3, :cond_29

    iput-boolean v7, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->seenInvalidMpegAudioHeader:Z

    iput-wide v11, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    iget-wide v3, v5, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    const-string v0, "C2Mp3TimestampTracker"

    const-string v3, "MPEG audio header is invalid."

    invoke-static {v0, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, v5, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    goto :goto_b

    :cond_29
    iget v3, v6, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v3, v3

    iget-wide v13, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    move v15, v8

    iget-wide v7, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    sub-long v7, v7, v19

    mul-long v7, v7, v17

    div-long/2addr v7, v3

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-long/2addr v3, v13

    iget-wide v7, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    move v13, v15

    int-to-long v13, v13

    add-long/2addr v7, v13

    iput-wide v7, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    :goto_b
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    iget-object v13, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v13, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v13, v13

    move-wide/from16 v21, v3

    iget-wide v2, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    move-wide/from16 v23, v7

    iget-wide v6, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    sub-long v6, v6, v19

    mul-long v6, v6, v17

    div-long/2addr v6, v13

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v6, v2

    move-wide/from16 v2, v23

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    move-wide/from16 v3, v21

    :cond_2a
    invoke-virtual {v5}, Landroidx/media3/decoder/Buffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v0, :cond_2d

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    goto :goto_c

    :cond_2c
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    :goto_c
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v3, v4, v2}, Lcom/motorola/camera/saving/XmpData$GDepth;->add(JLjava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    :cond_2d
    iget-wide v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    invoke-virtual {v5}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    const/high16 v0, 0x10000000

    invoke-virtual {v5, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_30

    move-object v0, v1

    check-cast v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v2, :cond_2e

    goto :goto_d

    :cond_2e
    iget-object v2, v5, Landroidx/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    const/4 v7, 0x7

    if-lt v6, v7, :cond_30

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v13, -0x4b

    if-ne v6, v13, :cond_30

    const/16 v6, 0x3c

    if-ne v7, v6, :cond_30

    const/4 v6, 0x1

    if-ne v8, v6, :cond_30

    const/4 v7, 0x4

    if-ne v11, v7, :cond_30

    if-eqz v12, :cond_2f

    if-ne v12, v6, :cond_30

    :cond_2f
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v8, "hdr10-plus-info"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    :cond_30
    :goto_d
    move-object v0, v1

    check-cast v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v2, :cond_31

    iget v7, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    const/4 v6, 0x1

    add-int/2addr v7, v6

    iput v7, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    :cond_31
    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v8, 0x17

    if-ge v7, v8, :cond_32

    if-eqz v2, :cond_32

    iget-wide v7, v5, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    iget-object v2, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v11, v2, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    const/4 v6, 0x1

    add-int/2addr v11, v6

    iput v11, v2, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    :cond_32
    if-eqz v9, :cond_33

    :try_start_2
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    invoke-interface {v0, v2, v10, v3, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueSecureInputBuffer(ILandroidx/media3/decoder/CryptoInfo;J)V

    goto :goto_e

    :cond_33
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v7, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v23, v0

    move-wide/from16 v24, v3

    move/from16 v26, v2

    invoke-interface/range {v23 .. v28}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(JIII)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_e
    const/4 v0, -0x1

    iput v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const/4 v0, 0x0

    iput-object v0, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v3, 0x0

    iput v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    return v2

    :catch_1
    move-exception v0

    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v0, v4}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(ILandroidx/media3/common/Format;Ljava/lang/Exception;Z)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    move v4, v2

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    const/4 v1, 0x1

    return v1

    :cond_34
    :goto_f
    move v4, v2

    return v4
.end method

.method public final flushCodec()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    throw v0
.end method

.method public final flushOrReleaseCodec()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    if-lt v0, v2, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3
.end method

.method public final getAvailableCodecInfos(Z)Ljava/util/ArrayList;
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    move-object v1, p0

    check-cast v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    iget-object v3, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    invoke-static {v3, v4, v0, p1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v2

    sget-object v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v6, 0xa

    invoke-direct {v2, v0, v6}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v0, v2, v7}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-boolean v0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    const/4 v1, 0x0

    invoke-static {v3, v4, p1, v1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, v6}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, v7}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v5, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Drm session requires secure decoder for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaCodecRenderer"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v5
.end method

.method public abstract getCodecOperatingRateV23(F[Landroidx/media3/common/Format;)F
.end method

.method public final initCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v8, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    iget-object v3, v0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(F[Landroidx/media3/common/Format;)F

    move-result v2

    :goto_0
    iget v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    :cond_1
    move v9, v2

    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    move-object v10, v0

    check-cast v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v3, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    iget-boolean v4, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    const/4 v5, 0x0

    const/4 v11, 0x0

    iget-object v12, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v4, :cond_4b

    iput-boolean v11, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object v1, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    iget-boolean v11, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    if-eq v2, v11, :cond_4

    iget-object v2, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-ne v2, v1, :cond_3

    iput-object v5, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    iput-object v5, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_4
    iget-object v1, v10, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v4, Landroidx/media3/common/Format;->width:I

    invoke-static {v4, v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result v3

    array-length v5, v1

    iget v15, v4, Landroidx/media3/common/Format;->frameRate:F

    iget v6, v4, Landroidx/media3/common/Format;->width:I

    move-object/from16 v17, v12

    iget-object v12, v4, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    move-wide/from16 v18, v13

    iget v13, v4, Landroidx/media3/common/Format;->height:I

    const/4 v14, 0x1

    if-ne v5, v14, :cond_6

    const/4 v1, -0x1

    if-eq v3, v1, :cond_5

    invoke-static {v4, v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result v5

    if-eq v5, v1, :cond_5

    int-to-float v1, v3

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_5
    new-instance v1, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    invoke-direct {v1, v2, v13, v3}, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>(III)V

    move/from16 v22, v6

    move-object/from16 v20, v8

    move/from16 v16, v9

    move/from16 v23, v11

    move-object/from16 v21, v12

    move/from16 v24, v13

    goto/16 :goto_13

    :cond_6
    array-length v5, v1

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v20, v8

    move v8, v13

    :goto_2
    if-ge v14, v5, :cond_b

    move/from16 v21, v5

    aget-object v5, v1, v14

    move-object/from16 v22, v1

    if-eqz v12, :cond_7

    iget-object v1, v5, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-nez v1, :cond_7

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1, v5}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    iput-object v12, v1, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :cond_7
    invoke-virtual {v7, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->canReuseCodec(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v1

    iget v1, v1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v1, :cond_a

    iget v1, v5, Landroidx/media3/common/Format;->height:I

    iget v0, v5, Landroidx/media3/common/Format;->width:I

    move/from16 v23, v11

    const/4 v11, -0x1

    if-eq v0, v11, :cond_9

    if-ne v1, v11, :cond_8

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v11, 0x1

    :goto_4
    or-int v11, v16, v11

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v5, v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v0

    move v3, v1

    move/from16 v16, v11

    goto :goto_5

    :cond_a
    move/from16 v23, v11

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v21

    move-object/from16 v1, v22

    move/from16 v11, v23

    goto :goto_2

    :cond_b
    move/from16 v23, v11

    if-eqz v16, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resolutions unknown. Codec max resolution: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "MediaCodecVideoRenderer"

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-le v13, v6, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_d

    move v11, v13

    goto :goto_7

    :cond_d
    move v11, v6

    :goto_7
    if-eqz v0, :cond_e

    move v14, v6

    move/from16 v16, v9

    goto :goto_8

    :cond_e
    move/from16 v16, v9

    move v14, v13

    :goto_8
    int-to-float v9, v14

    move-object/from16 v21, v12

    int-to-float v12, v11

    div-float/2addr v9, v12

    sget-object v12, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    const/16 v22, 0x0

    move/from16 v24, v13

    move/from16 v13, v22

    move/from16 v22, v6

    :goto_9
    const/16 v6, 0x9

    if-ge v13, v6, :cond_18

    aget v6, v12, v13

    move-object/from16 v25, v12

    int-to-float v12, v6

    mul-float/2addr v12, v9

    float-to-int v12, v12

    if-le v6, v11, :cond_18

    if-gt v12, v14, :cond_f

    goto/16 :goto_10

    :cond_f
    move/from16 v26, v9

    sget v9, Landroidx/media3/common/util/Util;->SDK_INT:I

    move/from16 v27, v11

    const/16 v11, 0x15

    if-lt v9, v11, :cond_14

    if-eqz v0, :cond_10

    move v9, v12

    goto :goto_a

    :cond_10
    move v9, v6

    :goto_a
    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    move v6, v12

    :goto_b
    iget-object v11, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v11, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v11

    if-nez v11, :cond_13

    :goto_c
    const/4 v6, 0x0

    move/from16 v28, v14

    goto :goto_d

    :cond_13
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v12

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v11

    move/from16 v28, v14

    new-instance v14, Landroid/graphics/Point;

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x1

    div-int/2addr v9, v12

    mul-int/2addr v9, v12

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v6, v11

    mul-int/2addr v6, v11

    invoke-direct {v14, v9, v6}, Landroid/graphics/Point;-><init>(II)V

    move-object v6, v14

    :goto_d
    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v11, v6, Landroid/graphics/Point;->y:I

    move-object v14, v5

    move-object v12, v6

    float-to-double v5, v15

    invoke-virtual {v7, v9, v11, v5, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object v6, v12

    goto :goto_11

    :cond_14
    move/from16 v28, v14

    move-object v14, v5

    add-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, -0x1

    :try_start_0
    div-int/lit8 v6, v6, 0x10

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v12, v12, 0x10

    add-int/lit8 v12, v12, -0x1

    div-int/lit8 v12, v12, 0x10

    mul-int/lit8 v12, v12, 0x10

    mul-int v5, v6, v12

    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v9

    if-gt v5, v9, :cond_17

    new-instance v5, Landroid/graphics/Point;

    if-eqz v0, :cond_15

    move v9, v12

    goto :goto_e

    :cond_15
    move v9, v6

    :goto_e
    if-eqz v0, :cond_16

    goto :goto_f

    :cond_16
    move v6, v12

    :goto_f
    invoke-direct {v5, v9, v6}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    goto :goto_11

    :cond_17
    add-int/lit8 v13, v13, 0x1

    move-object v5, v14

    move-object/from16 v12, v25

    move/from16 v9, v26

    move/from16 v11, v27

    move/from16 v14, v28

    goto/16 :goto_9

    :cond_18
    :goto_10
    move-object v14, v5

    :catch_0
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_1a

    iget v0, v6, Landroid/graphics/Point;->x:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v0, v6, Landroid/graphics/Point;->y:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0, v4}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    iput v2, v0, Landroidx/media3/common/Format$Builder;->width:I

    iput v8, v0, Landroidx/media3/common/Format$Builder;->height:I

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-static {v5, v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Codec max resolution adjusted to: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v14

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_19
    move/from16 v22, v6

    move/from16 v16, v9

    move-object/from16 v21, v12

    move/from16 v24, v13

    :cond_1a
    :goto_12
    new-instance v1, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    invoke-direct {v1, v2, v8, v3}, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>(III)V

    :goto_13
    iput-object v1, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget-boolean v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1b

    iget v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    goto :goto_14

    :cond_1b
    const/4 v0, 0x0

    :goto_14
    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    iget-object v5, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "width"

    move/from16 v5, v22

    invoke-virtual {v3, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "height"

    move/from16 v5, v24

    invoke-virtual {v3, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v2, 0x0

    :goto_15
    iget-object v5, v4, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1c

    const-string v6, "csd-"

    invoke-static {v6, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1c
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v15, v2

    if-eqz v2, :cond_1d

    const-string v2, "frame-rate"

    invoke-virtual {v3, v2, v15}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_1d
    const-string v2, "rotation-degrees"

    iget v5, v4, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-static {v3, v2, v5}, Landroidx/tracing/Trace;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    if-eqz v21, :cond_1e

    const-string v2, "color-transfer"

    move-object/from16 v5, v21

    iget v6, v5, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    invoke-static {v3, v2, v6}, Landroidx/tracing/Trace;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v2, "color-standard"

    iget v6, v5, Landroidx/media3/common/ColorInfo;->colorSpace:I

    invoke-static {v3, v2, v6}, Landroidx/tracing/Trace;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v2, "color-range"

    iget v6, v5, Landroidx/media3/common/ColorInfo;->colorRange:I

    invoke-static {v3, v2, v6}, Landroidx/tracing/Trace;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v2, v5, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    if-eqz v2, :cond_1e

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v5, "hdr-static-info"

    invoke-virtual {v3, v5, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1e
    const-string v2, "video/dolby-vision"

    iget-object v5, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v5, "profile"

    invoke-static {v3, v5, v2}, Landroidx/tracing/Trace;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_1f
    iget v2, v1, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const-string v5, "max-width"

    invoke-virtual {v3, v5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "max-height"

    iget v5, v1, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    invoke-virtual {v3, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "max-input-size"

    iget v1, v1, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    invoke-static {v3, v2, v1}, Landroidx/tracing/Trace;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget v8, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v8, v1, :cond_20

    const-string v1, "priority"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v16, v1

    if-eqz v1, :cond_20

    const-string v1, "operating-rate"

    move/from16 v9, v16

    invoke-virtual {v3, v1, v9}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    goto :goto_16

    :cond_20
    move/from16 v9, v16

    :goto_16
    iget-boolean v1, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    if-eqz v1, :cond_21

    const-string v1, "no-post-process"

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "auto-frc"

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_17

    :cond_21
    const/4 v2, 0x1

    :goto_17
    if-eqz v0, :cond_22

    const-string v1, "tunneled-playback"

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v1, "audio-session-id"

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_22
    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-nez v0, :cond_25

    invoke-virtual {v10, v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-nez v0, :cond_23

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    move/from16 v11, v23

    invoke-static {v0, v11}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    goto :goto_18

    :cond_23
    move/from16 v11, v23

    :goto_18
    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    iput-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    goto :goto_19

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_25
    move/from16 v11, v23

    :goto_19
    iget-object v5, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)V

    const/16 v1, 0x1f

    if-lt v8, v1, :cond_26

    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/media3/exoplayer/BaseRenderer;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31;->setLogSessionIdToMediaCodecFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    goto :goto_1a

    :cond_26
    move-object/from16 v1, p0

    :goto_1a
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCodec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v20

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v7, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Format exceeds selected codec\'s capabilities [%s, %s]"

    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaCodecRenderer"

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    iput-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iput v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iput-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    const/4 v0, 0x2

    const-string v2, "OMX.Exynos.avc.dec.secure"

    const/16 v5, 0x19

    if-gt v8, v5, :cond_29

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    sget-object v6, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    const-string v9, "SM-T585"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_28

    const-string v9, "SM-A510"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_28

    const-string v9, "SM-A520"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_28

    const-string v9, "SM-J700"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    :cond_28
    move v6, v0

    goto :goto_1b

    :cond_29
    const/16 v6, 0x18

    if-ge v8, v6, :cond_2c

    const-string v6, "OMX.Nvidia.h264.decode"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    const-string v6, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    :cond_2a
    sget-object v6, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v9, "flounder"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    const-string v9, "flounder_lte"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    const-string v9, "grouper"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    const-string v9, "tilapia"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    :cond_2b
    const/4 v6, 0x1

    goto :goto_1b

    :cond_2c
    const/4 v6, 0x0

    :goto_1b
    iput v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    iget-object v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    const/16 v9, 0x15

    if-ge v8, v9, :cond_2d

    iget-object v6, v6, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string v6, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v6, 0x1

    goto :goto_1c

    :cond_2d
    const/4 v6, 0x0

    :goto_1c
    iput-boolean v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    const/16 v6, 0x13

    const/16 v9, 0x12

    if-lt v8, v9, :cond_30

    if-ne v8, v9, :cond_2e

    const-string v13, "OMX.SEC.avc.dec"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_30

    const-string v13, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_30

    :cond_2e
    if-ne v8, v6, :cond_2f

    sget-object v13, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    const-string v14, "SM-G800"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2f

    const-string v13, "OMX.Exynos.avc.dec"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_30

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_1d

    :cond_2f
    const/4 v2, 0x0

    goto :goto_1e

    :cond_30
    :goto_1d
    const/4 v2, 0x1

    :goto_1e
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    const/16 v13, 0x1d

    if-ne v8, v13, :cond_31

    const-string v2, "c2.android.aac.decoder"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    goto :goto_1f

    :cond_31
    const/4 v2, 0x0

    :goto_1f
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    const/16 v2, 0x17

    if-gt v8, v2, :cond_32

    const-string v2, "OMX.google.vorbis.decoder"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    :cond_32
    if-gt v8, v6, :cond_35

    sget-object v2, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v6, "hb2000"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    const-string v6, "stvm8"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_33
    const-string v2, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_34
    const/4 v2, 0x1

    goto :goto_20

    :cond_35
    const/4 v2, 0x0

    :goto_20
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    const/16 v2, 0x15

    if-ne v8, v2, :cond_36

    const-string v6, "OMX.google.aac.decoder"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    const/4 v6, 0x1

    goto :goto_21

    :cond_36
    const/4 v6, 0x0

    :goto_21
    iput-boolean v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-ge v8, v2, :cond_38

    const-string v2, "OMX.SEC.mp3.dec"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "samsung"

    sget-object v6, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v6, "baffin"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "grand"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "fortuna"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "gprimelte"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "j2y18lte"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "ms01"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_37
    const/4 v2, 0x1

    goto :goto_22

    :cond_38
    const/4 v2, 0x0

    :goto_22
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    if-gt v8, v9, :cond_39

    iget v2, v2, Landroidx/media3/common/Format;->channelCount:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_39

    const-string v2, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x1

    goto :goto_23

    :cond_39
    const/4 v2, 0x0

    :goto_23
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    iget-object v2, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-gt v8, v5, :cond_3a

    const-string v5, "OMX.rk.video_decoder.avc"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    :cond_3a
    const/16 v5, 0x11

    if-gt v8, v5, :cond_3b

    const-string v5, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    :cond_3b
    if-gt v8, v13, :cond_3c

    const-string v5, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string v5, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string v5, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string v5, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string v5, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string v5, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    :cond_3c
    const-string v5, "Amazon"

    sget-object v6, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string v5, "AFTS"

    sget-object v6, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    if-eqz v11, :cond_3e

    :cond_3d
    const/4 v5, 0x1

    goto :goto_24

    :cond_3e
    const/4 v5, 0x0

    :goto_24
    if-nez v5, :cond_41

    iget-boolean v5, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v5, :cond_3f

    const/16 v5, 0x17

    if-ge v8, v5, :cond_3f

    const/4 v5, 0x1

    goto :goto_25

    :cond_3f
    const/4 v5, 0x0

    :goto_25
    if-eqz v5, :cond_40

    goto :goto_26

    :cond_40
    const/4 v5, 0x0

    goto :goto_27

    :cond_41
    :goto_26
    const/4 v5, 0x1

    :goto_27
    iput-boolean v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->needsReconfiguration()V

    const-string v5, "c2.android.mp3.decoder"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance v2, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    invoke-direct {v2}, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;-><init>()V

    iput-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    :cond_42
    iget v2, v1, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    if-ne v2, v0, :cond_43

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v14, 0x3e8

    add-long/2addr v5, v14

    iput-wide v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    :cond_43
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    const/4 v7, 0x1

    add-int/2addr v1, v7

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    sub-long v5, v3, v18

    iget-object v1, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/Handler;

    if-eqz v9, :cond_44

    new-instance v11, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    move-object v0, v11

    move-object v2, v12

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v9, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_44
    invoke-static {v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    iget-object v0, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt v8, v13, :cond_48

    const-string v1, "video/x-vnd.on2.vp9"

    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_45

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_46

    :cond_45
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_46
    array-length v1, v0

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v1, :cond_48

    aget-object v3, v0, v2

    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_47

    goto :goto_29

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_48
    const/4 v7, 0x0

    :goto_29
    iput-boolean v7, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_49

    iget-boolean v1, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v1, :cond_49

    new-instance v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    iget-object v2, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v10, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    iput-object v1, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_49
    move-object/from16 v4, v17

    iget-object v1, v4, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    if-lt v0, v13, :cond_4a

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :cond_4a
    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    throw v0

    :cond_4b
    move-object v4, v12

    const/4 v14, 0x1

    invoke-static {v5}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->handler:Landroid/os/Handler;

    iget-object v0, v2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x6

    const/4 v5, 0x7

    if-eqz v0, :cond_4d

    iget v6, v0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    if-eq v6, v5, :cond_4c

    if-ne v6, v3, :cond_4e

    :cond_4c
    move v6, v14

    goto :goto_2a

    :cond_4d
    sget-object v6, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    :cond_4e
    const/4 v6, 0x0

    :goto_2a
    if-nez v6, :cond_4f

    sget-object v0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    goto :goto_2b

    :cond_4f
    iget v6, v0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    if-ne v6, v5, :cond_50

    new-instance v5, Landroidx/media3/common/ColorInfo;

    iget-object v6, v0, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    iget v7, v0, Landroidx/media3/common/ColorInfo;->colorRange:I

    iget v8, v0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    invoke-direct {v5, v8, v6, v7, v3}, Landroidx/media3/common/ColorInfo;-><init>(I[BII)V

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    goto :goto_2c

    :cond_50
    :goto_2b
    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    :goto_2c
    const/16 v0, 0x15

    if-lt v1, v0, :cond_51

    move v6, v14

    goto :goto_2d

    :cond_51
    const/4 v6, 0x0

    :goto_2d
    if-nez v6, :cond_52

    :try_start_2
    iget v0, v2, Landroidx/media3/common/Format;->rotationDegrees:I

    if-eqz v0, :cond_52

    int-to-float v0, v0

    invoke-static {}, L_COROUTINE/_BOUNDARY;->prepare()V

    sget-object v1, L_COROUTINE/_BOUNDARY;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, L_COROUTINE/_BOUNDARY;->setRotationMethod:Ljava/lang/reflect/Method;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, L_COROUTINE/_BOUNDARY;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_52
    invoke-static {}, L_COROUTINE/_BOUNDARY;->prepare()V

    sget-object v0, L_COROUTINE/_BOUNDARY;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, L_COROUTINE/_BOUNDARY;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    const/16 v1, 0x1b58

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v2, v0, v3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(ILandroidx/media3/common/Format;Ljava/lang/Exception;Z)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public final maybeInitCodecOrBypass()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v1

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 v4, 0x1

    if-nez v3, :cond_4

    if-nez v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    instance-of v3, v1, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    :try_start_0
    new-instance v5, Landroid/media/MediaCrypto;

    iget-object v6, v3, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->uuid:Ljava/util/UUID;

    iget-object v7, v3, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->sessionId:[B

    invoke-direct {v5, v6, v7}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v3, v3, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->forceAllowInsecureDecoderComponents:Z

    if-nez v3, :cond_3

    invoke-virtual {v5, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 v3, 0x1776

    invoke-virtual {p0, v3, v1, v0, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(ILandroidx/media3/common/Format;Ljava/lang/Exception;Z)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    sget-boolean v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v0, :cond_6

    instance-of v0, v1, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    if-eq v0, v4, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget v3, v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, v3, v1, v0, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(ILandroidx/media3/common/Format;Ljava/lang/Exception;Z)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_6
    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 v3, 0xfa1

    invoke-virtual {p0, v3, v1, v0, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(ILandroidx/media3/common/Format;Ljava/lang/Exception;Z)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_2
    return-void
.end method

.method public final maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getAvailableCodecInfos(Z)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const v1, -0xc34e

    invoke-direct {v0, v1, p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(ILandroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;Z)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    :goto_2
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v3, :cond_a

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-object v3, p0

    check-cast v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v4, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-nez v4, :cond_4

    invoke-virtual {v3, v9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_5

    return-void

    :cond_5
    :try_start_1
    invoke-virtual {p0, v9, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->initCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "MediaCodecRenderer"

    if-ne v9, v0, :cond_6

    :try_start_2
    const-string v3, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x32

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0, v9, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->initCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V

    goto :goto_2

    :cond_6
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v3

    move-object v6, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed to initialize decoder: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Decoder init failed: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v9, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v4, v8, :cond_7

    instance-of v4, v6, Landroid/media/MediaCodec$CodecException;

    if-eqz v4, :cond_7

    move-object v4, v6

    check-cast v4, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v4}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_5

    :cond_7
    move-object v10, v2

    :goto_5
    move-object v4, v3

    move v8, p2

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLandroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    new-instance v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    iget-object v8, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    iget-boolean v9, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    iget-object v10, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v11, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLandroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Ljava/lang/String;)V

    :goto_6
    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_2

    :cond_9
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw p0

    :cond_a
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    return-void

    :cond_b
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const v0, -0xc34f

    invoke-direct {p1, v0, p0, v2, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(ILandroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;Z)V

    throw p1
.end method

.method public abstract onCodecError(Ljava/lang/Exception;)V
.end method

.method public abstract onInputFormatChanged(Lcom/airbnb/lottie/model/MutablePair;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
.end method

.method public abstract onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
.end method

.method public abstract onProcessedOutputBuffer(J)V
.end method

.method public final onStreamChanged([Landroidx/media3/common/Format;JJ)V
    .locals 5

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    new-instance p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-direct {p1, v0, v1, p4, p5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJ)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    iget-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    cmp-long p2, v2, p2

    if-ltz p2, :cond_2

    :cond_1
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-direct {p1, v0, v1, p4, p5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJ)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_3

    check-cast p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_0

    :cond_2
    new-instance p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    invoke-direct {p2, v0, v1, p4, p5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final processEndOfStream()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    :goto_0
    return-void
.end method

.method public abstract processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJZZLandroidx/media3/common/Format;)Z
.end method

.method public final readSourceOmittingSampleData(I)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/MutablePair;->clear()V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    const/4 v2, 0x4

    or-int/2addr p1, v2

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 v3, -0x5

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/airbnb/lottie/model/MutablePair;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    return v4

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1, v2}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final releaseCodec()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->release()V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v2, v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v3, v2, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v5, 0xb

    invoke-direct {v4, v5, v2, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    throw v1

    :catchall_1
    move-exception v1

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    :try_start_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    throw v1

    :catchall_2
    move-exception v1

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    throw v1
.end method

.method public abstract resetCodecStateForFlush()V
.end method

.method public final resetCodecStateForRelease()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    return-void
.end method

.method public final setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    return-void
.end method

.method public final setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V
    .locals 4

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    :cond_0
    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->supportsFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I

    move-result p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public abstract supportsFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final updateCodecOperatingRate(Landroidx/media3/common/Format;)Z
    .locals 5

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz p1, :cond_7

    iget p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    iget p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    iget-object v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(F[Landroidx/media3/common/Format;)F

    move-result p1

    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    cmpl-float v3, v2, p1

    if-nez v3, :cond_2

    return v1

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, p1, v3

    if-nez v4, :cond_4

    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz p1, :cond_3

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    cmpl-float v0, v2, v3

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    :cond_7
    :goto_2
    return v1
.end method

.method public final updateDrmSessionV23()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v0

    instance-of v1, v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    check-cast v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    iget-object v0, v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->sessionId:[B

    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 v3, 0x1776

    invoke-virtual {p0, v3, v1, v0, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(ILandroidx/media3/common/Format;Ljava/lang/Exception;Z)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void
.end method

.method public final updateOutputFormatForTime(J)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/motorola/camera/saving/XmpData$GDepth;->poll(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    check-cast p1, Landroidx/media3/common/Format;

    if-nez p1, :cond_1

    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz p2, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    monitor-enter p1

    :try_start_1
    iget p2, p1, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/saving/XmpData$GDepth;->popFirst()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p1

    move-object p1, p2

    check-cast p1, Landroidx/media3/common/Format;

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    :goto_1
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    goto :goto_2

    :cond_2
    move v1, p2

    :goto_2
    if-nez v1, :cond_3

    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    :cond_4
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
