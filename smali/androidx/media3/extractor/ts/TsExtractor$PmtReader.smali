.class public final Landroidx/media3/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;


# instance fields
.field public final pid:I

.field public final pmtScratch:Landroidx/media3/common/ColorInfo$Builder;

.field public final synthetic this$0:Landroidx/media3/extractor/ts/TsExtractor;

.field public final trackIdToPidScratch:Landroid/util/SparseIntArray;

.field public final trackIdToReaderScratch:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;I)V
    .locals 3

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/ColorInfo$Builder;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    iput p2, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pid:I

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->this$0:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_1

    return-void

    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Landroidx/media3/common/ColorInfo$Builder;

    iget-object v10, v9, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-virtual {v1, v5, v3, v10}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v9, v5}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    invoke-virtual {v9, v8}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    iput v11, v2, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    iget-object v11, v9, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-virtual {v1, v5, v3, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v9, v5}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v12, 0xc

    invoke-virtual {v9, v12}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget-object v13, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToReaderScratch:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    iget-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->trackIdToPidScratch:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->clear()V

    iget v15, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v6, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v15, v6

    :goto_0
    iget-object v6, v2, Landroidx/media3/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    if-lez v15, :cond_25

    iget-object v3, v9, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    const/4 v12, 0x5

    invoke-virtual {v1, v5, v12, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v9, v5}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    invoke-virtual {v9, v8}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v9, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    invoke-virtual {v9, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v16

    iget v10, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int v11, v16, v10

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v20, v17

    move-object/from16 v21, v20

    move/from16 v19, v18

    :goto_1
    iget v8, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v8, v11, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v24

    iget v12, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int v12, v12, v24

    if-le v12, v11, :cond_2

    goto/16 :goto_9

    :cond_2
    move-object/from16 v24, v9

    const/4 v9, 0x5

    if-ne v8, v9, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/32 v25, 0x41432d33

    cmp-long v23, v8, v25

    if-nez v23, :cond_3

    goto :goto_2

    :cond_3
    const-wide/32 v25, 0x45414333

    cmp-long v23, v8, v25

    if-nez v23, :cond_4

    goto :goto_3

    :cond_4
    const-wide/32 v22, 0x41432d34

    cmp-long v22, v8, v22

    if-nez v22, :cond_5

    goto :goto_4

    :cond_5
    const-wide/32 v22, 0x48455643

    cmp-long v8, v8, v22

    if-nez v8, :cond_a

    const/16 v19, 0x24

    goto :goto_5

    :cond_6
    const/16 v9, 0x6a

    if-ne v8, v9, :cond_7

    :goto_2
    const/16 v8, 0x81

    move/from16 v19, v8

    goto :goto_5

    :cond_7
    const/16 v9, 0x7a

    if-ne v8, v9, :cond_8

    :goto_3
    const/16 v19, 0x87

    goto :goto_5

    :cond_8
    const/16 v9, 0x7f

    if-ne v8, v9, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    const/16 v9, 0x15

    if-ne v8, v9, :cond_a

    :goto_4
    const/16 v19, 0xac

    goto :goto_5

    :cond_9
    const/16 v9, 0x7b

    if-ne v8, v9, :cond_b

    const/16 v19, 0x8a

    :cond_a
    :goto_5
    const/4 v9, 0x3

    goto :goto_6

    :cond_b
    const/16 v9, 0xa

    if-ne v8, v9, :cond_c

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    :goto_6
    move-object/from16 v26, v4

    move/from16 v27, v7

    goto :goto_8

    :cond_c
    const/16 v9, 0x59

    if-ne v8, v9, :cond_e

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    iget v9, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v9, v12, :cond_d

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-object/from16 v26, v4

    const/4 v0, 0x4

    new-array v4, v0, [B

    move/from16 v27, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v0, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-direct {v0, v9, v4}, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v4, v26

    move/from16 v7, v27

    goto :goto_7

    :cond_d
    move-object/from16 v26, v4

    move/from16 v27, v7

    move-object/from16 v21, v8

    const/16 v19, 0x59

    goto :goto_8

    :cond_e
    move-object/from16 v26, v4

    move/from16 v27, v7

    const/16 v0, 0x6f

    if-ne v8, v0, :cond_f

    const/16 v19, 0x101

    :cond_f
    :goto_8
    iget v0, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v12, v0

    invoke-virtual {v1, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move-object/from16 v0, p0

    move-object/from16 v9, v24

    move-object/from16 v4, v26

    move/from16 v7, v27

    const/4 v12, 0x5

    goto/16 :goto_1

    :cond_10
    :goto_9
    move-object/from16 v26, v4

    move/from16 v27, v7

    move-object/from16 v24, v9

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v0, Landroidx/media3/common/util/NetworkTypeObserver;

    iget-object v4, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v4, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-direct {v0, v9, v7, v8, v4}, Landroidx/media3/common/util/NetworkTypeObserver;-><init>(ILjava/lang/String;Ljava/util/ArrayList;[B)V

    const/4 v4, 0x6

    if-eq v5, v4, :cond_11

    const/4 v4, 0x5

    if-ne v5, v4, :cond_12

    :cond_11
    iget v5, v0, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    :cond_12
    add-int/lit8 v16, v16, 0x5

    sub-int v15, v15, v16

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    goto/16 :goto_13

    :cond_13
    iget-object v4, v2, Landroidx/media3/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    const/4 v6, 0x2

    if-eq v5, v6, :cond_24

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x3

    if-eq v5, v8, :cond_23

    const/4 v6, 0x4

    if-eq v5, v6, :cond_22

    const/16 v6, 0x15

    if-eq v5, v6, :cond_21

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_1f

    const/16 v6, 0x24

    if-eq v5, v6, :cond_1e

    const/16 v6, 0x59

    if-eq v5, v6, :cond_1d

    const/16 v6, 0x8a

    if-eq v5, v6, :cond_1b

    const/16 v6, 0xac

    if-eq v5, v6, :cond_1a

    const/16 v6, 0x101

    if-eq v5, v6, :cond_19

    const/16 v6, 0x86

    if-eq v5, v6, :cond_17

    const/16 v6, 0x87

    if-eq v5, v6, :cond_16

    packed-switch v5, :pswitch_data_0

    const/4 v9, 0x2

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_d

    :pswitch_0
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v4, Landroidx/media3/extractor/ts/LatmReader;

    invoke-direct {v4, v7}, Landroidx/media3/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    move-object/from16 v17, v0

    :goto_a
    move-object/from16 v0, v17

    goto :goto_b

    :pswitch_1
    new-instance v5, Landroidx/media3/extractor/ts/PesReader;

    new-instance v6, Landroidx/media3/extractor/ts/H263Reader;

    new-instance v7, Landroidx/media3/extractor/ts/UserDataReader;

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media3/common/util/NetworkTypeObserver;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/media3/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    invoke-direct {v6, v7}, Landroidx/media3/extractor/ts/H263Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    invoke-direct {v5, v6}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    move-object v0, v5

    :goto_b
    const/4 v5, 0x4

    const/4 v9, 0x2

    goto/16 :goto_12

    :pswitch_2
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_d

    :cond_15
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v4, Landroidx/media3/extractor/ts/AdtsReader;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v7}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_c

    :pswitch_3
    const/16 v0, 0x40

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_d

    :pswitch_4
    const/4 v5, 0x4

    goto/16 :goto_11

    :cond_16
    const/4 v9, 0x2

    :pswitch_5
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v4, Landroidx/media3/extractor/ts/Ac3Reader;

    invoke-direct {v4, v7}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_e

    :cond_17
    const/4 v9, 0x2

    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_d

    :cond_18
    new-instance v0, Landroidx/media3/extractor/ts/SectionReader;

    new-instance v4, Landroidx/core/view/MenuHostHelper;

    const-string v5, "application/x-scte35"

    invoke-direct {v4, v5}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    :goto_c
    move-object/from16 v17, v0

    :goto_d
    move-object/from16 v0, v17

    goto :goto_e

    :cond_19
    const/4 v9, 0x2

    new-instance v0, Landroidx/media3/extractor/ts/SectionReader;

    new-instance v4, Landroidx/core/view/MenuHostHelper;

    const-string v5, "application/vnd.dvb.ait"

    invoke-direct {v4, v5}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    goto :goto_e

    :cond_1a
    const/4 v9, 0x2

    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v4, Landroidx/media3/extractor/ts/Ac4Reader;

    invoke-direct {v4, v7}, Landroidx/media3/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_e

    :cond_1b
    const/4 v9, 0x2

    :cond_1c
    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v4, Landroidx/media3/extractor/ts/DtsReader;

    invoke-direct {v4, v7}, Landroidx/media3/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_e

    :cond_1d
    const/4 v9, 0x2

    new-instance v4, Landroidx/media3/extractor/ts/PesReader;

    new-instance v5, Landroidx/media3/extractor/ts/Id3Reader;

    iget-object v0, v0, Landroidx/media3/common/util/NetworkTypeObserver;->listeners:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {v5, v0}, Landroidx/media3/extractor/ts/Id3Reader;-><init>(Ljava/util/List;)V

    invoke-direct {v4, v5}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    move-object v0, v4

    goto :goto_e

    :cond_1e
    const/4 v9, 0x2

    new-instance v5, Landroidx/media3/extractor/ts/PesReader;

    new-instance v6, Landroidx/media3/extractor/ts/H265Reader;

    new-instance v7, Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media3/common/util/NetworkTypeObserver;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/airbnb/lottie/model/MutablePair;-><init>(Ljava/util/List;)V

    invoke-direct {v6, v7}, Landroidx/media3/extractor/ts/H265Reader;-><init>(Lcom/airbnb/lottie/model/MutablePair;)V

    invoke-direct {v5, v6}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    move-object v0, v5

    :goto_e
    const/4 v5, 0x4

    goto :goto_12

    :cond_1f
    const/4 v5, 0x4

    const/4 v9, 0x2

    invoke-virtual {v4, v5}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_f

    :cond_20
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    new-instance v7, Landroidx/media3/extractor/ts/H264Reader;

    new-instance v10, Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media3/common/util/NetworkTypeObserver;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/airbnb/lottie/model/MutablePair;-><init>(Ljava/util/List;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v11

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    invoke-direct {v7, v10, v11, v0}, Landroidx/media3/extractor/ts/H264Reader;-><init>(Lcom/airbnb/lottie/model/MutablePair;ZZ)V

    invoke-direct {v6, v7}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    move-object/from16 v17, v6

    :goto_f
    move-object/from16 v0, v17

    goto :goto_12

    :cond_21
    const/4 v5, 0x4

    const/4 v9, 0x2

    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v4, Landroidx/media3/extractor/ts/Id3Reader;

    invoke-direct {v4}, Landroidx/media3/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_12

    :cond_22
    move v5, v6

    goto :goto_10

    :cond_23
    const/4 v5, 0x4

    :goto_10
    const/4 v9, 0x2

    new-instance v0, Landroidx/media3/extractor/ts/PesReader;

    new-instance v4, Landroidx/media3/extractor/ts/MpegAudioReader;

    invoke-direct {v4, v7}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    goto :goto_12

    :cond_24
    move v9, v6

    const/4 v5, 0x4

    const/4 v8, 0x3

    :goto_11
    new-instance v6, Landroidx/media3/extractor/ts/PesReader;

    new-instance v7, Landroidx/media3/extractor/ts/H262Reader;

    new-instance v10, Landroidx/media3/extractor/ts/UserDataReader;

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media3/common/util/NetworkTypeObserver;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Landroidx/media3/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    invoke-direct {v7, v10}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    invoke-direct {v6, v7}, Landroidx/media3/extractor/ts/PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V

    move-object v0, v6

    :goto_12
    invoke-virtual {v14, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v13, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_13
    move-object/from16 v0, p0

    move v11, v5

    move v3, v9

    move-object/from16 v9, v24

    move-object/from16 v4, v26

    move/from16 v7, v27

    const/4 v5, 0x0

    const/16 v10, 0xd

    const/16 v12, 0xc

    goto/16 :goto_0

    :cond_25
    move-object/from16 v26, v4

    move/from16 v27, v7

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_14
    iget-object v1, v2, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    if-ge v7, v0, :cond_28

    invoke-virtual {v14, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v14, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v8, v2, Landroidx/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/ts/TsPayloadReader;

    if-eqz v5, :cond_27

    iget-object v8, v2, Landroidx/media3/extractor/ts/TsExtractor;->id3Reader:Landroidx/media3/extractor/ts/TsPayloadReader;

    if-eq v5, v8, :cond_26

    iget-object v8, v2, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v9, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;

    const/16 v10, 0x2000

    move/from16 v11, v27

    invoke-direct {v9, v11, v3, v10}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;-><init>(III)V

    move-object/from16 v3, v26

    invoke-interface {v5, v3, v8, v9}, Landroidx/media3/extractor/ts/TsPayloadReader;->init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V

    goto :goto_15

    :cond_26
    move-object/from16 v3, v26

    move/from16 v11, v27

    :goto_15
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_16

    :cond_27
    move-object/from16 v3, v26

    move/from16 v11, v27

    :goto_16
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v26, v3

    move/from16 v27, v11

    goto :goto_14

    :cond_28
    move-object/from16 v4, p0

    iget v0, v4, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->pid:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    const/4 v0, 0x0

    iput v0, v2, Landroidx/media3/extractor/ts/TsExtractor;->remainingPmts:I

    iget-object v0, v2, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public final init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 0

    return-void
.end method
