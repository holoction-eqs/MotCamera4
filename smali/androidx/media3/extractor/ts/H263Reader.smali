.class public final Landroidx/media3/extractor/ts/H263Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field public static final PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F


# instance fields
.field public final csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

.field public formatId:Ljava/lang/String;

.field public hasOutputFormat:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public pesTimeUs:J

.field public final prefixFlags:[Z

.field public sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

.field public totalBytesWritten:J

.field public final userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

.field public final userDataReader:Landroidx/media3/extractor/ts/UserDataReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/extractor/ts/UserDataReader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    new-instance p1, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    invoke-direct {p1}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0xb2

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v4, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    sub-int v7, v3, v2

    int-to-long v8, v7

    add-long/2addr v5, v8

    iput-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    iget-object v5, v0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v7, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    :goto_0
    iget-object v5, v0, Landroidx/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v4, v2, v3, v5}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v5

    iget-object v6, v0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    iget-object v7, v0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-ne v5, v3, :cond_2

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    if-nez v1, :cond_0

    invoke-virtual {v6, v2, v3, v4}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->onData(II[B)V

    :cond_0
    iget-object v0, v0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->onData(II[B)V

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

    iget-boolean v11, v0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    const/4 v13, 0x1

    if-nez v11, :cond_19

    if-lez v10, :cond_3

    invoke-virtual {v6, v2, v5, v4}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->onData(II[B)V

    :cond_3
    if-gez v10, :cond_4

    neg-int v11, v10

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    iget v15, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    const/4 v12, 0x2

    const-string v14, "H263Reader"

    if-eqz v15, :cond_d

    move/from16 v17, v9

    const/16 v9, 0xb5

    if-eq v15, v13, :cond_b

    if-eq v15, v12, :cond_9

    const/4 v12, 0x3

    if-eq v15, v12, :cond_7

    const/4 v12, 0x4

    if-ne v15, v12, :cond_6

    const/16 v12, 0xb3

    if-eq v8, v12, :cond_5

    if-ne v8, v9, :cond_e

    :cond_5
    iget v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    sub-int/2addr v9, v11

    iput v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    const/4 v9, 0x0

    iput-boolean v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    move v9, v13

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_7
    and-int/lit16 v9, v8, 0xf0

    const/16 v11, 0x20

    if-eq v9, v11, :cond_8

    goto :goto_2

    :cond_8
    iget v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    const/4 v9, 0x4

    goto :goto_3

    :cond_9
    const/16 v9, 0x1f

    if-le v8, v9, :cond_a

    goto :goto_2

    :cond_a
    const/4 v9, 0x3

    goto :goto_3

    :cond_b
    if-eq v8, v9, :cond_c

    :goto_2
    const-string v9, "Unexpected start code value"

    invoke-static {v14, v9}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    iput-boolean v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    iput v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_4

    :cond_c
    const/4 v9, 0x2

    :goto_3
    iput v9, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    goto :goto_4

    :cond_d
    move/from16 v17, v9

    const/16 v9, 0xb0

    if-ne v8, v9, :cond_e

    iput v13, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    iput-boolean v13, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    :cond_e
    :goto_4
    sget-object v9, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->START_CODE:[B

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v11, v9}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->onData(II[B)V

    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_18

    iget-object v9, v0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget v11, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    iget-object v12, v0, Landroidx/media3/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget v6, v6, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {v15, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    new-instance v15, Landroidx/media3/common/ColorInfo$Builder;

    move/from16 v18, v3

    const/4 v3, 0x0

    invoke-direct {v15, v6, v13, v3}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBytes(I)V

    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBytes(I)V

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    const/16 v11, 0x8

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-virtual {v15, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v13, 0x3

    invoke-virtual {v15, v13}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_f
    invoke-virtual {v15, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    const/16 v13, 0xf

    if-ne v3, v13, :cond_11

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    if-nez v11, :cond_10

    goto :goto_6

    :cond_10
    int-to-float v3, v3

    int-to-float v11, v11

    div-float/2addr v3, v11

    goto :goto_7

    :cond_11
    const/4 v11, 0x7

    if-ge v3, v11, :cond_12

    sget-object v11, Landroidx/media3/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    aget v3, v11, v3

    goto :goto_7

    :cond_12
    :goto_6
    const-string v3, "Invalid aspect ratio"

    invoke-static {v14, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_7
    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v11

    if-eqz v11, :cond_13

    const/4 v11, 0x2

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v15, v13}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    invoke-virtual {v15, v13}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    invoke-virtual {v15, v13}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    const/4 v11, 0x3

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v11, 0xb

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    invoke-virtual {v15, v13}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    :cond_13
    const/4 v11, 0x2

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    if-eqz v11, :cond_14

    const-string v11, "Unhandled video object layer shape"

    invoke-static {v14, v11}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    const/16 v11, 0x10

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v13

    if-eqz v13, :cond_17

    if-nez v11, :cond_15

    const-string v11, "Invalid vop_increment_time_resolution"

    invoke-static {v14, v11}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    add-int/lit8 v11, v11, -0x1

    const/4 v13, 0x0

    :goto_8
    if-lez v11, :cond_16

    add-int/lit8 v13, v13, 0x1

    shr-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_16
    invoke-virtual {v15, v13}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_17
    :goto_9
    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    const/16 v11, 0xd

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    new-instance v14, Landroidx/media3/common/Format$Builder;

    invoke-direct {v14}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v12, v14, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string v12, "video/mp4v-es"

    iput-object v12, v14, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v13, v14, Landroidx/media3/common/Format$Builder;->width:I

    iput v11, v14, Landroidx/media3/common/Format$Builder;->height:I

    iput v3, v14, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v14, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance v3, Landroidx/media3/common/Format;

    invoke-direct {v3, v14}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v9, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    goto :goto_a

    :cond_18
    move/from16 v18, v3

    goto :goto_a

    :cond_19
    move/from16 v18, v3

    move/from16 v17, v9

    :goto_a
    iget-object v3, v0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-virtual {v3, v2, v5, v4}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->onData(II[B)V

    if-eqz v7, :cond_1c

    if-lez v10, :cond_1a

    invoke-virtual {v7, v2, v5, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit(II[B)V

    const/4 v2, 0x0

    goto :goto_b

    :cond_1a
    neg-int v2, v10

    :goto_b
    invoke-virtual {v7, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v2, [B

    iget v3, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v2, v3}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v2

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v3, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v6, v0, Landroidx/media3/extractor/ts/H263Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-wide v2, v0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    iget-object v9, v0, Landroidx/media3/extractor/ts/H263Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    invoke-virtual {v9, v2, v3, v6}, Landroidx/media3/extractor/ts/UserDataReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_1b
    const/16 v2, 0xb2

    if-ne v8, v2, :cond_1c

    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v3, v5, 0x2

    aget-byte v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    invoke-virtual {v7, v8}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    goto :goto_c

    :cond_1c
    const/4 v3, 0x1

    :cond_1d
    :goto_c
    sub-int v14, v18, v5

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    int-to-long v9, v14

    sub-long/2addr v5, v9

    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-boolean v7, v0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    iget v9, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 v15, 0xb6

    if-ne v9, v15, :cond_1e

    if-eqz v7, :cond_1e

    iget-boolean v7, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-eqz v7, :cond_1e

    iget-wide v10, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v10, v12

    if-eqz v7, :cond_1e

    iget-wide v12, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    sub-long v12, v5, v12

    long-to-int v13, v12

    iget-boolean v12, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    iget-object v9, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v7, 0x0

    move v3, v15

    move-object v15, v7

    invoke-interface/range {v9 .. v15}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_d

    :cond_1e
    move v3, v15

    :goto_d
    iget v7, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/16 v9, 0xb3

    if-eq v7, v9, :cond_1f

    iput-wide v5, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->samplePosition:J

    :cond_1f
    iget-object v2, v0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-wide v5, v0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    iput v8, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    const/4 v7, 0x0

    iput-boolean v7, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    if-eq v8, v3, :cond_21

    if-ne v8, v9, :cond_20

    goto :goto_e

    :cond_20
    const/4 v9, 0x0

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v9, 0x1

    :goto_f
    iput-boolean v9, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    if-ne v8, v3, :cond_22

    const/4 v13, 0x1

    goto :goto_10

    :cond_22
    const/4 v13, 0x0

    :goto_10
    iput-boolean v13, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    const/4 v3, 0x0

    iput v3, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->vopBytesRead:I

    iput-wide v5, v2, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleTimeUs:J

    move/from16 v2, v17

    move/from16 v3, v18

    goto/16 :goto_0
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 2

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v0, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    invoke-direct {v1, v0}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

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
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->isFilling:Z

    iput v1, v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    iput v1, v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->state:I

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->readingSample:Z

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->lookingForVopCodingType:Z

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v1, -0x1

    iput v1, v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->startCodeValue:I

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    return-void
.end method
