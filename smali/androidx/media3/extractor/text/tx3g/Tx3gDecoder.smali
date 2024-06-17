.class public final Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# instance fields
.field public final calculatedVideoTrackHeight:I

.field public final customVerticalPlacement:Z

.field public final defaultColorRgba:I

.field public final defaultFontFace:I

.field public final defaultFontFamily:Ljava/lang/String;

.field public final defaultVerticalPlacement:F

.field public final parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 8

    invoke-direct {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    aget-byte v5, p1, v0

    iput v5, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/16 v5, 0x1a

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iput v0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    array-length v0, p1

    const/16 v5, 0x2b

    sub-int/2addr v0, v5

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p1, v5, v0, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v0, "Serif"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "serif"

    :cond_1
    iput-object v2, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    const/16 v0, 0x19

    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3f733333    # 0.95f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    goto :goto_0

    :cond_3
    iput v1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    goto :goto_0

    :cond_4
    iput v3, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    iput-object v2, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    iput-boolean v3, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    iput v1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    iput p1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    :goto_0
    return-void
.end method

.method public static attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    move p5, v1

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p5, :cond_3

    new-instance v3, Landroid/text/style/StyleSpan;

    if-eqz v2, :cond_2

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_2

    :cond_2
    invoke-direct {v3, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_2
    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v0, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final decode(IZ[B)Landroidx/media3/extractor/text/Subtitle;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->parsableByteArray:Landroidx/media3/common/util/ParsableByteArray;

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    const-string v6, "Unexpected subtitle format."

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_2

    :cond_1
    iget v7, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object v8

    iget v9, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v9, v7

    sub-int/2addr v2, v9

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-virtual {v1, v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v0, Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;->EMPTY:Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;

    return-object v0

    :cond_3
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v8, v0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v9, 0x0

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/4 v10, 0x0

    const/high16 v12, 0xff0000

    move-object v7, v15

    invoke-static/range {v7 .. v12}, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const v7, 0xff0021

    iget v13, v0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    const/4 v8, -0x1

    if-eq v13, v8, :cond_4

    and-int/lit16 v8, v13, 0xff

    shl-int/lit8 v8, v8, 0x18

    ushr-int/lit8 v9, v13, 0x8

    or-int/2addr v8, v9

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v15, v9, v5, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v8, "sans-serif"

    iget-object v9, v0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    if-eq v9, v8, :cond_5

    new-instance v8, Landroid/text/style/TypefaceSpan;

    invoke-direct {v8, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8, v5, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    iget v2, v0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    move/from16 v19, v2

    :goto_3
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v14, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v14

    const/16 v7, 0x8

    if-lt v2, v7, :cond_12

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    const v8, 0x7374796c

    if-ne v7, v8, :cond_e

    iget v7, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v8, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v7, v8

    if-lt v7, v3, :cond_6

    move v7, v4

    goto :goto_4

    :cond_6
    move v7, v5

    :goto_4
    if-eqz v7, :cond_d

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    move v7, v5

    :goto_5
    if-ge v5, v12, :cond_c

    iget v8, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v9, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v8, v9

    const/16 v9, 0xc

    if-lt v8, v9, :cond_7

    move v7, v4

    :cond_7
    if-eqz v7, :cond_b

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const-string v9, ")."

    const-string v10, "Tx3gDecoder"

    if-le v7, v4, :cond_8

    const-string v4, "Truncating styl end ("

    move/from16 p1, v12

    const-string v12, ") to cueText.length() ("

    invoke-static {v4, v7, v12}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    goto :goto_6

    :cond_8
    move/from16 p1, v12

    :goto_6
    move v4, v7

    if-lt v11, v4, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring styl with start ("

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") >= end ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, p1

    move/from16 p2, v2

    goto :goto_7

    :cond_9
    iget v9, v0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v12, 0x0

    move-object v7, v15

    move v10, v11

    move/from16 p2, v2

    move v2, v11

    move v11, v4

    move/from16 v16, p1

    invoke-static/range {v7 .. v12}, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    if-eq v3, v13, :cond_a

    and-int/lit16 v7, v3, 0xff

    shl-int/lit8 v7, v7, 0x18

    ushr-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v7

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v15, v7, v2, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    move/from16 v2, p2

    move/from16 v12, v16

    goto/16 :goto_5

    :cond_b
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    invoke-direct {v0, v6}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move/from16 p2, v2

    goto :goto_9

    :cond_d
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    invoke-direct {v0, v6}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move/from16 p2, v2

    const v2, 0x74626f78

    if-ne v7, v2, :cond_11

    iget-boolean v2, v0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v2, :cond_11

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_f

    const/4 v2, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_10

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Landroidx/media3/extractor/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const v4, 0x3f733333    # 0.95f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v19

    goto :goto_9

    :cond_10
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    invoke-direct {v0, v6}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v2, 0x2

    move v3, v2

    :goto_9
    add-int v14, v14, p2

    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_12
    new-instance v0, Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;

    const/16 v18, 0x0

    const/4 v4, 0x0

    move-object v3, v4

    move-object v5, v4

    const v9, -0x800001

    move v12, v9

    move v13, v9

    move v14, v9

    const/high16 v17, -0x80000000

    move/from16 v10, v17

    move/from16 v11, v17

    const/4 v1, 0x0

    move-object v2, v15

    move v15, v1

    const/high16 v16, -0x1000000

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v6, Landroidx/media3/common/text/Cue;

    move-object v1, v6

    move-object/from16 v20, v6

    move/from16 v6, v19

    invoke-direct/range {v1 .. v18}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;-><init>(Landroidx/media3/common/text/Cue;)V

    return-object v0

    :cond_13
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    invoke-direct {v0, v6}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
