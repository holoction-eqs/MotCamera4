.class public final Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final chunkOffsets:Landroidx/media3/common/util/ParsableByteArray;

.field public final chunkOffsetsAreLongs:Z

.field public index:I

.field public final length:I

.field public nextSamplesPerChunkChangeIndex:I

.field public numSamples:I

.field public offset:J

.field public remainingSamplesPerChunkChanges:I

.field public final stsc:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Landroidx/media3/common/util/ParsableByteArray;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Landroidx/media3/common/util/ParsableByteArray;

    iput-boolean p3, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    invoke-virtual {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p1, p2}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    return-void
.end method


# virtual methods
.method public final moveNext()Z
    .locals 4

    iget v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v2, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    if-ne v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsetsAreLongs:Z

    iget-object v2, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->chunkOffsets:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    iget v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v2, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->stsc:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v2, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->remainingSamplesPerChunkChanges:I

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->nextSamplesPerChunkChangeIndex:I

    :cond_3
    return v1
.end method
