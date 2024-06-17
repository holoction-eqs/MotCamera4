.class public final Lcom/google/zxing/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public format:Ljava/lang/Object;

.field public final numBits:I

.field public final rawBytes:Ljava/lang/Object;

.field public resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

.field public resultPoints:Ljava/lang/Object;

.field public final text:Ljava/lang/Object;

.field public timestamp:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 2
    iget p1, p1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 3
    iput p1, p0, Lcom/google/zxing/Result;->numBits:I

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/Result;->rawBytes:Ljava/lang/Object;

    new-instance v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;-><init>(JI)V

    iput-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/zxing/Result;->rawBytes:Ljava/lang/Object;

    iput p3, p0, Lcom/google/zxing/Result;->numBits:I

    iput-object p4, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iput-wide p6, p0, Lcom/google/zxing/Result;->timestamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    .line 6
    array-length v0, p2

    mul-int/lit8 v4, v0, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    return-void
.end method

.method public static readData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;JLjava/nio/ByteBuffer;I)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p4, :cond_1

    .line 2
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v2, v2, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    .line 3
    iget-wide v3, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    sub-long v3, p1, v3

    long-to-int v3, v3

    check-cast v1, Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, v1, Landroidx/media3/exoplayer/upstream/Allocation;->offset:I

    add-int/2addr v3, v1

    .line 4
    invoke-virtual {p3, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static readData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;J[BI)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .locals 6

    .line 5
    :goto_0
    iget-wide v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    goto :goto_0

    :cond_0
    move v0, p4

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 6
    iget-wide v1, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v3, v3, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    .line 7
    iget-wide v4, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    sub-long v4, p1, v4

    long-to-int v4, v4

    check-cast v2, Landroidx/media3/exoplayer/upstream/Allocation;

    iget v2, v2, Landroidx/media3/exoplayer/upstream/Allocation;->offset:I

    add-int/2addr v4, v2

    sub-int v2, p4, v0

    .line 8
    invoke-static {v3, v4, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-wide v1, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static readSampleData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .locals 12

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v0, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v3, p3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {p0, v0, v1, v3, v2}, Lcom/google/zxing/Result;->readData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;J[BI)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object p0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iget-object v3, p3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    and-int/lit8 v3, v3, 0x7f

    iget-object v6, p1, Landroidx/media3/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media3/decoder/CryptoInfo;

    iget-object v7, v6, Landroidx/media3/decoder/CryptoInfo;->iv:[B

    if-nez v7, :cond_1

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v6, Landroidx/media3/decoder/CryptoInfo;->iv:[B

    goto :goto_1

    :cond_1
    invoke-static {v7, v4}, Ljava/util/Arrays;->fill([BB)V

    :goto_1
    iget-object v7, v6, Landroidx/media3/decoder/CryptoInfo;->iv:[B

    invoke-static {p0, v0, v1, v7, v3}, Lcom/google/zxing/Result;->readData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;J[BI)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object p0

    int-to-long v7, v3

    add-long/2addr v0, v7

    if-eqz v5, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v3, p3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {p0, v0, v1, v3, v2}, Lcom/google/zxing/Result;->readData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;J[BI)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object p0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    :cond_2
    iget-object v3, v6, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-eqz v3, :cond_3

    array-length v7, v3

    if-ge v7, v2, :cond_4

    :cond_3
    new-array v3, v2, [I

    :cond_4
    iget-object v7, v6, Landroidx/media3/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v7, :cond_5

    array-length v8, v7

    if-ge v8, v2, :cond_6

    :cond_5
    new-array v7, v2, [I

    :cond_6
    if-eqz v5, :cond_7

    mul-int/lit8 v5, v2, 0x6

    invoke-virtual {p3, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v8, p3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {p0, v0, v1, v8, v5}, Lcom/google/zxing/Result;->readData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;J[BI)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object p0

    int-to-long v8, v5

    add-long/2addr v0, v8

    invoke-virtual {p3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_2
    if-ge v4, v2, :cond_8

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    aput v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    aput v4, v3, v4

    iget v5, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    iget-wide v8, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    sub-long v8, v0, v8

    long-to-int v8, v8

    sub-int/2addr v5, v8

    aput v5, v7, v4

    :cond_8
    iget-object v4, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v5, v4, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v8, v6, Landroidx/media3/decoder/CryptoInfo;->iv:[B

    iput v2, v6, Landroidx/media3/decoder/CryptoInfo;->numSubSamples:I

    iput-object v3, v6, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    iput-object v7, v6, Landroidx/media3/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object v5, v6, Landroidx/media3/decoder/CryptoInfo;->key:[B

    iput-object v8, v6, Landroidx/media3/decoder/CryptoInfo;->iv:[B

    iget v9, v4, Landroidx/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iput v9, v6, Landroidx/media3/decoder/CryptoInfo;->mode:I

    iget v10, v4, Landroidx/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iput v10, v6, Landroidx/media3/decoder/CryptoInfo;->encryptedBlocks:I

    iget v4, v4, Landroidx/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    iput v4, v6, Landroidx/media3/decoder/CryptoInfo;->clearBlocks:I

    iget-object v11, v6, Landroidx/media3/decoder/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput v2, v11, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput-object v3, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object v7, v11, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object v5, v11, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object v8, v11, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput v9, v11, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_9

    iget-object v2, v6, Landroidx/media3/decoder/CryptoInfo;->patternHolder:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v3, v10, v4}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    iget-object v2, v2, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_9
    iget-wide v2, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget v1, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    :cond_a
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-wide v1, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object v3, p3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {p0, v1, v2, v3, v0}, Lcom/google/zxing/Result;->readData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;J[BI)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object p0

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p3

    iget-wide v1, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget v1, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p1, p3}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-wide v0, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object v2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0, v1, v2, p3}, Lcom/google/zxing/Result;->readData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;JLjava/nio/ByteBuffer;I)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object p0

    iget-wide v0, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget v0, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v0, p3

    iput v0, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    iget-object p3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result p3

    if-ge p3, v0, :cond_b

    goto :goto_3

    :cond_b
    iget-object p3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4

    :cond_c
    :goto_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    :goto_4
    iget-wide v0, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_d
    iget p3, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p1, p3}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-wide v0, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    :goto_5
    iget p2, p2, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/zxing/Result;->readData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;JLjava/nio/ByteBuffer;I)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final discardDownstreamTo(J)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-wide v1, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/upstream/Allocation;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v3, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aput-object v0, v2, v3

    iget v0, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iput-object v1, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-wide p1, p1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    iget-wide v1, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    iput-object v0, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final preAppend(I)I
    .locals 6

    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-object v1, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/upstream/Allocation;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    monitor-enter v1

    :try_start_0
    iget v2, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v3, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    if-lez v3, :cond_0

    iget-object v2, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v4, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/media3/exoplayer/upstream/Allocation;

    iget v4, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/Allocation;-><init>([BI)V

    iget-object v4, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    array-length v5, v4

    if-le v2, v5, :cond_1

    array-length v2, v4

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object v2, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v2, v3

    :goto_0
    monitor-exit v1

    new-instance v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-object v3, p0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-wide v3, v3, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    iget v5, p0, Lcom/google/zxing/Result;->numBits:I

    invoke-direct {v1, v3, v4, v5}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;-><init>(JI)V

    iput-object v2, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-wide v0, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    iget-wide v2, p0, Lcom/google/zxing/Result;->timestamp:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/zxing/Result;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
