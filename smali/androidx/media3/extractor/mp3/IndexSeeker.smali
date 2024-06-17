.class public final Landroidx/media3/extractor/mp3/IndexSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# instance fields
.field public final dataEndPosition:J

.field public durationUs:J

.field public final positions:Lcom/adobe/xmp/impl/ParseState;

.field public final timesUs:Lcom/adobe/xmp/impl/ParseState;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->durationUs:J

    iput-wide p5, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->dataEndPosition:J

    new-instance p1, Lcom/adobe/xmp/impl/ParseState;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Lcom/adobe/xmp/impl/ParseState;

    new-instance p5, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {p5, p2}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    iput-object p5, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->positions:Lcom/adobe/xmp/impl/ParseState;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/adobe/xmp/impl/ParseState;->add(J)V

    invoke-virtual {p5, p3, p4}, Lcom/adobe/xmp/impl/ParseState;->add(J)V

    return-void
.end method


# virtual methods
.method public final getDataEndPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 7

    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Lcom/adobe/xmp/impl/ParseState;

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/Util;->binarySearchFloor(Lcom/adobe/xmp/impl/ParseState;J)I

    move-result v1

    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/ParseState;->get(I)J

    move-result-wide v3

    iget-object p0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->positions:Lcom/adobe/xmp/impl/ParseState;

    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/ParseState;->get(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v3, p1

    if-eqz p1, :cond_1

    iget p1, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/lit8 p1, p1, -0x1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/extractor/SeekPoint;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/ParseState;->get(I)J

    move-result-wide v3

    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/ParseState;->get(I)J

    move-result-wide v0

    invoke-direct {p1, v3, v4, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2, p1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v2, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method

.method public final getTimeUs(J)J
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->positions:Lcom/adobe/xmp/impl/ParseState;

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/Util;->binarySearchFloor(Lcom/adobe/xmp/impl/ParseState;J)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Lcom/adobe/xmp/impl/ParseState;

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/ParseState;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isTimeUsInIndex(J)Z
    .locals 4

    iget-object p0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Lcom/adobe/xmp/impl/ParseState;

    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/ParseState;->get(I)J

    move-result-wide v2

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x186a0

    cmp-long p0, p1, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
