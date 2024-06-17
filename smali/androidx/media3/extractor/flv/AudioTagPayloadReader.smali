.class public final Landroidx/media3/extractor/flv/AudioTagPayloadReader;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# static fields
.field public static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field public audioFormat:I

.field public hasOutputFormat:Z

.field public hasParsedAudioDataHeader:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x5622

    const v1, 0xac44

    const/16 v2, 0x1588

    const/16 v3, 0x2b11

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    iget-object v2, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    shr-int/2addr p1, v3

    and-int/lit8 p1, p1, 0x3

    sget-object v0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    aget p1, v0, p1

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v3, "audio/mpeg"

    iput-object v3, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v1, v0, Landroidx/media3/common/Format$Builder;->channelCount:I

    :goto_0
    iput p1, v0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    check-cast v2, Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean v1, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_3

    :cond_0
    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0xa

    if-ne v0, p1, :cond_2

    goto :goto_3

    :cond_2
    new-instance p1, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio format not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-ne v0, p1, :cond_4

    const-string p1, "audio/g711-alaw"

    goto :goto_2

    :cond_4
    const-string p1, "audio/g711-mlaw"

    :goto_2
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object p1, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v1, v0, Landroidx/media3/common/Format$Builder;->channelCount:I

    const/16 p1, 0x1f40

    goto :goto_0

    :goto_3
    iput-boolean v1, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :goto_4
    return v1
.end method

.method public final parsePayload(JLandroidx/media3/common/util/ParsableByteArray;)Z
    .locals 11

    iget v0, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget p0, p3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :goto_0
    iget v0, p3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p0, v0

    move-object v0, v3

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    move v8, p0

    goto :goto_2

    :cond_0
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v4, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v4, :cond_1

    iget p1, p3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget p2, p3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p1, p2

    new-array p2, p1, [B

    invoke-virtual {p3, v1, p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {p2}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object p1

    new-instance p3, Landroidx/media3/common/Format$Builder;

    invoke-direct {p3}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v0, "audio/mp4a-latm"

    iput-object v0, p3, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    iput-object v0, p3, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget v0, p1, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iput v0, p3, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget p1, p1, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput p1, p3, Landroidx/media3/common/Format$Builder;->sampleRate:I

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p3, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance p1, Landroidx/media3/common/Format;

    invoke-direct {p1, p3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    check-cast v3, Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean v2, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    return v1

    :cond_1
    iget p0, p0, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v4, 0xa

    if-ne p0, v4, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    iget p0, p3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    goto :goto_0

    :goto_2
    invoke-interface {v0, v8, p3}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    move-object v4, v3

    check-cast v4, Landroidx/media3/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, p1

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return v2
.end method
