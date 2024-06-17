.class public final Landroidx/media3/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ogg/OggSeeker;


# instance fields
.field public end:J

.field public endGranule:J

.field public final pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

.field public final payloadEndPosition:J

.field public final payloadStartPosition:J

.field public positionBeforeSeekToEnd:J

.field public start:J

.field public startGranule:J

.field public state:I

.field public final streamReader:Landroidx/media3/extractor/ogg/StreamReader;

.field public targetGranule:J

.field public totalGranules:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ogg/StreamReader;JJJJZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    iput-wide p2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    iput-wide p4, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    :cond_1
    iput v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    goto :goto_2

    :cond_2
    :goto_1
    iput-wide p8, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    :goto_2
    new-instance p1, Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/OggPageHeader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    return-void
.end method


# virtual methods
.method public final createSeekMap()Landroidx/media3/extractor/SeekMap;
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    const-wide/16 v3, 0x0

    iget-wide v5, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    const/4 v7, 0x0

    iget-object v8, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v9, 0x1

    const/4 v10, 0x4

    const-wide/16 v11, -0x1

    if-eqz v2, :cond_d

    if-eq v2, v9, :cond_c

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v10, :cond_0

    return-wide v11

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    move-object/from16 v23, v8

    move-wide v2, v11

    goto/16 :goto_5

    :cond_2
    iget-wide v13, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v10, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    cmp-long v5, v13, v10

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    iget-wide v11, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    invoke-virtual {v8, v1, v11, v12}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v5

    if-nez v5, :cond_5

    iget-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    cmp-long v5, v3, v9

    if-eqz v5, :cond_4

    move-wide v15, v3

    move-object/from16 v23, v8

    :goto_0
    const-wide/16 v2, -0x1

    goto/16 :goto_4

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ogg page can be found."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v8, v1, v7}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-wide v11, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    iget-wide v13, v8, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    sub-long/2addr v11, v13

    iget v5, v8, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v2, v8, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v5, v2

    cmp-long v2, v3, v11

    if-gtz v2, :cond_6

    const-wide/32 v17, 0x11940

    cmp-long v2, v11, v17

    if-gez v2, :cond_6

    :goto_1
    move-object/from16 v23, v8

    const-wide/16 v2, -0x1

    const-wide/16 v15, -0x1

    goto :goto_4

    :cond_6
    cmp-long v2, v11, v3

    if-gez v2, :cond_7

    iput-wide v9, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    iput-wide v13, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    goto :goto_2

    :cond_7
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    int-to-long v9, v5

    add-long/2addr v3, v9

    iput-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v3, v8, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    :goto_2
    iget-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v9, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long/2addr v3, v9

    const-wide/32 v13, 0x186a0

    cmp-long v3, v3, v13

    if-gez v3, :cond_8

    iput-wide v9, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    move-object/from16 v23, v8

    move-wide v15, v9

    goto :goto_0

    :cond_8
    int-to-long v3, v5

    const-wide/16 v9, 0x1

    if-gtz v2, :cond_9

    const-wide/16 v13, 0x2

    goto :goto_3

    :cond_9
    move-wide v13, v9

    :goto_3
    mul-long/2addr v3, v13

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    sub-long/2addr v13, v3

    iget-wide v2, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    iget-wide v4, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    sub-long v17, v2, v4

    mul-long v17, v17, v11

    iget-wide v11, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    move-object/from16 v23, v8

    iget-wide v7, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    sub-long/2addr v11, v7

    div-long v17, v17, v11

    add-long v17, v17, v13

    sub-long v21, v2, v9

    move-wide/from16 v19, v4

    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    move-wide v15, v2

    goto/16 :goto_0

    :goto_4
    cmp-long v4, v15, v2

    if-eqz v4, :cond_a

    return-wide v15

    :cond_a
    iput v6, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    :goto_5
    move-object/from16 v7, v23

    :goto_6
    invoke-virtual {v7, v1, v2, v3}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;J)Z

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    iget-wide v2, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-wide v4, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_b

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 v1, 0x4

    iput v1, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    iget-wide v0, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v10, 0x2

    add-long/2addr v0, v10

    neg-long v0, v0

    return-wide v0

    :cond_b
    const-wide/16 v10, 0x2

    iget v3, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v4, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide v3, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    const-wide/16 v2, -0x1

    goto :goto_6

    :cond_c
    move-object v7, v8

    goto :goto_7

    :cond_d
    move-object v7, v8

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    iput-wide v10, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    iput v9, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    const-wide/32 v12, 0xff1b

    sub-long v12, v5, v12

    cmp-long v8, v12, v10

    if-lez v8, :cond_e

    return-wide v12

    :cond_e
    :goto_7
    const/4 v8, 0x0

    iput v8, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    iput-wide v3, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iput v8, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    iput v8, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iput v8, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    const-wide/16 v3, -0x1

    invoke-virtual {v7, v1, v3, v4}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v7, v1, v8}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    iget v3, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v4, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_f
    iget-wide v3, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    iget v10, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    const/4 v2, 0x4

    and-int/2addr v10, v2

    if-eq v10, v2, :cond_10

    const-wide/16 v10, -0x1

    invoke-virtual {v7, v1, v10, v11}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-gez v12, :cond_10

    invoke-virtual {v7, v1, v9}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v12

    if-eqz v12, :cond_10

    iget v12, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v13, v7, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v12, v13

    :try_start_0
    invoke-interface {v1, v12}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v9

    goto :goto_8

    :catch_0
    move v12, v8

    :goto_8
    if-nez v12, :cond_f

    :cond_10
    iput-wide v3, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const/4 v1, 0x4

    iput v1, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    iget-wide v0, v0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->positionBeforeSeekToEnd:J

    return-wide v0

    :cond_11
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final startSeek(J)V
    .locals 6

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->targetGranule:J

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->state:I

    iget-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadStartPosition:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->start:J

    iget-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->payloadEndPosition:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->end:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->startGranule:J

    iget-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->totalGranules:J

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->endGranule:J

    return-void
.end method
