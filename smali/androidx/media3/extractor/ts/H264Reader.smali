.class public final Landroidx/media3/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final allowNonIdrKeyframes:Z

.field public final detectAccessUnits:Z

.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final prefixFlags:[Z

.field public randomAccessIndicator:Z

.field public sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

.field public final sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final seiReader:Lcom/airbnb/lottie/model/MutablePair;

.field public final seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

.field public final sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/MutablePair;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Lcom/airbnb/lottie/model/MutablePair;

    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader;->detectAccessUnits:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v4, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    sub-int v7, v3, v2

    int-to-long v8, v7

    add-long/2addr v5, v8

    iput-wide v5, v0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v7, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    :goto_0
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v4, v2, v3, v1}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Landroidx/media3/extractor/ts/H264Reader;->nalUnitData(II[B)V

    return-void

    :cond_0
    add-int/lit8 v5, v1, 0x3

    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x1f

    sub-int v7, v1, v2

    if-lez v7, :cond_1

    invoke-virtual {v0, v2, v1, v4}, Landroidx/media3/extractor/ts/H264Reader;->nalUnitData(II[B)V

    :cond_1
    sub-int v1, v3, v1

    iget-wide v8, v0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    if-gez v7, :cond_2

    neg-int v7, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-wide v10, v0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    iget-boolean v12, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    iget-object v15, v0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v12, :cond_4

    iget-object v12, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v12, v12, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v20, v1

    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    goto/16 :goto_4

    :cond_4
    :goto_2
    invoke-virtual {v2, v7}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    invoke-virtual {v15, v7}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-boolean v12, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v12, :cond_5

    iget-boolean v12, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v12, :cond_3

    iget-boolean v12, v15, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v12, :cond_3

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v13, [B

    iget v14, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v15, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v13, [B

    iget v14, v15, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v13, [B

    iget v14, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move/from16 v16, v3

    const/4 v3, 0x3

    invoke-static {v3, v14, v13}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnit(II[B)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v3

    iget-object v13, v15, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v13, [B

    iget v14, v15, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    move-object/from16 v17, v4

    new-instance v4, Landroidx/media3/common/ColorInfo$Builder;

    move/from16 v18, v5

    const/4 v5, 0x4

    invoke-direct {v4, v13, v5, v14}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BII)V

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo$Builder;->readExpGolombCodeNum()I

    move-result v5

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo$Builder;->readExpGolombCodeNum()I

    move-result v13

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v4

    new-instance v14, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v14, v5, v13, v4}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    iget v4, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v13, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v19, v6

    iget v6, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v13, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "avc1.%02X%02X%02X"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    new-instance v13, Landroidx/media3/common/Format$Builder;

    invoke-direct {v13}, Landroidx/media3/common/Format$Builder;-><init>()V

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    iput-object v1, v13, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string v1, "video/avc"

    iput-object v1, v13, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput-object v4, v13, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    iput v1, v13, Landroidx/media3/common/Format$Builder;->width:I

    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    iput v1, v13, Landroidx/media3/common/Format$Builder;->height:I

    iget v1, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    iput v1, v13, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    iput-object v12, v13, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v13}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v6, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v1, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v4, v3, Landroidx/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v1, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v5, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_3

    :cond_5
    move/from16 v20, v1

    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    iget-boolean v1, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v1, :cond_6

    iget-object v1, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v1, [B

    iget v3, v2, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    const/4 v4, 0x3

    invoke-static {v4, v3, v1}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnit(II[B)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v1

    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v3, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v4, v1, Landroidx/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_4

    :cond_6
    iget-boolean v1, v15, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->isCompleted:Z

    if-eqz v1, :cond_7

    iget-object v1, v15, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v1, [B

    iget v3, v15, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    new-instance v4, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v5, 0x4

    invoke-direct {v4, v1, v5, v3}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BII)V

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo$Builder;->readExpGolombCodeNum()I

    move-result v1

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo$Builder;->readExpGolombCodeNum()I

    move-result v3

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v4

    new-instance v5, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v5, v1, v3, v4}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v3, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :goto_3
    invoke-virtual {v15}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_7
    :goto_4
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v7}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v3, [B

    iget v4, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v3

    iget-object v4, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v4, [B

    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader;->seiWrapper:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Lcom/airbnb/lottie/model/MutablePair;

    iget-object v3, v3, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v3, [Landroidx/media3/extractor/TrackOutput;

    invoke-static {v10, v11, v5, v3}, Lkotlin/reflect/TypesJVMKt;->consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    :cond_8
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    iget-boolean v5, v0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    iget v6, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v7, 0x9

    if-eq v6, v7, :cond_11

    iget-boolean v6, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v6, :cond_14

    iget-object v6, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-boolean v10, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-nez v10, :cond_9

    goto/16 :goto_5

    :cond_9
    iget-boolean v10, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-nez v10, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object v10, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media3/container/NalUnitUtil$SpsData;

    invoke-static {v10}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v11, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media3/container/NalUnitUtil$SpsData;

    invoke-static {v11}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget v12, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    iget v13, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    if-ne v12, v13, :cond_10

    iget v12, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    iget v13, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    if-ne v12, v13, :cond_10

    iget-boolean v12, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    iget-boolean v13, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    if-ne v12, v13, :cond_10

    iget-boolean v12, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v12, :cond_b

    iget-boolean v12, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v12, :cond_b

    iget-boolean v12, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    iget-boolean v13, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    if-ne v12, v13, :cond_10

    :cond_b
    iget v12, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    iget v13, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eq v12, v13, :cond_c

    if-eqz v12, :cond_10

    if-eqz v13, :cond_10

    :cond_c
    iget v11, v11, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    iget v10, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v10, :cond_d

    if-nez v11, :cond_d

    iget v12, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    iget v13, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    if-ne v12, v13, :cond_10

    iget v12, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    iget v13, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    if-ne v12, v13, :cond_10

    :cond_d
    const/4 v12, 0x1

    if-ne v10, v12, :cond_e

    if-ne v11, v12, :cond_e

    iget v10, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    iget v11, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    if-ne v10, v11, :cond_10

    iget v10, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    iget v11, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    if-ne v10, v11, :cond_10

    :cond_e
    iget-boolean v10, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    iget-boolean v11, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-ne v10, v11, :cond_10

    if-eqz v10, :cond_f

    iget v6, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    iget v7, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    if-eq v6, v7, :cond_f

    goto :goto_6

    :cond_f
    :goto_5
    const/4 v6, 0x0

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v6, 0x1

    :goto_7
    if-eqz v6, :cond_14

    :cond_11
    if-eqz v4, :cond_13

    iget-boolean v4, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz v4, :cond_13

    iget-wide v6, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v10, v8, v6

    long-to-int v4, v10

    add-int v26, v20, v4

    iget-wide v10, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v10, v12

    if-nez v4, :cond_12

    goto :goto_8

    :cond_12
    iget-boolean v4, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget-wide v12, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v6, v12

    long-to-int v6, v6

    iget-object v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/16 v27, 0x0

    move-object/from16 v21, v7

    move-wide/from16 v22, v10

    move/from16 v24, v4

    move/from16 v25, v6

    invoke-interface/range {v21 .. v27}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_13
    :goto_8
    iget-wide v6, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v6, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    iget-wide v6, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v6, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    :cond_14
    iget-boolean v4, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 v6, 0x2

    if-eqz v4, :cond_17

    iget-object v4, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-boolean v5, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    if-eqz v5, :cond_16

    iget v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_15

    if-ne v4, v6, :cond_16

    :cond_15
    const/4 v5, 0x1

    goto :goto_9

    :cond_16
    const/4 v5, 0x0

    :cond_17
    :goto_9
    iget-boolean v4, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v10, 0x5

    if-eq v7, v10, :cond_19

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    if-ne v7, v5, :cond_18

    goto :goto_a

    :cond_18
    const/4 v5, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    const/4 v5, 0x1

    :goto_b
    or-int/2addr v4, v5

    iput-boolean v4, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    if-eqz v4, :cond_1a

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    :cond_1a
    iget-wide v3, v0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    iget-boolean v5, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v5, :cond_1c

    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v5, v5, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v5, :cond_1b

    goto :goto_c

    :cond_1b
    move/from16 v5, v19

    goto :goto_d

    :cond_1c
    :goto_c
    move/from16 v5, v19

    invoke-virtual {v2, v5}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    invoke-virtual {v15, v5}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :goto_d
    invoke-virtual {v1, v5}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iput v5, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    iput-wide v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v8, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    if-eq v5, v2, :cond_1e

    goto :goto_e

    :cond_1d
    const/4 v2, 0x1

    :goto_e
    iget-boolean v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v3, :cond_1f

    if-eq v5, v10, :cond_1e

    if-eq v5, v2, :cond_1e

    if-ne v5, v6, :cond_1f

    :cond_1e
    iget-object v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    iput-boolean v3, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    iput v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    :cond_1f
    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v2, v18

    goto/16 :goto_0
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 4

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v0, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->output:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v2, p0, Landroidx/media3/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Landroidx/media3/extractor/ts/H264Reader;->detectAccessUnits:Z

    invoke-direct {v1, v0, v2, v3}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;ZZ)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->seiReader:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/MutablePair;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V

    return-void
.end method

.method public final nalUnitData(II[B)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    :cond_1
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    iget-object v0, v0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    sub-int/2addr v2, v1

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v5, v4

    iget v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v6, v2

    const/4 v7, 0x2

    if-ge v5, v6, :cond_3

    mul-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    :cond_3
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    invoke-static {v3, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/common/ColorInfo$Builder;

    iput-object v2, v3, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    const/4 v2, 0x0

    iput v2, v3, Landroidx/media3/common/ColorInfo$Builder;->colorRange:I

    iput v1, v3, Landroidx/media3/common/ColorInfo$Builder;->colorSpace:I

    iput v2, v3, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->assertValidOffset()V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroidx/media3/common/ColorInfo$Builder;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    invoke-virtual {v3, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->canReadExpGolombCodedNum()Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->readExpGolombCodeNum()I

    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->canReadExpGolombCodedNum()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->readExpGolombCodeNum()I

    move-result v5

    iget-boolean v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    const/4 v8, 0x1

    if-nez v6, :cond_7

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    iget-object v0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    iput-boolean v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->canReadExpGolombCodedNum()Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->readExpGolombCodeNum()I

    move-result v6

    iget-object v9, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_9

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/container/NalUnitUtil$PpsData;

    iget-object v10, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v11, v9, Landroidx/media3/container/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/container/NalUnitUtil$SpsData;

    iget-boolean v11, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v11, :cond_b

    invoke-virtual {v3, v7}, Landroidx/media3/common/ColorInfo$Builder;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v3, v7}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_b
    iget v7, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v7}, Landroidx/media3/common/ColorInfo$Builder;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_c

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v3, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    iget-boolean v11, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    if-nez v11, :cond_f

    invoke-virtual {v3, v8}, Landroidx/media3/common/ColorInfo$Builder;->canReadBits(I)Z

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v3, v8}, Landroidx/media3/common/ColorInfo$Builder;->canReadBits(I)Z

    move-result v12

    if-nez v12, :cond_e

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    move v13, v8

    goto :goto_0

    :cond_f
    move v11, v2

    :cond_10
    move v12, v2

    move v13, v12

    :goto_0
    iget v14, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v14, v4, :cond_11

    move v4, v8

    goto :goto_1

    :cond_11
    move v4, v2

    :goto_1
    if-eqz v4, :cond_13

    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->canReadExpGolombCodedNum()Z

    move-result v14

    if-nez v14, :cond_12

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->readExpGolombCodeNum()I

    move-result v14

    goto :goto_2

    :cond_13
    move v14, v2

    :goto_2
    iget-boolean v9, v9, Landroidx/media3/container/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    iget v15, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v15, :cond_17

    iget v15, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v3, v15}, Landroidx/media3/common/ColorInfo$Builder;->canReadBits(I)Z

    move-result v16

    if-nez v16, :cond_14

    goto/16 :goto_4

    :cond_14
    invoke-virtual {v3, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v15

    if-eqz v9, :cond_16

    if-nez v11, :cond_16

    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->canReadExpGolombCodedNum()Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_4

    :cond_15
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->readSignedExpGolombCodedInt()I

    move-result v3

    move v9, v2

    goto :goto_3

    :cond_16
    move v3, v2

    move v9, v3

    goto :goto_3

    :cond_17
    if-ne v15, v8, :cond_1a

    iget-boolean v15, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v15, :cond_1a

    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->canReadExpGolombCodedNum()Z

    move-result v15

    if-nez v15, :cond_18

    goto :goto_4

    :cond_18
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->readSignedExpGolombCodedInt()I

    move-result v15

    if-eqz v9, :cond_1b

    if-nez v11, :cond_1b

    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->canReadExpGolombCodedNum()Z

    move-result v9

    if-nez v9, :cond_19

    goto :goto_4

    :cond_19
    invoke-virtual {v3}, Landroidx/media3/common/ColorInfo$Builder;->readSignedExpGolombCodedInt()I

    move-result v3

    move v9, v3

    move v3, v2

    move v2, v15

    move v15, v3

    goto :goto_3

    :cond_1a
    move v15, v2

    :cond_1b
    move v3, v2

    move v9, v3

    move v2, v15

    move v15, v9

    :goto_3
    iget-object v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v10, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media3/container/NalUnitUtil$SpsData;

    iput v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    iput v5, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    iput v7, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    iput v6, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    iput-boolean v11, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    iput-boolean v13, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    iput-boolean v12, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    iput-boolean v4, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    iput v14, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    iput v15, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    iput v3, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    iput v2, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    iput v9, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    const/4 v1, 0x1

    iput-boolean v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    iput-boolean v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    :goto_4
    return-void
.end method

.method public final packetFinished()V
    .locals 0

    return-void
.end method

.method public final packetStarted(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    :cond_0
    iget-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    return-void
.end method

.method public final seek()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->randomAccessIndicator:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/extractor/ts/H264Reader;->pesTimeUs:J

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v1}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->pps:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->sei:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->sampleReader:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    if-eqz p0, :cond_0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    :cond_0
    return-void
.end method
