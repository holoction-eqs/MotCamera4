.class public final Landroidx/media3/extractor/text/pgs/PgsDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# instance fields
.field public final buffer:Landroidx/media3/common/util/ParsableByteArray;

.field public final cueBuilder:Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;

.field public final inflatedBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsDecoder;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsDecoder;->inflatedBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsDecoder;->cueBuilder:Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;

    return-void
.end method


# virtual methods
.method public final decode(IZ[B)Landroidx/media3/extractor/text/Subtitle;
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    const/16 v4, 0xff

    if-lez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v3

    and-int/2addr v2, v4

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    :cond_0
    iget-object v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder;->inflatedBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v1, v3, v2}, Landroidx/media3/common/util/Util;->inflate(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v3, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    :cond_1
    iget-object v0, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder;->cueBuilder:Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;

    const/4 v2, 0x0

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    iget-object v3, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iput-boolean v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget v5, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v6, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v6, v5, v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-lt v6, v8, :cond_15

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    iget v10, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v10, v9

    if-le v10, v5, :cond_2

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 p3, v3

    move v8, v4

    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_2
    const/16 v5, 0x80

    iget-object v12, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    iget-object v13, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Landroidx/media3/common/util/ParsableByteArray;

    if-eq v6, v5, :cond_c

    const/4 v14, 0x1

    packed-switch v6, :pswitch_data_0

    :cond_3
    :goto_1
    move-object/from16 p3, v3

    move v8, v4

    goto/16 :goto_4

    :pswitch_0
    const/16 v5, 0x13

    if-ge v9, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    goto :goto_1

    :pswitch_1
    const/4 v6, 0x4

    if-ge v9, v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/2addr v5, v7

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v14, v2

    :goto_2
    add-int/lit8 v9, v9, -0x4

    if-eqz v14, :cond_9

    const/4 v5, 0x7

    if-ge v9, v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v5

    if-ge v5, v6, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    iput v6, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    iput v6, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v13, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    add-int/lit8 v9, v9, -0x7

    :cond_9
    iget v5, v13, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v6, v13, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ge v5, v6, :cond_3

    if-lez v9, :cond_3

    sub-int/2addr v6, v5

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, v13, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {v1, v5, v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    add-int/2addr v5, v6

    invoke-virtual {v13, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    :pswitch_2
    rem-int/lit8 v5, v9, 0x5

    if-eq v5, v7, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {v12, v2}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v9, v9, 0x5

    move v5, v2

    :goto_3
    if-ge v5, v9, :cond_b

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    move-object/from16 p1, v12

    int-to-double v11, v7

    add-int/lit8 v8, v8, -0x80

    int-to-double v7, v8

    const-wide v16, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v16, v16, v7

    move-object/from16 p3, v3

    add-double v2, v16, v11

    double-to-int v2, v2

    add-int/lit8 v13, v13, -0x80

    move/from16 v16, v5

    int-to-double v4, v13

    const-wide v17, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v17, v17, v4

    sub-double v17, v11, v17

    const-wide v19, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v7, v7, v19

    sub-double v7, v17, v7

    double-to-int v7, v7

    const-wide v17, 0x3ffc5a1cac083127L    # 1.772

    mul-double v4, v4, v17

    add-double/2addr v4, v11

    double-to-int v4, v4

    shl-int/lit8 v5, v15, 0x18

    const/4 v3, 0x0

    const/16 v8, 0xff

    invoke-static {v2, v3, v8}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v5

    invoke-static {v7, v3, v8}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    invoke-static {v4, v3, v8}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v4

    or-int/2addr v2, v4

    aput v2, p1, v6

    add-int/lit8 v5, v16, 0x1

    move-object/from16 v12, p1

    move-object/from16 v3, p3

    move v4, v8

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 p3, v3

    move v8, v4

    iput-boolean v14, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    :goto_4
    const/4 v2, 0x0

    const/4 v11, 0x0

    goto/16 :goto_b

    :cond_c
    move-object/from16 p3, v3

    move v8, v4

    move-object/from16 p1, v12

    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    if-eqz v2, :cond_13

    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    if-eqz v2, :cond_13

    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    if-eqz v2, :cond_13

    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    if-eqz v2, :cond_13

    iget v2, v13, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-eqz v2, :cond_13

    iget v3, v13, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ne v3, v2, :cond_13

    iget-boolean v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    if-nez v2, :cond_d

    goto/16 :goto_9

    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iget v3, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    mul-int/2addr v2, v3

    new-array v3, v2, [I

    const/4 v4, 0x0

    :cond_e
    :goto_5
    if-ge v4, v2, :cond_12

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    if-eqz v5, :cond_f

    add-int/lit8 v6, v4, 0x1

    aget v5, p1, v5

    aput v5, v3, v4

    :goto_6
    move v4, v6

    goto :goto_5

    :cond_f
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    if-eqz v5, :cond_e

    and-int/lit8 v6, v5, 0x40

    if-nez v6, :cond_10

    and-int/lit8 v6, v5, 0x3f

    goto :goto_7

    :cond_10
    and-int/lit8 v6, v5, 0x3f

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    or-int/2addr v6, v7

    :goto_7
    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_11

    const/4 v5, 0x0

    goto :goto_8

    :cond_11
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    aget v5, p1, v5

    :goto_8
    add-int/2addr v6, v4

    invoke-static {v3, v4, v6, v5}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_6

    :cond_12
    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iget v4, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    const/16 v31, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    move-object/from16 v17, v16

    const v25, -0x800001

    const/high16 v24, -0x80000000

    move/from16 v30, v24

    const/16 v28, 0x0

    const/high16 v29, -0x1000000

    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    int-to-float v2, v2

    iget v3, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    int-to-float v3, v3

    div-float v22, v2, v3

    const/16 v23, 0x0

    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    int-to-float v2, v2

    iget v4, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    int-to-float v4, v4

    div-float v19, v2, v4

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    int-to-float v2, v2

    div-float v26, v2, v3

    iget v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    int-to-float v2, v2

    div-float v27, v2, v4

    new-instance v11, Landroidx/media3/common/text/Cue;

    move-object v14, v11

    invoke-direct/range {v14 .. v31}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    goto :goto_a

    :cond_13
    :goto_9
    const/4 v11, 0x0

    :goto_a
    const/4 v2, 0x0

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iput v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iput-boolean v2, v0, Landroidx/media3/extractor/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    :goto_b
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_c
    move-object/from16 v3, p3

    if-eqz v11, :cond_14

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move v4, v8

    goto/16 :goto_0

    :cond_15
    new-instance v0, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Landroidx/media3/extractor/text/cea/CeaSubtitle;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
