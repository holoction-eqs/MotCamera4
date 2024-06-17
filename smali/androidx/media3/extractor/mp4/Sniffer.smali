.class public abstract Landroidx/media3/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPATIBLE_BRANDS:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Z
    .locals 21

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x1000

    if-eqz v5, :cond_1

    cmp-long v8, v1, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v1

    :cond_1
    :goto_0
    long-to-int v6, v6

    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1
    const/4 v11, 0x1

    if-ge v9, v6, :cond_15

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v13, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v13, v8, v12, v11}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v13

    if-nez v13, :cond_2

    goto/16 :goto_b

    :cond_2
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    const-wide/16 v16, 0x1

    cmp-long v16, v13, v16

    if-nez v16, :cond_3

    iget-object v13, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v12, v12, v13}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    const/16 v13, 0x10

    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v16

    move-wide/from16 v3, v16

    goto :goto_2

    :cond_3
    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    if-nez v16, :cond_4

    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v16

    cmp-long v18, v16, v3

    if-eqz v18, :cond_4

    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v13

    sub-long v16, v16, v13

    int-to-long v13, v12

    add-long v13, v16, v13

    :cond_4
    move-wide v3, v13

    move v13, v12

    :goto_2
    int-to-long v11, v13

    cmp-long v19, v3, v11

    if-gez v19, :cond_5

    return v8

    :cond_5
    add-int/2addr v9, v13

    const v13, 0x6d6f6f76

    if-ne v15, v13, :cond_7

    long-to-int v3, v3

    add-int/2addr v6, v3

    if-eqz v5, :cond_6

    int-to-long v3, v6

    cmp-long v3, v3, v1

    if-lez v3, :cond_6

    long-to-int v3, v1

    move v6, v3

    :cond_6
    move v4, v8

    goto/16 :goto_9

    :cond_7
    const v13, 0x6d6f6f66

    if-eq v15, v13, :cond_14

    const v13, 0x6d766578

    if-ne v15, v13, :cond_8

    goto/16 :goto_a

    :cond_8
    move v13, v15

    int-to-long v14, v9

    add-long/2addr v14, v3

    sub-long/2addr v14, v11

    move/from16 v20, v9

    int-to-long v8, v6

    cmp-long v8, v14, v8

    if-ltz v8, :cond_9

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_c

    :cond_9
    sub-long/2addr v3, v11

    long-to-int v3, v3

    add-int v9, v20, v3

    const v4, 0x66747970

    move v8, v13

    if-ne v8, v4, :cond_12

    const/16 v4, 0x8

    if-ge v3, v4, :cond_a

    const/4 v4, 0x0

    return v4

    :cond_a
    const/4 v4, 0x0

    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v8, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v0, v4, v3, v8}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    div-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_11

    const/4 v8, 0x1

    if-ne v4, v8, :cond_b

    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_7

    :cond_b
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    ushr-int/lit8 v12, v11, 0x8

    const v13, 0x336770

    if-ne v12, v13, :cond_c

    goto :goto_5

    :cond_c
    const v12, 0x68656963

    if-ne v11, v12, :cond_d

    if-eqz p2, :cond_d

    goto :goto_5

    :cond_d
    sget-object v12, Landroidx/media3/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    const/4 v13, 0x0

    :goto_4
    const/16 v14, 0x1d

    if-ge v13, v14, :cond_f

    aget v14, v12, v13

    if-ne v14, v11, :cond_e

    :goto_5
    move/from16 v19, v8

    goto :goto_6

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_f
    const/16 v19, 0x0

    :goto_6
    if-eqz v19, :cond_10

    move v10, v8

    goto :goto_8

    :cond_10
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_11
    :goto_8
    const/4 v4, 0x0

    if-nez v10, :cond_13

    return v4

    :cond_12
    const/4 v4, 0x0

    if-eqz v3, :cond_13

    invoke-interface {v0, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    :cond_13
    :goto_9
    move v8, v4

    const-wide/16 v3, -0x1

    goto/16 :goto_1

    :cond_14
    :goto_a
    move v4, v8

    const/4 v8, 0x1

    move v0, v8

    goto :goto_d

    :cond_15
    :goto_b
    move v4, v8

    move v8, v11

    :goto_c
    move v0, v4

    :goto_d
    if-eqz v10, :cond_16

    move/from16 v1, p1

    if-ne v1, v0, :cond_16

    goto :goto_e

    :cond_16
    move v8, v4

    :goto_e
    return v8
.end method
