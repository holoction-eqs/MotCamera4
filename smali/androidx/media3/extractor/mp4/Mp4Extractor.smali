.class public final Landroidx/media3/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public accumulatedSampleSizes:[[J

.field public atomData:Landroidx/media3/common/util/ParsableByteArray;

.field public final atomHeader:Landroidx/media3/common/util/ParsableByteArray;

.field public atomHeaderBytesRead:I

.field public atomSize:J

.field public atomType:I

.field public final containerAtoms:Ljava/util/ArrayDeque;

.field public durationUs:J

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public fileType:I

.field public firstVideoTrackIndex:I

.field public final nalLength:Landroidx/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field public parserState:I

.field public sampleBytesRead:I

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleTrackIndex:I

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public final sefReader:Landroidx/media3/extractor/mp4/SefReader;

.field public final slowMotionMetadataEntries:Ljava/util/ArrayList;

.field public tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    new-instance v0, Landroidx/media3/extractor/mp4/SefReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/SefReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    sget-object v0, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/work/InputMergerFactory$1;

    iput-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-array p1, p1, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v3

    sget-object v5, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    if-nez v4, :cond_0

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v5, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    goto/16 :goto_b

    :cond_0
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v4, v7, :cond_6

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    invoke-static {v4, v1, v2, v6}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v4

    :goto_0
    if-ltz v4, :cond_2

    iget-object v10, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v10, v10, v4

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    move v4, v7

    :goto_1
    if-ne v4, v7, :cond_3

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v4

    :cond_3
    if-ne v4, v7, :cond_4

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v5, v5}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    goto/16 :goto_b

    :cond_4
    iget-object v5, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v10, v5, v4

    iget-object v12, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v13, v12, v4

    cmp-long v15, v10, v1

    if-gez v15, :cond_5

    iget v15, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/2addr v15, v7

    if-ge v4, v15, :cond_5

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    if-eq v1, v7, :cond_5

    if-eq v1, v4, :cond_5

    aget-wide v2, v5, v1

    aget-wide v4, v12, v1

    goto :goto_3

    :cond_5
    move-wide v1, v10

    goto :goto_2

    :cond_6
    const-wide v13, 0x7fffffffffffffffL

    :goto_2
    const-wide/16 v4, -0x1

    move-wide v10, v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    move v1, v6

    :goto_4
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v15, v12

    if-ge v1, v15, :cond_10

    iget v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v1, v15, :cond_f

    aget-object v12, v12, v1

    iget-object v12, v12, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v15, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    invoke-static {v15, v10, v11, v6}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v15

    :goto_5
    if-ltz v15, :cond_8

    iget-object v6, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v6, v6, v15

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v15, v15, -0x1

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    move v15, v7

    :goto_6
    if-ne v15, v7, :cond_9

    invoke-virtual {v12, v10, v11}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v15

    :cond_9
    if-ne v15, v7, :cond_a

    goto :goto_7

    :cond_a
    iget-object v6, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v7, v6, v15

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :goto_7
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v2, v6

    if-eqz v8, :cond_f

    iget-object v6, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v7, 0x0

    invoke-static {v6, v2, v3, v7}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v6

    :goto_8
    if-ltz v6, :cond_c

    iget-object v8, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_b

    goto :goto_9

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    :cond_c
    const/4 v6, -0x1

    :goto_9
    const/4 v8, -0x1

    if-ne v6, v8, :cond_d

    invoke-virtual {v12, v2, v3}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v6

    :cond_d
    if-ne v6, v8, :cond_e

    goto :goto_a

    :cond_e
    iget-object v9, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v7, v9, v6

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_f
    :goto_a
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    goto :goto_4

    :cond_10
    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, v10, v11, v13, v14}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v2, v6

    if-nez v1, :cond_11

    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v0, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    move-object v0, v1

    goto :goto_b

    :cond_11
    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance v2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v2, v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    move-object v0, v2

    :goto_b
    return-object v0
.end method

.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final processAtomEnded(J)V
    .locals 25

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v2, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_5e

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget v2, v3, Landroidx/media3/decoder/Buffer;->flags:I

    const v4, 0x6d6f6f76

    if-ne v2, v4, :cond_5d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v9, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    move v9, v4

    :goto_1
    new-instance v11, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v11}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    const v4, 0x75647461

    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    const v5, 0x696c7374

    const v6, 0x68646c72    # 4.3148E24f

    const v7, 0x6d657461

    const/4 v8, 0x4

    const/16 v10, 0x8

    if-eqz v4, :cond_3c

    sget-object v12, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    iget-object v4, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    iget v15, v4, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    move/from16 v16, v5

    iget v5, v4, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v15, v5

    if-lt v15, v10, :cond_3a

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    move-object/from16 v17, v12

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    if-ne v12, v7, :cond_32

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int v7, v5, v15

    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v12, v4, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    if-eq v8, v6, :cond_2

    add-int/lit8 v12, v12, 0x4

    :cond_2
    invoke-virtual {v4, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move/from16 v6, v16

    :goto_3
    iget v8, v4, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v8, v7, :cond_31

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    if-ne v13, v6, :cond_30

    invoke-virtual {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v8, v12

    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    iget v7, v4, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v7, v8, :cond_2e

    const-string v10, "Skipped unknown metadata entry: "

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    add-int/2addr v12, v7

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    shr-int/lit8 v13, v7, 0x18

    and-int/lit16 v13, v13, 0xff

    move/from16 v16, v8

    const-string v8, "MetadataUtil"

    move-object/from16 v18, v14

    const/16 v14, 0xa9

    move-object/from16 v19, v1

    const-string v1, "TCON"

    if-eq v13, v14, :cond_1e

    const/16 v14, 0xfd

    if-ne v13, v14, :cond_3

    goto/16 :goto_c

    :cond_3
    const v13, 0x676e7265

    if-ne v7, v13, :cond_6

    :try_start_0
    invoke-static {v4}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v7

    if-lez v7, :cond_4

    const/16 v10, 0xc0

    if-gt v7, v10, :cond_4

    sget-object v10, Landroidx/media3/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v10, v7

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_5

    new-instance v8, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v7

    const/4 v10, 0x0

    invoke-direct {v8, v1, v10, v7}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/RegularImmutableList;)V

    goto/16 :goto_8

    :cond_5
    const-string v1, "Failed to parse standard genre code"

    invoke-static {v8, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v2

    goto/16 :goto_e

    :cond_6
    const v1, 0x6469736b

    if-ne v7, v1, :cond_7

    const-string v1, "TPOS"

    goto :goto_6

    :cond_7
    const v1, 0x74726b6e

    if-ne v7, v1, :cond_a

    const-string v1, "TRCK"

    :goto_6
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    const v14, 0x64617461

    if-ne v13, v14, :cond_9

    const/16 v13, 0x16

    if-lt v10, v13, :cond_9

    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    if-lez v10, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    if-lez v8, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_8
    new-instance v8, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v7

    const/4 v10, 0x0

    invoke-direct {v8, v1, v10, v7}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/RegularImmutableList;)V

    goto/16 :goto_8

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Failed to parse index/count attribute: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroidx/media3/decoder/Buffer;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_a
    const v1, 0x746d706f

    if-ne v7, v1, :cond_b

    const-string v1, "TBPM"

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-static {v7, v1, v4, v8, v10}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v8

    goto :goto_8

    :cond_b
    const v1, 0x6370696c

    if-ne v7, v1, :cond_c

    const-string v1, "TCMP"

    const/4 v8, 0x1

    goto :goto_7

    :cond_c
    const v1, 0x636f7672

    if-ne v7, v1, :cond_d

    invoke-static {v4}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseCoverArt(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/ApicFrame;

    move-result-object v8

    goto :goto_8

    :cond_d
    const v1, 0x61415254

    if-ne v7, v1, :cond_e

    const-string v1, "TPE2"

    goto :goto_9

    :cond_e
    const v1, 0x736f6e6d

    if-ne v7, v1, :cond_f

    const-string v1, "TSOT"

    goto :goto_9

    :cond_f
    const v1, 0x736f616c

    if-ne v7, v1, :cond_10

    const-string v1, "TSO2"

    goto :goto_9

    :cond_10
    const v1, 0x736f6172

    if-ne v7, v1, :cond_11

    const-string v1, "TSOA"

    goto :goto_9

    :cond_11
    const v1, 0x736f6161

    if-ne v7, v1, :cond_12

    const-string v1, "TSOP"

    goto :goto_9

    :cond_12
    const v1, 0x736f636f

    if-ne v7, v1, :cond_13

    const-string v1, "TSOC"

    goto :goto_9

    :cond_13
    const v1, 0x72746e67

    if-ne v7, v1, :cond_14

    const-string v1, "ITUNESADVISORY"

    const/4 v8, 0x0

    :goto_7
    invoke-static {v7, v1, v4, v8, v8}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v8

    goto :goto_8

    :cond_14
    const v1, 0x70676170

    if-ne v7, v1, :cond_15

    const-string v1, "ITUNESGAPLESS"

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-static {v7, v1, v4, v10, v8}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v8

    :goto_8
    move-object/from16 v21, v2

    goto/16 :goto_12

    :cond_15
    const v1, 0x736f736e

    if-ne v7, v1, :cond_16

    const-string v1, "TVSHOWSORT"

    goto :goto_9

    :cond_16
    const v1, 0x74767368

    if-ne v7, v1, :cond_17

    const-string v1, "TVSHOW"

    :goto_9
    move-object/from16 v21, v2

    goto/16 :goto_11

    :cond_17
    const v1, 0x2d2d2d2d

    if-ne v7, v1, :cond_1d

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    :goto_a
    iget v13, v4, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v13, v12, :cond_1b

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    move/from16 v20, v13

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    move-object/from16 v21, v2

    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const v2, 0x6d65616e

    if-ne v13, v2, :cond_18

    add-int/lit8 v14, v14, -0xc

    invoke-virtual {v4, v14}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_b

    :cond_18
    const v2, 0x6e616d65

    if-ne v13, v2, :cond_19

    add-int/lit8 v14, v14, -0xc

    invoke-virtual {v4, v14}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_19
    const v2, 0x64617461

    if-ne v13, v2, :cond_1a

    move v8, v14

    move/from16 v7, v20

    :cond_1a
    add-int/lit8 v14, v14, -0xc

    invoke-virtual {v4, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :goto_b
    move-object/from16 v2, v21

    goto :goto_a

    :cond_1b
    move-object/from16 v21, v2

    if-eqz v10, :cond_29

    if-eqz v1, :cond_29

    const/4 v2, -0x1

    if-ne v7, v2, :cond_1c

    goto/16 :goto_e

    :cond_1c
    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v2, 0x10

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v8, v8, -0x10

    invoke-virtual {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    invoke-direct {v8, v10, v1, v2}, Landroidx/media3/extractor/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_1d
    move-object/from16 v21, v2

    goto/16 :goto_d

    :cond_1e
    :goto_c
    move-object/from16 v21, v2

    const v2, 0xffffff

    and-int/2addr v2, v7

    const v13, 0x636d74

    if-ne v2, v13, :cond_1f

    invoke-static {v7, v4}, Landroidx/media3/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/CommentFrame;

    move-result-object v8

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_1f
    const v13, 0x6e616d

    if-eq v2, v13, :cond_2b

    const v13, 0x74726b

    if-ne v2, v13, :cond_20

    goto :goto_10

    :cond_20
    const v13, 0x636f6d

    if-eq v2, v13, :cond_2a

    const v13, 0x777274

    if-ne v2, v13, :cond_21

    goto :goto_f

    :cond_21
    const v13, 0x646179

    if-ne v2, v13, :cond_22

    const-string v1, "TDRC"

    goto :goto_11

    :cond_22
    const v13, 0x415254

    if-ne v2, v13, :cond_23

    const-string v1, "TPE1"

    goto :goto_11

    :cond_23
    const v13, 0x746f6f

    if-ne v2, v13, :cond_24

    const-string v1, "TSSE"

    goto :goto_11

    :cond_24
    const v13, 0x616c62

    if-ne v2, v13, :cond_25

    const-string v1, "TALB"

    goto :goto_11

    :cond_25
    const v13, 0x6c7972

    if-ne v2, v13, :cond_26

    const-string v1, "USLT"

    goto :goto_11

    :cond_26
    const v13, 0x67656e

    if-ne v2, v13, :cond_27

    goto :goto_11

    :cond_27
    const v1, 0x677270

    if-ne v2, v1, :cond_28

    const-string v1, "TIT1"

    goto :goto_11

    :cond_28
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroidx/media3/decoder/Buffer;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    :goto_e
    const/4 v8, 0x0

    goto :goto_12

    :cond_2a
    :goto_f
    const-string v1, "TCOM"

    goto :goto_11

    :cond_2b
    :goto_10
    const-string v1, "TIT2"

    :goto_11
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    const v13, 0x64617461

    if-ne v10, v13, :cond_2c

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v2, v2, -0x10

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v2

    const/4 v7, 0x0

    invoke-direct {v8, v1, v7, v2}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/RegularImmutableList;)V

    goto :goto_12

    :cond_2c
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Failed to parse text attribute: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroidx/media3/decoder/Buffer;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    :goto_12
    invoke-virtual {v4, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    if-eqz v8, :cond_2d

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    move/from16 v8, v16

    move-object/from16 v14, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    goto/16 :goto_4

    :goto_13
    invoke-virtual {v4, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    throw v0

    :cond_2e
    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v14

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_14

    :cond_2f
    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, v6}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_14

    :cond_30
    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v14

    add-int/2addr v8, v12

    invoke-virtual {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const v6, 0x696c7374

    const/16 v10, 0x8

    goto/16 :goto_3

    :cond_31
    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v14

    const/4 v1, 0x0

    :goto_14
    move-object v13, v1

    goto/16 :goto_19

    :cond_32
    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-object/from16 v18, v14

    const/4 v1, 0x0

    const v2, 0x736d7461

    if-ne v12, v2, :cond_38

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int v2, v5, v15

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :goto_15
    iget v6, v4, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v6, v2, :cond_37

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    const v10, 0x73617574

    if-ne v8, v10, :cond_36

    const/16 v2, 0xe

    if-ge v7, v2, :cond_33

    goto :goto_17

    :cond_33
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v6, 0xc

    if-eq v2, v6, :cond_34

    const/16 v7, 0xd

    if-eq v2, v7, :cond_34

    goto :goto_17

    :cond_34
    if-ne v2, v6, :cond_35

    const/high16 v1, 0x43700000    # 240.0f

    goto :goto_16

    :cond_35
    const/high16 v1, 0x42f00000    # 120.0f

    :goto_16
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    new-instance v7, Landroidx/media3/common/Metadata;

    new-array v2, v2, [Landroidx/media3/common/Metadata$Entry;

    new-instance v8, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v8, v1, v6}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    const/4 v1, 0x0

    aput-object v8, v2, v1

    invoke-direct {v7, v2}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    move-object v12, v7

    goto :goto_1a

    :cond_36
    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_15

    :cond_37
    :goto_17
    move-object v12, v1

    goto :goto_1a

    :cond_38
    const v2, -0x56878686

    if-ne v12, v2, :cond_39

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v2

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x2b

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/16 v7, 0x2d

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    new-instance v6, Landroidx/media3/common/Metadata;

    new-array v8, v10, [Landroidx/media3/common/Metadata$Entry;

    new-instance v10, Landroidx/media3/container/Mp4LocationData;

    invoke-direct {v10, v7, v2}, Landroidx/media3/container/Mp4LocationData;-><init>(FF)V

    const/4 v2, 0x0

    aput-object v10, v8, v2

    invoke-direct {v6, v8}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v6

    goto :goto_18

    :catch_0
    move-object v14, v1

    :goto_18
    move-object/from16 v12, v17

    goto :goto_1b

    :cond_39
    :goto_19
    move-object/from16 v12, v17

    :goto_1a
    move-object/from16 v14, v18

    :goto_1b
    add-int/2addr v5, v15

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v8, 0x4

    const v5, 0x696c7374

    const v6, 0x68646c72    # 4.3148E24f

    const v7, 0x6d657461

    const/16 v10, 0x8

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    goto/16 :goto_2

    :cond_3a
    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-object/from16 v17, v12

    move-object/from16 v18, v14

    if-eqz v13, :cond_3b

    invoke-virtual {v11, v13}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media3/common/Metadata;)V

    :cond_3b
    const v7, 0x6d657461

    move-object/from16 v12, v17

    move-object/from16 v14, v18

    goto :goto_1c

    :cond_3c
    move-object/from16 v19, v1

    move-object/from16 v21, v2

    const/4 v12, 0x0

    move-object v13, v12

    move-object v14, v13

    :goto_1c
    invoke-virtual {v3, v7}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    if-eqz v1, :cond_45

    sget-object v2, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    const v2, 0x68646c72    # 4.3148E24f

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    const v4, 0x6b657973

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    const v5, 0x696c7374

    invoke-virtual {v1, v5}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    if-eqz v2, :cond_45

    if-eqz v4, :cond_45

    if-eqz v1, :cond_45

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const v5, 0x6d647461

    if-eq v2, v5, :cond_3d

    goto/16 :goto_22

    :cond_3d
    iget-object v2, v4, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v4, :cond_3e

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_3e
    const/16 v2, 0x8

    iget-object v1, v1, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1e
    iget v7, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v8, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v7, v8

    if-le v7, v2, :cond_43

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_41

    if-ge v7, v4, :cond_41

    aget-object v7, v5, v7

    add-int v10, v8, v2

    :goto_1f
    iget v15, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ge v15, v10, :cond_40

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v16

    move/from16 v17, v4

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    move-object/from16 v18, v5

    const v5, 0x64617461

    if-ne v4, v5, :cond_3f

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    add-int/lit8 v10, v16, -0x10

    new-array v15, v10, [B

    move-object/from16 v20, v13

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v10, v15}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v10, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-direct {v10, v7, v15, v5, v4}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    goto :goto_20

    :cond_3f
    move-object/from16 v20, v13

    add-int v15, v15, v16

    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move/from16 v4, v17

    move-object/from16 v5, v18

    goto :goto_1f

    :cond_40
    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v13

    const/4 v10, 0x0

    :goto_20
    if-eqz v10, :cond_42

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_41
    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v13

    const-string v4, "Skipped metadata with unknown key index: "

    const-string v5, "AtomParsers"

    invoke-static {v4, v7, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_42
    :goto_21
    add-int/2addr v8, v2

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v2, 0x8

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v13, v20

    goto :goto_1e

    :cond_43
    move-object/from16 v20, v13

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_23

    :cond_44
    new-instance v1, Landroidx/media3/common/Metadata;

    invoke-direct {v1, v6}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_24

    :cond_45
    :goto_22
    move-object/from16 v20, v13

    :goto_23
    const/4 v1, 0x0

    :goto_24
    const v2, 0x6d766864

    invoke-virtual {v3, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media3/extractor/mp4/AtomParsers;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move-result-object v2

    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mNext:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Metadata;

    const/4 v8, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    new-instance v10, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v10, v4}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v13, -0x1

    move-object v4, v11

    move-wide v5, v15

    invoke-static/range {v3 .. v10}, Landroidx/media3/extractor/mp4/AtomParsers;->parseTraks(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v13

    move-wide v7, v15

    :goto_25
    if-ge v5, v4, :cond_57

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v10, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v10, :cond_46

    move-object/from16 v23, v1

    move-object/from16 v22, v3

    move/from16 v16, v4

    move-object/from16 v3, v21

    goto/16 :goto_2f

    :cond_46
    iget-object v10, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    move-object v15, v3

    move/from16 v16, v4

    iget-wide v3, v10, Landroidx/media3/extractor/mp4/Track;->durationUs:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v3, v17

    if-eqz v13, :cond_47

    goto :goto_26

    :cond_47
    iget-wide v3, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    :goto_26
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    new-instance v13, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    move-wide/from16 v17, v7

    iget-object v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget v8, v10, Landroidx/media3/extractor/mp4/Track;->type:I

    invoke-interface {v7, v5, v8}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v7

    invoke-direct {v13, v10, v9, v7}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/TrackOutput;)V

    iget-object v7, v10, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v10, v7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v22, v15

    const-string v15, "audio/true-hd"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget v15, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    if-eqz v10, :cond_48

    mul-int/lit8 v15, v15, 0x10

    goto :goto_27

    :cond_48
    add-int/lit8 v15, v15, 0x1e

    :goto_27
    new-instance v10, Landroidx/media3/common/Format$Builder;

    invoke-direct {v10, v7}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    iput v15, v10, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    const/4 v7, 0x2

    if-ne v8, v7, :cond_49

    const-wide/16 v23, 0x0

    cmp-long v7, v3, v23

    if-lez v7, :cond_49

    iget v7, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    const/4 v9, 0x1

    if-le v7, v9, :cond_49

    int-to-float v7, v7

    long-to-float v3, v3

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    div-float/2addr v7, v3

    iput v7, v10, Landroidx/media3/common/Format$Builder;->frameRate:F

    :cond_49
    const/4 v3, 0x1

    if-ne v8, v3, :cond_4b

    iget v3, v11, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4a

    iget v7, v11, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v7, v4, :cond_4a

    const/4 v4, 0x1

    goto :goto_28

    :cond_4a
    const/4 v4, 0x0

    :goto_28
    if-eqz v4, :cond_4b

    iput v3, v10, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    iget v3, v11, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    iput v3, v10, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    :cond_4b
    const/4 v3, 0x4

    new-array v3, v3, [Landroidx/media3/common/Metadata;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4c

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_29

    :cond_4c
    new-instance v7, Landroidx/media3/common/Metadata;

    invoke-direct {v7, v4}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    const/4 v4, 0x1

    :goto_29
    aput-object v7, v3, v4

    const/4 v7, 0x2

    aput-object v14, v3, v7

    const/4 v7, 0x3

    aput-object v2, v3, v7

    new-instance v7, Landroidx/media3/common/Metadata;

    const/4 v9, 0x0

    new-array v9, v9, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v7, v9}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    if-ne v8, v4, :cond_4d

    if-eqz v20, :cond_4d

    move-object/from16 v7, v20

    :cond_4d
    if-eqz v1, :cond_51

    const/4 v4, 0x0

    :goto_2a
    iget-object v9, v1, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v15, v9

    if-ge v4, v15, :cond_51

    aget-object v9, v9, v4

    instance-of v15, v9, Landroidx/media3/container/MdtaMetadataEntry;

    if-eqz v15, :cond_4f

    check-cast v9, Landroidx/media3/container/MdtaMetadataEntry;

    iget-object v15, v9, Landroidx/media3/container/MdtaMetadataEntry;->key:Ljava/lang/String;

    move-object/from16 v23, v1

    const-string v1, "com.android.capture.fps"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x2

    if-ne v8, v1, :cond_50

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/media3/common/Metadata$Entry;

    const/4 v15, 0x0

    aput-object v9, v1, v15

    invoke-virtual {v7, v1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v7

    goto :goto_2b

    :cond_4e
    const/4 v1, 0x1

    const/4 v15, 0x0

    new-array v1, v1, [Landroidx/media3/common/Metadata$Entry;

    aput-object v9, v1, v15

    invoke-virtual {v7, v1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v7

    goto :goto_2b

    :cond_4f
    move-object/from16 v23, v1

    :cond_50
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v23

    goto :goto_2a

    :cond_51
    move-object/from16 v23, v1

    const/4 v1, 0x0

    const/4 v4, 0x4

    :goto_2c
    if-ge v1, v4, :cond_53

    aget-object v9, v3, v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_52

    goto :goto_2d

    :cond_52
    iget-object v9, v9, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    invoke-virtual {v7, v9}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v7

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_53
    iget-object v1, v7, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v1, v1

    if-lez v1, :cond_54

    iput-object v7, v10, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    :cond_54
    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v10}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v3, v13, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    const/4 v1, 0x2

    if-ne v8, v1, :cond_55

    const/4 v1, -0x1

    if-ne v6, v1, :cond_56

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_2e

    :cond_55
    const/4 v1, -0x1

    :cond_56
    :goto_2e
    move-object/from16 v3, v21

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v1

    move-wide/from16 v7, v17

    :goto_2f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v21, v3

    move/from16 v4, v16

    move-object/from16 v3, v22

    move-object/from16 v1, v23

    goto/16 :goto_25

    :cond_57
    move-object/from16 v3, v21

    const-wide/16 v1, 0x0

    iput v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    iput-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->durationUs:J

    const/4 v4, 0x0

    new-array v4, v4, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v3

    new-array v4, v4, [[J

    array-length v5, v3

    new-array v5, v5, [I

    array-length v6, v3

    new-array v6, v6, [J

    array-length v7, v3

    new-array v7, v7, [Z

    const/4 v8, 0x0

    :goto_30
    array-length v9, v3

    if-ge v8, v9, :cond_58

    aget-object v9, v3, v8

    iget-object v9, v9, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v9, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v9, v9, [J

    aput-object v9, v4, v8

    aget-object v9, v3, v8

    iget-object v9, v9, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_58
    const/4 v8, 0x0

    :goto_31
    array-length v9, v3

    if-ge v8, v9, :cond_5c

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x0

    move v12, v13

    :goto_32
    array-length v14, v3

    if-ge v11, v14, :cond_5a

    aget-boolean v14, v7, v11

    if-nez v14, :cond_59

    aget-wide v14, v6, v11

    cmp-long v16, v14, v9

    if-gtz v16, :cond_59

    move v12, v11

    move-wide v9, v14

    :cond_59
    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    :cond_5a
    aget v9, v5, v12

    aget-object v10, v4, v12

    aput-wide v1, v10, v9

    aget-object v11, v3, v12

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v14, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v14, v14, v9

    int-to-long v14, v14

    add-long/2addr v1, v14

    const/4 v14, 0x1

    add-int/2addr v9, v14

    aput v9, v5, v12

    array-length v10, v10

    if-ge v9, v10, :cond_5b

    iget-object v10, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v9, v10, v9

    aput-wide v9, v6, v12

    goto :goto_31

    :cond_5b
    aput-boolean v14, v7, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    :cond_5c
    iput-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x2

    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    goto/16 :goto_0

    :cond_5d
    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5e
    iget v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5f

    const/4 v1, 0x0

    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    :cond_5f
    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_0
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v3, :cond_42

    if-eq v3, v8, :cond_35

    const-wide/16 v13, 0x8

    if-eq v3, v7, :cond_1d

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1c

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    iget-object v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    iget v11, v10, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    if-eqz v11, :cond_18

    if-eq v11, v8, :cond_16

    iget-object v12, v10, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    const/16 v13, 0xb00

    if-eq v11, v7, :cond_12

    if-ne v11, v4, :cond_11

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v16

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v18

    sub-long v16, v16, v18

    iget v10, v10, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    int-to-long v10, v10

    sub-long v10, v16, v10

    long-to-int v10, v10

    new-instance v11, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v11, v10}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v6, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v9, v10}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const/4 v6, 0x4

    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_10

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    iget-wide v4, v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;->startOffset:J

    sub-long/2addr v4, v14

    long-to-int v4, v4

    invoke-virtual {v11, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v11, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    invoke-virtual {v11, v4}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "Super_SlowMotion_BGM"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    goto :goto_2

    :sswitch_1
    const-string v10, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    goto :goto_2

    :sswitch_2
    const-string v10, "Super_SlowMotion_Data"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2

    :sswitch_3
    const-string v10, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v8

    goto :goto_2

    :sswitch_4
    const-string v10, "SlowMotion_Data"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_a

    if-eq v5, v8, :cond_9

    if-eq v5, v7, :cond_8

    const/4 v10, 0x3

    if-eq v5, v10, :cond_7

    if-ne v5, v6, :cond_6

    const/16 v5, 0xb01

    goto :goto_3

    :cond_6
    const-string v0, "Invalid SEF name"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_7
    const/16 v5, 0xb04

    goto :goto_3

    :cond_8
    move v5, v13

    goto :goto_3

    :cond_9
    const/16 v5, 0xb03

    goto :goto_3

    :cond_a
    const/16 v5, 0x890

    :goto_3
    add-int/lit8 v4, v4, 0x8

    iget v1, v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;->size:I

    sub-int/2addr v1, v4

    const/16 v4, 0x890

    if-eq v5, v4, :cond_d

    if-eq v5, v13, :cond_c

    const/16 v1, 0xb01

    if-eq v5, v1, :cond_c

    const/16 v1, 0xb03

    if-eq v5, v1, :cond_c

    const/16 v1, 0xb04

    if-ne v5, v1, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    :goto_4
    const/4 v5, 0x0

    goto :goto_6

    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v1}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Landroidx/media3/extractor/mp4/SefReader;->ASTERISK_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v5, v1}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    sget-object v10, Landroidx/media3/extractor/mp4/SefReader;->COLON_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v10, v6}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x3

    if-ne v10, v13, :cond_e

    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v6, v8

    shl-int v24, v8, v6

    new-instance v6, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v24}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    const/16 v13, 0xb00

    goto :goto_5

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_e
    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_f
    const/4 v5, 0x0

    new-instance v1, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    invoke-direct {v1, v4}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/16 v13, 0xb00

    goto/16 :goto_0

    :cond_10
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    goto/16 :goto_c

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    iget v5, v10, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v5, v5, -0xc

    add-int/lit8 v5, v5, -0x8

    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v6, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v8, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const/4 v1, 0x0

    :goto_7
    const/16 v13, 0xb00

    div-int/lit8 v8, v5, 0xc

    if-ge v1, v8, :cond_14

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v8

    const/16 v9, 0x890

    if-eq v8, v9, :cond_13

    if-eq v8, v13, :cond_13

    const/16 v9, 0xb01

    if-eq v8, v9, :cond_13

    const/16 v9, 0xb03

    if-eq v8, v9, :cond_13

    const/16 v9, 0xb04

    if-eq v8, v9, :cond_13

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_8

    :cond_13
    iget v8, v10, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    int-to-long v8, v8

    sub-long v8, v3, v8

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v11

    int-to-long v13, v11

    sub-long/2addr v8, v13

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v11

    new-instance v13, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    invoke-direct {v13, v8, v9, v11}, Landroidx/media3/extractor/mp4/SefReader$DataReference;-><init>(JI)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v3, 0x0

    goto :goto_9

    :cond_15
    const/4 v1, 0x3

    iput v1, v10, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    iget-wide v3, v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;->startOffset:J

    :goto_9
    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    goto :goto_c

    :cond_16
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v5, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v5, v9, v4}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v10, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x53454654

    if-eq v3, v4, :cond_17

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    goto :goto_c

    :cond_17
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget v1, v10, Landroidx/media3/extractor/mp4/SefReader;->tailLength:I

    add-int/lit8 v1, v1, -0xc

    int-to-long v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    iput v7, v10, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    goto :goto_c

    :cond_18
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1a

    cmp-long v1, v3, v13

    if-gez v1, :cond_19

    goto :goto_a

    :cond_19
    sub-long/2addr v3, v13

    goto :goto_b

    :cond_1a
    :goto_a
    const-wide/16 v3, 0x0

    :goto_b
    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    const/4 v1, 0x1

    iput v1, v10, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    :goto_c
    iget-wide v1, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    :cond_1b
    const/4 v0, 0x1

    return v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1d
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_28

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-wide v15, 0x7fffffffffffffffL

    const-wide v17, 0x7fffffffffffffffL

    const-wide v19, 0x7fffffffffffffffL

    :goto_d
    iget-object v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v14, v13

    if-ge v7, v14, :cond_25

    aget-object v13, v13, v7

    iget v14, v13, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v13, v13, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v11, v13, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v14, v11, :cond_1e

    goto :goto_10

    :cond_1e
    iget-object v11, v13, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v11, v11, v14

    iget-object v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    sget v25, Landroidx/media3/common/util/Util;->SDK_INT:I

    aget-object v13, v13, v7

    aget-wide v13, v13, v14

    sub-long/2addr v11, v3

    const-wide/16 v25, 0x0

    cmp-long v25, v11, v25

    if-ltz v25, :cond_20

    const-wide/32 v23, 0x40000

    cmp-long v25, v11, v23

    if-ltz v25, :cond_1f

    goto :goto_e

    :cond_1f
    const/16 v25, 0x0

    goto :goto_f

    :cond_20
    :goto_e
    const/16 v25, 0x1

    :goto_f
    move/from16 v26, v5

    move/from16 v5, v25

    if-nez v5, :cond_21

    if-nez v9, :cond_22

    :cond_21
    if-ne v5, v9, :cond_23

    cmp-long v25, v11, v19

    if-gez v25, :cond_23

    :cond_22
    move v9, v5

    move v6, v7

    move-wide/from16 v19, v11

    move-wide/from16 v17, v13

    :cond_23
    cmp-long v11, v13, v15

    if-gez v11, :cond_24

    move v8, v5

    move v5, v7

    move-wide v15, v13

    goto :goto_10

    :cond_24
    move/from16 v5, v26

    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_25
    move/from16 v26, v5

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v5, v15, v11

    if-eqz v5, :cond_27

    if-eqz v8, :cond_27

    const-wide/32 v7, 0xa00000

    add-long/2addr v15, v7

    cmp-long v5, v17, v15

    if-gez v5, :cond_26

    goto :goto_11

    :cond_26
    move/from16 v5, v26

    goto :goto_12

    :cond_27
    :goto_11
    move v5, v6

    :goto_12
    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_28

    const/4 v0, -0x1

    goto/16 :goto_17

    :cond_28
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v5, v5, v6

    iget-object v6, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v7, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v8, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v9, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v11, v9, v7

    iget-object v9, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v9, v9, v7

    sub-long v3, v11, v3

    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v13, v13

    add-long/2addr v3, v13

    const-wide/16 v13, 0x0

    cmp-long v13, v3, v13

    if-ltz v13, :cond_34

    const-wide/32 v13, 0x40000

    cmp-long v13, v3, v13

    if-ltz v13, :cond_29

    goto/16 :goto_16

    :cond_29
    iget-object v2, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iget v11, v2, Landroidx/media3/extractor/mp4/Track;->sampleTransformation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2a

    const-wide/16 v11, 0x8

    add-long/2addr v3, v11

    add-int/lit8 v9, v9, -0x8

    :cond_2a
    long-to-int v3, v3

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iget v3, v2, Landroidx/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    iget-object v4, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v3, :cond_2d

    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v10, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v11, 0x0

    aput-byte v11, v10, v11

    const/4 v12, 0x1

    aput-byte v11, v10, v12

    const/4 v12, 0x2

    aput-byte v11, v10, v12

    rsub-int/lit8 v11, v3, 0x4

    :goto_13
    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v12, v9, :cond_31

    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v12, :cond_2c

    invoke-interface {v1, v10, v11, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v12, v3

    iput v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    if-ltz v13, :cond_2b

    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    iget-object v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v12, 0x4

    invoke-interface {v6, v12, v13}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v11

    goto :goto_13

    :cond_2b
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2c
    const/4 v13, 0x0

    invoke-interface {v6, v1, v12, v13}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v12

    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_13

    :cond_2d
    iget-object v2, v2, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_2e

    invoke-static {v9, v10}, Landroidx/media3/extractor/Ac4Util;->getAc4SampleHeader(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v2, 0x7

    invoke-interface {v6, v2, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    :cond_2e
    add-int/lit8 v9, v9, 0x7

    goto :goto_14

    :cond_2f
    if-eqz v4, :cond_30

    invoke-virtual {v4, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->startSample(Landroidx/media3/extractor/ExtractorInput;)V

    :cond_30
    :goto_14
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v9, :cond_31

    sub-int v2, v9, v2

    const/4 v3, 0x0

    invoke-interface {v6, v1, v2, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_14

    :cond_31
    iget-object v1, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v1, v1, v7

    iget-object v3, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v3, v3, v7

    if-eqz v4, :cond_32

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move-object v12, v6

    move-wide v13, v1

    move v15, v3

    move/from16 v16, v9

    invoke-virtual/range {v11 .. v18}, Landroidx/media3/extractor/TrueHdSampleRechunker;->sampleMetadata(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v7, v7, 0x1

    iget v1, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v7, v1, :cond_33

    const/4 v1, 0x0

    invoke-virtual {v4, v6, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_15

    :cond_32
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v6

    move-wide v12, v1

    move v14, v3

    move v15, v9

    invoke-interface/range {v11 .. v17}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_33
    :goto_15
    iget v1, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v1, -0x1

    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v1, 0x0

    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v0, 0x0

    goto :goto_17

    :cond_34
    :goto_16
    iput-wide v11, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_35
    iget-wide v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v3, :cond_3e

    iget-object v9, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v5, v5

    invoke-interface {v1, v9, v10, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v6, 0x66747970

    if-ne v5, v6, :cond_3d

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x71742020

    const v6, 0x68656963

    if-eq v4, v6, :cond_37

    if-eq v4, v5, :cond_36

    const/4 v4, 0x0

    goto :goto_18

    :cond_36
    const/4 v4, 0x1

    goto :goto_18

    :cond_37
    const/4 v4, 0x2

    :goto_18
    if-eqz v4, :cond_38

    goto :goto_1a

    :cond_38
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_39
    iget v4, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v9, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v4, v9

    if-lez v4, :cond_3c

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    if-eq v4, v6, :cond_3b

    if-eq v4, v5, :cond_3a

    const/4 v4, 0x0

    goto :goto_19

    :cond_3a
    const/4 v4, 0x1

    goto :goto_19

    :cond_3b
    const/4 v4, 0x2

    :goto_19
    if-eqz v4, :cond_39

    goto :goto_1a

    :cond_3c
    const/4 v4, 0x0

    :goto_1a
    iput v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_1b

    :cond_3d
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3f

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    new-instance v5, Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v5, v6, v3}, Landroidx/media3/extractor/mp4/Atom$LeafAtom;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v3, v4, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3e
    const-wide/32 v3, 0x40000

    cmp-long v3, v5, v3

    if-gez v3, :cond_40

    long-to-int v3, v5

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_3f
    :goto_1b
    const/4 v3, 0x0

    goto :goto_1c

    :cond_40
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    const/4 v3, 0x1

    :goto_1c
    invoke-virtual {v0, v7, v8}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    if-eqz v3, :cond_41

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_41

    const/4 v3, 0x1

    goto :goto_1d

    :cond_41
    const/4 v3, 0x0

    :goto_1d
    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_42
    const/4 v5, 0x0

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    iget-object v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeader:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v3, :cond_44

    iget-object v3, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v7, 0x8

    const/4 v9, 0x0

    invoke-interface {v1, v3, v9, v7, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_28

    :cond_43
    iput v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    :cond_44
    iget-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v11, 0x1

    cmp-long v3, v7, v11

    if-nez v3, :cond_45

    iget-object v3, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v7, 0x8

    invoke-interface {v1, v3, v7, v7}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v3, v7

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v7

    goto :goto_1e

    :cond_45
    const-wide/16 v11, 0x0

    cmp-long v3, v7, v11

    if-nez v3, :cond_47

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v7

    const-wide/16 v11, -0x1

    cmp-long v3, v7, v11

    if-nez v3, :cond_46

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    if-eqz v3, :cond_46

    iget-wide v7, v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    :cond_46
    cmp-long v3, v7, v11

    if-eqz v3, :cond_47

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    sub-long/2addr v7, v11

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v11, v3

    add-long/2addr v7, v11

    :goto_1e
    iput-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    :cond_47
    iget-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v11, v3

    cmp-long v7, v7, v11

    if-ltz v7, :cond_54

    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v8, 0x6d6f6f76

    const v9, 0x6d657461

    if-eq v7, v8, :cond_49

    const v8, 0x7472616b

    if-eq v7, v8, :cond_49

    const v8, 0x6d646961

    if-eq v7, v8, :cond_49

    const v8, 0x6d696e66

    if-eq v7, v8, :cond_49

    const v8, 0x7374626c

    if-eq v7, v8, :cond_49

    const v8, 0x65647473

    if-eq v7, v8, :cond_49

    if-ne v7, v9, :cond_48

    goto :goto_1f

    :cond_48
    const/4 v8, 0x0

    goto :goto_20

    :cond_49
    :goto_1f
    const/4 v8, 0x1

    :goto_20
    const v11, 0x68646c72    # 4.3148E24f

    if-eqz v8, :cond_4d

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v5, v7

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v12, v3

    sub-long/2addr v5, v12

    cmp-long v3, v7, v12

    if-eqz v3, :cond_4b

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    if-ne v3, v9, :cond_4b

    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v7, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v8, 0x0

    invoke-interface {v1, v8, v3, v7}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    sget-object v3, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    iget v3, v10, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const/4 v7, 0x4

    invoke-virtual {v10, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v10}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-eq v7, v11, :cond_4a

    add-int/lit8 v3, v3, 0x4

    :cond_4a
    invoke-virtual {v10, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget v3, v10, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    :cond_4b
    new-instance v3, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v3, v7, v5, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v7, v7

    cmp-long v3, v3, v7

    if-nez v3, :cond_4c

    invoke-virtual {v0, v5, v6}, Landroidx/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_21

    :cond_4c
    const/4 v3, 0x0

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    :goto_21
    const/4 v3, 0x1

    :goto_22
    move v9, v3

    goto/16 :goto_28

    :cond_4d
    const v4, 0x6d646864

    if-eq v7, v4, :cond_4f

    const v4, 0x6d766864

    if-eq v7, v4, :cond_4f

    if-eq v7, v11, :cond_4f

    const v4, 0x73747364

    if-eq v7, v4, :cond_4f

    const v4, 0x73747473

    if-eq v7, v4, :cond_4f

    const v4, 0x73747373

    if-eq v7, v4, :cond_4f

    const v4, 0x63747473

    if-eq v7, v4, :cond_4f

    const v4, 0x656c7374

    if-eq v7, v4, :cond_4f

    const v4, 0x73747363

    if-eq v7, v4, :cond_4f

    const v4, 0x7374737a

    if-eq v7, v4, :cond_4f

    const v4, 0x73747a32

    if-eq v7, v4, :cond_4f

    const v4, 0x7374636f

    if-eq v7, v4, :cond_4f

    const v4, 0x636f3634

    if-eq v7, v4, :cond_4f

    const v4, 0x746b6864

    if-eq v7, v4, :cond_4f

    const v4, 0x66747970

    if-eq v7, v4, :cond_4f

    const v4, 0x75647461

    if-eq v7, v4, :cond_4f

    const v4, 0x6b657973

    if-eq v7, v4, :cond_4f

    const v4, 0x696c7374

    if-ne v7, v4, :cond_4e

    goto :goto_23

    :cond_4e
    const/4 v4, 0x0

    goto :goto_24

    :cond_4f
    :goto_23
    const/4 v4, 0x1

    :goto_24
    if-eqz v4, :cond_52

    const/16 v4, 0x8

    if-ne v3, v4, :cond_50

    const/4 v3, 0x1

    goto :goto_25

    :cond_50
    const/4 v3, 0x0

    :goto_25
    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v3, v7

    if-gtz v3, :cond_51

    const/4 v3, 0x1

    goto :goto_26

    :cond_51
    const/4 v3, 0x0

    :goto_26
    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v3, v3

    invoke-direct {v5, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v3, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-object v4, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static {v3, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    :cond_52
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v6

    sub-long v11, v3, v6

    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_53

    new-instance v8, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    const-wide/16 v9, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    add-long v15, v11, v6

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    sub-long v17, v3, v6

    invoke-direct/range {v8 .. v18}, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    :cond_53
    :goto_27
    iput-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomData:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v3, 0x1

    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    goto/16 :goto_22

    :goto_28
    if-nez v9, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_54
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->parserState:I

    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    goto :goto_3

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->sefReader:Landroidx/media3/extractor/mp4/SefReader;

    iget-object p2, p1, Landroidx/media3/extractor/mp4/SefReader;->dataReferences:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iput v0, p1, Landroidx/media3/extractor/mp4/SefReader;->readerState:I

    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->tracks:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length p1, p0

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_6

    aget-object v2, p0, p2

    iget-object v3, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    invoke-static {v4, p3, p4, v0}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v4

    :goto_1
    if-ltz v4, :cond_3

    iget-object v5, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v5, v5, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_2
    if-ne v4, v1, :cond_4

    invoke-virtual {v3, p3, p4}, Landroidx/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v4

    :cond_4
    iput v4, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v2, :cond_5

    iput-boolean v0, v2, Landroidx/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    iput v0, v2, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0, p0}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method
