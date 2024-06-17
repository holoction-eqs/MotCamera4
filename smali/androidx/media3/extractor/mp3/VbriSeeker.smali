.class public final Landroidx/media3/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# instance fields
.field public final dataEndPosition:J

.field public final durationUs:J

.field public final positions:[J

.field public final timesUs:[J


# direct methods
.method public constructor <init>([J[JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    iput-object p2, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    iput-wide p3, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->durationUs:J

    iput-wide p5, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-void
.end method


# virtual methods
.method public final getDataEndPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 8

    iget-object v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v2

    new-instance v3, Landroidx/media3/extractor/SeekPoint;

    aget-wide v4, v0, v2

    iget-object p0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v6, p0, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    array-length p1, v0

    sub-int/2addr p1, v1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/extractor/SeekPoint;

    add-int/2addr v2, v1

    aget-wide v0, v0, v2

    aget-wide v4, p0, v2

    invoke-direct {p1, v0, v1, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v3, p1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v3, v3}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method

.method public final getTimeUs(J)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->positions:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
