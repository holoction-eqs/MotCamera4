.class public final Landroidx/media3/extractor/TrueHdSampleRechunker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public chunkFlags:I

.field public chunkOffset:I

.field public chunkSampleCount:I

.field public chunkSize:I

.field public chunkTimeUs:J

.field public foundSyncframe:Z

.field public final syncframePrefix:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    return-void
.end method


# virtual methods
.method public final outputPendingSampleMetadata(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 8

    iget v0, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    if-lez v0, :cond_0

    iget-wide v2, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkTimeUs:J

    iget v4, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkFlags:I

    iget v5, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSize:I

    iget v6, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkOffset:I

    move-object v1, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    :cond_0
    return-void
.end method

.method public final sampleMetadata(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkOffset:I

    add-int v1, p5, p6

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    if-nez v0, :cond_2

    iput-wide p2, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkTimeUs:J

    iput p4, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkFlags:I

    iput v2, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSize:I

    :cond_2
    iget p2, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSize:I

    add-int/2addr p2, p5

    iput p2, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkSize:I

    iput p6, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->chunkOffset:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_3

    invoke-virtual {p0, p1, p7}, Landroidx/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "TrueHD chunk samples must be contiguous in the sample queue."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startSample(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 7

    iget-boolean v0, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    invoke-interface {p1, v1, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p1, 0x4

    aget-byte v0, v2, p1

    const/4 v3, -0x8

    const/4 v4, 0x1

    if-ne v0, v3, :cond_4

    const/4 v0, 0x5

    aget-byte v0, v2, v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_4

    const/4 v0, 0x6

    aget-byte v0, v2, v0

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_4

    const/4 v0, 0x7

    aget-byte v3, v2, v0

    and-int/lit16 v5, v3, 0xfe

    const/16 v6, 0xba

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xbb

    if-ne v3, v5, :cond_2

    move v1, v4

    :cond_2
    if-eqz v1, :cond_3

    const/16 v1, 0x9

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    aget-byte v1, v2, v1

    shr-int/lit8 p1, v1, 0x4

    and-int/2addr p1, v0

    const/16 v0, 0x28

    shl-int v1, v0, p1

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    return-void

    :cond_5
    iput-boolean v4, p0, Landroidx/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    return-void
.end method
