.class public final Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "SourceFile"


# instance fields
.field public final sectionData:Landroidx/media3/common/util/ParsableByteArray;

.field public final sectionHeader:Landroidx/media3/common/ColorInfo$Builder;

.field public timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/ColorInfo$Builder;

    return-void
.end method


# virtual methods
.method public final decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v2, :cond_0

    iget-wide v3, v1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    monitor-enter v2

    :try_start_0
    iget-wide v5, v2, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v2

    throw v1

    :cond_0
    :goto_0
    new-instance v2, Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v3, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-direct {v2, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object v2, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v3, v1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v5, v1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object v4, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media3/common/ColorInfo$Builder;

    invoke-virtual {v4, v1, v2}, Landroidx/media3/common/ColorInfo$Builder;->reset([BI)V

    const/16 v1, 0x27

    invoke-virtual {v4, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    int-to-long v5, v2

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    invoke-virtual {v4, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    int-to-long v7, v7

    or-long v13, v5, v7

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    const/16 v6, 0xe

    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-eqz v4, :cond_1d

    const/16 v7, 0xff

    if-eq v4, v7, :cond_1c

    const-wide/16 v11, 0x0

    const-wide/16 v15, 0x1

    const/4 v5, 0x4

    const-wide/16 v17, 0x80

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v4, v5, :cond_10

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    const/4 v2, 0x6

    if-eq v4, v2, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_16

    :cond_2
    iget-object v0, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-static {v13, v14, v3}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(JLandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v4

    new-instance v0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    goto/16 :goto_16

    :cond_3
    iget-object v0, v0, Landroidx/media3/extractor/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v22

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_4

    move/from16 v24, v1

    goto :goto_1

    :cond_4
    const/16 v24, 0x0

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    if-nez v24, :cond_f

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v1, v5, 0x80

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v21, v5, 0x40

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    goto :goto_3

    :cond_6
    const/16 v21, 0x0

    :goto_3
    and-int/lit8 v25, v5, 0x20

    if-eqz v25, :cond_7

    const/16 v25, 0x1

    goto :goto_4

    :cond_7
    const/16 v25, 0x0

    :goto_4
    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    if-eqz v21, :cond_9

    if-nez v5, :cond_9

    invoke-static {v13, v14, v3}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(JLandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v26

    goto :goto_6

    :cond_9
    move-wide/from16 v26, v19

    :goto_6
    if-nez v21, :cond_c

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v4, :cond_b

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v35

    if-nez v5, :cond_a

    invoke-static {v13, v14, v3}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(JLandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v30

    move-wide/from16 v9, v30

    goto :goto_8

    :cond_a
    move-wide/from16 v9, v19

    :goto_8
    new-instance v8, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {v0, v9, v10}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v33

    move-object/from16 v30, v8

    move-wide/from16 v31, v9

    invoke-direct/range {v30 .. v35}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(JJI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    move-object v4, v6

    :cond_c
    if-eqz v25, :cond_e

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-long v6, v6

    and-long v8, v6, v17

    cmp-long v8, v8, v11

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    :goto_9
    and-long/2addr v6, v15

    shl-long/2addr v6, v2

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    or-long/2addr v6, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    const-wide/16 v9, 0x5a

    div-long/2addr v6, v9

    move-wide/from16 v19, v6

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    move/from16 v25, v1

    move/from16 v36, v2

    move/from16 v38, v3

    move-object/from16 v32, v4

    move/from16 v37, v6

    move/from16 v33, v8

    move-wide/from16 v34, v19

    move-wide/from16 v1, v26

    move/from16 v27, v5

    move/from16 v26, v21

    goto :goto_b

    :cond_f
    move-object/from16 v32, v4

    move-wide/from16 v1, v19

    move-wide/from16 v34, v1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    :goto_b
    new-instance v3, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    move-object/from16 v21, v3

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v30

    move-wide/from16 v28, v1

    invoke-direct/range {v21 .. v38}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    move-object v0, v3

    goto/16 :goto_16

    :cond_10
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v0, :cond_1b

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v39

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_11

    const/16 v41, 0x1

    goto :goto_d

    :cond_11
    const/16 v41, 0x0

    :goto_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v41, :cond_1a

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    goto :goto_e

    :cond_12
    const/4 v7, 0x0

    :goto_e
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    goto :goto_f

    :cond_13
    const/4 v8, 0x0

    :goto_f
    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    goto :goto_10

    :cond_14
    const/4 v6, 0x0

    :goto_10
    if-eqz v8, :cond_15

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    goto :goto_11

    :cond_15
    move-wide/from16 v9, v19

    :goto_11
    if-nez v8, :cond_17

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v5, :cond_16

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    new-instance v15, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    invoke-direct {v15, v2, v11, v12}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJ)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0x20

    const-wide/16 v11, 0x0

    const-wide/16 v15, 0x1

    goto :goto_12

    :cond_16
    move-object v5, v13

    :cond_17
    if-eqz v6, :cond_19

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-long v11, v2

    and-long v13, v11, v17

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_13

    :cond_18
    const/4 v2, 0x0

    :goto_13
    const-wide/16 v13, 0x1

    and-long/2addr v11, v13

    const/16 v6, 0x20

    shl-long/2addr v11, v6

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v21

    or-long v11, v11, v21

    const-wide/16 v21, 0x3e8

    mul-long v11, v11, v21

    const-wide/16 v23, 0x5a

    div-long v11, v11, v23

    goto :goto_14

    :cond_19
    const/16 v6, 0x20

    const-wide/16 v13, 0x1

    const-wide/16 v15, 0x0

    const-wide/16 v21, 0x3e8

    const-wide/16 v23, 0x5a

    move-wide/from16 v11, v19

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v25

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v26

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v27

    move/from16 v47, v2

    move-object/from16 v44, v5

    move/from16 v42, v7

    move/from16 v43, v8

    move-wide/from16 v45, v9

    move-wide/from16 v48, v11

    move/from16 v50, v25

    move/from16 v51, v26

    move/from16 v52, v27

    goto :goto_15

    :cond_1a
    move v6, v2

    move-wide v13, v15

    const-wide/16 v21, 0x3e8

    const-wide/16 v23, 0x5a

    move-wide v15, v11

    move-object/from16 v44, v5

    move-wide/from16 v45, v19

    move-wide/from16 v48, v45

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v47, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    :goto_15
    new-instance v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    move-object/from16 v38, v2

    invoke-direct/range {v38 .. v52}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;-><init>(JZZZLjava/util/ArrayList;JZJIII)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v2, v6

    move-wide v11, v15

    move-wide v15, v13

    goto/16 :goto_c

    :cond_1b
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/ArrayList;)V

    goto :goto_16

    :cond_1c
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    add-int/lit8 v5, v5, -0x4

    new-array v12, v5, [B

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v5, v12}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v0, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;-><init>(J[BJ)V

    goto :goto_16

    :cond_1d
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;-><init>()V

    :goto_16
    if-nez v0, :cond_1e

    new-instance v0, Landroidx/media3/common/Metadata;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v0, v1}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_17

    :cond_1e
    const/4 v1, 0x0

    new-instance v2, Landroidx/media3/common/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/media3/common/Metadata$Entry;

    aput-object v0, v3, v1

    invoke-direct {v2, v3}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    move-object v0, v2

    :goto_17
    return-object v0
.end method
