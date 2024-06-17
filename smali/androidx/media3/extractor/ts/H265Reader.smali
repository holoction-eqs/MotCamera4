.class public final Landroidx/media3/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final prefixFlags:[Z

.field public final prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

.field public final seiReader:Lcom/airbnb/lottie/model/MutablePair;

.field public final seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

.field public final sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public totalBytesWritten:J

.field public final vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/MutablePair;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Lcom/airbnb/lottie/model/MutablePair;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x21

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x22

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    :goto_0
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v4, v2, v3

    if-lez v4, :cond_1a

    iget-object v5, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-wide v6, v0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    iget-object v6, v0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v6, v4, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    :goto_1
    if-ge v3, v2, :cond_19

    iget-object v4, v0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v5, v3, v2, v4}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v0, v3, v2, v5}, Landroidx/media3/extractor/ts/H265Reader;->nalUnitData(II[B)V

    return-void

    :cond_0
    add-int/lit8 v6, v4, 0x3

    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0x7e

    const/4 v8, 0x1

    shr-int/2addr v7, v8

    sub-int v9, v4, v3

    if-lez v9, :cond_1

    invoke-virtual {v0, v3, v4, v5}, Landroidx/media3/extractor/ts/H265Reader;->nalUnitData(II[B)V

    :cond_1
    sub-int v15, v2, v4

    iget-wide v3, v0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v10, v15

    sub-long/2addr v3, v10

    const/4 v14, 0x0

    if-gez v9, :cond_2

    neg-int v9, v9

    goto :goto_2

    :cond_2
    move v9, v14

    :goto_2
    iget-wide v10, v0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    iget-object v12, v0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v13, v0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    iget-boolean v8, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_3

    iget-boolean v8, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v8, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    iput-boolean v14, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    goto :goto_3

    :cond_3
    iget-boolean v8, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    if-nez v8, :cond_5

    iget-boolean v8, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v19, v2

    move-object/from16 v27, v5

    move/from16 v28, v6

    move v8, v15

    goto :goto_6

    :cond_5
    :goto_4
    if-eqz v13, :cond_7

    iget-boolean v8, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v8, :cond_7

    move v8, v15

    iget-wide v14, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    move/from16 v19, v2

    sub-long v1, v3, v14

    long-to-int v1, v1

    add-int v25, v1, v8

    iget-wide v1, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    cmp-long v13, v1, v17

    if-nez v13, :cond_6

    move-object/from16 v27, v5

    move/from16 v28, v6

    goto :goto_5

    :cond_6
    iget-boolean v13, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    move-object/from16 v27, v5

    move/from16 v28, v6

    iget-wide v5, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v14, v5

    long-to-int v5, v14

    iget-object v6, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/16 v26, 0x0

    move-object/from16 v20, v6

    move-wide/from16 v21, v1

    move/from16 v23, v13

    move/from16 v24, v5

    invoke-interface/range {v20 .. v26}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_5

    :cond_7
    move/from16 v19, v2

    move-object/from16 v27, v5

    move/from16 v28, v6

    move v8, v15

    :goto_5
    iget-wide v1, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iput-wide v1, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    iget-wide v1, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v1, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    iget-boolean v1, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v1, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v1, 0x1

    iput-boolean v1, v12, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    :goto_6
    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    iget-object v2, v0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v5, v0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v6, v0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-nez v1, :cond_8

    invoke-virtual {v6, v9}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    invoke-virtual {v5, v9}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-boolean v1, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v12, v0, Landroidx/media3/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    iget v13, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v14, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v14, v13

    iget v15, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v14, v15

    new-array v14, v14, [B

    iget-object v15, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v15, [B

    move/from16 v20, v8

    const/4 v8, 0x0

    invoke-static {v15, v8, v14, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v13, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v13, [B

    iget v15, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move/from16 v21, v7

    iget v7, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v13, v8, v14, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v7, [B

    iget v13, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v15, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v13, v15

    iget v15, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v7, v8, v14, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v7, [B

    iget v8, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v13, 0x3

    invoke-static {v13, v8, v7}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnit(II[B)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v7

    iget v8, v7, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    iget-boolean v13, v7, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    iget v15, v7, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    move-object/from16 v22, v2

    iget v2, v7, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    move-object/from16 v23, v5

    iget-object v5, v7, Landroidx/media3/container/NalUnitUtil$H265SpsData;->constraintBytes:[I

    move-object/from16 v24, v6

    iget v6, v7, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    move/from16 v29, v8

    move/from16 v30, v13

    move/from16 v31, v15

    move/from16 v32, v2

    move-object/from16 v33, v5

    move/from16 v34, v6

    invoke-static/range {v29 .. v34}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v12, v5, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string v6, "video/hevc"

    iput-object v6, v5, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput-object v2, v5, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget v2, v7, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    iput v2, v5, Landroidx/media3/common/Format$Builder;->width:I

    iget v2, v7, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    iput v2, v5, Landroidx/media3/common/Format$Builder;->height:I

    iget v2, v7, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    iput v2, v5, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v5, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    goto :goto_7

    :cond_8
    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v21, v7

    move/from16 v20, v8

    :goto_7
    iget-object v1, v0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v9}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v2

    iget-object v5, v0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Lcom/airbnb/lottie/model/MutablePair;

    const/4 v6, 0x5

    iget-object v7, v0, Landroidx/media3/extractor/ts/H265Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v2, :cond_9

    iget-object v2, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v2, [B

    iget v8, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v8}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v2

    iget-object v8, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v7, v8, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    invoke-virtual {v7, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget-object v2, v5, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v2, [Landroidx/media3/extractor/TrackOutput;

    invoke-static {v10, v11, v7, v2}, Lkotlin/reflect/TypesJVMKt;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    :cond_9
    iget-object v2, v0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v8, [B

    iget v9, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v8, v9}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v8

    iget-object v9, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v9, [B

    invoke-virtual {v7, v9, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    invoke-virtual {v7, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget-object v5, v5, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v5, [Landroidx/media3/extractor/TrackOutput;

    invoke-static {v10, v11, v7, v5}, Lkotlin/reflect/TypesJVMKt;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    :cond_a
    iget-wide v5, v0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    iget-object v7, v0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v8, v0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    const/4 v9, 0x0

    iput-boolean v9, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    iput-boolean v9, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    iput-wide v5, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput v9, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    iput-wide v3, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    const/16 v5, 0x20

    move/from16 v6, v21

    if-lt v6, v5, :cond_c

    const/16 v10, 0x28

    if-ne v6, v10, :cond_b

    goto :goto_8

    :cond_b
    move v10, v9

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v10, 0x1

    :goto_9
    if-nez v10, :cond_13

    iget-boolean v10, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v10, :cond_f

    iget-boolean v10, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    if-nez v10, :cond_f

    if-eqz v8, :cond_e

    iget-wide v11, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    cmp-long v8, v11, v17

    if-nez v8, :cond_d

    goto :goto_a

    :cond_d
    iget-boolean v13, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    iget-wide v14, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v3, v14

    long-to-int v14, v3

    iget-object v10, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/16 v16, 0x0

    move v3, v9

    move/from16 v15, v20

    invoke-interface/range {v10 .. v16}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_b

    :cond_e
    :goto_a
    move v3, v9

    :goto_b
    iput-boolean v3, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    goto :goto_c

    :cond_f
    move v3, v9

    :goto_c
    if-gt v5, v6, :cond_10

    const/16 v4, 0x23

    if-le v6, v4, :cond_11

    :cond_10
    const/16 v4, 0x27

    if-ne v6, v4, :cond_12

    :cond_11
    const/4 v14, 0x1

    goto :goto_d

    :cond_12
    move v14, v3

    :goto_d
    if-eqz v14, :cond_14

    iget-boolean v4, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iput-boolean v4, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    iput-boolean v5, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    goto :goto_e

    :cond_13
    move v3, v9

    :cond_14
    const/4 v5, 0x1

    :goto_e
    const/16 v4, 0x10

    if-lt v6, v4, :cond_15

    const/16 v4, 0x15

    if-gt v6, v4, :cond_15

    move v14, v5

    goto :goto_f

    :cond_15
    move v14, v3

    :goto_f
    iput-boolean v14, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez v14, :cond_17

    const/16 v4, 0x9

    if-gt v6, v4, :cond_16

    goto :goto_10

    :cond_16
    move v8, v3

    goto :goto_11

    :cond_17
    :goto_10
    move v8, v5

    :goto_11
    iput-boolean v8, v7, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v3, :cond_18

    move-object/from16 v3, v24

    invoke-virtual {v3, v6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    move-object/from16 v3, v23

    invoke-virtual {v3, v6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    move-object/from16 v3, v22

    invoke-virtual {v3, v6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_18
    invoke-virtual {v1, v6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    invoke-virtual {v2, v6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v5, v27

    move/from16 v3, v28

    goto/16 :goto_1

    :cond_19
    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_1a
    return-void
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 2

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v0, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->output:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v1, v0}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->seiReader:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/MutablePair;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V

    return-void
.end method

.method public final nalUnitData(II[B)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v1, v2

    if-ge v1, p2, :cond_1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    goto :goto_1

    :cond_1
    sub-int v1, p2, p1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    :cond_3
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

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

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pesTimeUs:J

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->vps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->prefixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->suffixSei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->sampleReader:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->isFirstPrefixNalUnit:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->readingPrefix:Z

    :cond_0
    return-void
.end method
