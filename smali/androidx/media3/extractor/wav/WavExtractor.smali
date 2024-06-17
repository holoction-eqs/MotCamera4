.class public final Landroidx/media3/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public dataEndPosition:J

.field public dataStartPosition:I

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

.field public rf64SampleDataSize:J

.field public state:I

.field public trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    iput-wide v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_12

    const/16 v7, 0x8

    const/4 v8, 0x2

    const-wide/16 v9, -0x1

    if-eq v2, v5, :cond_10

    const/4 v11, 0x3

    if-eq v2, v8, :cond_6

    if-eq v2, v11, :cond_3

    if-ne v2, v4, :cond_2

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-wide v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v4, v7

    iget-object v0, v0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1, v4, v5}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->sampleData(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    return v3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    const v3, 0x64617461

    invoke-static {v3, v1, v2}, Landroidx/room/util/DBUtil;->skipToChunk(ILandroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v2

    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v7, v2, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    cmp-long v5, v7, v9

    if-eqz v5, :cond_4

    const-wide v11, 0xffffffffL

    cmp-long v5, v2, v11

    if-nez v5, :cond_4

    move-wide v2, v7

    :cond_4
    iget v5, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    int-to-long v7, v5

    add-long/2addr v7, v2

    iput-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-eqz v3, :cond_5

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    cmp-long v3, v7, v1

    if-lez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Data exceeds input length: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WavExtractor"

    invoke-static {v5, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    :cond_5
    iget-object v1, v0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-wide v7, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {v1, v2, v7, v8}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->init(IJ)V

    iput v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    return v6

    :cond_6
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    const v7, 0x666d7420

    invoke-static {v7, v1, v2}, Landroidx/room/util/DBUtil;->skipToChunk(ILandroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v7

    iget-wide v8, v7, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    const-wide/16 v12, 0x10

    cmp-long v8, v8, v12

    if-ltz v8, :cond_7

    move v8, v5

    goto :goto_2

    :cond_7
    move v8, v6

    :goto_2
    invoke-static {v8}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v8, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v3, v8}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v13

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v14

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v15

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v16

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v17

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v18

    iget-wide v7, v7, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-int v2, v7

    sub-int/2addr v2, v3

    if-lez v2, :cond_8

    new-array v3, v2, [B

    invoke-interface {v1, v6, v2, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    move-object/from16 v19, v3

    goto :goto_3

    :cond_8
    sget-object v2, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object/from16 v19, v2

    :goto_3
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v2, v2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    new-instance v1, Landroidx/media3/extractor/wav/WavFormat;

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Landroidx/media3/extractor/wav/WavFormat;-><init>(IIIIII[B)V

    iget v2, v1, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_9

    new-instance v2, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    iget-object v3, v0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-direct {v2, v3, v4, v1}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;)V

    goto/16 :goto_7

    :cond_9
    const/4 v3, 0x6

    if-ne v2, v3, :cond_a

    new-instance v2, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v3, v0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const-string v24, "audio/g711-alaw"

    const/16 v25, -0x1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v1

    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    goto :goto_7

    :cond_a
    const/4 v3, 0x7

    if-ne v2, v3, :cond_b

    new-instance v2, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v3, v0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const-string v24, "audio/g711-mlaw"

    const/16 v25, -0x1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v1

    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    goto :goto_7

    :cond_b
    iget v3, v1, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    if-eq v2, v5, :cond_e

    if-eq v2, v11, :cond_c

    const v4, 0xfffe

    if-eq v2, v4, :cond_e

    goto :goto_4

    :cond_c
    const/16 v2, 0x20

    if-ne v3, v2, :cond_d

    goto :goto_5

    :cond_d
    :goto_4
    move/from16 v25, v6

    goto :goto_6

    :cond_e
    invoke-static {v3}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v4

    :goto_5
    move/from16 v25, v4

    :goto_6
    if-eqz v25, :cond_f

    new-instance v2, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v3, v0, Landroidx/media3/extractor/wav/WavExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const-string v24, "audio/raw"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v1

    invoke-direct/range {v20 .. v25}, Landroidx/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    :goto_7
    iput-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    iput v11, v0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    return v6

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported WAV format type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_10
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    invoke-static {v1, v2}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->peek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v3

    iget v4, v3, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    const v5, 0x64733634

    if-eq v4, v5, :cond_11

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_8

    :cond_11
    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v7, v4}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v9

    iget-wide v2, v3, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    long-to-int v2, v2

    add-int/2addr v2, v7

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :goto_8
    iput-wide v9, v0, Landroidx/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    iput v8, v0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    return v6

    :cond_12
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_13

    move v2, v5

    goto :goto_9

    :cond_13
    move v2, v6

    :goto_9
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget v2, v0, Landroidx/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    if-eq v2, v3, :cond_14

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput v4, v0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    goto :goto_a

    :cond_14
    invoke-static/range {p1 .. p1}, Landroidx/room/util/DBUtil;->checkFileType(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v2, v2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput v5, v0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    :goto_a
    return v6

    :cond_15
    const-string v0, "Unsupported or unrecognized wav file type."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor;->state:I

    iget-object p0, p0, Landroidx/media3/extractor/wav/WavExtractor;->outputWriter:Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;

    if-eqz p0, :cond_1

    invoke-interface {p0, p3, p4}, Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;->reset(J)V

    :cond_1
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    invoke-static {p1}, Landroidx/room/util/DBUtil;->checkFileType(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
