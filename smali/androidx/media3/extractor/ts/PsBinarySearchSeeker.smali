.class public final Landroidx/media3/extractor/ts/PsBinarySearchSeeker;
.super Landroidx/media3/extractor/BinarySearchSeeker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;JJ)V
    .locals 14

    .line 1
    new-instance v1, Landroidx/work/InputMergerFactory$1;

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    new-instance v2, Landroidx/work/impl/StartStopTokens;

    const/4 v0, 0x0

    move-object v3, p1

    invoke-direct {v2, p1, v0}, Landroidx/work/impl/StartStopTokens;-><init>(Landroidx/media3/common/util/TimestampAdjuster;I)V

    const-wide/16 v3, 0x1

    add-long v5, p2, v3

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0xbc

    const/16 v13, 0x3e8

    move-object v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v13}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;JJII)V
    .locals 14

    .line 2
    new-instance v1, Landroidx/work/InputMergerFactory$1;

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/saving/XmpData$GDepth;

    move-object v0, p1

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v2, v3, p1, v4}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;I)V

    const-wide/16 v3, 0x1

    add-long v5, p2, v3

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0xbc

    const/16 v13, 0x3ac

    move-object v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v13}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;IJJ)V
    .locals 14

    move-object v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v2, 0xd

    invoke-direct {v1, p1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/adobe/xmp/impl/ByteBuffer;

    move/from16 v3, p2

    invoke-direct {v2, p1, v3}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;I)V

    invoke-virtual {p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v3

    iget-wide v5, v0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    .line 3
    iget v7, v0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v8, v0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v8, :cond_0

    int-to-long v8, v8

    int-to-long v10, v7

    add-long/2addr v8, v10

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    goto :goto_1

    :cond_0
    iget v8, v0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v9, v0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    if-ne v9, v8, :cond_1

    if-lez v9, :cond_1

    int-to-long v8, v9

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x1000

    :goto_0
    iget v10, v0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    int-to-long v10, v10

    mul-long/2addr v8, v10

    iget v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    int-to-long v10, v0

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x40

    :goto_1
    add-long v11, v8, v10

    const/4 v0, 0x6

    .line 4
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object v0, p0

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v13}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    return-void
.end method

.method public static access$100([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method
