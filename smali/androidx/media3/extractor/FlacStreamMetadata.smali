.class public final Landroidx/media3/extractor/FlacStreamMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bitsPerSample:I

.field public final bitsPerSampleLookupKey:I

.field public final channels:I

.field public final maxBlockSizeSamples:I

.field public final maxFrameSize:I

.field public final metadata:Landroidx/media3/common/Metadata;

.field public final minBlockSizeSamples:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final sampleRateLookupKey:I

.field public final seekTable:Lcom/airbnb/lottie/model/MutablePair;

.field public final totalSamples:J


# direct methods
.method public constructor <init>(IIIIIIIJLcom/airbnb/lottie/model/MutablePair;Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iput p3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iput p4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iput p5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    invoke-static {p5}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    iput p6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iput p7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    invoke-static {p7}, Landroidx/media3/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    iput-wide p8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iput-object p10, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Lcom/airbnb/lottie/model/MutablePair;

    iput-object p11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    mul-int/lit8 p2, p2, 0x8

    invoke-virtual {v0, p2}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    invoke-virtual {v0, p1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    const/16 p1, 0x18

    invoke-virtual {v0, p1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    invoke-virtual {v0, p1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    const/16 p1, 0x14

    invoke-virtual {v0, p1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    invoke-static {p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    invoke-static {p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    const/4 p1, 0x4

    .line 2
    invoke-virtual {v0, p1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result p1

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v0

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    shl-long p1, v3, p2

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iput-object v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Lcom/airbnb/lottie/model/MutablePair;

    iput-object v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    return-void
.end method

.method public static getBitsPerSampleLookupKey(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static getSampleRateLookupKey(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, p0

    div-long v0, v2, v0

    :goto_0
    return-wide v0
.end method

.method public final getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;
    .locals 3

    const/4 v0, 0x4

    const/16 v1, -0x80

    aput-byte v1, p1, v0

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    move-object p2, v1

    goto :goto_1

    :cond_2
    iget-object p2, p2, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    invoke-virtual {v1, p2}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object p2

    :goto_1
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v2, "audio/flac"

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v0, v1, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iput v0, v1, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iput p0, v1, Landroidx/media3/common/Format$Builder;->sampleRate:I

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iput-object p2, v1, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object p0
.end method
