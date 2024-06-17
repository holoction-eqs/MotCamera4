.class public final Landroidx/media3/extractor/text/cea/Cea708Decoder;
.super Landroidx/media3/extractor/text/cea/CeaDecoder;
.source "SourceFile"


# instance fields
.field public final captionChannelPacketData:Landroidx/media3/common/ColorInfo$Builder;

.field public final ccData:Landroidx/media3/common/util/ParsableByteArray;

.field public final cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

.field public cues:Ljava/util/List;

.field public currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

.field public currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

.field public currentWindow:I

.field public lastCues:Ljava/util/List;

.field public previousSequenceNumber:I

.field public final selectedServiceNumber:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/ColorInfo$Builder;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    :cond_0
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->selectedServiceNumber:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-ne v0, v1, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    aget-byte p2, p2, p1

    :cond_1
    const/16 p2, 0x8

    new-array v0, p2, [Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    new-instance v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-direct {v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object p1, p2, p1

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    return-void
.end method


# virtual methods
.method public final createSubtitle()Landroidx/media3/extractor/text/cea/CeaSubtitle;
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    new-instance p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroidx/media3/extractor/text/cea/CeaSubtitle;-><init>(ILjava/util/List;)V

    return-object p0
.end method

.method public final decode(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V
    .locals 9

    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    :cond_0
    :goto_0
    iget p1, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v0, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p1, v0

    const/4 v0, 0x3

    if-lt p1, v0, :cond_9

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v2, p1, 0x3

    const/4 v3, 0x4

    and-int/2addr p1, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v5

    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    int-to-byte v7, v7

    const/4 v8, 0x2

    if-eq v2, v8, :cond_2

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Cea708Decoder"

    if-ne v2, v0, :cond_6

    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    and-int/lit16 v0, v6, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v3

    if-eq v0, v2, :cond_4

    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sequence number discontinuity. previous="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    and-int/lit8 p1, v6, 0x3f

    if-nez p1, :cond_5

    const/16 p1, 0x40

    :cond_5
    new-instance v2, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/ColorInfo$Builder;-><init>(II)V

    iput-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

    iget-object p1, v2, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    iget v0, v2, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v2, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    aput-byte v7, p1, v0

    goto :goto_2

    :cond_6
    if-ne v2, v8, :cond_7

    move v5, v4

    :cond_7
    invoke-static {v5}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

    if-nez v0, :cond_8

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object p1, v0, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    iget v2, v0, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    add-int/lit8 v3, v2, 0x1

    aput-byte v6, p1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    aput-byte v7, p1, v3

    :goto_2
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

    iget v0, p1, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    iget p1, p1, Landroidx/media3/common/ColorInfo$Builder;->colorRange:I

    mul-int/2addr p1, v8

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final finalizeCurrentPacket()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v1, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    iget v1, v1, Landroidx/media3/common/ColorInfo$Builder;->colorRange:I

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    const-string v4, "Cea708Decoder"

    if-eq v2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DtvCcPacket ended prematurely; size is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

    iget v2, v2, Landroidx/media3/common/ColorInfo$Builder;->colorRange:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but current index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

    iget v2, v2, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (sequence number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

    iget v2, v2, Landroidx/media3/common/ColorInfo$Builder;->colorSpace:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

    iget-object v2, v1, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    iget v1, v1, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    iget-object v5, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/ColorInfo$Builder;

    invoke-virtual {v5, v2, v1}, Landroidx/media3/common/ColorInfo$Builder;->reset([BI)V

    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v2

    if-lez v2, :cond_39

    const/4 v2, 0x3

    invoke-virtual {v5, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    const/4 v8, 0x7

    const/4 v9, 0x6

    if-ne v6, v8, :cond_3

    invoke-virtual {v5, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v5, v9}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    if-ge v6, v8, :cond_3

    const-string v8, "Invalid extended service number: "

    invoke-static {v8, v6, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    if-nez v7, :cond_4

    if-eqz v6, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serviceNumber is non-zero ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") when blockSize is 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_4
    iget v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-eq v6, v8, :cond_5

    invoke-virtual {v5, v7}, Landroidx/media3/common/ColorInfo$Builder;->skipBytes(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->getPosition()I

    move-result v6

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v6

    :goto_1
    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->getPosition()I

    move-result v6

    if-ge v6, v7, :cond_2

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v8

    const/16 v9, 0x17

    const/16 v10, 0x9f

    const/16 v11, 0x18

    const/16 v12, 0x7f

    const/16 v13, 0x1f

    const/16 v14, 0x10

    if-eq v8, v14, :cond_23

    const/16 v15, 0xa

    if-gt v8, v13, :cond_a

    if-eqz v8, :cond_c

    if-eq v8, v2, :cond_9

    if-eq v8, v6, :cond_8

    packed-switch v8, :pswitch_data_0

    const/16 v10, 0x11

    if-lt v8, v10, :cond_6

    if-gt v8, v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_3

    :pswitch_0
    iget-object v6, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v6, v15}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_3

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto :goto_3

    :cond_6
    if-lt v8, v11, :cond_7

    if-gt v8, v13, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Currently unsupported COMMAND_P16 Command: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_3

    :cond_7
    const-string v6, "Invalid C0 command: "

    invoke-static {v6, v8, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v6, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iget-object v6, v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_c

    add-int/lit8 v9, v8, -0x1

    invoke-virtual {v6, v9, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    goto :goto_3

    :cond_a
    if-gt v8, v12, :cond_d

    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    if-ne v8, v12, :cond_b

    const/16 v6, 0x266b

    goto :goto_2

    :cond_b
    and-int/lit16 v6, v8, 0xff

    int-to-char v6, v6

    :goto_2
    invoke-virtual {v1, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    const/4 v1, 0x1

    :cond_c
    :goto_3
    :pswitch_2
    move/from16 v16, v7

    goto/16 :goto_18

    :cond_d
    if-gt v8, v10, :cond_21

    const/4 v1, 0x4

    iget-object v9, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    packed-switch v8, :pswitch_data_1

    :pswitch_3
    move-object/from16 v17, v4

    move/from16 v16, v7

    const/4 v1, 0x1

    const-string v3, "Invalid C1 command: "

    invoke-static {v3, v8, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_15

    :pswitch_4
    add-int/lit16 v8, v8, -0x98

    aget-object v10, v9, v8

    invoke-virtual {v5, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v11

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    invoke-virtual {v5, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v13

    const/4 v14, 0x7

    invoke-virtual {v5, v14}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v14

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v15

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    invoke-virtual {v5, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    move/from16 v16, v7

    const/4 v7, 0x6

    invoke-virtual {v5, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    invoke-virtual {v5, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    invoke-virtual {v5, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    move-object/from16 v17, v4

    const/4 v4, 0x1

    iput-boolean v4, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    iput-boolean v11, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    iput-boolean v12, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowLock:Z

    iput v2, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    iput-boolean v13, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    iput v14, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    iput v6, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    iput v15, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    iget v2, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    add-int/2addr v1, v4

    if-eq v2, v1, :cond_10

    iput v1, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    :goto_4
    iget-object v1, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    if-eqz v12, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge v2, v4, :cond_f

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0xf

    if-lt v2, v4, :cond_10

    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_10
    if-eqz v7, :cond_11

    iget v1, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    if-eq v1, v7, :cond_11

    iput v7, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    add-int/lit8 v7, v7, -0x1

    sget-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    aget v1, v1, v7

    sget-object v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    aget-boolean v2, v2, v7

    sget-object v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    aget v2, v2, v7

    sget-object v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    aget v2, v2, v7

    sget-object v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    aget v2, v2, v7

    iput v1, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    iput v2, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    :cond_11
    if-eqz v3, :cond_12

    iget v1, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    if-eq v1, v3, :cond_12

    iput v3, v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    add-int/lit8 v3, v3, -0x1

    sget-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    aget v1, v1, v3

    sget-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    aget v1, v1, v3

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(ZZ)V

    sget-object v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    aget v1, v1, v3

    sget v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    invoke-virtual {v10, v2, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(II)V

    :cond_12
    iget v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v1, v8, :cond_17

    iput v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    aget-object v1, v9, v8

    const/4 v2, 0x3

    const/4 v3, 0x1

    goto/16 :goto_e

    :pswitch_5
    move-object/from16 v17, v4

    move/from16 v16, v7

    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iget-boolean v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v1, :cond_13

    const/16 v11, 0x20

    goto/16 :goto_5

    :cond_13
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    invoke-static {v3, v4, v7, v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v3, v4, v7, v8}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    iget-object v3, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iput v2, v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    iput v1, v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    goto/16 :goto_7

    :pswitch_6
    move-object/from16 v17, v4

    move/from16 v16, v7

    iget-object v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iget-boolean v2, v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v2, :cond_14

    goto/16 :goto_6

    :cond_14
    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v5, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v2, 0x6

    invoke-virtual {v5, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    iget-object v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iget v3, v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    if-eq v3, v1, :cond_15

    invoke-virtual {v2, v15}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :cond_15
    iput v1, v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    goto :goto_7

    :pswitch_7
    move-object/from16 v17, v4

    move/from16 v16, v7

    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iget-boolean v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v1, :cond_16

    :goto_5
    invoke-virtual {v5, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_7

    :cond_16
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    invoke-static {v3, v4, v6, v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    invoke-static {v4, v6, v7, v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v3

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    const/4 v7, 0x0

    invoke-static {v4, v6, v1, v7}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(II)V

    goto :goto_7

    :pswitch_8
    move-object/from16 v17, v4

    move/from16 v16, v7

    iget-object v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iget-boolean v2, v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    if-nez v2, :cond_18

    :goto_6
    invoke-virtual {v5, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_17
    :goto_7
    const/4 v1, 0x3

    move v2, v1

    goto/16 :goto_b

    :cond_18
    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    invoke-virtual {v5, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v1

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    invoke-virtual {v5, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    iget-object v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(ZZ)V

    move v2, v3

    goto :goto_b

    :pswitch_9
    move-object/from16 v17, v4

    move/from16 v16, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto :goto_b

    :pswitch_a
    move-object/from16 v17, v4

    move/from16 v16, v7

    goto :goto_b

    :pswitch_b
    move-object/from16 v17, v4

    move/from16 v16, v7

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_b

    :pswitch_c
    move-object/from16 v17, v4

    move/from16 v16, v7

    const/4 v1, 0x1

    :goto_8
    if-gt v1, v6, :cond_1c

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v3

    if-eqz v3, :cond_19

    rsub-int/lit8 v3, v1, 0x8

    aget-object v3, v9, v3

    invoke-virtual {v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :pswitch_d
    move-object/from16 v17, v4

    move/from16 v16, v7

    const/4 v1, 0x1

    :goto_9
    if-gt v1, v6, :cond_1c

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1a

    rsub-int/lit8 v3, v1, 0x8

    aget-object v3, v9, v3

    iget-boolean v4, v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :pswitch_e
    move-object/from16 v17, v4

    move/from16 v16, v7

    const/4 v1, 0x1

    :goto_a
    if-gt v1, v6, :cond_1c

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1b

    rsub-int/lit8 v3, v1, 0x8

    aget-object v3, v9, v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    :goto_b
    const/4 v1, 0x1

    goto :goto_f

    :pswitch_f
    move-object/from16 v17, v4

    move/from16 v16, v7

    const/4 v1, 0x1

    :goto_c
    if-gt v1, v6, :cond_1c

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1d

    rsub-int/lit8 v3, v1, 0x8

    aget-object v3, v9, v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :pswitch_10
    move-object/from16 v17, v4

    move/from16 v16, v7

    const/4 v1, 0x1

    move v3, v1

    :goto_d
    if-gt v3, v6, :cond_20

    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1e

    rsub-int/lit8 v4, v3, 0x8

    aget-object v4, v9, v4

    iget-object v7, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v7, -0x1

    iput v7, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    iput v7, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    iput v7, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    iput v7, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    const/4 v7, 0x0

    iput v7, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :pswitch_11
    move-object/from16 v17, v4

    move/from16 v16, v7

    const/4 v3, 0x1

    add-int/lit8 v8, v8, -0x80

    iget v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v1, v8, :cond_1f

    iput v8, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    aget-object v1, v9, v8

    :goto_e
    iput-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    :cond_1f
    move v1, v3

    :cond_20
    :goto_f
    move-object/from16 v4, v17

    goto/16 :goto_15

    :cond_21
    move/from16 v16, v7

    const/16 v3, 0xff

    const/4 v6, 0x1

    if-gt v8, v3, :cond_22

    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 v3, v8, 0xff

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    move v1, v6

    goto/16 :goto_15

    :cond_22
    const-string v3, "Invalid base command: "

    invoke-static {v3, v8, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_15

    :cond_23
    move/from16 v16, v7

    const/4 v3, 0x1

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    if-gt v7, v13, :cond_27

    const/4 v3, 0x7

    if-gt v7, v3, :cond_24

    goto/16 :goto_15

    :cond_24
    const/16 v3, 0xf

    if-gt v7, v3, :cond_25

    goto :goto_10

    :cond_25
    if-gt v7, v9, :cond_26

    move v6, v14

    goto :goto_10

    :cond_26
    if-gt v7, v13, :cond_35

    move v6, v11

    :goto_10
    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto/16 :goto_15

    :cond_27
    const/16 v6, 0xa0

    if-gt v7, v12, :cond_32

    const/16 v1, 0x20

    if-eq v7, v1, :cond_31

    const/16 v1, 0x21

    if-eq v7, v1, :cond_30

    const/16 v1, 0x25

    if-eq v7, v1, :cond_2f

    const/16 v1, 0x2a

    if-eq v7, v1, :cond_2e

    const/16 v1, 0x2c

    if-eq v7, v1, :cond_2d

    const/16 v1, 0x3f

    if-eq v7, v1, :cond_2c

    const/16 v1, 0x39

    if-eq v7, v1, :cond_2b

    const/16 v1, 0x3a

    if-eq v7, v1, :cond_2a

    const/16 v1, 0x3c

    if-eq v7, v1, :cond_29

    const/16 v1, 0x3d

    if-eq v7, v1, :cond_28

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    const-string v1, "Invalid G2 character: "

    invoke-static {v1, v7, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_12

    :pswitch_12
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2022

    goto/16 :goto_11

    :pswitch_13
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x201d

    goto/16 :goto_11

    :pswitch_14
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x201c

    goto/16 :goto_11

    :pswitch_15
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2019

    goto/16 :goto_11

    :pswitch_16
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2018

    goto/16 :goto_11

    :pswitch_17
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2588

    goto/16 :goto_11

    :pswitch_18
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x250c

    goto/16 :goto_11

    :pswitch_19
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2518

    goto :goto_11

    :pswitch_1a
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2500

    goto :goto_11

    :pswitch_1b
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2514

    goto :goto_11

    :pswitch_1c
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2510

    goto :goto_11

    :pswitch_1d
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2502

    goto :goto_11

    :pswitch_1e
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215e

    goto :goto_11

    :pswitch_1f
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215d

    goto :goto_11

    :pswitch_20
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215c

    goto :goto_11

    :pswitch_21
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x215b

    goto :goto_11

    :cond_28
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2120

    goto :goto_11

    :cond_29
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x153

    goto :goto_11

    :cond_2a
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x161

    goto :goto_11

    :cond_2b
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2122

    goto :goto_11

    :cond_2c
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x178

    goto :goto_11

    :cond_2d
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x152

    goto :goto_11

    :cond_2e
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x160

    goto :goto_11

    :cond_2f
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x2026

    goto :goto_11

    :cond_30
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    goto :goto_11

    :cond_31
    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x20

    :goto_11
    invoke-virtual {v1, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_12
    move v1, v3

    goto :goto_15

    :cond_32
    const/16 v8, 0x20

    if-gt v7, v10, :cond_36

    const/16 v3, 0x87

    if-gt v7, v3, :cond_33

    goto :goto_13

    :cond_33
    const/16 v3, 0x8f

    if-gt v7, v3, :cond_34

    const/16 v8, 0x28

    :goto_13
    const/4 v3, 0x2

    goto :goto_14

    :cond_34
    if-gt v7, v10, :cond_35

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    mul-int/lit8 v8, v6, 0x8

    :goto_14
    invoke-virtual {v5, v8}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_18

    :cond_35
    :goto_15
    const/4 v3, 0x2

    goto :goto_18

    :cond_36
    const/4 v8, 0x2

    const/16 v9, 0xff

    if-gt v7, v9, :cond_38

    if-ne v7, v6, :cond_37

    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x33c4

    goto :goto_16

    :cond_37
    const-string v1, "Invalid G3 character: "

    invoke-static {v1, v7, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v6, 0x5f

    :goto_16
    invoke-virtual {v1, v6}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    move v1, v3

    goto :goto_17

    :cond_38
    const-string v3, "Invalid extended command: "

    invoke-static {v3, v7, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    :goto_17
    move v3, v8

    :goto_18
    move/from16 v7, v16

    goto/16 :goto_1

    :cond_39
    :goto_19
    if-eqz v1, :cond_3a

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_3a
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x76
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public final flush()V
    .locals 3

    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v2, v1

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/common/ColorInfo$Builder;

    return-void
.end method

.method public final getDisplayCues()Ljava/util/List;
    .locals 17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_11

    move-object/from16 v3, p0

    iget-object v4, v3, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v5, v4, v2

    iget-boolean v6, v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v7

    :goto_2
    if-nez v5, :cond_10

    aget-object v4, v4, v2

    iget-boolean v5, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    if-eqz v5, :cond_10

    iget-boolean v5, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    iget-object v6, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    move v5, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v5, v7

    :goto_4
    if-eqz v5, :cond_4

    const/4 v4, 0x0

    goto/16 :goto_c

    :cond_4
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v5, v1

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget v5, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    const/4 v6, 0x2

    if-eqz v5, :cond_9

    if-eq v5, v7, :cond_8

    if-eq v5, v6, :cond_7

    const/4 v9, 0x3

    if-ne v5, v9, :cond_6

    goto :goto_6

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected justification value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_7

    :cond_8
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_7

    :cond_9
    :goto_6
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_7
    move-object v9, v5

    iget-boolean v5, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    if-eqz v5, :cond_a

    iget v5, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v5, v5

    const/high16 v10, 0x42c60000    # 99.0f

    div-float/2addr v5, v10

    iget v11, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v11, v11

    div-float/2addr v11, v10

    goto :goto_8

    :cond_a
    iget v5, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v5, v5

    const/high16 v10, 0x43510000    # 209.0f

    div-float/2addr v5, v10

    iget v10, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v10, v10

    const/high16 v11, 0x42940000    # 74.0f

    div-float v11, v10, v11

    :goto_8
    const v10, 0x3f666666    # 0.9f

    mul-float/2addr v5, v10

    const v12, 0x3d4ccccd    # 0.05f

    add-float v13, v5, v12

    mul-float/2addr v11, v10

    add-float v10, v11, v12

    iget v5, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    div-int/lit8 v11, v5, 0x3

    if-nez v11, :cond_b

    move v11, v1

    goto :goto_9

    :cond_b
    if-ne v11, v7, :cond_c

    move v11, v7

    goto :goto_9

    :cond_c
    move v11, v6

    :goto_9
    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_d

    move v12, v1

    goto :goto_a

    :cond_d
    if-ne v5, v7, :cond_e

    move v12, v7

    goto :goto_a

    :cond_e
    move v12, v6

    :goto_a
    iget v14, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    sget v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq v14, v5, :cond_f

    move v15, v7

    goto :goto_b

    :cond_f
    move v15, v1

    :goto_b
    new-instance v16, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget v4, v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    move-object/from16 v5, v16

    move-object v6, v8

    move-object v7, v9

    move v8, v10

    move v9, v11

    move v10, v13

    move v11, v12

    move v12, v15

    move v13, v14

    move v14, v4

    invoke-direct/range {v5 .. v14}, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;-><init>(Landroid/text/SpannableStringBuilder;Landroid/text/Layout$Alignment;FIFIZII)V

    move-object/from16 v4, v16

    :goto_c
    if-eqz v4, :cond_10

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_11
    sget-object v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->LEAST_IMPORTANT_FIRST:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget-object v3, v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Landroidx/media3/common/text/Cue;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_12
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isNewSubtitleDataAvailable()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resetCueBuilders()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
