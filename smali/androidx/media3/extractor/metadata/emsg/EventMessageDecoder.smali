.class public final Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;->$r8$classId:I

    invoke-direct {p0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 16

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroidx/media3/common/Metadata;

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/media3/common/Metadata$Entry;

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v11

    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v3, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-static {v4, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    new-instance v3, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Landroidx/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object v0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v2, 0x74

    const/4 v3, 0x0

    if-ne v0, v2, :cond_7

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BI)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->getBytePosition()I

    move-result v5

    add-int/2addr v5, v4

    const/4 v4, 0x4

    sub-int/2addr v5, v4

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBytes(I)V

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->getBytePosition()I

    move-result v8

    if-ge v8, v5, :cond_5

    const/16 v8, 0x30

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v9

    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v0, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->getBytePosition()I

    move-result v11

    add-int/2addr v11, v10

    move-object v10, v3

    move-object v12, v10

    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->getBytePosition()I

    move-result v13

    if-ge v13, v11, :cond_3

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v14

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->getBytePosition()I

    move-result v15

    add-int/2addr v15, v14

    const/4 v1, 0x2

    if-ne v13, v1, :cond_1

    invoke-virtual {v0, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v13, 0x3

    if-ne v1, v13, :cond_2

    :goto_3
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->getBytePosition()I

    move-result v1

    if-ge v1, v15, :cond_2

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    sget-object v10, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    new-array v13, v1, [B

    invoke-virtual {v0, v1, v13}, Landroidx/media3/common/ColorInfo$Builder;->readBytes(I[B)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v13, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v10, :cond_0

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v14

    invoke-virtual {v0, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBytes(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_0
    move-object v10, v1

    goto :goto_3

    :cond_1
    const/16 v1, 0x15

    if-ne v13, v1, :cond_2

    sget-object v1, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    new-array v12, v14, [B

    invoke-virtual {v0, v14, v12}, Landroidx/media3/common/ColorInfo$Builder;->readBytes(I[B)V

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v12, v13

    :cond_2
    mul-int/lit8 v15, v15, 0x8

    invoke-virtual {v0, v15}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    mul-int/lit8 v11, v11, 0x8

    invoke-virtual {v0, v11}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    if-eqz v10, :cond_4

    if-eqz v12, :cond_4

    new-instance v1, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;

    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v9, v8}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    new-instance v3, Landroidx/media3/common/Metadata;

    invoke-direct {v3, v7}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :cond_7
    :goto_5
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
