.class public final Landroidx/media3/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final synthetic $r8$classId:I

.field public final id3Header:Ljava/lang/Object;

.field public output:Ljava/lang/Object;

.field public sampleBytesRead:I

.field public sampleSize:I

.field public sampleTimeUs:J

.field public writingSample:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 9

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v2, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    rsub-int/lit8 v2, v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget-object v6, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v7, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v8, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    invoke-static {v4, v5, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v4, v2

    if-ne v4, v3, :cond_3

    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v4, 0x49

    if-ne v4, v2, :cond_2

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v4, 0x44

    if-ne v4, v2, :cond_2

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v4, 0x33

    if-eq v4, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    goto :goto_2

    :cond_3
    :goto_1
    iget v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    iget v2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v0, p1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    :goto_2
    return-void

    :goto_3
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_b

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v2, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :cond_5
    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :goto_4
    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v2, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :cond_8
    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :goto_5
    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v2, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    sub-int/2addr v2, v0

    iget-object v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v3, [Landroidx/media3/extractor/TrackOutput;

    array-length v4, v3

    :goto_6
    if-ge v1, v4, :cond_a

    aget-object v5, v3, v1

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v5, v2, p1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    iget p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    :cond_b
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v0, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string p2, "application/id3"

    iput-object p2, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    new-instance p2, Landroidx/media3/common/Format;

    invoke-direct {p2, p0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v1, [Landroidx/media3/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->id3Header:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v2, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string v4, "application/dvbsubs"

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iget-object v1, v1, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    iput-object v1, v3, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v2, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v1, [Landroidx/media3/extractor/TrackOutput;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final packetFinished()V
    .locals 11

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_2

    iget v8, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz v8, :cond_2

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-eq v0, v8, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/media3/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :cond_2
    :goto_0
    return-void

    :goto_1
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_4

    iget-wide v4, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->output:Ljava/lang/Object;

    check-cast v0, [Landroidx/media3/extractor/TrackOutput;

    array-length v2, v0

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    iget-wide v5, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 v7, 0x1

    iget v8, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final packetStarted(IJ)V
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    cmp-long p1, p2, v2

    if-eqz p1, :cond_1

    iput-wide p2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    :cond_1
    iput v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    iput v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    :goto_0
    return-void

    :goto_1
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v4, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    cmp-long p1, p2, v2

    if-eqz p1, :cond_3

    iput-wide p2, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    :cond_3
    iput v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleSize:I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final seek()V
    .locals 4

    iget v0, p0, Landroidx/media3/extractor/ts/Id3Reader;->$r8$classId:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    iput-wide v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void

    :goto_0
    iput-boolean v3, p0, Landroidx/media3/extractor/ts/Id3Reader;->writingSample:Z

    iput-wide v1, p0, Landroidx/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
