.class public final Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# instance fields
.field public notifiedDownstreamFormat:Z

.field public streamState:I

.field public final synthetic this$0:Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isReady()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadingFinished:Z

    return p0
.end method

.method public final maybeNotifyDownstreamFormat()V
    .locals 13

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->notifiedDownstreamFormat:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->format:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->format:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v0, Landroidx/media3/exoplayer/source/MediaLoadData;

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->downstreamFormatChanged(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->notifiedDownstreamFormat:Z

    :cond_0
    return-void
.end method

.method public final maybeThrowError()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader;->currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_2

    iget v1, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    iget p0, p0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    if-gt v1, p0, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final readData(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->maybeNotifyDownstreamFormat()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadingFinished:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    iget-object v3, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->sampleData:[B

    if-nez v3, :cond_0

    iput v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    :cond_0
    iget v3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v4, -0x4

    if-ne v3, v2, :cond_1

    const/4 p0, 0x4

    invoke-virtual {p2, p0}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    return v4

    :cond_1
    and-int/lit8 v5, p3, 0x2

    const/4 v6, 0x1

    if-nez v5, :cond_6

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, -0x3

    return p0

    :cond_3
    iget-object p1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->sampleData:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v6}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    const-wide/16 v7, 0x0

    iput-wide v7, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_4

    iget p1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {p2, p1}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object p1, p2, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object p2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->sampleData:[B

    const/4 v1, 0x0

    iget v0, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_4
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_5

    iput v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    :cond_5
    return v4

    :cond_6
    :goto_0
    iget-object p2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->format:Landroidx/media3/common/Format;

    iput-object p2, p1, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    iput v6, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 p0, -0x5

    return p0
.end method

.method public final skipData(J)I
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->maybeNotifyDownstreamFormat()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iput p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
