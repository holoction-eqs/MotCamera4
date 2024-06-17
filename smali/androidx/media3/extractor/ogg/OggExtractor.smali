.class public final Landroidx/media3/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public output:Landroidx/media3/extractor/ExtractorOutput;

.field public streamReader:Landroidx/media3/extractor/ogg/StreamReader;

.field public streamReaderInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/ogg/OggExtractor;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    :cond_0
    const-string v0, "Failed to determine bitstream type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-boolean v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    iget-object v5, v0, Landroidx/media3/extractor/ogg/OggExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v5}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-object v5, v0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    iget-object v6, v0, Landroidx/media3/extractor/ogg/OggExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    iput-object v6, v5, Landroidx/media3/extractor/ogg/StreamReader;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iput-object v2, v5, Landroidx/media3/extractor/ogg/StreamReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v5, v4}, Landroidx/media3/extractor/ogg/StreamReader;->reset(Z)V

    iput-boolean v4, v0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    :cond_2
    iget-object v0, v0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    iget-object v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->state:I

    const/4 v5, 0x3

    const-wide/16 v6, -0x1

    iget-object v8, v0, Landroidx/media3/extractor/ogg/StreamReader;->oggPacket:Landroidx/media3/extractor/ogg/OggPacket;

    const/4 v15, 0x2

    if-eqz v2, :cond_c

    if-eq v2, v4, :cond_b

    if-eq v2, v15, :cond_4

    if-ne v2, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    iget-object v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media3/extractor/ogg/OggSeeker;

    invoke-interface {v2, v1}, Landroidx/media3/extractor/ogg/OggSeeker;->read(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-ltz v2, :cond_5

    move-object/from16 v2, p2

    iput-wide v9, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    move v3, v4

    goto/16 :goto_9

    :cond_5
    cmp-long v2, v9, v6

    if-gez v2, :cond_6

    const-wide/16 v13, 0x2

    add-long/2addr v9, v13

    neg-long v9, v9

    invoke-virtual {v0, v9, v10}, Landroidx/media3/extractor/ogg/StreamReader;->onSeekEnd(J)V

    :cond_6
    iget-boolean v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v2, :cond_7

    iget-object v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media3/extractor/ogg/OggSeeker;

    invoke-interface {v2}, Landroidx/media3/extractor/ogg/OggSeeker;->createSeekMap()Landroidx/media3/extractor/SeekMap;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v9, v0, Landroidx/media3/extractor/ogg/StreamReader;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v9, v2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v4, v0, Landroidx/media3/extractor/ogg/StreamReader;->seekMapSet:Z

    :cond_7
    iget-wide v9, v0, Landroidx/media3/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    cmp-long v2, v9, v11

    if-gtz v2, :cond_9

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/ogg/OggPacket;->populate(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    iput v5, v0, Landroidx/media3/extractor/ogg/StreamReader;->state:I

    goto/16 :goto_4

    :cond_9
    :goto_1
    iput-wide v11, v0, Landroidx/media3/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    iget-object v1, v8, Landroidx/media3/extractor/ogg/OggPacket;->packetArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ogg/StreamReader;->preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v4

    cmp-long v2, v4, v11

    if-ltz v2, :cond_a

    iget-wide v8, v0, Landroidx/media3/extractor/ogg/StreamReader;->currentGranule:J

    add-long v10, v8, v4

    iget-wide v12, v0, Landroidx/media3/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v2, v10, v12

    if-ltz v2, :cond_a

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    iget v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v10, v2

    div-long v13, v8, v10

    iget-object v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v8, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-interface {v2, v8, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v12, v0, Landroidx/media3/extractor/ogg/StreamReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const/4 v15, 0x1

    iget v1, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    invoke-interface/range {v12 .. v18}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput-wide v6, v0, Landroidx/media3/extractor/ogg/StreamReader;->targetGranule:J

    :cond_a
    iget-wide v1, v0, Landroidx/media3/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroidx/media3/extractor/ogg/StreamReader;->currentGranule:J

    goto/16 :goto_9

    :cond_b
    iget-wide v4, v0, Landroidx/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int v2, v4

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput v15, v0, Landroidx/media3/extractor/ogg/StreamReader;->state:I

    goto/16 :goto_9

    :cond_c
    :goto_2
    invoke-virtual {v8, v1}, Landroidx/media3/extractor/ogg/OggPacket;->populate(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    iget-object v13, v8, Landroidx/media3/extractor/ogg/OggPacket;->packetArray:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v2, :cond_d

    iput v5, v0, Landroidx/media3/extractor/ogg/StreamReader;->state:I

    move v2, v3

    goto :goto_3

    :cond_d
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    iget-wide v11, v0, Landroidx/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v9, v11

    iput-wide v9, v0, Landroidx/media3/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    iget-object v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->setupData:Lcom/motorola/camera/CameraKpi;

    invoke-virtual {v0, v13, v11, v12, v2}, Landroidx/media3/extractor/ogg/StreamReader;->readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLcom/motorola/camera/CameraKpi;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_2

    :cond_e
    move v2, v4

    :goto_3
    if-nez v2, :cond_f

    :goto_4
    const/4 v3, -0x1

    goto/16 :goto_9

    :cond_f
    iget-object v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->setupData:Lcom/motorola/camera/CameraKpi;

    iget-object v2, v2, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Format;

    iget v5, v2, Landroidx/media3/common/Format;->sampleRate:I

    iput v5, v0, Landroidx/media3/extractor/ogg/StreamReader;->sampleRate:I

    iget-boolean v5, v0, Landroidx/media3/extractor/ogg/StreamReader;->formatSet:Z

    if-nez v5, :cond_10

    iget-object v5, v0, Landroidx/media3/extractor/ogg/StreamReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean v4, v0, Landroidx/media3/extractor/ogg/StreamReader;->formatSet:Z

    :cond_10
    iget-object v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->setupData:Lcom/motorola/camera/CameraKpi;

    iget-object v2, v2, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/ogg/OggSeeker;

    if-eqz v2, :cond_11

    iput-object v2, v0, Landroidx/media3/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media3/extractor/ogg/OggSeeker;

    goto :goto_5

    :cond_11
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v9

    cmp-long v2, v9, v6

    if-nez v2, :cond_12

    new-instance v1, Lkotlin/UNINITIALIZED_VALUE;

    invoke-direct {v1}, Lkotlin/UNINITIALIZED_VALUE;-><init>()V

    iput-object v1, v0, Landroidx/media3/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media3/extractor/ogg/OggSeeker;

    :goto_5
    move-object v3, v13

    move v5, v15

    goto :goto_7

    :cond_12
    iget-object v2, v8, Landroidx/media3/extractor/ogg/OggPacket;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v5, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_13

    move/from16 v17, v4

    goto :goto_6

    :cond_13
    move/from16 v17, v3

    :goto_6
    new-instance v4, Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    iget-wide v9, v0, Landroidx/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v11

    iget v1, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v5, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v1, v5

    int-to-long v5, v1

    iget-wide v1, v2, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v7, v4

    move-object v8, v0

    move-object v3, v13

    move-wide v13, v5

    move v5, v15

    move-wide v15, v1

    invoke-direct/range {v7 .. v17}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;-><init>(Landroidx/media3/extractor/ogg/StreamReader;JJJJZ)V

    iput-object v4, v0, Landroidx/media3/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media3/extractor/ogg/OggSeeker;

    :goto_7
    iput v5, v0, Landroidx/media3/extractor/ogg/StreamReader;->state:I

    iget-object v0, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v1, v0

    const v2, 0xfe01

    if-ne v1, v2, :cond_14

    goto :goto_8

    :cond_14
    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {v3, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    :goto_8
    const/4 v3, 0x0

    :goto_9
    return v3
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 5

    iget-object p0, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ogg/StreamReader;->oggPacket:Landroidx/media3/extractor/ogg/OggPacket;

    iget-object v1, v0, Landroidx/media3/extractor/ogg/OggPacket;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    iget-object v1, v0, Landroidx/media3/extractor/ogg/OggPacket;->packetArray:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    const/4 v1, -0x1

    iput v1, v0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iput-boolean v2, v0, Landroidx/media3/extractor/ogg/OggPacket;->populated:Z

    cmp-long p1, p1, v3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->seekMapSet:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->reset(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->state:I

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long p1, p1

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->targetGranule:J

    iget-object p3, p0, Landroidx/media3/extractor/ogg/StreamReader;->oggSeeker:Landroidx/media3/extractor/ogg/OggSeeker;

    sget p4, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {p3, p1, p2}, Landroidx/media3/extractor/ogg/OggSeeker;->startSeek(J)V

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->state:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ogg/OggExtractor;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final sniffInternal(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    new-instance v0, Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroidx/media3/extractor/ogg/OggPageHeader;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v2, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_3

    :cond_0
    iget v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v0, v4}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget p1, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v0, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p1, v0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    if-eqz p1, :cond_2

    new-instance p1, Landroidx/media3/extractor/ogg/FlacReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/FlacReader;-><init>()V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :try_start_0
    invoke-static {v1, v2, v1}, Lcom/adobe/xmp/XMPUtils;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move p1, v3

    :goto_1
    if-eqz p1, :cond_3

    new-instance p1, Landroidx/media3/extractor/ogg/VorbisReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/VorbisReader;-><init>()V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    sget-object p1, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {v2, p1}, Landroidx/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroidx/media3/extractor/ogg/OpusReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/OpusReader;-><init>()V

    :goto_2
    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    return v1

    :cond_4
    :goto_3
    return v3
.end method
