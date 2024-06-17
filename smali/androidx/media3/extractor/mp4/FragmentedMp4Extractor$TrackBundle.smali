.class public final Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentSampleInTrackRun:I

.field public currentSampleIndex:I

.field public currentTrackRunIndex:I

.field public currentlyInFragment:Z

.field public final defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

.field public defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

.field public final encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

.field public firstSampleToOutputIndex:I

.field public final fragment:Landroidx/media3/extractor/mp4/TrackFragment;

.field public moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

.field public final output:Landroidx/media3/extractor/TrackOutput;

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iput-object p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    new-instance v0, Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Landroidx/media3/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iput-object p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget-object p2, p2, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object p2, p2, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    return-void
.end method


# virtual methods
.method public final getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v2, v0, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v2, v2, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object p0, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object p0, p0, Landroidx/media3/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-nez p0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object p0, p0, v2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean p0, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    if-eqz p0, :cond_3

    move-object v1, v0

    :cond_3
    return-object v1
.end method

.method public final next()Z
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    iget v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iput v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    return v2

    :cond_1
    return v1
.end method

.method public final outputSampleEncryptionData(II)I
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v3, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v3, :cond_1

    iget-object v0, v2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_0

    :cond_1
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    array-length v3, v0

    iget-object v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    array-length v3, v0

    move-object v0, v4

    :goto_0
    iget v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-boolean v5, v2, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-nez v4, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v6

    :goto_3
    iget-object v7, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v8, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    if-eqz v5, :cond_5

    const/16 v9, 0x80

    goto :goto_4

    :cond_5
    move v9, v1

    :goto_4
    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v1

    invoke-virtual {v7, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v8, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v8, v6, v7}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-interface {v8, v3, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    if-nez v5, :cond_6

    add-int/2addr v3, v6

    return v3

    :cond_6
    const/16 v0, 0x8

    const/4 v5, 0x6

    const/4 v7, 0x3

    const/4 v9, 0x2

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v4, :cond_7

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aput-byte v1, v2, v1

    aput-byte v6, v2, v6

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v9

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v2, v7

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x4

    aput-byte p2, v2, v1

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x5

    aput-byte p2, v2, v1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v2, v5

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v2, p2

    invoke-interface {v8, v0, p0}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    add-int/2addr v3, v6

    add-int/2addr v3, v0

    return v3

    :cond_7
    iget-object p1, v2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    mul-int/2addr v2, v5

    add-int/2addr v2, v9

    if-eqz p2, :cond_8

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v4, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {p1, v1, v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    aget-byte p1, v4, v9

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v0

    aget-byte v0, v4, v7

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v4, v9

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v4, v7

    goto :goto_5

    :cond_8
    move-object p0, p1

    :goto_5
    invoke-interface {v8, v2, p0}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    add-int/2addr v3, v6

    add-int/2addr v3, v2

    return v3
.end method

.method public final resetFragmentInfo()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/media3/extractor/mp4/TrackFragment;->trunCount:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    iput-boolean v1, v0, Landroidx/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    iput-boolean v1, v0, Landroidx/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    iput-boolean v1, v0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iput v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    iput-boolean v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return-void
.end method
