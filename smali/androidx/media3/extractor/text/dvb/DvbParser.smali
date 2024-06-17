.class public final Landroidx/media3/extractor/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final defaultMap2To4:[B

.field public static final defaultMap2To8:[B

.field public static final defaultMap4To8:[B


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public final canvas:Landroid/graphics/Canvas;

.field public final defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

.field public final defaultDisplayDefinition:Lcom/motorola/camera/saving/XmpData$Panorama;

.field public final defaultPaint:Landroid/graphics/Paint;

.field public final fillRegionPaint:Landroid/graphics/Paint;

.field public final subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To4:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To8:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    new-instance v0, Lcom/motorola/camera/saving/XmpData$Panorama;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/saving/XmpData$Panorama;-><init>(IIIIII)V

    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/motorola/camera/saving/XmpData$Panorama;

    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    const v1, -0x808081

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    filled-new-array {v3, v2, v4, v1}, [I

    move-result-object v1

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v2

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v4

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v0, p1, p2}, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    return-void
.end method

.method public static generateDefault4BitClutEntries()[I
    .locals 9

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_7

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v2

    :goto_3
    invoke-static {v5, v4, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_7

    :cond_3
    and-int/lit8 v4, v3, 0x1

    const/16 v6, 0x7f

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_5

    :cond_5
    move v7, v2

    :goto_5
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move v6, v2

    :goto_6
    invoke-static {v5, v4, v7, v6}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public static generateDefault8BitClutEntries()[I
    .locals 11

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_20

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    const/16 v7, 0x3f

    invoke-static {v7, v4, v6, v5}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_3
    and-int/lit16 v6, v3, 0x88

    const/16 v7, 0xaa

    const/16 v8, 0x55

    if-eqz v6, :cond_19

    const/16 v9, 0x7f

    if-eq v6, v4, :cond_12

    const/16 v4, 0x80

    const/16 v7, 0x2b

    if-eq v6, v4, :cond_b

    const/16 v4, 0x88

    if-eq v6, v4, :cond_4

    goto/16 :goto_1c

    :cond_4
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_5

    move v4, v7

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_6

    move v6, v8

    goto :goto_5

    :cond_6
    move v6, v2

    :goto_5
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_6

    :cond_7
    move v6, v2

    :goto_6
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_8

    move v9, v8

    goto :goto_7

    :cond_8
    move v9, v2

    :goto_7
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_9

    goto :goto_8

    :cond_9
    move v7, v2

    :goto_8
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_a

    goto :goto_9

    :cond_a
    move v8, v2

    :goto_9
    add-int/2addr v7, v8

    invoke-static {v5, v4, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_b
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_c

    move v4, v7

    goto :goto_a

    :cond_c
    move v4, v2

    :goto_a
    add-int/2addr v4, v9

    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_d

    move v6, v8

    goto :goto_b

    :cond_d
    move v6, v2

    :goto_b
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_e

    move v6, v7

    goto :goto_c

    :cond_e
    move v6, v2

    :goto_c
    add-int/2addr v6, v9

    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_f

    move v10, v8

    goto :goto_d

    :cond_f
    move v10, v2

    :goto_d
    add-int/2addr v6, v10

    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_10

    goto :goto_e

    :cond_10
    move v7, v2

    :goto_e
    add-int/2addr v7, v9

    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_11

    goto :goto_f

    :cond_11
    move v8, v2

    :goto_f
    add-int/2addr v7, v8

    invoke-static {v5, v4, v6, v7}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_12
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_13

    move v4, v8

    goto :goto_10

    :cond_13
    move v4, v2

    :goto_10
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_14

    move v5, v7

    goto :goto_11

    :cond_14
    move v5, v2

    :goto_11
    add-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_15

    move v5, v8

    goto :goto_12

    :cond_15
    move v5, v2

    :goto_12
    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_16

    move v6, v7

    goto :goto_13

    :cond_16
    move v6, v2

    :goto_13
    add-int/2addr v5, v6

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_17

    goto :goto_14

    :cond_17
    move v8, v2

    :goto_14
    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_18

    goto :goto_15

    :cond_18
    move v7, v2

    :goto_15
    add-int/2addr v8, v7

    invoke-static {v9, v4, v5, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_1c

    :cond_19
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1a

    move v4, v8

    goto :goto_16

    :cond_1a
    move v4, v2

    :goto_16
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_1b

    move v6, v7

    goto :goto_17

    :cond_1b
    move v6, v2

    :goto_17
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1c

    move v6, v8

    goto :goto_18

    :cond_1c
    move v6, v2

    :goto_18
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_1d

    move v9, v7

    goto :goto_19

    :cond_1d
    move v9, v2

    :goto_19
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_1e

    goto :goto_1a

    :cond_1e
    move v8, v2

    :goto_1a
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_1f

    goto :goto_1b

    :cond_1f
    move v7, v2

    :goto_1b
    add-int/2addr v8, v7

    invoke-static {v5, v4, v6, v8}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_20
    return-object v1
.end method

.method public static getColor(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 22

    move/from16 v0, p2

    move-object/from16 v7, p5

    new-instance v8, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-direct {v8, v1, v9, v10}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    move/from16 v1, p3

    move/from16 v11, p4

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    :goto_0
    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v2

    if-eqz v2, :cond_22

    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_20

    const/4 v6, 0x4

    const/16 v16, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x3

    packed-switch v2, :pswitch_data_0

    move v9, v6

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_19

    :pswitch_0
    move v6, v1

    move/from16 v1, v16

    :goto_1
    invoke-virtual {v8, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v17, v1

    move/from16 v18, v9

    goto :goto_2

    :cond_0
    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v2

    const/4 v3, 0x7

    if-nez v2, :cond_2

    invoke-virtual {v8, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v2, v16

    goto :goto_2

    :cond_1
    move/from16 v17, v9

    move/from16 v2, v16

    move/from16 v18, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    invoke-virtual {v8, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    move/from16 v17, v1

    move/from16 v18, v2

    move v2, v3

    :goto_2
    if-eqz v18, :cond_3

    if-eqz v7, :cond_3

    aget v1, p1, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v6

    int-to-float v3, v11

    add-int v1, v6, v18

    int-to-float v4, v1

    add-int/lit8 v1, v11, 0x1

    int-to-float v5, v1

    move-object/from16 v1, p6

    move/from16 v19, v6

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    move/from16 v19, v6

    :goto_3
    add-int v6, v19, v18

    if-eqz v17, :cond_4

    :goto_4
    move v1, v6

    goto/16 :goto_19

    :cond_4
    move/from16 v1, v17

    goto :goto_1

    :pswitch_1
    if-ne v0, v4, :cond_6

    if-nez v13, :cond_5

    sget-object v2, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap4To8:[B

    goto :goto_5

    :cond_5
    move-object v2, v13

    :goto_5
    move-object/from16 v17, v2

    goto :goto_6

    :cond_6
    move-object/from16 v17, v10

    :goto_6
    move v3, v1

    move/from16 v1, v16

    :goto_7
    invoke-virtual {v8, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_7

    move/from16 v18, v1

    move/from16 v19, v9

    goto :goto_b

    :cond_7
    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v8, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    :cond_8
    move v1, v9

    goto :goto_8

    :cond_9
    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v8, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    add-int/2addr v2, v6

    goto :goto_9

    :cond_a
    invoke-virtual {v8, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_e

    if-eq v2, v9, :cond_d

    if-eq v2, v5, :cond_c

    if-eq v2, v4, :cond_b

    :goto_8
    move/from16 v18, v1

    move/from16 v2, v16

    move/from16 v19, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v8, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    goto :goto_9

    :cond_c
    invoke-virtual {v8, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    :goto_9
    invoke-virtual {v8, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v18

    move/from16 v19, v2

    move/from16 v2, v18

    move/from16 v18, v1

    goto :goto_b

    :cond_d
    move v2, v5

    goto :goto_a

    :cond_e
    move v2, v9

    :goto_a
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v2, v16

    :goto_b
    if-eqz v19, :cond_10

    if-eqz v7, :cond_10

    if-eqz v17, :cond_f

    aget-byte v2, v17, v2

    :cond_f
    aget v1, p1, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v3

    int-to-float v1, v11

    add-int v4, v3, v19

    int-to-float v4, v4

    add-int/lit8 v5, v11, 0x1

    int-to-float v5, v5

    move/from16 v20, v1

    move-object/from16 v1, p6

    move/from16 v21, v3

    move/from16 v3, v20

    const/4 v10, 0x3

    const/4 v15, 0x2

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_c

    :cond_10
    move/from16 v21, v3

    move v10, v4

    move v15, v5

    :goto_c
    add-int v3, v21, v19

    if-eqz v18, :cond_11

    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo$Builder;->byteAlign()V

    move v1, v3

    goto/16 :goto_19

    :cond_11
    move v4, v10

    move v5, v15

    move/from16 v1, v18

    const/4 v6, 0x4

    const/4 v10, 0x0

    const/16 v15, 0x8

    goto/16 :goto_7

    :pswitch_2
    move v10, v4

    move v15, v5

    if-ne v0, v10, :cond_13

    if-nez v12, :cond_12

    sget-object v2, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_d

    :cond_12
    move-object v2, v12

    goto :goto_d

    :cond_13
    if-ne v0, v15, :cond_15

    if-nez v14, :cond_14

    sget-object v2, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_d

    :cond_14
    move-object v2, v14

    :goto_d
    move-object/from16 v17, v2

    goto :goto_e

    :cond_15
    const/16 v17, 0x0

    :goto_e
    move v6, v1

    move/from16 v1, v16

    :goto_f
    invoke-virtual {v8, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_16

    move/from16 v18, v1

    move/from16 v19, v9

    const/4 v5, 0x4

    goto :goto_14

    :cond_16
    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v8, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    add-int/2addr v2, v10

    :goto_10
    const/4 v5, 0x4

    goto :goto_11

    :cond_17
    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v9

    const/4 v5, 0x4

    goto :goto_12

    :cond_18
    invoke-virtual {v8, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_1c

    if-eq v2, v9, :cond_1b

    if-eq v2, v15, :cond_1a

    if-eq v2, v10, :cond_19

    const/4 v5, 0x4

    goto :goto_13

    :cond_19
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1d

    goto :goto_10

    :cond_1a
    const/4 v5, 0x4

    invoke-virtual {v8, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    :goto_11
    invoke-virtual {v8, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    move/from16 v18, v1

    move/from16 v19, v2

    move v2, v3

    goto :goto_14

    :cond_1b
    const/4 v5, 0x4

    move v2, v15

    :goto_12
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v2, v16

    goto :goto_14

    :cond_1c
    const/4 v5, 0x4

    move v1, v9

    :goto_13
    move/from16 v18, v1

    move/from16 v2, v16

    move/from16 v19, v2

    :goto_14
    if-eqz v19, :cond_1e

    if-eqz v7, :cond_1e

    if-eqz v17, :cond_1d

    aget-byte v2, v17, v2

    :cond_1d
    aget v1, p1, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v6

    int-to-float v3, v11

    add-int v1, v6, v19

    int-to-float v4, v1

    add-int/lit8 v1, v11, 0x1

    int-to-float v1, v1

    move/from16 v21, v1

    move-object/from16 v1, p6

    move v9, v5

    move/from16 v5, v21

    move/from16 v21, v6

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_15

    :cond_1e
    move v9, v5

    move/from16 v21, v6

    :goto_15
    add-int v6, v21, v19

    if-eqz v18, :cond_1f

    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo$Builder;->byteAlign()V

    goto/16 :goto_4

    :cond_1f
    move/from16 v1, v18

    const/4 v9, 0x1

    goto/16 :goto_f

    :pswitch_3
    const/16 v2, 0x10

    new-array v13, v2, [B

    move/from16 v3, v16

    :goto_16
    if-ge v3, v2, :cond_21

    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    int-to-byte v4, v5

    aput-byte v4, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :pswitch_4
    new-array v12, v9, [B

    move/from16 v2, v16

    :goto_17
    if-ge v2, v9, :cond_21

    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :pswitch_5
    new-array v14, v9, [B

    move/from16 v2, v16

    :goto_18
    if-ge v2, v9, :cond_21

    invoke-virtual {v8, v9}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_20
    add-int/lit8 v11, v11, 0x2

    move/from16 v1, p3

    :cond_21
    :goto_19
    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_22
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static parseClutDefinition(ILandroidx/media3/common/ColorInfo$Builder;)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;
    .locals 21

    move-object/from16 v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    add-int/lit8 v3, p0, -0x2

    const v4, -0x808081

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, -0x1000000

    filled-new-array {v6, v5, v7, v4}, [I

    move-result-object v4

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v5

    invoke-static {}, Landroidx/media3/extractor/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v7

    :goto_0
    if-lez v3, :cond_4

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v8

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v9

    add-int/lit8 v3, v3, -0x2

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_0

    move-object v10, v4

    goto :goto_1

    :cond_0
    and-int/lit8 v10, v9, 0x40

    if-eqz v10, :cond_1

    move-object v10, v5

    goto :goto_1

    :cond_1
    move-object v10, v7

    :goto_1
    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v9

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v12

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    add-int/lit8 v3, v3, -0x4

    goto :goto_2

    :cond_2
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    const/4 v12, 0x2

    shl-int/2addr v11, v12

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v14

    shl-int/2addr v14, v13

    invoke-virtual {v0, v13}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v15

    shl-int/lit8 v13, v15, 0x4

    invoke-virtual {v0, v12}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v12

    shl-int/lit8 v9, v12, 0x6

    add-int/lit8 v3, v3, -0x2

    move v12, v13

    move v13, v9

    move v9, v11

    move v11, v14

    :goto_2
    const/16 v14, 0xff

    if-nez v9, :cond_3

    move v11, v6

    move v12, v11

    move v13, v14

    :cond_3
    and-int/2addr v13, v14

    rsub-int v13, v13, 0xff

    int-to-byte v13, v13

    move/from16 v16, v2

    int-to-double v1, v9

    add-int/lit8 v11, v11, -0x80

    move-object v9, v7

    int-to-double v6, v11

    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v17, v17, v6

    add-double v14, v17, v1

    double-to-int v14, v14

    add-int/lit8 v12, v12, -0x80

    int-to-double v11, v12

    const-wide v17, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v17, v17, v11

    sub-double v17, v1, v17

    const-wide v19, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v6, v6, v19

    sub-double v6, v17, v6

    double-to-int v6, v6

    const-wide v17, 0x3ffc5a1cac083127L    # 1.772

    mul-double v11, v11, v17

    add-double/2addr v11, v1

    double-to-int v1, v11

    const/16 v2, 0xff

    const/4 v7, 0x0

    invoke-static {v14, v7, v2}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v11

    invoke-static {v6, v7, v2}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v6

    invoke-static {v1, v7, v2}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v1

    invoke-static {v13, v11, v6, v1}, Landroidx/media3/extractor/text/dvb/DvbParser;->getColor(IIII)I

    move-result v1

    aput v1, v10, v8

    move v6, v7

    move-object v7, v9

    move/from16 v2, v16

    const/16 v1, 0x8

    goto/16 :goto_0

    :cond_4
    move/from16 v16, v2

    move-object v9, v7

    new-instance v0, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move/from16 v1, v16

    invoke-direct {v0, v1, v4, v5, v9}, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v0
.end method

.method public static parseObjectData(Landroidx/media3/common/ColorInfo$Builder;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;
    .locals 6

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    sget-object v5, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    if-ne v2, v4, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    mul-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v0

    if-lez v2, :cond_1

    new-array v5, v2, [B

    invoke-virtual {p0, v2, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBytes(I[B)V

    :cond_1
    if-lez v0, :cond_2

    new-array v2, v0, [B

    invoke-virtual {p0, v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBytes(I[B)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v5

    :goto_1
    new-instance p0, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    invoke-direct {p0, v1, v3, v5, v2}, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object p0
.end method
