.class public final Landroidx/media3/extractor/avi/ListChunk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/avi/AviChunk;


# instance fields
.field public final children:Lcom/google/common/collect/ImmutableList;

.field public final type:I


# direct methods
.method public constructor <init>(ILcom/google/common/collect/RegularImmutableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/avi/ListChunk;->type:I

    iput-object p2, p0, Landroidx/media3/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/ListChunk;
    .locals 19

    move-object/from16 v0, p1

    const/4 v1, 0x4

    const-string v2, "initialCapacity"

    invoke-static {v1, v2}, Lkotlin/LazyKt__LazyKt;->checkNonnegative(ILjava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, v0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    move v6, v5

    move v5, v4

    :goto_0
    iget v7, v0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v8, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v7, v8

    const/16 v8, 0x8

    if-le v7, v8, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    iget v10, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v10, v9

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    const v9, 0x5453494c

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v7, v9, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    invoke-static {v1, v0}, Landroidx/media3/extractor/avi/ListChunk;->parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/ListChunk;

    move-result-object v1

    goto/16 :goto_4

    :cond_0
    const/16 v9, 0xc

    const/4 v13, 0x0

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    new-instance v1, Landroidx/media3/extractor/avi/StreamNameChunk;

    iget v5, v0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v7, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroidx/media3/extractor/avi/StreamNameChunk;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v14

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v16

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v18

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    new-instance v1, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;-><init>(IIIII)V

    goto/16 :goto_4

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v5

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    new-instance v1, Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    invoke-direct {v1, v5, v7, v8}, Landroidx/media3/extractor/avi/AviMainHeaderChunk;-><init>(III)V

    goto/16 :goto_4

    :sswitch_3
    const-string v7, "StreamFormatChunk"

    if-ne v6, v11, :cond_2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    move-object v9, v13

    goto :goto_1

    :sswitch_4
    const-string v9, "video/mjpeg"

    goto :goto_1

    :sswitch_5
    const-string v9, "video/mp43"

    goto :goto_1

    :sswitch_6
    const-string v9, "video/mp42"

    goto :goto_1

    :sswitch_7
    const-string v9, "video/avc"

    goto :goto_1

    :sswitch_8
    const-string v9, "video/mp4v-es"

    :goto_1
    if-nez v9, :cond_1

    const-string v5, "Ignoring track with unsupported compression "

    invoke-static {v5, v1, v7}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput v5, v1, Landroidx/media3/common/Format$Builder;->width:I

    iput v8, v1, Landroidx/media3/common/Format$Builder;->height:I

    iput-object v9, v1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    new-instance v5, Landroidx/media3/extractor/avi/StreamFormatChunk;

    new-instance v7, Landroidx/media3/common/Format;

    invoke-direct {v7, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-direct {v5, v7}, Landroidx/media3/extractor/avi/StreamFormatChunk;-><init>(Landroidx/media3/common/Format;)V

    move-object v1, v5

    goto/16 :goto_4

    :cond_2
    if-ne v6, v12, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v1

    const-string v8, "audio/mp4a-latm"

    const-string v9, "audio/raw"

    if-eq v1, v12, :cond_7

    const/16 v11, 0x55

    if-eq v1, v11, :cond_6

    const/16 v11, 0xff

    if-eq v1, v11, :cond_5

    const/16 v11, 0x2000

    if-eq v1, v11, :cond_4

    const/16 v11, 0x2001

    if-eq v1, v11, :cond_3

    move-object v11, v13

    goto :goto_2

    :cond_3
    const-string v11, "audio/vnd.dts"

    goto :goto_2

    :cond_4
    const-string v11, "audio/ac3"

    goto :goto_2

    :cond_5
    move-object v11, v8

    goto :goto_2

    :cond_6
    const-string v11, "audio/mpeg"

    goto :goto_2

    :cond_7
    move-object v11, v9

    :goto_2
    if-nez v11, :cond_8

    const-string v5, "Ignoring track with unsupported format tag "

    invoke-static {v5, v1, v7}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    const/4 v13, 0x6

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    invoke-static {v13}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v14

    new-array v15, v14, [B

    invoke-virtual {v0, v5, v14, v15}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v11, v5, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v1, v5, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v7, v5, Landroidx/media3/common/Format$Builder;->sampleRate:I

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v13, :cond_9

    iput v13, v5, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    :cond_9
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-lez v14, :cond_a

    invoke-static {v15}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    iput-object v1, v5, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    :cond_a
    new-instance v1, Landroidx/media3/extractor/avi/StreamFormatChunk;

    new-instance v7, Landroidx/media3/common/Format;

    invoke-direct {v7, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-direct {v1, v7}, Landroidx/media3/extractor/avi/StreamFormatChunk;-><init>(Landroidx/media3/common/Format;)V

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring strf box for unsupported track type: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v1, v13

    :goto_4
    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroidx/media3/extractor/avi/AviChunk;->getType()I

    move-result v5

    const v7, 0x68727473

    if-ne v5, v7, :cond_f

    move-object v5, v1

    check-cast v5, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    const v6, 0x73646976

    iget v5, v5, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->streamType:I

    if-eq v5, v6, :cond_e

    const v6, 0x73647561

    if-eq v5, v6, :cond_d

    const v6, 0x73747874

    if-eq v5, v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found unsupported streamType fourCC: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AviStreamHeaderChunk"

    invoke-static {v6, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x3

    :goto_5
    move v6, v5

    goto :goto_6

    :cond_d
    move v6, v12

    goto :goto_6

    :cond_e
    const/4 v6, 0x2

    :cond_f
    :goto_6
    add-int/lit8 v5, v4, 0x1

    array-length v7, v2

    if-ge v7, v5, :cond_10

    array-length v7, v2

    invoke-static {v7, v5}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :cond_10
    aput-object v1, v2, v4

    move v4, v5

    :cond_11
    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    const/4 v1, 0x4

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_12
    new-instance v0, Landroidx/media3/extractor/avi/ListChunk;

    invoke-static {v4, v2}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    move/from16 v2, p0

    invoke-direct {v0, v2, v1}, Landroidx/media3/extractor/avi/ListChunk;-><init>(ILcom/google/common/collect/RegularImmutableList;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final getChild(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/media3/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/ImmutableList$Itr;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/avi/AviChunk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/avi/ListChunk;->type:I

    return p0
.end method
