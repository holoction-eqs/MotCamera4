.class public final Landroidx/media3/extractor/text/dvb/DvbDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final parser:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/text/dvb/DvbDecoder;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/dvb/DvbDecoder;->parser:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/text/dvb/DvbDecoder;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>()V

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v1, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    new-instance v1, Landroidx/media3/extractor/text/dvb/DvbParser;

    invoke-direct {v1, p1, v0}, Landroidx/media3/extractor/text/dvb/DvbParser;-><init>(II)V

    iput-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbDecoder;->parser:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final decode(IZ[B)Landroidx/media3/extractor/text/Subtitle;
    .locals 48

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    iget v3, v0, Landroidx/media3/extractor/text/dvb/DvbDecoder;->$r8$classId:I

    iget-object v0, v0, Landroidx/media3/extractor/text/dvb/DvbDecoder;->parser:Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x8

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_14

    :pswitch_0
    if-eqz p2, :cond_0

    move-object v3, v0

    check-cast v3, Landroidx/media3/extractor/text/dvb/DvbParser;

    iget-object v3, v3, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    iget-object v6, v3, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    iget-object v6, v3, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    iget-object v6, v3, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    iget-object v6, v3, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    iget-object v6, v3, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    iput-object v4, v3, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/motorola/camera/saving/XmpData$Panorama;

    iput-object v4, v3, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    :cond_0
    new-instance v3, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    check-cast v0, Landroidx/media3/extractor/text/dvb/DvbParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v6, v2, v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BI)V

    :goto_0
    invoke-virtual {v6}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v1

    const/4 v2, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/16 v10, 0x30

    iget-object v11, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->subtitleService:Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;

    if-lt v1, v10, :cond_c

    invoke-virtual {v6, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    const/16 v10, 0xf

    if-ne v1, v10, :cond_c

    invoke-virtual {v6, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    const/16 v10, 0x10

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v12

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    invoke-virtual {v6}, Landroidx/media3/common/ColorInfo$Builder;->getBytePosition()I

    move-result v14

    add-int/2addr v14, v13

    mul-int/lit8 v15, v13, 0x8

    invoke-virtual {v6}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v4

    if-le v15, v4, :cond_1

    const-string v1, "DvbParser"

    const-string v2, "Data field length exceeds limit"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v1

    invoke-virtual {v6, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto/16 :goto_9

    :cond_1
    const/4 v4, 0x4

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_1
    iget v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v12, v1, :cond_b

    invoke-virtual {v6, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v6}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v1

    invoke-virtual {v6, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v16

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v17

    if-eqz v1, :cond_2

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v8

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v4

    move/from16 v18, v8

    goto :goto_1

    :cond_2
    move/from16 v19, v16

    move/from16 v21, v17

    const/16 v18, 0x0

    const/16 v20, 0x0

    :goto_1
    new-instance v1, Lcom/motorola/camera/saving/XmpData$Panorama;

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/motorola/camera/saving/XmpData$Panorama;-><init>(IIIIII)V

    iput-object v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/motorola/camera/saving/XmpData$Panorama;

    goto/16 :goto_8

    :pswitch_2
    iget v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v12, v1, :cond_3

    invoke-static {v6}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseObjectData(Landroidx/media3/common/ColorInfo$Builder;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    move-result-object v1

    iget-object v2, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    goto :goto_2

    :cond_3
    iget v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v12, v1, :cond_b

    invoke-static {v6}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseObjectData(Landroidx/media3/common/ColorInfo$Builder;)Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    move-result-object v1

    iget-object v2, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    :goto_2
    iget v4, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->id:I

    goto/16 :goto_6

    :pswitch_3
    iget v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v12, v1, :cond_4

    invoke-static {v13, v6}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseClutDefinition(ILandroidx/media3/common/ColorInfo$Builder;)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-result-object v1

    iget-object v2, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    goto :goto_3

    :cond_4
    iget v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v12, v1, :cond_b

    invoke-static {v13, v6}, Landroidx/media3/extractor/text/dvb/DvbParser;->parseClutDefinition(ILandroidx/media3/common/ColorInfo$Builder;)Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    move-result-object v1

    iget-object v2, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    :goto_3
    iget v4, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->id:I

    goto/16 :goto_6

    :pswitch_4
    iget-object v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    iget v15, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v12, v15, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v6, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v12

    invoke-virtual {v6, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v6}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v18

    invoke-virtual {v6, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v19

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v20

    invoke-virtual {v6, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    invoke-virtual {v6, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v21

    invoke-virtual {v6, v7}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v6, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v22

    invoke-virtual {v6, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v23

    invoke-virtual {v6, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v24

    invoke-virtual {v6, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v25

    invoke-virtual {v6, v7}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    add-int/lit8 v13, v13, -0xa

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    :goto_4
    if-lez v13, :cond_7

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v15

    invoke-virtual {v6, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v8

    invoke-virtual {v6, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    invoke-virtual {v6, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    add-int/lit8 v13, v13, -0x6

    if-eq v8, v9, :cond_5

    if-ne v8, v7, :cond_6

    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    invoke-virtual {v6, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    add-int/lit8 v13, v13, -0x2

    :cond_6
    new-instance v8, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    invoke-direct {v8, v5, v10}, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;-><init>(II)V

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8

    const/16 v10, 0x10

    goto :goto_4

    :cond_7
    new-instance v4, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    move-object/from16 v16, v4

    move/from16 v17, v12

    move-object/from16 v26, v2

    invoke-direct/range {v16 .. v26}, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIILandroid/util/SparseArray;)V

    iget v1, v1, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    iget-object v2, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    if-nez v1, :cond_8

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    if-eqz v1, :cond_8

    const/4 v8, 0x0

    :goto_5
    iget-object v5, v1, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v8, v7, :cond_8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    iget-object v9, v4, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    iget v1, v4, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    move-object/from16 v47, v4

    move v4, v1

    move-object/from16 v1, v47

    :goto_6
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    :pswitch_5
    iget v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v12, v1, :cond_b

    iget-object v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    invoke-virtual {v6, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    invoke-virtual {v6, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v8

    invoke-virtual {v6, v7}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    add-int/lit8 v13, v13, -0x2

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    :goto_7
    if-lez v13, :cond_9

    invoke-virtual {v6, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v9

    invoke-virtual {v6, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v2, 0x10

    invoke-virtual {v6, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    invoke-virtual {v6, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v12

    add-int/lit8 v13, v13, -0x6

    new-instance v15, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;

    invoke-direct {v15, v10, v12}, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v7, v9, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x8

    goto :goto_7

    :cond_9
    new-instance v2, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    invoke-direct {v2, v5, v4, v8, v7}, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;-><init>(IIILandroid/util/SparseArray;)V

    iget v4, v2, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v4, :cond_a

    iput-object v2, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    iget-object v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_8

    :cond_a
    if-eqz v1, :cond_b

    iget v1, v1, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    iget v4, v2, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v1, v4, :cond_b

    iput-object v2, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    :cond_b
    :goto_8
    invoke-virtual {v6}, Landroidx/media3/common/ColorInfo$Builder;->getBytePosition()I

    move-result v1

    sub-int/2addr v14, v1

    invoke-virtual {v6, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBytes(I)V

    :goto_9
    const/4 v4, 0x0

    const/16 v5, 0x8

    goto/16 :goto_0

    :cond_c
    iget-object v1, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->pageComposition:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    if-nez v1, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v1, v3

    move v2, v9

    goto/16 :goto_13

    :cond_d
    iget-object v4, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/motorola/camera/saving/XmpData$Panorama;

    if-eqz v4, :cond_e

    goto :goto_a

    :cond_e
    iget-object v4, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/motorola/camera/saving/XmpData$Panorama;

    :goto_a
    iget-object v5, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget-object v6, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    if-eqz v5, :cond_f

    iget v8, v4, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v8, v5, :cond_f

    iget v5, v4, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaWidth:I

    add-int/2addr v5, v9

    iget-object v8, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v5, v8, :cond_10

    :cond_f
    iget v5, v4, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaHeight:I

    add-int/2addr v5, v9

    iget v8, v4, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaWidth:I

    add-int/2addr v8, v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Ljava/lang/Cloneable;

    check-cast v1, Landroid/util/SparseArray;

    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v8, v10, :cond_1b

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    iget-object v13, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;

    iget v12, v10, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v13, v4, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaLeft:I

    add-int v14, v12, v13

    iget v10, v10, Landroidx/media3/extractor/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v12, v4, Lcom/motorola/camera/saving/XmpData$Panorama;->mFullHeight:I

    add-int/2addr v10, v12

    iget v12, v15, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v12, v14

    iget v13, v4, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaTop:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v15, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    add-int v9, v10, v13

    iget v7, v4, Lcom/motorola/camera/saving/XmpData$Panorama;->mFullWidth:I

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v14, v10, v12, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v7, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v12, v15, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    if-nez v7, :cond_11

    iget-object v7, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    if-nez v7, :cond_11

    iget-object v7, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultClutDefinition:Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;

    :cond_11
    const/4 v12, 0x0

    :goto_c
    iget-object v2, v15, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    move-object/from16 v20, v1

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_17

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    move/from16 v16, v12

    iget-object v12, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    if-nez v12, :cond_12

    iget-object v12, v11, Landroidx/media3/extractor/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;

    :cond_12
    move-object v1, v12

    if-eqz v1, :cond_16

    iget-boolean v12, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-eqz v12, :cond_13

    const/16 v21, 0x0

    goto :goto_d

    :cond_13
    iget-object v12, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v12

    :goto_d
    iget v12, v15, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    move-object/from16 v22, v11

    iget v11, v2, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int/2addr v11, v14

    iget v2, v2, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int/2addr v2, v10

    move/from16 v17, v13

    const/4 v13, 0x3

    if-ne v12, v13, :cond_14

    iget-object v13, v7, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    :goto_e
    move-object/from16 v23, v13

    goto :goto_f

    :cond_14
    const/4 v13, 0x2

    if-ne v12, v13, :cond_15

    iget-object v13, v7, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    goto :goto_e

    :cond_15
    iget-object v13, v7, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    goto :goto_e

    :goto_f
    iget-object v13, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move/from16 v25, v12

    move/from16 v24, v16

    move-object v12, v13

    move-object/from16 v26, v3

    move/from16 v3, v17

    move-object/from16 v13, v23

    move/from16 v27, v8

    move v8, v14

    move/from16 v14, v25

    move-object/from16 v28, v5

    move-object v5, v15

    move v15, v11

    move/from16 v16, v2

    move-object/from16 v17, v21

    move-object/from16 v18, v6

    invoke-static/range {v12 .. v18}, Landroidx/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v12, v1, Landroidx/media3/extractor/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    const/4 v1, 0x1

    add-int/lit8 v16, v2, 0x1

    invoke-static/range {v12 .. v18}, Landroidx/media3/extractor/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_10

    :cond_16
    move-object/from16 v26, v3

    move-object/from16 v28, v5

    move/from16 v27, v8

    move-object/from16 v22, v11

    move v3, v13

    move v8, v14

    move-object v5, v15

    move/from16 v24, v16

    :goto_10
    add-int/lit8 v12, v24, 0x1

    move v13, v3

    move-object v15, v5

    move v14, v8

    move-object/from16 v1, v20

    move-object/from16 v11, v22

    move-object/from16 v3, v26

    move/from16 v8, v27

    move-object/from16 v5, v28

    goto/16 :goto_c

    :cond_17
    move-object/from16 v26, v3

    move-object/from16 v28, v5

    move/from16 v27, v8

    move-object/from16 v22, v11

    move v3, v13

    move v8, v14

    move-object v5, v15

    iget-boolean v1, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    iget v2, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    if-eqz v1, :cond_1a

    iget v1, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v11, 0x3

    if-ne v1, v11, :cond_18

    iget-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v5, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v1, v1, v5

    const/4 v15, 0x2

    goto :goto_11

    :cond_18
    const/4 v15, 0x2

    if-ne v1, v15, :cond_19

    iget-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v5, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v1, v1, v5

    goto :goto_11

    :cond_19
    iget-object v1, v7, Landroidx/media3/extractor/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v5, v5, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v1, v1, v5

    :goto_11
    iget-object v5, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v13, v8

    int-to-float v14, v10

    add-int v1, v8, v2

    int-to-float v1, v1

    int-to-float v7, v9

    move-object v12, v6

    move v9, v15

    move v15, v1

    move/from16 v16, v7

    move-object/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_12

    :cond_1a
    const/4 v9, 0x2

    const/4 v11, 0x3

    :goto_12
    const/16 v46, 0x0

    const/16 v31, 0x0

    move-object/from16 v30, v31

    move-object/from16 v32, v31

    const v40, -0x800001

    const/high16 v39, -0x80000000

    move/from16 v45, v39

    const/16 v43, 0x0

    const/high16 v44, -0x1000000

    iget-object v1, v0, Landroidx/media3/extractor/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v8, v10, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v33

    int-to-float v1, v8

    iget v5, v4, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaHeight:I

    int-to-float v5, v5

    div-float v37, v1, v5

    const/16 v38, 0x0

    int-to-float v1, v10

    iget v7, v4, Lcom/motorola/camera/saving/XmpData$Panorama;->mCropAreaWidth:I

    int-to-float v7, v7

    div-float v34, v1, v7

    const/16 v35, 0x0

    const/16 v36, 0x0

    int-to-float v1, v2

    div-float v41, v1, v5

    int-to-float v1, v3

    div-float v42, v1, v7

    new-instance v1, Landroidx/media3/common/text/Cue;

    move-object/from16 v29, v1

    invoke-direct/range {v29 .. v46}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 v2, v28

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v6, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v8, v27, 0x1

    move-object v5, v2

    move v7, v9

    move v2, v11

    move-object/from16 v1, v20

    move-object/from16 v11, v22

    move-object/from16 v3, v26

    const/4 v9, 0x1

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v26, v3

    move-object v2, v5

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v26

    const/4 v2, 0x1

    :goto_13
    invoke-direct {v1, v2, v0}, Landroidx/media3/extractor/text/cea/CeaSubtitle;-><init>(ILjava/util/List;)V

    return-object v1

    :goto_14
    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_15
    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_24

    const/16 v3, 0x8

    if-lt v2, v3, :cond_23

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x76747463

    if-ne v4, v5, :cond_22

    add-int/lit8 v2, v2, -0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1c
    :goto_16
    if-lez v2, :cond_1f

    if-lt v2, v3, :cond_1e

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v2, v2, -0x8

    sub-int/2addr v6, v3

    iget-object v8, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v9, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sget v10, Landroidx/media3/common/util/Util;->SDK_INT:I

    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v8, v9, v6, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v2, v6

    const v6, 0x73747467

    if-ne v7, v6, :cond_1d

    new-instance v5, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v5}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    invoke-static {v10, v5}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    invoke-virtual {v5}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Landroidx/media3/common/text/Cue$Builder;

    move-result-object v5

    goto :goto_16

    :cond_1d
    const v6, 0x7061796c

    if-ne v7, v6, :cond_1c

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7, v4, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v4

    goto :goto_16

    :cond_1e
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v1, "Incomplete vtt cue box header found."

    invoke-direct {v0, v1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const/4 v7, 0x0

    if-nez v4, :cond_20

    const-string v4, ""

    :cond_20
    if-eqz v5, :cond_21

    iput-object v4, v5, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v2

    goto :goto_17

    :cond_21
    sget-object v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    new-instance v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    iput-object v4, v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Landroidx/media3/common/text/Cue$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v2

    :goto_17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_22
    const/4 v7, 0x0

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_15

    :cond_23
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v1, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {v0, v1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/text/cea/CeaSubtitle;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
