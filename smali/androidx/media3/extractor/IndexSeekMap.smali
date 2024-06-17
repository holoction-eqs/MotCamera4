.class public final Landroidx/media3/extractor/IndexSeekMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final durationUs:J

.field public final isSeekable:Z

.field public final positions:[J

.field public final timesUs:[J


# direct methods
.method public constructor <init>(J[J[J)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    array-length v1, p4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    array-length v0, p4

    if-lez v0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Landroidx/media3/extractor/IndexSeekMap;->isSeekable:Z

    if-eqz v1, :cond_2

    aget-wide v4, p4, v3

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    new-array v4, v1, [J

    iput-object v4, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:[J

    new-array v1, v1, [J

    iput-object v1, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:[J

    invoke-static {p3, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    iput-object p3, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:[J

    iput-object p4, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:[J

    :goto_2
    iput-wide p1, p0, Landroidx/media3/extractor/IndexSeekMap;->durationUs:J

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/IndexSeekMap;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 8

    iget-boolean v0, p0, Landroidx/media3/extractor/IndexSeekMap;->isSeekable:Z

    if-nez v0, :cond_0

    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    sget-object p1, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    invoke-direct {p0, p1, p1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v2

    new-instance v3, Landroidx/media3/extractor/SeekPoint;

    aget-wide v4, v0, v2

    iget-object p0, p0, Landroidx/media3/extractor/IndexSeekMap;->positions:[J

    aget-wide v6, p0, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-eqz p1, :cond_2

    array-length p1, v0

    sub-int/2addr p1, v1

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/media3/extractor/SeekPoint;

    add-int/2addr v2, v1

    aget-wide v0, v0, v2

    aget-wide v4, p0, v2

    invoke-direct {p1, v0, v1, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v3, p1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v3, v3}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method

.method public final isSeekable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/extractor/IndexSeekMap;->isSeekable:Z

    return p0
.end method
