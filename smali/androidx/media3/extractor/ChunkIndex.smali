.class public final Landroidx/media3/extractor/ChunkIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final durationUs:J

.field public final durationsUs:[J

.field public final length:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timesUs:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ChunkIndex;->sizes:[I

    iput-object p2, p0, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    iput-object p3, p0, Landroidx/media3/extractor/ChunkIndex;->durationsUs:[J

    iput-object p4, p0, Landroidx/media3/extractor/ChunkIndex;->timesUs:[J

    array-length p1, p1

    iput p1, p0, Landroidx/media3/extractor/ChunkIndex;->length:I

    if-lez p1, :cond_0

    add-int/lit8 p2, p1, -0x1

    aget-wide p2, p3, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/extractor/ChunkIndex;->durationUs:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/extractor/ChunkIndex;->durationUs:J

    :goto_0
    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/ChunkIndex;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 9

    iget-object v0, p0, Landroidx/media3/extractor/ChunkIndex;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v2

    new-instance v3, Landroidx/media3/extractor/SeekPoint;

    aget-wide v4, v0, v2

    iget-object v6, p0, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    aget-wide v7, v6, v2

    invoke-direct {v3, v4, v5, v7, v8}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    iget p0, p0, Landroidx/media3/extractor/ChunkIndex;->length:I

    sub-int/2addr p0, v1

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/media3/extractor/SeekPoint;

    add-int/2addr v2, v1

    aget-wide p1, v0, v2

    aget-wide v0, v6, v2

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v3, p0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p1

    :cond_1
    :goto_0
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, v3, v3}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChunkIndex(length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media3/extractor/ChunkIndex;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/extractor/ChunkIndex;->sizes:[I

    const-string v2, ", offsets="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/extractor/ChunkIndex;->offsets:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/extractor/ChunkIndex;->timesUs:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationsUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/extractor/ChunkIndex;->durationsUs:[J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
