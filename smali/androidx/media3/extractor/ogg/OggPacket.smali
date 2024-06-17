.class public final Landroidx/media3/extractor/ogg/OggPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentSegmentIndex:I

.field public final packetArray:Landroidx/media3/common/util/ParsableByteArray;

.field public final pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

.field public populated:Z

.field public segmentCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroidx/media3/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->packetArray:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    return-void
.end method


# virtual methods
.method public final populate(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 10

    iget-boolean v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->populated:Z

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/extractor/ogg/OggPacket;->packetArray:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/extractor/ogg/OggPacket;->populated:Z

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->populated:Z

    const/4 v3, 0x1

    if-nez v0, :cond_e

    iget v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    const/16 v4, 0xff

    iget-object v5, p0, Landroidx/media3/extractor/ogg/OggPacket;->pageHeader:Landroidx/media3/extractor/ogg/OggPageHeader;

    if-gez v0, :cond_7

    const-wide/16 v6, -0x1

    invoke-virtual {v5, p1, v6, v7}, Landroidx/media3/extractor/ogg/OggPageHeader;->skipToNextPage(Landroidx/media3/extractor/ExtractorInput;J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5, p1, v3}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget v0, v5, Landroidx/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v6, v5, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_4

    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-nez v6, :cond_4

    iput v1, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    move v6, v1

    :cond_2
    iget v7, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    add-int v8, v1, v7

    iget v9, v5, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v8, v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    iget-object v7, v5, Landroidx/media3/extractor/ogg/OggPageHeader;->laces:[I

    aget v7, v7, v8

    add-int/2addr v6, v7

    if-eq v7, v4, :cond_2

    :cond_3
    add-int/2addr v0, v6

    iget v6, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v6, v1

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_2

    :catch_0
    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    return v1

    :cond_5
    iput v6, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto :goto_4

    :cond_6
    :goto_3
    return v1

    :cond_7
    :goto_4
    iget v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iput v1, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    move v6, v1

    :cond_8
    iget v7, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    add-int v8, v0, v7

    iget v9, v5, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v8, v9, :cond_9

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    iget-object v7, v5, Landroidx/media3/extractor/ogg/OggPageHeader;->laces:[I

    aget v7, v7, v8

    add-int/2addr v6, v7

    if-eq v7, v4, :cond_8

    :cond_9
    iget v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iget v7, p0, Landroidx/media3/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v0, v7

    if-lez v6, :cond_c

    iget v7, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/2addr v7, v6

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    iget-object v7, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v8, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :try_start_1
    invoke-interface {p1, v7, v8, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v3

    goto :goto_5

    :catch_1
    move v7, v1

    :goto_5
    if-nez v7, :cond_a

    return v1

    :cond_a
    iget v7, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/2addr v7, v6

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-object v6, v5, Landroidx/media3/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    if-eq v6, v4, :cond_b

    goto :goto_6

    :cond_b
    move v3, v1

    :goto_6
    iput-boolean v3, p0, Landroidx/media3/extractor/ogg/OggPacket;->populated:Z

    :cond_c
    iget v3, v5, Landroidx/media3/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ne v0, v3, :cond_d

    const/4 v0, -0x1

    :cond_d
    iput v0, p0, Landroidx/media3/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto/16 :goto_0

    :cond_e
    return v3
.end method
