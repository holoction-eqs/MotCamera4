.class public final Landroidx/media3/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final SSA_DIALOGUE_FORMAT:[B

.field public static final SSA_PREFIX:[B

.field public static final SUBRIP_PREFIX:[B

.field public static final TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

.field public static final VTT_PREFIX:[B

.field public static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field public blockAdditionalId:I

.field public blockDurationUs:J

.field public blockFlags:I

.field public blockGroupDiscardPaddingNs:J

.field public blockHasReferenceBlock:Z

.field public blockSampleCount:I

.field public blockSampleIndex:I

.field public blockSampleSizes:[I

.field public blockState:I

.field public blockTimeUs:J

.field public blockTrackNumber:I

.field public blockTrackNumberLength:I

.field public clusterTimecodeUs:J

.field public cueClusterPositions:Lcom/adobe/xmp/impl/ParseState;

.field public cueTimesUs:Lcom/adobe/xmp/impl/ParseState;

.field public cuesContentPosition:J

.field public currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

.field public durationTimecode:J

.field public durationUs:J

.field public final encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

.field public final encryptionSubsampleData:Landroidx/media3/common/util/ParsableByteArray;

.field public encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public haveOutputSample:Z

.field public final nalLength:Landroidx/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field public final reader:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

.field public sampleBytesRead:I

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleEncodingHandled:Z

.field public sampleInitializationVectorRead:Z

.field public samplePartitionCount:I

.field public samplePartitionCountRead:Z

.field public sampleSignalByte:B

.field public sampleSignalByteRead:Z

.field public final sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public seekEntryId:I

.field public final seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

.field public seekEntryPosition:J

.field public seekForCues:Z

.field public final seekForCuesEnabled:Z

.field public seekPositionAfterBuildingCues:J

.field public seenClusterPositionForCurrentCuePoint:Z

.field public segmentContentPosition:J

.field public segmentContentSize:J

.field public sentSeekMap:Z

.field public final subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

.field public final supplementalData:Landroidx/media3/common/util/ParsableByteArray;

.field public timecodeScale:J

.field public final tracks:Landroid/util/SparseArray;

.field public final varintReader:Landroidx/media3/extractor/mkv/VarintReader;

.field public final vorbisNumPageSamples:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-static {v1}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->VTT_PREFIX:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const-string v7, "htc_video_rotA-000"

    const/16 v8, 0x5a

    const-string v9, "htc_video_rotA-090"

    const/16 v10, 0xb4

    const-string v11, "htc_video_rotA-180"

    const/16 v12, 0x10e

    const-string v13, "htc_video_rotA-270"

    move-object v6, v0

    invoke-static/range {v5 .. v13}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/appcompat/widget/Toolbar$1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    new-instance v1, Landroidx/media3/extractor/mkv/VarintReader;

    invoke-direct {v1}, Landroidx/media3/extractor/mkv/VarintReader;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v3, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    return-void
.end method

.method public static formatSubtitleTimecode(JLjava/lang/String;J)[B
    .locals 9

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    const-wide v0, 0xd693a400L

    div-long v0, p0, v0

    long-to-int v0, v0

    int-to-long v1, v0

    const-wide/16 v3, 0xe10

    mul-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    sub-long/2addr p0, v1

    const-wide/32 v1, 0x3938700

    div-long v1, p0, v1

    long-to-int v1, v1

    int-to-long v5, v1

    const-wide/16 v7, 0x3c

    mul-long/2addr v5, v7

    mul-long/2addr v5, v3

    sub-long/2addr p0, v5

    div-long v5, p0, v3

    long-to-int v2, v5

    int-to-long v5, v2

    mul-long/2addr v5, v3

    sub-long/2addr p0, v5

    div-long/2addr p0, p3

    long-to-int p0, p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p4, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final assertInCues(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/adobe/xmp/impl/ParseState;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/adobe/xmp/impl/ParseState;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Element "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final assertInTrackEntry(I)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Element "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final commitSampleToOutput(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v8, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-object v1, v2

    move-object v2, v3

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/extractor/TrueHdSampleRechunker;->sampleMetadata(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto/16 :goto_8

    :cond_0
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "S_TEXT/WEBVTT"

    const-string v5, "S_TEXT/ASS"

    const/4 v6, 0x0

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-le v2, v9, :cond_2

    const-string v2, "Skipping subtitle sample in laced block."

    goto :goto_0

    :cond_2
    iget-wide v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v10

    if-nez v2, :cond_4

    const-string v2, "Skipping subtitle sample with no duration."

    :goto_0
    const-string v3, "MatroskaExtractor"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move/from16 v2, p5

    goto/16 :goto_6

    :cond_4
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v11, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, 0x2c0618eb

    const/4 v14, 0x2

    if-eq v12, v13, :cond_9

    const v5, 0x3e4ca2d8

    if-eq v12, v5, :cond_7

    const v4, 0x54c61e47

    if-eq v12, v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v14

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v2, v9

    goto :goto_2

    :cond_9
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :goto_1
    const/4 v2, -0x1

    goto :goto_2

    :cond_a
    move v2, v6

    :goto_2
    if-eqz v2, :cond_d

    const-wide/16 v3, 0x3e8

    if-eq v2, v9, :cond_c

    if-ne v2, v14, :cond_b

    const-string v2, "%02d:%02d:%02d,%03d"

    invoke-static {v7, v8, v2, v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x13

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    const-string v2, "%02d:%02d:%02d.%03d"

    invoke-static {v7, v8, v2, v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_3

    :cond_d
    const-string v2, "%01d:%02d:%02d:%02d"

    const-wide/16 v3, 0x2710

    invoke-static {v7, v8, v2, v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x15

    :goto_3
    array-length v4, v2

    invoke-static {v2, v6, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v10, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_4
    iget v3, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ge v2, v3, :cond_f

    iget-object v3, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_e

    invoke-virtual {v10, v2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_5

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    :goto_5
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget v3, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-interface {v2, v3, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v2, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int v2, p5, v2

    :goto_6
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_11

    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    if-le v3, v9, :cond_10

    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    goto :goto_7

    :cond_10
    iget v3, v4, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v3, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    add-int/2addr v2, v3

    :cond_11
    :goto_7
    move v14, v2

    iget-object v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :goto_8
    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    return-void
.end method

.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    const/4 v6, -0x1

    if-eqz v5, :cond_6b

    iget-boolean v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    if-nez v7, :cond_6b

    iget-object v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    iget-object v5, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/appcompat/widget/Toolbar$1;

    invoke-static {v5}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    :goto_1
    iget-object v5, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    if-eqz v8, :cond_0

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    iget-wide v13, v8, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    cmp-long v8, v11, v13

    if-ltz v8, :cond_0

    iget-object v6, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/appcompat/widget/Toolbar$1;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v5, v5, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/Toolbar$1;->endMasterElement(I)V

    goto/16 :goto_f

    :cond_0
    iget v8, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    const v12, 0x1f43b675

    const-wide/16 v13, 0x0

    const/16 v15, 0x8

    const/4 v9, 0x4

    iget-object v10, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->scratch:[B

    iget-object v11, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    if-nez v8, :cond_9

    invoke-virtual {v11, v1, v4, v3, v9}, Landroidx/media3/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v19

    const-wide/16 v21, -0x2

    cmp-long v8, v19, v21

    if-nez v8, :cond_7

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    :goto_2
    invoke-interface {v1, v3, v9, v10}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    aget-byte v8, v10, v3

    move v4, v3

    :goto_3
    if-ge v4, v15, :cond_2

    sget-object v19, Landroidx/media3/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    aget-wide v19, v19, v4

    move-object/from16 v23, v10

    int-to-long v9, v8

    and-long v9, v19, v9

    cmp-long v9, v9, v13

    add-int/lit8 v4, v4, 0x1

    if-eqz v9, :cond_1

    goto :goto_4

    :cond_1
    move-object/from16 v10, v23

    const/4 v9, 0x4

    goto :goto_3

    :cond_2
    move-object/from16 v23, v10

    move v4, v6

    :goto_4
    if-eq v4, v6, :cond_5

    const/4 v8, 0x4

    if-gt v4, v8, :cond_5

    move-object/from16 v8, v23

    invoke-static {v4, v3, v8}, Landroidx/media3/extractor/mkv/VarintReader;->assembleVarint(IZ[B)J

    move-result-wide v9

    long-to-int v9, v9

    iget-object v10, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/appcompat/widget/Toolbar$1;

    iget-object v10, v10, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x1549a966

    if-eq v9, v10, :cond_4

    if-eq v9, v12, :cond_4

    const v10, 0x1c53bb6b

    if-eq v9, v10, :cond_4

    const v10, 0x1654ae6b

    if-ne v9, v10, :cond_3

    goto :goto_5

    :cond_3
    move v10, v3

    goto :goto_6

    :cond_4
    :goto_5
    const/4 v10, 0x1

    :goto_6
    if-eqz v10, :cond_6

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    int-to-long v9, v9

    const/4 v4, 0x1

    goto :goto_7

    :cond_5
    move-object/from16 v8, v23

    :cond_6
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    move-object v10, v8

    const/4 v9, 0x4

    goto :goto_2

    :cond_7
    move-object v8, v10

    move-wide/from16 v9, v19

    :goto_7
    const-wide/16 v16, -0x1

    cmp-long v19, v9, v16

    if-nez v19, :cond_8

    move v5, v3

    goto/16 :goto_2b

    :cond_8
    long-to-int v9, v9

    iput v9, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iput v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto :goto_8

    :cond_9
    move-object v8, v10

    :goto_8
    iget v9, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v10, 0x2

    if-ne v9, v4, :cond_a

    invoke-virtual {v11, v1, v3, v4, v15}, Landroidx/media3/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v12

    iput-wide v12, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    iput v10, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    :cond_a
    iget-object v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/appcompat/widget/Toolbar$1;

    iget v11, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    const/4 v12, 0x3

    sparse-switch v11, :sswitch_data_0

    move v11, v3

    goto :goto_9

    :sswitch_0
    move v11, v4

    goto :goto_9

    :sswitch_1
    const/4 v11, 0x4

    goto :goto_9

    :sswitch_2
    const/4 v11, 0x1

    goto :goto_9

    :sswitch_3
    move v11, v12

    goto :goto_9

    :sswitch_4
    move v11, v10

    :goto_9
    if-eqz v11, :cond_6a

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v11, v14, :cond_59

    const/16 v5, 0xff

    const-wide/16 v23, 0x1

    const-string v9, " not supported"

    const-wide/16 v25, 0x8

    if-eq v11, v10, :cond_41

    const-wide/32 v27, 0x7fffffff

    if-eq v11, v12, :cond_38

    const/4 v14, 0x4

    if-eq v11, v14, :cond_12

    if-ne v11, v4, :cond_11

    iget-wide v9, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v11, 0x4

    cmp-long v4, v9, v11

    if-eqz v4, :cond_c

    cmp-long v4, v9, v25

    if-nez v4, :cond_b

    goto :goto_a

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid float size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_a
    iget-object v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/appcompat/widget/Toolbar$1;

    iget v6, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v9, v9

    invoke-interface {v1, v8, v3, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    move v10, v3

    const-wide/16 v13, 0x0

    :goto_b
    if-ge v10, v9, :cond_d

    shl-long v11, v13, v15

    aget-byte v13, v8, v10

    and-int/2addr v13, v5

    int-to-long v13, v13

    or-long/2addr v13, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_d
    const/4 v5, 0x4

    if-ne v9, v5, :cond_e

    long-to-int v5, v13

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    float-to-double v8, v5

    goto :goto_c

    :cond_e
    invoke-static {v13, v14}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    :goto_c
    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    const/16 v5, 0xb5

    if-eq v6, v5, :cond_10

    const/16 v5, 0x4489

    if-eq v6, v5, :cond_f

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_d

    :pswitch_0
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    goto/16 :goto_e

    :pswitch_1
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    goto/16 :goto_e

    :pswitch_2
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    goto/16 :goto_e

    :pswitch_3
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    goto :goto_e

    :pswitch_4
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    goto :goto_e

    :pswitch_5
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    goto :goto_e

    :pswitch_6
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    goto :goto_e

    :pswitch_7
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    goto :goto_e

    :pswitch_8
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    goto :goto_e

    :pswitch_9
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    goto :goto_e

    :pswitch_a
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    goto :goto_e

    :pswitch_b
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    goto :goto_e

    :pswitch_c
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    goto :goto_e

    :goto_d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_e

    :cond_f
    double-to-long v5, v8

    iput-wide v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    goto :goto_e

    :cond_10
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-int v5, v8

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    :goto_e
    iput v3, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    :goto_f
    const/4 v5, 0x1

    goto/16 :goto_2b

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid element type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_12
    iget-object v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/appcompat/widget/Toolbar$1;

    iget v8, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v5, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v5, v5

    iget-object v4, v4, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    const/16 v9, 0xa1

    const/16 v11, 0xa3

    if-eq v8, v9, :cond_1e

    if-eq v8, v11, :cond_1e

    const/16 v9, 0xa5

    if-eq v8, v9, :cond_1b

    const/16 v6, 0x41ed

    if-eq v8, v6, :cond_18

    const/16 v6, 0x4255

    if-eq v8, v6, :cond_17

    const/16 v6, 0x47e2

    if-eq v8, v6, :cond_16

    const/16 v6, 0x53ab

    if-eq v8, v6, :cond_15

    const/16 v6, 0x63a2

    if-eq v8, v6, :cond_14

    const/16 v6, 0x7672

    if-ne v8, v6, :cond_13

    invoke-virtual {v4, v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v6, v5, [B

    iput-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    invoke-interface {v1, v6, v3, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_e

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_14
    invoke-virtual {v4, v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v6, v5, [B

    iput-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v1, v6, v3, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_e

    :cond_15
    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v8, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v8, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v8, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    rsub-int/lit8 v9, v5, 0x4

    invoke-interface {v1, v8, v9, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v6, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    goto/16 :goto_e

    :cond_16
    new-array v6, v5, [B

    invoke-interface {v1, v6, v3, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v4, v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-instance v5, Landroidx/media3/extractor/TrackOutput$CryptoData;

    const/4 v8, 0x1

    invoke-direct {v5, v8, v6, v3, v3}, Landroidx/media3/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    goto/16 :goto_e

    :cond_17
    invoke-virtual {v4, v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v6, v5, [B

    iput-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    invoke-interface {v1, v6, v3, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_e

    :cond_18
    invoke-virtual {v4, v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    const v8, 0x64767643

    if-eq v6, v8, :cond_1a

    const v8, 0x64766343

    if-ne v6, v8, :cond_19

    goto :goto_10

    :cond_19
    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto/16 :goto_e

    :cond_1a
    :goto_10
    new-array v6, v5, [B

    iput-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    invoke-interface {v1, v6, v3, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_e

    :cond_1b
    iget v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    if-eq v8, v10, :cond_1c

    goto/16 :goto_e

    :cond_1c
    iget v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1d

    const-string v8, "V_VP9"

    iget-object v6, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v4, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v4, v3, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_e

    :cond_1d
    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto/16 :goto_e

    :cond_1e
    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    iget-object v14, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v9, :cond_1f

    iget-object v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    const/4 v11, 0x1

    invoke-virtual {v9, v1, v3, v11, v15}, Landroidx/media3/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    iget v9, v9, Landroidx/media3/extractor/mkv/VarintReader;->length:I

    iput v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    iput v11, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    invoke-virtual {v14, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    :cond_1f
    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    if-nez v6, :cond_20

    iget v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v5, v6

    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto/16 :goto_1f

    :cond_20
    iget-object v9, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_35

    const/4 v9, 0x3

    invoke-virtual {v4, v1, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v9, v14, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, 0x6

    shr-int/2addr v9, v11

    if-nez v9, :cond_23

    iput v11, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    iget-object v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-nez v9, :cond_21

    new-array v9, v11, [I

    goto :goto_11

    :cond_21
    array-length v12, v9

    if-lt v12, v11, :cond_22

    goto :goto_11

    :cond_22
    array-length v9, v9

    mul-int/2addr v9, v10

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [I

    :goto_11
    iput-object v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v11, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v5, v11

    const/4 v11, 0x3

    sub-int/2addr v5, v11

    aput v5, v9, v3

    goto/16 :goto_1a

    :cond_23
    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-virtual {v4, v1, v12}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v12, v14, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v12, v12, v11

    const/16 v11, 0xff

    and-int/2addr v12, v11

    const/4 v13, 0x1

    add-int/2addr v12, v13

    iput v12, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    iget-object v13, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-nez v13, :cond_24

    new-array v13, v12, [I

    goto :goto_12

    :cond_24
    array-length v11, v13

    if-lt v11, v12, :cond_25

    goto :goto_12

    :cond_25
    array-length v11, v13

    mul-int/2addr v11, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v13, v11, [I

    :goto_12
    iput-object v13, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-ne v9, v10, :cond_26

    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v5, v9

    const/4 v11, 0x4

    sub-int/2addr v5, v11

    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    div-int/2addr v5, v9

    invoke-static {v13, v3, v9, v5}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_1a

    :cond_26
    const/4 v11, 0x4

    const/4 v12, 0x1

    if-ne v9, v12, :cond_29

    move v13, v3

    move v9, v11

    move v11, v13

    :goto_13
    iget v10, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    const/16 v18, -0x1

    add-int/lit8 v10, v10, -0x1

    if-ge v11, v10, :cond_28

    iget-object v10, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v3, v10, v11

    :goto_14
    add-int/2addr v9, v12

    invoke-virtual {v4, v1, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v10, v14, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v12, v9, -0x1

    aget-byte v10, v10, v12

    const/16 v12, 0xff

    and-int/2addr v10, v12

    iget-object v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v19, v15, v11

    add-int v19, v19, v10

    aput v19, v15, v11

    if-eq v10, v12, :cond_27

    add-int v13, v13, v19

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    const/16 v15, 0x8

    goto :goto_13

    :cond_27
    const/4 v12, 0x1

    const/16 v15, 0x8

    goto :goto_14

    :cond_28
    iget-object v11, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v5, v15

    sub-int/2addr v5, v9

    sub-int/2addr v5, v13

    aput v5, v11, v10

    goto/16 :goto_1a

    :cond_29
    const/4 v10, 0x3

    if-ne v9, v10, :cond_34

    move v10, v3

    move v9, v11

    move v11, v10

    :goto_15
    iget v13, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    const/4 v15, -0x1

    add-int/2addr v13, v15

    if-ge v10, v13, :cond_31

    iget-object v13, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v3, v13, v10

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v1, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v13, v14, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v18, v9, -0x1

    aget-byte v13, v13, v18

    if-eqz v13, :cond_30

    move v13, v3

    :goto_16
    const/16 v12, 0x8

    if-ge v13, v12, :cond_2d

    rsub-int/lit8 v12, v13, 0x7

    const/16 v21, 0x1

    shl-int v12, v21, v12

    iget-object v15, v14, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v15, v15, v18

    and-int/2addr v15, v12

    if-eqz v15, :cond_2c

    add-int/2addr v9, v13

    invoke-virtual {v4, v1, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v15, v14, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v29, v18, 0x1

    aget-byte v15, v15, v18

    const/16 v3, 0xff

    and-int/2addr v15, v3

    not-int v12, v12

    and-int/2addr v12, v15

    move-object v15, v4

    int-to-long v3, v12

    move/from16 v12, v29

    :goto_17
    if-ge v12, v9, :cond_2a

    const/16 v18, 0x8

    shl-long v3, v3, v18

    move/from16 v29, v9

    iget-object v9, v14, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v18, v12, 0x1

    aget-byte v9, v9, v12

    const/16 v12, 0xff

    and-int/2addr v9, v12

    move/from16 v25, v13

    int-to-long v12, v9

    or-long/2addr v3, v12

    move/from16 v12, v18

    move/from16 v13, v25

    move/from16 v9, v29

    goto :goto_17

    :cond_2a
    move/from16 v29, v9

    move/from16 v25, v13

    if-lez v10, :cond_2b

    mul-int/lit8 v13, v25, 0x7

    add-int/lit8 v13, v13, 0x6

    shl-long v12, v23, v13

    sub-long v12, v12, v23

    sub-long/2addr v3, v12

    :cond_2b
    move/from16 v9, v29

    goto :goto_18

    :cond_2c
    move-object v15, v4

    move/from16 v25, v13

    add-int/lit8 v13, v25, 0x1

    const/4 v3, 0x0

    goto :goto_16

    :cond_2d
    move-object v15, v4

    const-wide/16 v3, 0x0

    :goto_18
    const-wide/32 v12, -0x80000000

    cmp-long v12, v3, v12

    if-ltz v12, :cond_2f

    cmp-long v12, v3, v27

    if-gtz v12, :cond_2f

    long-to-int v3, v3

    move-object v4, v15

    iget-object v12, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-nez v10, :cond_2e

    goto :goto_19

    :cond_2e
    add-int/lit8 v13, v10, -0x1

    aget v13, v12, v13

    add-int/2addr v3, v13

    :goto_19
    aput v3, v12, v10

    add-int/2addr v11, v3

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto/16 :goto_15

    :cond_2f
    const-string v0, "EBML lacing sample size out of range."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_30
    const/4 v1, 0x0

    const-string v0, "No valid varint length mask found"

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_31
    iget-object v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v10, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v5, v10

    sub-int/2addr v5, v9

    sub-int/2addr v5, v11

    aput v5, v3, v13

    :goto_1a
    iget-object v3, v14, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    aget-byte v9, v3, v5

    const/16 v5, 0x8

    shl-int/lit8 v5, v9, 0x8

    const/4 v9, 0x1

    aget-byte v3, v3, v9

    const/16 v9, 0xff

    and-int/2addr v3, v9

    or-int/2addr v3, v5

    iget-wide v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v11, v3

    invoke-virtual {v4, v11, v12}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v11

    add-long/2addr v11, v9

    iput-wide v11, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v3, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->type:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_33

    const/16 v3, 0xa3

    if-ne v8, v3, :cond_32

    iget-object v3, v14, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v5

    const/16 v9, 0x80

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_32

    goto :goto_1b

    :cond_32
    const/4 v3, 0x0

    goto :goto_1c

    :cond_33
    :goto_1b
    const/4 v3, 0x1

    :goto_1c
    iput v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iput v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v3, 0x0

    iput v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_1d

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected lacing value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_35
    :goto_1d
    const/16 v3, 0xa3

    if-ne v8, v3, :cond_37

    :goto_1e
    iget v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v3, v5, :cond_36

    iget-object v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v3, v5, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v6, v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v34

    iget-wide v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v5, v6, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v3, v5

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v10, v3

    add-long v31, v10, v8

    iget v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/16 v35, 0x0

    move-object/from16 v29, v4

    move-object/from16 v30, v6

    move/from16 v33, v3

    invoke-virtual/range {v29 .. v35}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    iget v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_1e

    :cond_36
    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_1f
    iput v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    goto/16 :goto_e

    :cond_37
    :goto_20
    const/4 v5, 0x1

    iget v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v3, v8, :cond_63

    iget-object v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v9, v8, v3

    invoke-virtual {v4, v1, v6, v9, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v9

    aput v9, v8, v3

    iget v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/2addr v3, v5

    iput v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_20

    :cond_38
    iget-wide v3, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v5, v3, v27

    if-gtz v5, :cond_40

    iget-object v5, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/appcompat/widget/Toolbar$1;

    iget v6, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v3, v3

    if-nez v3, :cond_39

    const-string v3, ""

    goto :goto_22

    :cond_39
    new-array v4, v3, [B

    const/4 v8, 0x0

    invoke-interface {v1, v4, v8, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    :goto_21
    if-lez v3, :cond_3a

    add-int/lit8 v10, v3, -0x1

    aget-byte v11, v4, v10

    if-nez v11, :cond_3a

    move v3, v10

    goto :goto_21

    :cond_3a
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v4, v8, v3}, Ljava/lang/String;-><init>([BII)V

    move-object v3, v10

    :goto_22
    iget-object v4, v5, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x86

    if-eq v6, v5, :cond_3f

    const/16 v5, 0x4282

    if-eq v6, v5, :cond_3d

    const/16 v5, 0x536e

    if-eq v6, v5, :cond_3c

    const v5, 0x22b59c

    if-eq v6, v5, :cond_3b

    goto/16 :goto_28

    :cond_3b
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-object v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    goto/16 :goto_28

    :cond_3c
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-object v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    goto/16 :goto_28

    :cond_3d
    const-string v4, "webm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "matroska"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    goto/16 :goto_28

    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DocType "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_3f
    invoke-virtual {v4, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-object v3, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    goto/16 :goto_28

    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String element size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_41
    iget-wide v3, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v5, v3, v25

    if-gtz v5, :cond_58

    iget-object v5, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/appcompat/widget/Toolbar$1;

    iget v6, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-interface {v1, v8, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    :goto_23
    if-ge v4, v3, :cond_42

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    aget-byte v13, v8, v4

    const/16 v14, 0xff

    and-int/2addr v13, v14

    int-to-long v12, v13

    or-long/2addr v10, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_42
    iget-object v3, v5, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x5031

    if-eq v6, v4, :cond_56

    const/16 v4, 0x5032

    if-eq v6, v4, :cond_54

    sparse-switch v6, :sswitch_data_1

    packed-switch v6, :pswitch_data_2

    goto/16 :goto_28

    :sswitch_5
    iput-wide v10, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    goto/16 :goto_28

    :sswitch_6
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    goto/16 :goto_28

    :sswitch_7
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int v4, v10

    if-eqz v4, :cond_46

    const/4 v5, 0x1

    if-eq v4, v5, :cond_45

    const/4 v5, 0x2

    if-eq v4, v5, :cond_44

    const/4 v6, 0x3

    if-eq v4, v6, :cond_43

    goto/16 :goto_28

    :cond_43
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_28

    :cond_44
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v5, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_28

    :cond_45
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    const/4 v4, 0x1

    goto :goto_24

    :cond_46
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    const/4 v4, 0x0

    :goto_24
    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    goto/16 :goto_28

    :sswitch_8
    iput-wide v10, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    goto/16 :goto_28

    :sswitch_9
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    goto/16 :goto_28

    :sswitch_a
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-wide v10, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    goto/16 :goto_28

    :sswitch_b
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-wide v10, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    goto/16 :goto_28

    :sswitch_c
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    goto/16 :goto_28

    :sswitch_d
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v4, v10, v23

    if-nez v4, :cond_47

    const/4 v4, 0x1

    goto :goto_25

    :cond_47
    const/4 v4, 0x0

    :goto_25
    iput-boolean v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    goto/16 :goto_28

    :sswitch_e
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto/16 :goto_28

    :sswitch_f
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    goto/16 :goto_28

    :sswitch_10
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    goto/16 :goto_28

    :sswitch_11
    long-to-int v4, v10

    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    if-eqz v4, :cond_4b

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4a

    const/4 v6, 0x3

    if-eq v4, v6, :cond_49

    const/16 v8, 0xf

    if-eq v4, v8, :cond_48

    goto/16 :goto_28

    :cond_48
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_28

    :cond_49
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v5, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_28

    :cond_4a
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    const/4 v10, 0x2

    goto :goto_26

    :cond_4b
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    const/4 v10, 0x0

    :goto_26
    iput v10, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_28

    :sswitch_12
    iget-wide v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr v10, v4

    iput-wide v10, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto/16 :goto_28

    :sswitch_13
    cmp-long v3, v10, v23

    if-nez v3, :cond_4c

    goto/16 :goto_28

    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AESSettingsCipherMode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :sswitch_14
    const-wide/16 v3, 0x5

    cmp-long v3, v10, v3

    if-nez v3, :cond_4d

    goto/16 :goto_28

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentEncAlgo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :sswitch_15
    const/4 v3, 0x0

    cmp-long v4, v10, v23

    if-nez v4, :cond_4e

    goto/16 :goto_28

    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EBMLReadVersion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :sswitch_16
    cmp-long v3, v10, v23

    if-ltz v3, :cond_4f

    const-wide/16 v3, 0x2

    cmp-long v3, v10, v3

    if-gtz v3, :cond_4f

    goto/16 :goto_28

    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DocTypeReadVersion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :sswitch_17
    const-wide/16 v3, 0x3

    cmp-long v3, v10, v3

    if-nez v3, :cond_50

    goto/16 :goto_28

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentCompAlgo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :sswitch_18
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    goto/16 :goto_28

    :sswitch_19
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    goto/16 :goto_28

    :sswitch_1a
    const/4 v4, 0x1

    iget-boolean v5, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v5, :cond_63

    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    iget-object v5, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/adobe/xmp/impl/ParseState;

    invoke-virtual {v5, v10, v11}, Lcom/adobe/xmp/impl/ParseState;->add(J)V

    iput-boolean v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto/16 :goto_28

    :sswitch_1b
    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    goto/16 :goto_28

    :sswitch_1c
    invoke-virtual {v3, v10, v11}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    goto/16 :goto_28

    :sswitch_1d
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    goto/16 :goto_28

    :sswitch_1e
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    goto/16 :goto_28

    :sswitch_1f
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    iget-object v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/adobe/xmp/impl/ParseState;

    invoke-virtual {v3, v10, v11}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/adobe/xmp/impl/ParseState;->add(J)V

    goto/16 :goto_28

    :sswitch_20
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    goto/16 :goto_28

    :sswitch_21
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    goto/16 :goto_28

    :sswitch_22
    invoke-virtual {v3, v10, v11}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    goto/16 :goto_28

    :sswitch_23
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v4, v10, v23

    if-nez v4, :cond_51

    const/4 v4, 0x1

    goto :goto_27

    :cond_51
    const/4 v4, 0x0

    :goto_27
    iput-boolean v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    goto/16 :goto_28

    :sswitch_24
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->type:I

    goto/16 :goto_28

    :pswitch_d
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    goto :goto_28

    :pswitch_e
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int v4, v10

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    goto :goto_28

    :pswitch_f
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    long-to-int v4, v10

    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_63

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto :goto_28

    :pswitch_10
    const/4 v5, -0x1

    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int v4, v10

    invoke-static {v4}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v4

    if-eq v4, v5, :cond_63

    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto :goto_28

    :pswitch_11
    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int v4, v10

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v5, :cond_53

    if-eq v4, v6, :cond_52

    goto :goto_28

    :cond_52
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v5, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    goto :goto_28

    :cond_53
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    goto :goto_28

    :cond_54
    cmp-long v3, v10, v23

    if-nez v3, :cond_55

    goto :goto_28

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentEncodingScope "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_56
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-nez v3, :cond_57

    :goto_28
    goto/16 :goto_2a

    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentEncodingOrder "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_58
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid integer size: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_59
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v12, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v12, v3

    new-instance v6, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v8, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-direct {v6, v8, v12, v13}, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v5, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/appcompat/widget/Toolbar$1;

    iget v6, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v12, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    iget-object v5, v5, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v8, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v8}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    const/16 v8, 0xa0

    if-eq v6, v8, :cond_66

    const/16 v8, 0xae

    if-eq v6, v8, :cond_65

    const/16 v8, 0xbb

    if-eq v6, v8, :cond_64

    const/16 v8, 0x4dbb

    if-eq v6, v8, :cond_62

    const/16 v8, 0x5035

    if-eq v6, v8, :cond_61

    const/16 v8, 0x55d0

    if-eq v6, v8, :cond_60

    const v8, 0x18538067

    if-eq v6, v8, :cond_5d

    const v8, 0x1c53bb6b

    if-eq v6, v8, :cond_5c

    const v3, 0x1f43b675

    if-eq v6, v3, :cond_5a

    goto :goto_2a

    :cond_5a
    iget-boolean v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez v3, :cond_63

    iget-boolean v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz v3, :cond_5b

    iget-wide v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    const-wide/16 v8, -0x1

    cmp-long v3, v3, v8

    if-eqz v3, :cond_5b

    const/4 v3, 0x1

    iput-boolean v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_2a

    :cond_5b
    const/4 v3, 0x1

    iget-object v4, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v6, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v8, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v6, v8, v9}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v4, v6}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_2a

    :cond_5c
    new-instance v3, Lcom/adobe/xmp/impl/ParseState;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    iput-object v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/adobe/xmp/impl/ParseState;

    new-instance v3, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v3, v4}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    iput-object v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/adobe/xmp/impl/ParseState;

    goto :goto_2a

    :cond_5d
    iget-wide v8, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-eqz v6, :cond_5f

    cmp-long v6, v8, v3

    if-nez v6, :cond_5e

    goto :goto_29

    :cond_5e
    const-string v0, "Multiple Segment elements not supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_5f
    :goto_29
    iput-wide v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iput-wide v12, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    goto :goto_2a

    :cond_60
    invoke-virtual {v5, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    goto :goto_2a

    :cond_61
    const/4 v4, 0x1

    invoke-virtual {v5, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v4, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    goto :goto_2a

    :cond_62
    const/4 v3, -0x1

    iput v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const-wide/16 v3, -0x1

    iput-wide v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    :cond_63
    :goto_2a
    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_64
    const/4 v3, 0x0

    iput-boolean v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto/16 :goto_e

    :cond_65
    const/4 v3, 0x0

    new-instance v4, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-direct {v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    iput-object v4, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    goto/16 :goto_e

    :cond_66
    const/4 v3, 0x0

    iput-boolean v3, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    const-wide/16 v8, 0x0

    iput-wide v8, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    goto/16 :goto_e

    :goto_2b
    if-eqz v5, :cond_69

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-boolean v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    if-eqz v4, :cond_67

    iput-wide v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    iget-wide v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide v6, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    iput-boolean v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_2c

    :cond_67
    iget-boolean v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz v3, :cond_68

    iget-wide v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-eqz v8, :cond_68

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    iput-wide v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    :goto_2c
    const/4 v4, 0x1

    goto :goto_2d

    :cond_68
    const/4 v4, 0x0

    :goto_2d
    if-eqz v4, :cond_69

    const/4 v3, 0x1

    return v3

    :cond_69
    const/4 v3, 0x1

    move v4, v3

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6a
    const/4 v3, 0x1

    iget-wide v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v4, v4

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 v4, 0x0

    iput v4, v7, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v6, -0x1

    move/from16 v36, v4

    move v4, v3

    move/from16 v3, v36

    goto/16 :goto_1

    :cond_6b
    if-nez v5, :cond_6e

    const/4 v3, 0x0

    :goto_2e
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_6d

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v2, :cond_6c

    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-virtual {v2, v4, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_6d
    const/4 v1, -0x1

    return v1

    :cond_6e
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x75a2 -> :sswitch_4
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x83 -> :sswitch_24
        0x88 -> :sswitch_23
        0x9b -> :sswitch_22
        0x9f -> :sswitch_21
        0xb0 -> :sswitch_20
        0xb3 -> :sswitch_1f
        0xba -> :sswitch_1e
        0xd7 -> :sswitch_1d
        0xe7 -> :sswitch_1c
        0xee -> :sswitch_1b
        0xf1 -> :sswitch_1a
        0xfb -> :sswitch_19
        0x41e7 -> :sswitch_18
        0x4254 -> :sswitch_17
        0x4285 -> :sswitch_16
        0x42f7 -> :sswitch_15
        0x47e1 -> :sswitch_14
        0x47e8 -> :sswitch_13
        0x53ac -> :sswitch_12
        0x53b8 -> :sswitch_11
        0x54b0 -> :sswitch_10
        0x54b2 -> :sswitch_f
        0x54ba -> :sswitch_e
        0x55aa -> :sswitch_d
        0x55ee -> :sswitch_c
        0x56aa -> :sswitch_b
        0x56bb -> :sswitch_a
        0x6264 -> :sswitch_9
        0x75a2 -> :sswitch_8
        0x7671 -> :sswitch_7
        0x23e383 -> :sswitch_6
        0x2ad7b1 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x55b9
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final readScratch(Landroidx/media3/extractor/ExtractorInput;I)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v1, v0

    if-ge v1, p2, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    sub-int v2, p2, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final resetWriteSampleData()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    iput-byte v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public final scaleTimecodeToUs(J)J
    .locals 6

    iget-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p0, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final seek(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    iget-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->reader:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    iput p1, p2, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->elementState:I

    iget-object p3, p2, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    iget-object p2, p2, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    iput p1, p2, Landroidx/media3/extractor/mkv/VarintReader;->state:I

    iput p1, p2, Landroidx/media3/extractor/mkv/VarintReader;->length:I

    iget-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    iput p1, p2, Landroidx/media3/extractor/mkv/VarintReader;->state:I

    iput p1, p2, Landroidx/media3/extractor/mkv/VarintReader;->length:I

    invoke-virtual {p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    move p2, p1

    :goto_0
    iget-object p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object p3, p3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz p3, :cond_0

    iput-boolean p1, p3, Landroidx/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    iput p1, p3, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 13

    new-instance p0, Lcom/adobe/xmp/impl/ParseState;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const-wide/16 v1, -0x1

    iget-wide v3, p1, Landroidx/media3/extractor/DefaultExtractorInput;->streamLength:J

    cmp-long v1, v3, v1

    const-wide/16 v5, 0x400

    if-eqz v1, :cond_1

    cmp-long v2, v3, v5

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :cond_1
    :goto_0
    long-to-int v2, v5

    iget-object v5, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v5, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v0, v6}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    iget-object v5, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    :goto_1
    const-wide/32 v9, 0x1a45dfa3

    cmp-long v0, v7, v9

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    if-ne v0, v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v0, v6, v5, v6}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    const/16 v0, 0x8

    shl-long/2addr v7, v0

    const-wide/16 v9, -0x100

    and-long/2addr v7, v9

    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    or-long/2addr v7, v9

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/ParseState;->readUint(Landroidx/media3/extractor/DefaultExtractorInput;)J

    move-result-wide v7

    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    int-to-long v9, v0

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v0, v7, v11

    if-eqz v0, :cond_8

    if-eqz v1, :cond_4

    add-long v0, v9, v7

    cmp-long v0, v0, v3

    if-ltz v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    int-to-long v0, v0

    add-long v2, v9, v7

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/ParseState;->readUint(Landroidx/media3/extractor/DefaultExtractorInput;)J

    move-result-wide v0

    cmp-long v0, v0, v11

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/ParseState;->readUint(Landroidx/media3/extractor/DefaultExtractorInput;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_8

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-lez v3, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_4

    long-to-int v0, v0

    invoke-virtual {p1, v0, v6}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    iget v1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    move v6, v5

    :cond_8
    :goto_3
    return v6
.end method

.method public final writeSampleData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v5, "S_TEXT/UTF8"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V

    :cond_0
    :goto_0
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return v1

    :cond_1
    const-string v4, "S_TEXT/ASS"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V

    goto :goto_0

    :cond_2
    const-string v4, "S_TEXT/WEBVTT"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->VTT_PREFIX:[B

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V

    goto :goto_0

    :cond_3
    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v5, :cond_15

    iget-boolean v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    iget-object v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v5, :cond_10

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v12, -0x40000001    # -1.9999999f

    and-int/2addr v5, v12

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v12, 0x80

    if-nez v5, :cond_5

    iget-object v5, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v5, v8, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget-object v5, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v5, v5, v8

    and-int/lit16 v13, v5, 0x80

    if-eq v13, v12, :cond_4

    iput-byte v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_1

    :cond_4
    const-string v0, "Extension bit is set in signal byte"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_1
    iget-byte v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/lit8 v13, v5, 0x1

    if-ne v13, v9, :cond_6

    move v13, v9

    goto :goto_2

    :cond_6
    move v13, v8

    :goto_2
    if-eqz v13, :cond_11

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_7

    move v5, v9

    goto :goto_3

    :cond_7
    move v5, v8

    :goto_3
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v14, 0x40000000    # 2.0f

    or-int/2addr v13, v14

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget-boolean v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v13, :cond_9

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v14, v13, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v15, 0x8

    invoke-interface {v1, v14, v8, v15}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v14, v15

    iput v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    iget-object v14, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    move v12, v8

    :goto_4
    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v14, v8

    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v4, v9, v11}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v12, v9

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    invoke-virtual {v13, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v4, v15, v13}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v12, v15

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_9
    if-eqz v5, :cond_11

    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v5, :cond_a

    iget-object v5, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v5, v8, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v5, v9

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    :cond_a
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/2addr v5, v7

    invoke-virtual {v11, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v12, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v12, v8, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v12, v5

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v5, v6

    add-int/2addr v5, v9

    int-to-short v5, v5

    mul-int/lit8 v12, v5, 0x6

    add-int/2addr v12, v6

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    move-result v13

    if-ge v13, v12, :cond_c

    :cond_b
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    iput-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    :cond_c
    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v5, v8

    move v13, v5

    :goto_5
    iget v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v5, v14, :cond_e

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    rem-int/lit8 v15, v5, 0x2

    if-nez v15, :cond_d

    iget-object v15, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v13, v14, v13

    int-to-short v13, v13

    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_d
    iget-object v15, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v13, v14, v13

    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v13, v14

    goto :goto_5

    :cond_e
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v5, v3, v5

    sub-int/2addr v5, v13

    rem-int/2addr v14, v6

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-ne v14, v9, :cond_f

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_f
    int-to-short v5, v5

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_7
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v13, v5, v12}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    invoke-interface {v4, v12, v13}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v5, v12

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_8

    :cond_10
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v5, :cond_11

    array-length v12, v5

    invoke-virtual {v10, v5, v12}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    :cond_11
    :goto_8
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v12, "A_OPUS"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v5, p4

    goto :goto_9

    :cond_12
    iget v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    if-lez v5, :cond_13

    move v5, v9

    goto :goto_9

    :cond_13
    move v5, v8

    :goto_9
    if-eqz v5, :cond_14

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v12, 0x10000000

    or-int/2addr v5, v12

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v8}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget v5, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/2addr v5, v3

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int/2addr v5, v12

    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v12, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    shr-int/lit8 v13, v5, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v8

    shr-int/lit8 v13, v5, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v9

    shr-int/lit8 v13, v5, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v13, 0x3

    aput-byte v5, v12, v13

    invoke-interface {v4, v7, v11}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v5, v7

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_14
    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    :cond_15
    iget v5, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/2addr v3, v5

    const-string v5, "V_MPEG4/ISO/AVC"

    iget-object v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "V_MPEGH/ISO/HEVC"

    iget-object v11, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_d

    :cond_16
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v5, :cond_18

    iget v5, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-nez v5, :cond_17

    goto :goto_a

    :cond_17
    move v9, v8

    :goto_a
    invoke-static {v9}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-virtual {v5, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->startSample(Landroidx/media3/extractor/ExtractorInput;)V

    :cond_18
    :goto_b
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v5, v3, :cond_1e

    sub-int v5, v3, v5

    iget v6, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v9, v10, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v6, v9

    if-lez v6, :cond_19

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v4, v5, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_c

    :cond_19
    invoke-interface {v4, v1, v5, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v5

    :goto_c
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_b

    :cond_1a
    :goto_d
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v11, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aput-byte v8, v11, v8

    aput-byte v8, v11, v9

    aput-byte v8, v11, v6

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v9, v6, 0x4

    :goto_e
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v12, v3, :cond_1e

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v12, :cond_1c

    iget v12, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v13, v10, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v12, v13

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int v13, v9, v12

    sub-int v14, v6, v12

    invoke-interface {v1, v11, v13, v14}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    if-lez v12, :cond_1b

    invoke-virtual {v10, v9, v12, v11}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    :cond_1b
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v12, v6

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    invoke-virtual {v5, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v4, v7, v12}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v12, v7

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_e

    :cond_1c
    iget v13, v10, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v14, v10, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v13, v14

    if-lez v13, :cond_1d

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-interface {v4, v12, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_f

    :cond_1d
    invoke-interface {v4, v1, v12, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v12

    :goto_f
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_e

    :cond_1e
    const-string v1, "A_VORBIS"

    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v4, v7, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v7

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto/16 :goto_0
.end method

.method public final writeSubtitleSampleData(Landroidx/media3/extractor/ExtractorInput;[BI)V
    .locals 4

    array-length v0, p2

    add-int/2addr v0, p3

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    add-int v1, v0, p3

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    :cond_0
    array-length v2, p2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method
