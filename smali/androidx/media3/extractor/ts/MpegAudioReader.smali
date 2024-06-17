.class public final Landroidx/media3/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public formatId:Ljava/lang/String;

.field public frameBytesRead:I

.field public frameDurationUs:J

.field public frameSize:I

.field public hasOutputFormat:Z

.field public final header:Landroidx/media3/extractor/wav/WavFormat;

.field public final headerScratch:Landroidx/media3/common/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public lastByteWasFF:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public state:I

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, Landroidx/media3/extractor/wav/WavFormat;

    invoke-direct {v0}, Landroidx/media3/extractor/wav/WavFormat;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/wav/WavFormat;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 14

    iget-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    :goto_0
    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v2, v0, v1

    if-lez v2, :cond_c

    iget v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    const/4 v4, 0x1

    iget-object v5, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v3, :cond_7

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_2

    iget v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameSize:I

    iget v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v0, p1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v11, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge v1, v11, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v8, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1

    iget-object v7, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    :cond_1
    iput v6, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v6, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    iget v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v3, v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    iget v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge v2, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/wav/WavFormat;

    invoke-virtual {v2, v0}, Landroidx/media3/extractor/wav/WavFormat;->setForHeaderData(I)Z

    move-result v0

    if-nez v0, :cond_5

    iput v6, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v4, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0

    :cond_5
    iget v0, v2, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameSize:I

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v0, :cond_6

    iget v0, v2, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    int-to-long v8, v0

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    iget v0, v2, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v10, v0

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameDurationUs:J

    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v8, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    iput-object v8, v3, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iget-object v8, v2, Landroidx/media3/extractor/wav/WavFormat;->extraData:Ljava/io/Serializable;

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    const/16 v8, 0x1000

    iput v8, v3, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iget v2, v2, Landroidx/media3/extractor/wav/WavFormat;->averageBytesPerSecond:I

    iput v2, v3, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v0, v3, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iget-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    iput-object v0, v3, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2, v0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean v4, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    :cond_6
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, v1, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iput v7, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    goto/16 :goto_0

    :cond_7
    iget-object v2, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :goto_1
    if-ge v1, v0, :cond_b

    aget-byte v3, v2, v1

    and-int/lit16 v8, v3, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_8

    move v8, v4

    goto :goto_2

    :cond_8
    move v8, v6

    :goto_2
    iget-boolean v9, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v9, :cond_9

    and-int/lit16 v3, v3, 0xe0

    const/16 v9, 0xe0

    if-ne v3, v9, :cond_9

    move v3, v4

    goto :goto_3

    :cond_9
    move v3, v6

    :goto_3
    iput-boolean v8, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v3, :cond_a

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v6, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    iget-object v0, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v1, v2, v1

    aput-byte v1, v0, v4

    iput v7, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v4, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 1

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget p2, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method

.method public final packetFinished()V
    .locals 0

    return-void
.end method

.method public final packetStarted(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method
