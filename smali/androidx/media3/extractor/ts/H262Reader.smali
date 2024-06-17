.class public final Landroidx/media3/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field public static final FRAME_RATE_VALUES:[D


# instance fields
.field public final csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

.field public formatId:Ljava/lang/String;

.field public frameDurationUs:J

.field public hasOutputFormat:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final prefixFlags:[Z

.field public sampleHasPicture:Z

.field public sampleIsKeyframe:Z

.field public samplePosition:J

.field public sampleTimeUs:J

.field public startedFirstSample:Z

.field public totalBytesWritten:J

.field public final userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

.field public final userDataReader:Landroidx/media3/extractor/ts/UserDataReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/extractor/ts/UserDataReader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    new-instance v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0xb2

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    :goto_0
    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v4, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    sub-int v7, v3, v2

    int-to-long v8, v7

    add-long/2addr v5, v8

    iput-wide v5, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    iget-object v5, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v7, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    :goto_0
    iget-object v5, v0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v4, v2, v3, v5}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v5

    iget-object v6, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    iget-object v7, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-ne v5, v3, :cond_2

    iget-boolean v0, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v0, :cond_0

    invoke-virtual {v6, v2, v3, v4}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onData(II[B)V

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7, v2, v3, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    :cond_1
    return-void

    :cond_2
    iget-object v8, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v9, v5, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    sub-int v10, v5, v2

    iget-boolean v11, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    const/16 v12, 0xb3

    const/4 v13, 0x0

    if-nez v11, :cond_d

    if-lez v10, :cond_3

    invoke-virtual {v6, v2, v5, v4}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onData(II[B)V

    :cond_3
    if-gez v10, :cond_4

    neg-int v11, v10

    goto :goto_1

    :cond_4
    move v11, v13

    :goto_1
    iget-boolean v15, v6, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    const/4 v14, 0x3

    if-eqz v15, :cond_6

    iget v15, v6, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    sub-int/2addr v15, v11

    iput v15, v6, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    iget v11, v6, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    if-nez v11, :cond_5

    const/16 v11, 0xb5

    if-ne v8, v11, :cond_5

    iput v15, v6, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    goto :goto_2

    :cond_5
    iput-boolean v13, v6, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    if-ne v8, v12, :cond_7

    const/4 v11, 0x1

    iput-boolean v11, v6, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    :cond_7
    :goto_2
    sget-object v11, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->START_CODE:[B

    invoke-virtual {v6, v13, v14, v11}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onData(II[B)V

    move v11, v13

    :goto_3
    if-eqz v11, :cond_d

    iget-object v11, v0, Landroidx/media3/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v6, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v13, v6, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    const/4 v15, 0x4

    aget-byte v12, v13, v15

    and-int/lit16 v12, v12, 0xff

    const/16 v16, 0x5

    aget-byte v14, v13, v16

    and-int/lit16 v14, v14, 0xff

    const/16 v18, 0x6

    move/from16 v19, v9

    aget-byte v9, v13, v18

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v12, v15

    shr-int/lit8 v18, v14, 0x4

    or-int v12, v12, v18

    and-int/lit8 v14, v14, 0xf

    const/16 v15, 0x8

    shl-int/2addr v14, v15

    or-int/2addr v9, v14

    const/4 v14, 0x7

    aget-byte v15, v13, v14

    and-int/lit16 v15, v15, 0xf0

    const/4 v14, 0x4

    shr-int/2addr v15, v14

    const/4 v14, 0x2

    if-eq v15, v14, :cond_a

    const/4 v14, 0x3

    if-eq v15, v14, :cond_9

    const/4 v14, 0x4

    if-eq v15, v14, :cond_8

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    mul-int/lit8 v14, v9, 0x79

    int-to-float v14, v14

    mul-int/lit8 v15, v12, 0x64

    goto :goto_4

    :cond_9
    mul-int/lit8 v14, v9, 0x10

    int-to-float v14, v14

    mul-int/lit8 v15, v12, 0x9

    goto :goto_4

    :cond_a
    mul-int/lit8 v14, v9, 0x4

    int-to-float v14, v14

    mul-int/lit8 v15, v12, 0x3

    :goto_4
    int-to-float v15, v15

    div-float/2addr v14, v15

    :goto_5
    new-instance v15, Landroidx/media3/common/Format$Builder;

    invoke-direct {v15}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v11, v15, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string v11, "video/mpeg2"

    iput-object v11, v15, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v12, v15, Landroidx/media3/common/Format$Builder;->width:I

    iput v9, v15, Landroidx/media3/common/Format$Builder;->height:I

    iput v14, v15, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v15, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance v9, Landroidx/media3/common/Format;

    invoke-direct {v9, v15}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    const/4 v11, 0x7

    aget-byte v11, v13, v11

    and-int/lit8 v11, v11, 0xf

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_c

    const/16 v12, 0x8

    if-ge v11, v12, :cond_c

    sget-object v12, Landroidx/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    aget-wide v11, v12, v11

    iget v6, v6, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    add-int/lit8 v6, v6, 0x9

    aget-byte v6, v13, v6

    and-int/lit8 v13, v6, 0x60

    shr-int/lit8 v13, v13, 0x5

    and-int/lit8 v6, v6, 0x1f

    if-eq v13, v6, :cond_b

    int-to-double v13, v13

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v16

    add-int/lit8 v6, v6, 0x1

    move v15, v2

    int-to-double v1, v6

    div-double/2addr v13, v1

    mul-double/2addr v11, v13

    goto :goto_6

    :cond_b
    move v15, v2

    :goto_6
    const-wide v1, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v11

    double-to-long v1, v1

    goto :goto_7

    :cond_c
    move v15, v2

    const-wide/16 v1, 0x0

    :goto_7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/common/Format;

    invoke-interface {v2, v6}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/ts/H262Reader;->frameDurationUs:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    goto :goto_8

    :cond_d
    move v15, v2

    move/from16 v19, v9

    :goto_8
    if-eqz v7, :cond_10

    if-lez v10, :cond_e

    move v2, v15

    invoke-virtual {v7, v2, v5, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    const/4 v1, 0x0

    goto :goto_9

    :cond_e
    neg-int v1, v10

    :goto_9
    invoke-virtual {v7, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v2}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v1

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v2, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v6, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-wide v1, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-object v9, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    invoke-virtual {v9, v1, v2, v6}, Landroidx/media3/extractor/ts/UserDataReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_f
    const/16 v1, 0xb2

    if-ne v8, v1, :cond_10

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v6, v5, 0x2

    aget-byte v2, v2, v6

    const/4 v6, 0x1

    if-ne v2, v6, :cond_11

    invoke-virtual {v7, v8}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    goto :goto_a

    :cond_10
    move-object/from16 v1, p1

    :cond_11
    :goto_a
    if-eqz v8, :cond_13

    const/16 v2, 0xb3

    if-ne v8, v2, :cond_12

    goto :goto_b

    :cond_12
    const/16 v2, 0xb8

    if-ne v8, v2, :cond_1a

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    goto :goto_10

    :cond_13
    :goto_b
    sub-int v2, v3, v5

    iget-boolean v5, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_14

    iget-boolean v5, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v5, :cond_14

    iget-wide v10, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v5, v10, v6

    if-eqz v5, :cond_14

    iget-boolean v12, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    iget-wide v13, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    iget-wide v6, v0, Landroidx/media3/extractor/ts/H262Reader;->samplePosition:J

    sub-long/2addr v13, v6

    long-to-int v5, v13

    sub-int v13, v5, v2

    iget-object v9, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v15, 0x0

    move v14, v2

    invoke-interface/range {v9 .. v15}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_14
    iget-boolean v5, v0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v5, :cond_16

    iget-boolean v5, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v5, :cond_15

    goto :goto_c

    :cond_15
    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_e

    :cond_16
    :goto_c
    iget-wide v5, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v9, v2

    sub-long/2addr v5, v9

    iput-wide v5, v0, Landroidx/media3/extractor/ts/H262Reader;->samplePosition:J

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v5, v9

    if-eqz v2, :cond_17

    goto :goto_d

    :cond_17
    iget-wide v5, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v2, v5, v9

    if-eqz v2, :cond_18

    iget-wide v11, v0, Landroidx/media3/extractor/ts/H262Reader;->frameDurationUs:J

    add-long/2addr v5, v11

    goto :goto_d

    :cond_18
    move-wide v5, v9

    :goto_d
    iput-wide v5, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    iput-wide v9, v0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    :goto_e
    if-nez v8, :cond_19

    move v13, v5

    goto :goto_f

    :cond_19
    move v13, v2

    :goto_f
    iput-boolean v13, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    :cond_1a
    :goto_10
    move/from16 v2, v19

    goto/16 :goto_0
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 2

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v0, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ts/UserDataReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V

    :cond_0
    return-void
.end method

.method public final packetFinished()V
    .locals 0

    return-void
.end method

.method public final packetStarted(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    return-void
.end method

.method public final seek()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    iput v1, v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    iput v1, v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    return-void
.end method
