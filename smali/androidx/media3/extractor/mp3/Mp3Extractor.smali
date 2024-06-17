.class public final Landroidx/media3/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;


# instance fields
.field public basisTimeUs:J

.field public currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field public disableSeeking:Z

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public firstSamplePosition:J

.field public final flags:I

.field public final gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

.field public final id3Peeker:Lcom/google/gson/FieldAttributes;

.field public isSeekInProgress:Z

.field public metadata:Landroidx/media3/common/Metadata;

.field public realTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field public sampleBytesRemaining:I

.field public samplesRead:J

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public seekTimeUs:J

.field public seeker:Landroidx/media3/extractor/mp3/Seeker;

.field public final skippingTrackOutput:Landroidx/media3/extractor/DummyTrackOutput;

.field public final synchronizedHeader:Landroidx/media3/extractor/wav/WavFormat;

.field public synchronizedHeaderData:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/wav/WavFormat;

    invoke-direct {v0}, Landroidx/media3/extractor/wav/WavFormat;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/wav/WavFormat;

    new-instance v0, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    new-instance v0, Lcom/google/gson/FieldAttributes;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/gson/FieldAttributes;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Peeker:Lcom/google/gson/FieldAttributes;

    new-instance v0, Landroidx/media3/extractor/DummyTrackOutput;

    invoke-direct {v0}, Landroidx/media3/extractor/DummyTrackOutput;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroidx/media3/extractor/DummyTrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method

.method public static getId3TlenUs(Landroidx/media3/common/Metadata;)J
    .locals 6

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v3

    instance-of v4, v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    iget-object v4, v3, Landroidx/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    const-string v5, "TLEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p0, v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method


# virtual methods
.method public final getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;
    .locals 9

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v2, v3, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/wav/WavFormat;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/media3/extractor/wav/WavFormat;->setForHeaderData(I)Z

    new-instance v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/wav/WavFormat;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLandroidx/media3/extractor/wav/WavFormat;Z)V

    return-object v0
.end method

.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, p0, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v1

    return p0

    :catch_0
    return v1
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const-wide/32 v3, 0xf4240

    iget-object v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/wav/WavFormat;

    const/4 v7, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v7}, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v4, v0

    move-object v2, v5

    const/4 v0, -0x1

    const/4 v6, -0x1

    goto/16 :goto_23

    :cond_0
    :goto_0
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    const/4 v10, 0x1

    iget-object v11, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v2, :cond_29

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget v12, v5, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    invoke-direct {v2, v12}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v12, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v13, v5, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    invoke-interface {v1, v7, v13, v12}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget v12, v5, Landroidx/media3/extractor/wav/WavFormat;->formatType:I

    and-int/2addr v12, v10

    const/16 v13, 0x24

    if-eqz v12, :cond_1

    iget v12, v5, Landroidx/media3/extractor/wav/WavFormat;->averageBytesPerSecond:I

    if-eq v12, v10, :cond_2

    move v12, v13

    goto :goto_1

    :cond_1
    iget v12, v5, Landroidx/media3/extractor/wav/WavFormat;->averageBytesPerSecond:I

    if-eq v12, v10, :cond_3

    :cond_2
    const/16 v12, 0x15

    goto :goto_1

    :cond_3
    const/16 v12, 0xd

    :goto_1
    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/lit8 v15, v12, 0x4

    const v8, 0x496e666f

    const v9, 0x56425249

    const v7, 0x58696e67

    if-lt v14, v15, :cond_4

    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    if-eq v14, v7, :cond_6

    if-ne v14, v8, :cond_4

    goto :goto_2

    :cond_4
    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const/16 v15, 0x28

    if-lt v14, v15, :cond_5

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    if-ne v13, v9, :cond_5

    move v14, v9

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :cond_6
    :goto_2
    iget-object v15, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const-string v6, ", "

    if-eq v14, v7, :cond_11

    if-ne v14, v8, :cond_7

    goto/16 :goto_9

    :cond_7
    if-ne v14, v9, :cond_10

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v7

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v21

    const/16 v9, 0xa

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    if-gtz v9, :cond_8

    move-object/from16 v21, v5

    move-object/from16 v29, v11

    goto :goto_5

    :cond_8
    iget v12, v5, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v13, v9

    const/16 v9, 0x7d00

    if-lt v12, v9, :cond_9

    const/16 v9, 0x480

    goto :goto_3

    :cond_9
    const/16 v9, 0x240

    :goto_3
    move-object/from16 v29, v11

    int-to-long v10, v9

    mul-long v25, v10, v3

    int-to-long v9, v12

    move-wide/from16 v23, v13

    move-wide/from16 v27, v9

    invoke-static/range {v23 .. v28}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v33

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v13, v5, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    int-to-long v13, v13

    add-long v13, v21, v13

    new-array v3, v9, [J

    new-array v4, v9, [J

    move-wide/from16 v0, v21

    const/4 v12, 0x0

    :goto_4
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    if-ge v12, v9, :cond_e

    int-to-long v5, v12

    mul-long v5, v5, v33

    move-wide/from16 v26, v7

    int-to-long v7, v9

    div-long/2addr v5, v7

    aput-wide v5, v3, v12

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    aput-wide v5, v4, v12

    const/4 v5, 0x1

    if-eq v11, v5, :cond_d

    const/4 v5, 0x2

    if-eq v11, v5, :cond_c

    const/4 v6, 0x3

    if-eq v11, v6, :cond_b

    const/4 v6, 0x4

    if-eq v11, v6, :cond_a

    :goto_5
    move-object/from16 v2, v20

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v6

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    goto :goto_6

    :cond_d
    const/4 v5, 0x2

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    :goto_6
    int-to-long v6, v6

    move/from16 v25, v9

    int-to-long v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v0, v6

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v9, v25

    move-wide/from16 v7, v26

    goto :goto_4

    :cond_e
    move-wide/from16 v26, v7

    cmp-long v2, v26, v18

    if-eqz v2, :cond_f

    cmp-long v2, v26, v0

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "VBRI data size mismatch: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v5, v26

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "VbriSeeker"

    invoke-static {v5, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    new-instance v2, Landroidx/media3/extractor/mp3/VbriSeeker;

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-wide/from16 v35, v0

    invoke-direct/range {v30 .. v36}, Landroidx/media3/extractor/mp3/VbriSeeker;-><init>([J[JJJ)V

    :goto_7
    move-object/from16 v0, v21

    iget v1, v0, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    move-object/from16 v3, p1

    invoke-interface {v3, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_8

    :cond_10
    move-object v3, v1

    move-object v0, v5

    move-object/from16 v29, v11

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    move-object/from16 v2, v20

    :goto_8
    move-object/from16 v4, p0

    move-object/from16 v1, v29

    goto/16 :goto_10

    :cond_11
    :goto_9
    move-object v3, v1

    move-object v0, v5

    move-object v5, v6

    move-object/from16 v29, v11

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v31

    iget v1, v0, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    iget v4, v0, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    and-int/lit8 v10, v9, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_16

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    if-nez v10, :cond_12

    goto/16 :goto_c

    :cond_12
    int-to-long v10, v10

    move/from16 v21, v9

    int-to-long v8, v1

    const-wide/32 v22, 0xf4240

    mul-long v35, v8, v22

    int-to-long v8, v4

    move-wide/from16 v33, v10

    move-wide/from16 v37, v8

    invoke-static/range {v33 .. v38}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v34

    const/4 v1, 0x6

    and-int/lit8 v4, v21, 0x6

    if-eq v4, v1, :cond_13

    new-instance v1, Landroidx/media3/extractor/mp3/XingSeeker;

    iget v2, v0, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    const-wide/16 v36, -0x1

    const/16 v38, 0x0

    move-object/from16 v30, v1

    move/from16 v33, v2

    invoke-direct/range {v30 .. v38}, Landroidx/media3/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    goto :goto_b

    :cond_13
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v36

    const/16 v1, 0x64

    new-array v4, v1, [J

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v1, :cond_14

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    int-to-long v9, v9

    aput-wide v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_14
    cmp-long v1, v6, v18

    if-eqz v1, :cond_15

    add-long v1, v31, v36

    cmp-long v8, v6, v1

    if-eqz v8, :cond_15

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "XING data size mismatch: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XingSeeker"

    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    new-instance v1, Landroidx/media3/extractor/mp3/XingSeeker;

    iget v2, v0, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    move-object/from16 v30, v1

    move/from16 v33, v2

    move-object/from16 v38, v4

    invoke-direct/range {v30 .. v38}, Landroidx/media3/extractor/mp3/XingSeeker;-><init>(JIJJ[J)V

    :goto_b
    move-object v2, v1

    goto :goto_d

    :cond_16
    :goto_c
    move-object/from16 v2, v20

    :goto_d
    if-eqz v2, :cond_19

    iget v1, v15, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_17

    iget v1, v15, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v1, v4, :cond_17

    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_19

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit16 v12, v12, 0x8d

    invoke-interface {v3, v12}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    move-object/from16 v1, v29

    iget-object v4, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5, v4}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    shr-int/lit8 v5, v4, 0xc

    and-int/lit16 v4, v4, 0xfff

    if-gtz v5, :cond_18

    if-lez v4, :cond_1a

    :cond_18
    iput v5, v15, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    iput v4, v15, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    goto :goto_f

    :cond_19
    move-object/from16 v1, v29

    :cond_1a
    :goto_f
    iget v4, v0, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    invoke-interface {v3, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroidx/media3/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v4

    if-nez v4, :cond_1b

    const v4, 0x496e666f

    if-ne v14, v4, :cond_1b

    const/4 v5, 0x0

    move-object/from16 v4, p0

    invoke-virtual {v4, v3, v5}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    move-result-object v2

    goto :goto_10

    :cond_1b
    move-object/from16 v4, p0

    :goto_10
    iget-object v5, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    if-eqz v5, :cond_1e

    iget-object v8, v5, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v9, :cond_1e

    aget-object v11, v8, v10

    instance-of v12, v11, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    if-eqz v12, :cond_1d

    check-cast v11, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    invoke-static {v5}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getId3TlenUs(Landroidx/media3/common/Metadata;)J

    move-result-wide v8

    iget-object v5, v11, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesDeviations:[I

    array-length v5, v5

    add-int/lit8 v10, v5, 0x1

    new-array v12, v10, [J

    new-array v10, v10, [J

    const/4 v13, 0x0

    aput-wide v6, v12, v13

    const-wide/16 v16, 0x0

    aput-wide v16, v10, v13

    move-wide v13, v6

    const/4 v6, 0x1

    const-wide/16 v16, 0x0

    :goto_12
    if-gt v6, v5, :cond_1c

    add-int/lit8 v7, v6, -0x1

    move/from16 v21, v5

    iget-object v5, v11, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesDeviations:[I

    aget v5, v5, v7

    move-object/from16 v29, v1

    iget v1, v11, Landroidx/media3/extractor/metadata/id3/MlltFrame;->bytesBetweenReference:I

    add-int/2addr v1, v5

    move-object/from16 v22, v0

    int-to-long v0, v1

    add-long/2addr v13, v0

    iget-object v0, v11, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    aget v0, v0, v7

    iget v1, v11, Landroidx/media3/extractor/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    add-int/2addr v1, v0

    int-to-long v0, v1

    add-long v16, v16, v0

    aput-wide v13, v12, v6

    aput-wide v16, v10, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v21

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    goto :goto_12

    :cond_1c
    move-object/from16 v22, v0

    move-object/from16 v29, v1

    new-instance v0, Landroidx/media3/extractor/mp3/MlltSeeker;

    invoke-direct {v0, v8, v9, v12, v10}, Landroidx/media3/extractor/mp3/MlltSeeker;-><init>(J[J[J)V

    goto :goto_13

    :cond_1d
    move-object/from16 v22, v0

    move-object/from16 v29, v1

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_1e
    move-object/from16 v22, v0

    move-object/from16 v29, v1

    move-object/from16 v0, v20

    :goto_13
    iget-boolean v1, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    iget v5, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    if-eqz v1, :cond_1f

    new-instance v0, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;

    invoke-direct {v0}, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;-><init>()V

    goto :goto_19

    :cond_1f
    and-int/lit8 v1, v5, 0x4

    if-eqz v1, :cond_22

    if-eqz v0, :cond_20

    iget-wide v0, v0, Landroidx/media3/extractor/mp3/MlltSeeker;->durationUs:J

    goto :goto_14

    :cond_20
    if-eqz v2, :cond_21

    invoke-interface {v2}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v18

    :goto_14
    move-wide v7, v0

    move-wide/from16 v11, v18

    goto :goto_15

    :cond_21
    iget-object v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    invoke-static {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getId3TlenUs(Landroidx/media3/common/Metadata;)J

    move-result-wide v0

    goto :goto_14

    :goto_15
    new-instance v2, Landroidx/media3/extractor/mp3/IndexSeeker;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/media3/extractor/mp3/IndexSeeker;-><init>(JJJ)V

    goto :goto_16

    :cond_22
    if-eqz v0, :cond_23

    goto :goto_17

    :cond_23
    if-eqz v2, :cond_24

    :goto_16
    move-object v0, v2

    goto :goto_17

    :cond_24
    move-object/from16 v0, v20

    :goto_17
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_27

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_27

    :cond_25
    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_18

    :cond_26
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v4, v3, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    move-result-object v0

    :cond_27
    :goto_19
    iput-object v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    iget-object v1, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iget-object v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    move-object/from16 v2, v22

    iget-object v6, v2, Landroidx/media3/extractor/wav/WavFormat;->extraData:Ljava/io/Serializable;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    const/16 v6, 0x1000

    iput v6, v1, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iget v6, v2, Landroidx/media3/extractor/wav/WavFormat;->averageBytesPerSecond:I

    iput v6, v1, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget v6, v2, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    iput v6, v1, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iget v6, v15, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    iput v6, v1, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    iget v6, v15, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    iput v6, v1, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_28

    move-object/from16 v5, v20

    goto :goto_1a

    :cond_28
    iget-object v5, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    :goto_1a
    iput-object v5, v1, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v0, v5}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    goto :goto_1b

    :cond_29
    move-object v4, v0

    move-object v3, v1

    move-object v2, v5

    move-object/from16 v29, v11

    iget-wide v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2a

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v5, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    cmp-long v7, v0, v5

    if-gez v7, :cond_2a

    sub-long/2addr v5, v0

    long-to-int v0, v5

    invoke-interface {v3, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_2a
    :goto_1b
    iget v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-nez v0, :cond_31

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_21

    :cond_2b
    move-object/from16 v1, v29

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iget v1, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v5, v1

    const v1, -0x1f400

    and-int/2addr v1, v0

    int-to-long v7, v1

    const-wide/32 v9, -0x1f400

    and-long/2addr v5, v9

    cmp-long v1, v7, v5

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v1, 0x0

    :goto_1c
    if-eqz v1, :cond_30

    invoke-static {v0}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2d

    goto :goto_1e

    :cond_2d
    invoke-virtual {v2, v0}, Landroidx/media3/extractor/wav/WavFormat;->setForHeaderData(I)Z

    iget-wide v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-nez v0, :cond_2e

    iget-object v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    invoke-interface {v0, v5, v6}, Landroidx/media3/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v0

    iput-wide v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    :cond_2e
    iget v0, v2, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    iput v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    iget-object v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v1, v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v1, :cond_31

    check-cast v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    iget-wide v5, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget v1, v2, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    iget-wide v7, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v9, 0xf4240

    mul-long/2addr v5, v9

    iget v1, v2, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v9, v1

    div-long/2addr v5, v9

    add-long/2addr v5, v7

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget v1, v2, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    int-to-long v9, v1

    add-long/2addr v7, v9

    invoke-virtual {v0, v5, v6}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_1d

    :cond_2f
    iget-object v1, v0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Lcom/adobe/xmp/impl/ParseState;

    invoke-virtual {v1, v5, v6}, Lcom/adobe/xmp/impl/ParseState;->add(J)V

    iget-object v1, v0, Landroidx/media3/extractor/mp3/IndexSeeker;->positions:Lcom/adobe/xmp/impl/ParseState;

    invoke-virtual {v1, v7, v8}, Lcom/adobe/xmp/impl/ParseState;->add(J)V

    :goto_1d
    iget-boolean v1, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    if-eqz v1, :cond_31

    iget-wide v5, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    invoke-virtual {v0, v5, v6}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    iput-boolean v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    iget-object v1, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v1, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    goto :goto_20

    :cond_30
    :goto_1e
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    :goto_1f
    const/4 v7, 0x0

    goto :goto_22

    :cond_31
    :goto_20
    const/4 v1, 0x1

    iget-object v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v5, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v0, v3, v5, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    :goto_21
    const/4 v7, -0x1

    goto :goto_22

    :cond_32
    iget v1, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_33

    goto :goto_1f

    :cond_33
    iget-object v5, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-wide v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-wide v6, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v8, 0xf4240

    mul-long/2addr v0, v8

    iget v3, v2, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v8, v3

    div-long/2addr v0, v8

    add-long/2addr v6, v0

    const/4 v8, 0x1

    iget v9, v2, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget v3, v2, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    int-to-long v5, v3

    add-long/2addr v0, v5

    iput-wide v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    const/4 v0, 0x0

    iput v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    move v7, v0

    :goto_22
    move v6, v7

    const/4 v0, -0x1

    :goto_23
    if-ne v6, v0, :cond_34

    iget-object v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v1, v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v1, :cond_34

    iget-wide v7, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-wide v9, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v11, 0xf4240

    mul-long/2addr v7, v11

    iget v1, v2, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v1, v1

    div-long/2addr v7, v1

    add-long/2addr v7, v9

    invoke-interface {v0}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-eqz v0, :cond_34

    iget-object v0, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    move-object v1, v0

    check-cast v1, Landroidx/media3/extractor/mp3/IndexSeeker;

    iput-wide v7, v1, Landroidx/media3/extractor/mp3/IndexSeeker;->durationUs:J

    iget-object v1, v4, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    :cond_34
    return v6
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    iput-wide p3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    iget-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    instance-of p2, p1, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/media3/extractor/mp3/IndexSeeker;

    invoke-virtual {p1, p3, p4}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    iget-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroidx/media3/extractor/DummyTrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    :cond_0
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method

.method public final synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_0

    const v2, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_4

    iget v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    move-object v3, v6

    goto :goto_2

    :cond_2
    sget-object v3, Landroidx/media3/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    :goto_2
    iget-object v7, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Peeker:Lcom/google/gson/FieldAttributes;

    invoke-virtual {v7, v1, v3}, Lcom/google/gson/FieldAttributes;->peekId3Data(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)Landroidx/media3/common/Metadata;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v3, :cond_3

    iget-object v7, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-virtual {v7, v3}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media3/common/Metadata;)V

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v7

    long-to-int v3, v7

    if-nez p2, :cond_5

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_3

    :cond_4
    move v3, v4

    :cond_5
    :goto_3
    move v7, v4

    move v8, v7

    move v9, v8

    :goto_4
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-lez v8, :cond_6

    goto :goto_7

    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    iget-object v10, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v10, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    if-eqz v7, :cond_9

    int-to-long v11, v7

    const v13, -0x1f400

    and-int/2addr v13, v10

    int-to-long v13, v13

    const-wide/32 v15, -0x1f400

    and-long/2addr v11, v15

    cmp-long v11, v13, v11

    if-nez v11, :cond_8

    move v11, v5

    goto :goto_5

    :cond_8
    move v11, v4

    :goto_5
    if-eqz v11, :cond_a

    :cond_9
    invoke-static {v10}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_e

    :cond_a
    add-int/lit8 v7, v9, 0x1

    if-ne v9, v2, :cond_c

    if-eqz p2, :cond_b

    return v4

    :cond_b
    const-string v0, "Searched too many bytes."

    invoke-static {v0, v6}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_c
    if-eqz p2, :cond_d

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    add-int v8, v3, v7

    invoke-interface {v1, v8}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_6

    :cond_d
    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :goto_6
    move v8, v4

    move v9, v7

    move v7, v8

    goto :goto_4

    :cond_e
    add-int/lit8 v8, v8, 0x1

    if-ne v8, v5, :cond_f

    iget-object v7, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/wav/WavFormat;

    invoke-virtual {v7, v10}, Landroidx/media3/extractor/wav/WavFormat;->setForHeaderData(I)Z

    move v7, v10

    goto :goto_9

    :cond_f
    const/4 v10, 0x4

    if-ne v8, v10, :cond_11

    :goto_7
    if-eqz p2, :cond_10

    add-int/2addr v3, v9

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_8

    :cond_10
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    :goto_8
    iput v7, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v5

    :cond_11
    :goto_9
    add-int/lit8 v11, v11, -0x4

    invoke-interface {v1, v11}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_4
.end method
