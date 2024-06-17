.class public final Landroidx/media3/extractor/amr/AmrExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final MAX_FRAME_SIZE_BYTES:I

.field public static final amrSignatureNb:[B

.field public static final amrSignatureWb:[B

.field public static final frameSizeBytesByTypeNb:[I

.field public static final frameSizeBytesByTypeWb:[I


# instance fields
.field public currentSampleBytesRemaining:I

.field public currentSampleSize:I

.field public currentSampleTimeUs:J

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public firstSamplePosition:J

.field public firstSampleSize:I

.field public final flags:I

.field public hasOutputFormat:Z

.field public hasOutputSeekMap:Z

.field public isWideBand:Z

.field public numSamplesWithSameSize:I

.field public final scratch:[B

.field public seekMap:Landroidx/media3/extractor/SeekMap;

.field public timeOffsetUs:J

.field public trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    const-string v1, "#!AMR\n"

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    const-string v1, "#!AMR-WB\n"

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Landroidx/media3/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->flags:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->scratch:[B

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final peekNextSampleSize(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 5

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->scratch:[B

    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    aget-byte p1, v2, v0

    and-int/lit16 v2, p1, 0x83

    const/4 v3, 0x0

    if-gtz v2, :cond_9

    shr-int/lit8 p1, p1, 0x3

    const/16 v2, 0xf

    and-int/2addr p1, v2

    if-ltz p1, :cond_5

    if-gt p1, v2, :cond_5

    iget-boolean v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v2, :cond_1

    const/16 v4, 0xa

    if-lt p1, v4, :cond_0

    const/16 v4, 0xd

    if-le p1, v4, :cond_1

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    if-nez v4, :cond_4

    if-nez v2, :cond_3

    const/16 v2, 0xc

    if-lt p1, v2, :cond_2

    const/16 v2, 0xe

    if-le p1, v2, :cond_3

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal AMR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_6

    const-string p0, "WB"

    goto :goto_2

    :cond_6
    const-string p0, "NB"

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " frame type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_7
    iget-boolean p0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_8

    sget-object p0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    aget p0, p0, p1

    goto :goto_3

    :cond_8
    sget-object p0, Landroidx/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget p0, p0, p1

    :goto_3
    return p0

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid padding bits for frame header "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 13

    iget-object p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {p2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->readAmrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Could not find AMR header."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-boolean p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    const/4 v0, 0x1

    if-nez p2, :cond_4

    iput-boolean v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    iget-boolean p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p2, :cond_2

    const-string v1, "audio/amr-wb"

    goto :goto_1

    :cond_2
    const-string v1, "audio/3gpp"

    :goto_1
    if-eqz p2, :cond_3

    const/16 p2, 0x3e80

    goto :goto_2

    :cond_3
    const/16 p2, 0x1f40

    :goto_2
    iget-object v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v1, v3, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    sget v1, Landroidx/media3/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    iput v1, v3, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iput v0, v3, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput p2, v3, Landroidx/media3/common/Format$Builder;->sampleRate:I

    new-instance p2, Landroidx/media3/common/Format;

    invoke-direct {p2, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v2, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    :cond_4
    iget p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const-wide/16 v1, 0x4e20

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez p2, :cond_6

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->peekNextSampleSize(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    iget p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-ne p2, v4, :cond_5

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSamplePosition:J

    iget p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    :cond_5
    iget p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    iget v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-ne p2, v5, :cond_6

    iget p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    add-int/2addr p2, v0

    iput p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    :cond_6
    iget-object p2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    invoke-interface {p2, p1, v5, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result p2

    if-ne p2, v4, :cond_7

    :catch_0
    move p2, v4

    goto :goto_4

    :cond_7
    iget v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    sub-int/2addr v5, p2

    iput v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    if-lez v5, :cond_8

    goto :goto_3

    :cond_8
    iget-object v6, p0, Landroidx/media3/extractor/amr/AmrExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-wide v7, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v9, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v7, v9

    const/4 v9, 0x1

    iget v10, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    :goto_3
    move p2, v3

    :goto_4
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    iget-boolean p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    if-eqz p1, :cond_9

    goto :goto_8

    :cond_9
    iget p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->flags:I

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_d

    const-wide/16 v5, -0x1

    cmp-long v5, v8, v5

    if-eqz v5, :cond_d

    iget v7, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-eq v7, v4, :cond_a

    iget v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-eq v7, v5, :cond_a

    goto :goto_6

    :cond_a
    iget v5, p0, Landroidx/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    const/16 v6, 0x14

    if-ge v5, v6, :cond_b

    if-ne p2, v4, :cond_e

    :cond_b
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_c

    move v12, v0

    goto :goto_5

    :cond_c
    move v12, v3

    :goto_5
    int-to-long v3, v7

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    div-long/2addr v3, v1

    long-to-int v6, v3

    new-instance p1, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    iget-wide v10, p0, Landroidx/media3/extractor/amr/AmrExtractor;->firstSamplePosition:J

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(IIJJZ)V

    goto :goto_7

    :cond_d
    :goto_6
    new-instance p1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_7
    iput-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    iget-object v1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1, p1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    :cond_e
    :goto_8
    return p2
.end method

.method public final readAmrHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    array-length p0, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v4, v0

    invoke-interface {p1, v3, v4, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    array-length p0, v0

    :goto_0
    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v2

    :cond_1
    return v3
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 3

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    instance-of v1, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    iget-wide v1, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    sub-long/2addr p1, v1

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x8

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    mul-long/2addr p1, p3

    iget p3, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->bitrate:I

    int-to-long p3, p3

    div-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    goto :goto_0

    :cond_0
    iput-wide p3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    :goto_0
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->readAmrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
