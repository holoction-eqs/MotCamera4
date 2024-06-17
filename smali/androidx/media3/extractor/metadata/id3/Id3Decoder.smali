.class public final Landroidx/media3/extractor/metadata/id3/Id3Decoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "SourceFile"


# static fields
.field public static final NO_FRAMES_PREDICATE:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;


# instance fields
.field public final framePredicate:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->framePredicate:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public static decodeApicFrame(IILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/ApicFrame;
    .locals 8

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, -0x1

    add-int/2addr p0, v2

    new-array v3, p0, [B

    const/4 v4, 0x0

    invoke-virtual {p2, v4, p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    const-string p2, "image/"

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    const/4 v2, 0x3

    sget-object v6, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p2, v3, v4, v2, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {p2}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "image/jpg"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "image/jpeg"

    :cond_0
    move-object p2, p1

    move p1, v5

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p1

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v4, p1, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v6}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v2, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v4

    :goto_0
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr p1, v5

    invoke-static {p1, v0, v3}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator(II[B)I

    move-result v4

    new-instance v5, Ljava/lang/String;

    sub-int v6, v4, p1

    invoke-direct {v5, v3, p1, v6, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result p1

    add-int/2addr p1, v4

    if-gt p0, p1, :cond_3

    sget-object p0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    goto :goto_1

    :cond_3
    invoke-static {v3, p1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    :goto_1
    new-instance p1, Landroidx/media3/extractor/metadata/id3/ApicFrame;

    invoke-direct {p1, p2, v5, v2, p0}, Landroidx/media3/extractor/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p1
.end method

.method public static decodeChapterFrame(Landroidx/media3/common/util/ParsableByteArray;IIZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/ChapterFrame;
    .locals 15

    move-object v0, p0

    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    new-instance v4, Ljava/lang/String;

    iget-object v3, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    sub-int v5, v2, v1

    sget-object v6, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    const-wide v7, 0xffffffffL

    cmp-long v9, v2, v7

    const-wide/16 v10, -0x1

    if-nez v9, :cond_0

    move-wide v12, v10

    goto :goto_0

    :cond_0
    move-wide v12, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    cmp-long v7, v2, v7

    if-nez v7, :cond_1

    move-wide v9, v10

    goto :goto_1

    :cond_1
    move-wide v9, v2

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    :cond_2
    :goto_2
    iget v3, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v3, v1, :cond_3

    move/from16 v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v11, p5

    invoke-static {v3, p0, v7, v8, v11}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media3/common/util/ParsableByteArray;ZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/extractor/metadata/id3/Id3Frame;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Landroidx/media3/extractor/metadata/id3/Id3Frame;

    new-instance v0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    move-object v3, v0

    move-wide v7, v12

    invoke-direct/range {v3 .. v11}, Landroidx/media3/extractor/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Landroidx/media3/extractor/metadata/id3/Id3Frame;)V

    return-object v0
.end method

.method public static decodeChapterTOCFrame(Landroidx/media3/common/util/ParsableByteArray;IIZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    sub-int v5, v2, v1

    sget-object v6, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v5, v2, 0x2

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    new-array v8, v7, [Ljava/lang/String;

    move v9, v6

    :goto_2
    if-ge v9, v7, :cond_2

    iget v10, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget-object v11, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v11, v10}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v11

    new-instance v12, Ljava/lang/String;

    iget-object v13, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    sub-int v14, v11, v10

    sget-object v15, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v12, v13, v10, v14, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    aput-object v12, v8, v9

    add-int/2addr v11, v4

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    :cond_3
    :goto_3
    iget v7, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v7, v1, :cond_4

    move/from16 v7, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static {v7, v0, v9, v10, v11}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media3/common/util/ParsableByteArray;ZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-array v0, v6, [Landroidx/media3/extractor/metadata/id3/Id3Frame;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/extractor/metadata/id3/Id3Frame;

    new-instance v1, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;

    move-object/from16 p0, v1

    move-object/from16 p1, v3

    move/from16 p2, v5

    move/from16 p3, v2

    move-object/from16 p4, v8

    move-object/from16 p5, v0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroidx/media3/extractor/metadata/id3/Id3Frame;)V

    return-object v1
.end method

.method public static decodeCommentFrame(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/CommentFrame;
    .locals 7

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    sub-int/2addr p0, v0

    new-array v0, p0, [B

    invoke-virtual {p1, v5, p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v5, v1, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator(II[B)I

    move-result p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v3

    add-int/2addr v3, p0

    invoke-static {v3, v1, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator(II[B)I

    move-result p0

    invoke-static {v0, v3, p0, v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    invoke-direct {v0, v6, p1, p0}, Landroidx/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static decodeFrame(ILandroidx/media3/common/util/ParsableByteArray;ZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/Id3Frame;
    .locals 21

    move/from16 v0, p0

    move-object/from16 v7, p1

    const-string v8, "Failed to decode frame: id="

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    move v12, v3

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-nez p2, :cond_3

    and-int/lit16 v5, v4, 0xff

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x7

    or-int/2addr v5, v6

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0xe

    or-int/2addr v5, v6

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v4, v5

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    :cond_3
    :goto_1
    if-lt v0, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x0

    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v11, :cond_5

    if-nez v12, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    :goto_3
    iget v0, v7, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {v7, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v6

    :cond_5
    iget v13, v7, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v13, v4

    iget v14, v7, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const-string v15, "Id3Decoder"

    if-le v13, v14, :cond_6

    const-string v0, "Frame size exceeds remaining tag data"

    invoke-static {v15, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v6, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x4f

    const/16 v3, 0x43

    if-eqz p4, :cond_a

    move-object/from16 v14, p4

    check-cast v14, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    iget v14, v14, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v14, :pswitch_data_0

    if-ne v9, v3, :cond_7

    if-ne v10, v2, :cond_7

    if-ne v11, v1, :cond_7

    if-eq v12, v1, :cond_8

    if-eq v0, v6, :cond_8

    :cond_7
    if-ne v9, v1, :cond_9

    const/16 v14, 0x4c

    if-ne v10, v14, :cond_9

    if-ne v11, v14, :cond_9

    const/16 v14, 0x54

    if-eq v12, v14, :cond_8

    if-ne v0, v6, :cond_9

    :cond_8
    const/4 v14, 0x1

    goto :goto_4

    :cond_9
    :pswitch_0
    const/4 v14, 0x0

    :goto_4
    if-nez v14, :cond_a

    goto/16 :goto_14

    :cond_a
    const/4 v14, 0x3

    if-ne v0, v14, :cond_e

    and-int/lit16 v14, v5, 0x80

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    :goto_5
    and-int/lit8 v16, v5, 0x40

    if-eqz v16, :cond_c

    const/16 v16, 0x1

    goto :goto_6

    :cond_c
    const/16 v16, 0x0

    :goto_6
    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    move/from16 v18, v14

    goto :goto_c

    :cond_e
    const/4 v14, 0x4

    if-ne v0, v14, :cond_14

    and-int/lit8 v14, v5, 0x40

    if-eqz v14, :cond_f

    const/4 v14, 0x1

    goto :goto_8

    :cond_f
    const/4 v14, 0x0

    :goto_8
    and-int/lit8 v16, v5, 0x8

    if-eqz v16, :cond_10

    const/16 v16, 0x1

    goto :goto_9

    :cond_10
    const/16 v16, 0x0

    :goto_9
    and-int/lit8 v18, v5, 0x4

    if-eqz v18, :cond_11

    const/16 v18, 0x1

    goto :goto_a

    :cond_11
    const/16 v18, 0x0

    :goto_a
    and-int/lit8 v19, v5, 0x2

    const/16 v17, 0x1

    if-eqz v19, :cond_12

    const/16 v19, 0x1

    goto :goto_b

    :cond_12
    const/16 v19, 0x0

    :goto_b
    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    goto :goto_d

    :cond_13
    const/4 v5, 0x0

    goto :goto_d

    :cond_14
    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_c
    const/16 v19, 0x0

    move/from16 v20, v14

    move v14, v5

    move/from16 v5, v18

    move/from16 v18, v16

    move/from16 v16, v20

    :goto_d
    if-nez v16, :cond_2f

    if-eqz v18, :cond_15

    goto/16 :goto_13

    :cond_15
    if-eqz v14, :cond_16

    add-int/lit8 v4, v4, -0x1

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_16
    if-eqz v5, :cond_17

    add-int/lit8 v4, v4, -0x4

    const/4 v5, 0x4

    invoke-virtual {v7, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_17
    if-eqz v19, :cond_18

    invoke-static {v4, v7}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->removeUnsynchronization(ILandroidx/media3/common/util/ParsableByteArray;)I

    move-result v4

    :cond_18
    move v14, v4

    const/16 v4, 0x58

    const/16 v5, 0x54

    if-ne v9, v5, :cond_1c

    if-ne v10, v4, :cond_1b

    if-ne v11, v4, :cond_1b

    if-eq v0, v6, :cond_19

    if-ne v12, v4, :cond_1b

    :cond_19
    const/4 v1, 0x1

    if-ge v14, v1, :cond_1a

    goto :goto_e

    :cond_1a
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/lit8 v2, v14, -0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v4, v1, v3}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator(II[B)I

    move-result v2

    new-instance v5, Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v3, v4, v2, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v1, v4, v3}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeTextInformationFrameValues(II[B)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    new-instance v6, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    const-string v2, "TXXX"

    invoke-direct {v6, v2, v5, v1}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/RegularImmutableList;)V

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :cond_1b
    const/16 v5, 0x54

    :cond_1c
    if-ne v9, v5, :cond_1e

    invoke-static {v0, v9, v10, v11, v12}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ge v14, v2, :cond_1d

    goto :goto_e

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    add-int/lit8 v3, v14, -0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v2, v5, v4}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeTextInformationFrameValues(II[B)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v2

    new-instance v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/RegularImmutableList;)V

    move-object v6, v3

    goto/16 :goto_11

    :cond_1e
    const/16 v5, 0x57

    if-ne v9, v5, :cond_21

    if-ne v10, v4, :cond_21

    if-ne v11, v4, :cond_21

    if-eq v0, v6, :cond_1f

    if-ne v12, v4, :cond_21

    :cond_1f
    const/4 v1, 0x1

    if-ge v14, v1, :cond_20

    :goto_e
    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/lit8 v2, v14, -0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v4, v1, v3}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator(II[B)I

    move-result v2

    new-instance v5, Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v3, v4, v2, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    sget-object v4, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v3, v1, v2, v4}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;

    const-string v2, "WXXX"

    invoke-direct {v6, v2, v5, v1}, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_21
    if-ne v9, v5, :cond_22

    invoke-static {v0, v9, v10, v11, v12}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [B

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v14, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v2, v3}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v4

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance v2, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    goto/16 :goto_11

    :cond_22
    const/16 v4, 0x49

    const/16 v5, 0x50

    if-ne v9, v5, :cond_24

    const/16 v1, 0x52

    if-ne v10, v1, :cond_24

    if-ne v11, v4, :cond_24

    const/16 v1, 0x56

    if-ne v12, v1, :cond_24

    new-array v1, v14, [B

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v14, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v1, v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/4 v2, 0x1

    add-int/2addr v3, v2

    if-gt v14, v3, :cond_23

    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    goto :goto_f

    :cond_23
    invoke-static {v1, v3, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    :goto_f
    new-instance v6, Landroidx/media3/extractor/metadata/id3/PrivFrame;

    invoke-direct {v6, v4, v1}, Landroidx/media3/extractor/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    goto/16 :goto_11

    :cond_24
    const/16 v1, 0x47

    if-ne v9, v1, :cond_26

    const/16 v1, 0x45

    if-ne v10, v1, :cond_26

    if-ne v11, v2, :cond_26

    const/16 v1, 0x42

    if-eq v12, v1, :cond_25

    if-ne v0, v6, :cond_26

    :cond_25
    invoke-static {v14, v7}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeGeobFrame(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/GeobFrame;

    move-result-object v6

    goto/16 :goto_11

    :cond_26
    const/16 v1, 0x41

    if-ne v0, v6, :cond_27

    if-ne v9, v5, :cond_28

    if-ne v10, v4, :cond_28

    if-ne v11, v3, :cond_28

    goto :goto_10

    :cond_27
    if-ne v9, v1, :cond_28

    if-ne v10, v5, :cond_28

    if-ne v11, v4, :cond_28

    if-ne v12, v3, :cond_28

    :goto_10
    invoke-static {v14, v0, v7}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeApicFrame(IILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/ApicFrame;

    move-result-object v6

    goto/16 :goto_11

    :cond_28
    if-ne v9, v3, :cond_2a

    if-ne v10, v2, :cond_2a

    const/16 v4, 0x4d

    if-ne v11, v4, :cond_2a

    if-eq v12, v4, :cond_29

    if-ne v0, v6, :cond_2a

    :cond_29
    invoke-static {v14, v7}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeCommentFrame(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/CommentFrame;

    move-result-object v6

    goto :goto_11

    :cond_2a
    if-ne v9, v3, :cond_2b

    const/16 v4, 0x48

    if-ne v10, v4, :cond_2b

    if-ne v11, v1, :cond_2b

    if-ne v12, v5, :cond_2b

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeChapterFrame(Landroidx/media3/common/util/ParsableByteArray;IIZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    move-result-object v6

    goto :goto_11

    :cond_2b
    if-ne v9, v3, :cond_2c

    const/16 v1, 0x54

    if-ne v10, v1, :cond_2c

    if-ne v11, v2, :cond_2c

    if-ne v12, v3, :cond_2c

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Landroidx/media3/common/util/ParsableByteArray;IIZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;

    move-result-object v6

    goto :goto_11

    :cond_2c
    const/16 v1, 0x4d

    if-ne v9, v1, :cond_2d

    const/16 v1, 0x4c

    if-ne v10, v1, :cond_2d

    if-ne v11, v1, :cond_2d

    const/16 v1, 0x54

    if-ne v12, v1, :cond_2d

    invoke-static {v14, v7}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeMlltFrame(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/MlltFrame;

    move-result-object v6

    goto :goto_11

    :cond_2d
    invoke-static {v0, v9, v10, v11, v12}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [B

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v14, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v6, Landroidx/media3/extractor/metadata/id3/BinaryFrame;

    invoke-direct {v6, v1, v2}, Landroidx/media3/extractor/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    :goto_11
    if-nez v6, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9, v10, v11, v12}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2e
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v6

    :goto_12
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    throw v0

    :cond_2f
    :goto_13
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v15, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public static decodeGeobFrame(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/GeobFrame;
    .locals 6

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v1

    add-int/lit8 p0, p0, -0x1

    new-array v2, p0, [B

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v2, v3}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p1

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v3, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1, v0, v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator(II[B)I

    move-result v3

    invoke-static {v2, p1, v3, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5, v0, v2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator(II[B)I

    move-result v3

    invoke-static {v2, v5, v3, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v0

    add-int/2addr v0, v3

    if-gt p0, v0, :cond_0

    sget-object p0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    invoke-static {v2, v0, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    :goto_0
    new-instance v0, Landroidx/media3/extractor/metadata/id3/GeobFrame;

    invoke-direct {v0, v4, p1, v1, p0}, Landroidx/media3/extractor/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static decodeMlltFrame(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/MlltFrame;
    .locals 10

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    new-instance v5, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;-><init>(Ljava/lang/Object;)V

    iget-object v6, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v7, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {v5, v6, v7}, Landroidx/media3/common/ColorInfo$Builder;->reset([BI)V

    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v5, p1}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    add-int/lit8 p0, p0, -0xa

    mul-int/lit8 p0, p0, 0x8

    add-int p1, v0, v4

    div-int/2addr p0, p1

    new-array p1, p0, [I

    new-array v6, p0, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p0, :cond_0

    invoke-virtual {v5, v0}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v8

    invoke-virtual {v5, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v9

    aput v8, p1, v7

    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/metadata/id3/MlltFrame;-><init>(III[I[I)V

    return-object p0
.end method

.method public static decodeStringIfValid([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-le p2, p1, :cond_1

    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static decodeTextInformationFrameValues(II[B)Lcom/google/common/collect/RegularImmutableList;
    .locals 8

    array-length v0, p2

    const-string v1, ""

    if-lt p1, v0, :cond_0

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    const/4 v0, 0x4

    const-string v2, "initialCapacity"

    invoke-static {v0, v2}, Lkotlin/LazyKt__LazyKt;->checkNonnegative(ILjava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator(II[B)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge p1, v2, :cond_2

    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, p1

    invoke-static {p0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->getCharset(I)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, p2, p1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 p1, v3, 0x1

    array-length v5, v0

    if-ge v5, p1, :cond_1

    array-length v5, v0

    invoke-static {v5, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_1
    aput-object v4, v0, v3

    invoke-static {p0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p0, p2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfTerminator(II[B)I

    move-result v3

    move v7, v3

    move v3, p1

    move p1, v2

    move v2, v7

    goto :goto_0

    :cond_2
    invoke-static {v3, v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static delimiterLength(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getCharset(I)Ljava/nio/charset/Charset;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static getFrameId(IIIII)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%c%c%c"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%c%c%c%c"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static indexOfTerminator(II[B)I
    .locals 2

    invoke-static {p2, p0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_2

    sub-int p1, v0, p0

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    aget-byte p1, p2, p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    goto :goto_0

    :cond_2
    array-length p0, p2

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static indexOfZeroByte([BI)I
    .locals 1

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p0

    return p0
.end method

.method public static removeUnsynchronization(ILandroidx/media3/common/util/ParsableByteArray;)I
    .locals 5

    iget-object v0, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move v1, p1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int v3, p1, p0

    if-ge v2, v3, :cond_1

    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    sub-int v3, v1, p1

    add-int/lit8 v1, v1, 0x2

    sub-int v3, p0, v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, p0, -0x1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static validateFrames(Landroidx/media3/common/util/ParsableByteArray;IIZ)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_0
    :try_start_0
    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v4, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_c

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    move v10, v6

    :goto_1
    const-wide/16 v11, 0x0

    if-nez v7, :cond_1

    cmp-long v7, v8, v11

    if-nez v7, :cond_1

    if-nez v10, :cond_1

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v4

    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    if-nez p3, :cond_3

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v11, v13, v11

    if-eqz v11, :cond_2

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v6

    :cond_2
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0xe

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x18

    shr-long/2addr v8, v15

    and-long/2addr v8, v11

    const/16 v11, 0x15

    shl-long/2addr v8, v11

    or-long/2addr v8, v13

    :cond_3
    if-ne v0, v7, :cond_5

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_5
    if-ne v0, v3, :cond_8

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_3

    :cond_6
    move v3, v6

    :goto_3
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    move v4, v6

    goto :goto_4

    :cond_8
    move v3, v6

    move v4, v3

    :goto_4
    if-eqz v4, :cond_9

    add-int/lit8 v3, v3, 0x4

    :cond_9
    int-to-long v3, v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_a

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v6

    :cond_a
    :try_start_1
    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v4, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, v3, v8

    if-gez v3, :cond_b

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v6

    :cond_b
    long-to-int v3, v8

    :try_start_2
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    throw v0
.end method


# virtual methods
.method public final decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decode([BI)Landroidx/media3/common/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public final decode([BI)Landroidx/media3/common/Metadata;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1, p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    .line 2
    iget p1, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    .line 3
    iget p2, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p1, p2

    const/4 p2, 0x2

    const-string v2, "Id3Decoder"

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge p1, v3, :cond_0

    const-string p1, "Data too short to be an ID3 tag"

    goto/16 :goto_7

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p1

    const v8, 0x494433

    if-eq p1, v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unexpected first three bytes of ID3 tag header: 0x"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v9, "%06X"

    invoke-static {v9, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v9

    if-ne p1, p2, :cond_3

    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_2

    move v10, v6

    goto :goto_0

    :cond_2
    move v10, v4

    :goto_0
    if-eqz v10, :cond_9

    const-string p1, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    goto :goto_7

    :cond_3
    const/4 v10, 0x3

    if-ne p1, v10, :cond_5

    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_4

    move v10, v6

    goto :goto_1

    :cond_4
    move v10, v4

    :goto_1
    if-eqz v10, :cond_9

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/2addr v10, v5

    sub-int/2addr v9, v10

    goto :goto_4

    :cond_5
    if-ne p1, v5, :cond_b

    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_6

    move v10, v6

    goto :goto_2

    :cond_6
    move v10, v4

    :goto_2
    if-eqz v10, :cond_7

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v10

    add-int/lit8 v11, v10, -0x4

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v9, v10

    :cond_7
    and-int/lit8 v10, v8, 0x10

    if-eqz v10, :cond_8

    move v10, v6

    goto :goto_3

    :cond_8
    move v10, v4

    :goto_3
    if-eqz v10, :cond_9

    add-int/lit8 v9, v9, -0xa

    :cond_9
    :goto_4
    if-ge p1, v5, :cond_a

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_a

    move v8, v6

    goto :goto_5

    :cond_a
    move v8, v4

    :goto_5
    new-instance v10, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {v10, p1, v9, v8}, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;-><init>(IIZ)V

    goto :goto_8

    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipped ID3 tag with unsupported majorVersion="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-static {v2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v7

    :goto_8
    if-nez v10, :cond_c

    return-object v7

    .line 5
    :cond_c
    iget p1, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    .line 6
    iget v8, v10, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I

    if-ne v8, p2, :cond_d

    const/4 v3, 0x6

    :cond_d
    iget p2, v10, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->framesSize:I

    iget-boolean v9, v10, Landroidx/media3/extractor/metadata/id3/Id3Decoder$Id3Header;->isUnsynchronized:Z

    if-eqz v9, :cond_e

    invoke-static {p2, v1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->removeUnsynchronization(ILandroidx/media3/common/util/ParsableByteArray;)I

    move-result p2

    :cond_e
    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    invoke-static {v1, v8, v3, v4}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->validateFrames(Landroidx/media3/common/util/ParsableByteArray;IIZ)Z

    move-result p1

    if-nez p1, :cond_10

    if-ne v8, v5, :cond_f

    invoke-static {v1, v5, v3, v6}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->validateFrames(Landroidx/media3/common/util/ParsableByteArray;IIZ)Z

    move-result p1

    if-eqz p1, :cond_f

    move v4, v6

    goto :goto_9

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to validate ID3 tag with majorVersion="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 7
    :cond_10
    :goto_9
    iget p1, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget p2, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p1, p2

    if-lt p1, v3, :cond_11

    .line 8
    iget-object p1, p0, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->framePredicate:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    invoke-static {v8, v1, v4, v3, p1}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->decodeFrame(ILandroidx/media3/common/util/ParsableByteArray;ZILandroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    new-instance p0, Landroidx/media3/common/Metadata;

    invoke-direct {p0, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    return-object p0
.end method
