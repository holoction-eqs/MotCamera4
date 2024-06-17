.class public final Landroidx/media3/exoplayer/source/IcyDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field public bytesUntilMetadata:I

.field public final listener:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

.field public final metadataIntervalBytes:I

.field public final metadataLengthByteHolder:[B

.field public final upstream:Landroidx/media3/datasource/DataSource;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/StatsDataSource;ILandroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    iput p2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->metadataIntervalBytes:I

    iput-object p3, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->listener:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    new-array p1, v0, [B

    iput-object p1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->metadataLengthByteHolder:[B

    iput p2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    return-void
.end method


# virtual methods
.method public final addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public final close()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)J
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final read([BII)I
    .locals 15

    move-object v0, p0

    iget v1, v0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    iget-object v2, v0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    const/4 v3, -0x1

    if-nez v1, :cond_8

    iget-object v1, v0, Landroidx/media3/exoplayer/source/IcyDataSource;->metadataLengthByteHolder:[B

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v1, v4, v5}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v6

    if-ne v6, v3, :cond_0

    goto :goto_4

    :cond_0
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    new-array v6, v1, [B

    move v7, v1

    move v8, v4

    :goto_0
    if-lez v7, :cond_3

    invoke-interface {v2, v6, v8, v7}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v9

    if-ne v9, v3, :cond_2

    goto :goto_4

    :cond_2
    add-int/2addr v8, v9

    sub-int/2addr v7, v9

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v1, :cond_4

    add-int/lit8 v4, v1, -0x1

    aget-byte v7, v6, v4

    if-nez v7, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    if-lez v1, :cond_6

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v6, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iget-object v1, v0, Landroidx/media3/exoplayer/source/IcyDataSource;->listener:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-boolean v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    if-nez v6, :cond_5

    iget-wide v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    goto :goto_2

    :cond_5
    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-virtual {v6, v5}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v6

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_2
    move-wide v9, v6

    iget v6, v4, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v7, v4, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v12, v6, v7

    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v12, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroidx/media3/exoplayer/source/SampleQueue;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput-boolean v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    :cond_6
    :goto_3
    move v4, v5

    :goto_4
    if-eqz v4, :cond_7

    iget v1, v0, Landroidx/media3/exoplayer/source/IcyDataSource;->metadataIntervalBytes:I

    iput v1, v0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    goto :goto_5

    :cond_7
    return v3

    :cond_8
    :goto_5
    iget v1, v0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    move/from16 v4, p3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-interface {v2, v4, v5, v1}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v1

    if-eq v1, v3, :cond_9

    iget v2, v0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    :cond_9
    return v1
.end method
