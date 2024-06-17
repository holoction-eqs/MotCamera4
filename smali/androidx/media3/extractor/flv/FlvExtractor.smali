.class public final Landroidx/media3/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

.field public bytesToNextTagHeader:I

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public final headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public mediaTagTimestampOffsetUs:J

.field public final metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

.field public outputFirstSample:Z

.field public outputSeekMap:Z

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public state:I

.field public final tagData:Landroidx/media3/common/util/ParsableByteArray;

.field public tagDataSize:I

.field public final tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public tagTimestampUs:J

.field public tagType:I

.field public videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v2, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0, v4}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_0
    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-object v0, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget p0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v4, p0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-object v1
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/16 v7, 0x8

    const/16 v8, 0x9

    const/4 v9, 0x2

    if-eq v2, v5, :cond_f

    const/4 v10, 0x3

    if-eq v2, v9, :cond_e

    if-eq v2, v10, :cond_c

    if-ne v2, v3, :cond_b

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v6, v0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    if-eqz v2, :cond_1

    iget-wide v14, v0, Landroidx/media3/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v10, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v14, v10

    goto :goto_1

    :cond_1
    iget-wide v10, v6, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    cmp-long v2, v10, v12

    if-nez v2, :cond_2

    const-wide/16 v14, 0x0

    goto :goto_1

    :cond_2
    iget-wide v14, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    :goto_1
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagType:I

    if-ne v2, v7, :cond_4

    iget-object v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    if-eqz v7, :cond_4

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v7, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v7, v12, v13}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v7}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_3
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    goto :goto_2

    :cond_4
    if-ne v2, v8, :cond_6

    iget-object v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    if-eqz v7, :cond_6

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v7, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v7, v12, v13}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v7}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_5
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    :goto_2
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/transition/ViewOverlayApi14;->parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2, v14, v15, v7}, Landroidx/transition/ViewOverlayApi14;->parsePayload(JLandroidx/media3/common/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v5

    goto :goto_3

    :cond_6
    const/16 v7, 0x12

    if-ne v2, v7, :cond_8

    iget-boolean v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v2, :cond_8

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v14, v15, v2}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->parsePayload(JLandroidx/media3/common/util/ParsableByteArray;)Z

    iget-wide v7, v6, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    cmp-long v2, v7, v12

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v10, Landroidx/media3/extractor/IndexSeekMap;

    iget-object v11, v6, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    iget-object v14, v6, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    invoke-direct {v10, v7, v8, v11, v14}, Landroidx/media3/extractor/IndexSeekMap;-><init>(J[J[J)V

    invoke-interface {v2, v10}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_7
    move v2, v4

    :goto_3
    move v7, v5

    goto :goto_4

    :cond_8
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    move v2, v4

    move v7, v2

    :goto_4
    iget-boolean v8, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-nez v8, :cond_a

    if-eqz v2, :cond_a

    iput-boolean v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    iget-wide v5, v6, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    cmp-long v2, v5, v12

    if-nez v2, :cond_9

    iget-wide v5, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v10, v5

    goto :goto_5

    :cond_9
    const-wide/16 v10, 0x0

    :goto_5
    iput-wide v10, v0, Landroidx/media3/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    :cond_a
    iput v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    iput v9, v0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    if-eqz v7, :cond_0

    return v4

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v7, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v8, 0xb

    invoke-interface {v1, v7, v4, v8, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    iput v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagType:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    iput v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    int-to-long v7, v4

    iput-wide v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    int-to-long v7, v4

    iget-wide v11, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v7, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v7, v11

    iput-wide v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    invoke-virtual {v2, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iput v3, v0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    move v4, v5

    :goto_6
    if-nez v4, :cond_0

    return v6

    :cond_e
    iget v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    iput v10, v0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    goto/16 :goto_0

    :cond_f
    iget-object v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v10, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v10, v4, v8, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v10

    if-nez v10, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    and-int/lit8 v11, v10, 0x4

    if-eqz v11, :cond_11

    move v11, v5

    goto :goto_7

    :cond_11
    move v11, v4

    :goto_7
    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_12

    move v4, v5

    :cond_12
    if-eqz v11, :cond_13

    iget-object v10, v0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    if-nez v10, :cond_13

    new-instance v10, Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    iget-object v11, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v11, v7, v5}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v7

    invoke-direct {v10, v7}, Landroidx/media3/extractor/flv/AudioTagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v10, v0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    :cond_13
    if-eqz v4, :cond_14

    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    if-nez v4, :cond_14

    new-instance v4, Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    iget-object v7, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v7, v8, v9}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v7

    invoke-direct {v4, v7}, Landroidx/media3/extractor/flv/VideoTagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    :cond_14
    iget-object v4, v0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v4}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    sub-int/2addr v2, v8

    add-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    iput v9, v0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    move v4, v5

    :goto_8
    if-nez v4, :cond_0

    return v6
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    iput-boolean p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    :goto_0
    iput p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v1, p1, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-virtual {p1, v0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v0, v1, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
