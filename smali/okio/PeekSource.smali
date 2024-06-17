.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final buffer:Lokio/Buffer;

.field public closed:Z

.field public expectedPos:I

.field public expectedSegment:Lokio/Segment;

.field public pos:J

.field public final upstream:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iput-object p1, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz p1, :cond_0

    iget p1, p1, Lokio/Segment;->pos:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lokio/PeekSource;->expectedPos:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 10

    iget-boolean p2, p0, Lokio/PeekSource;->closed:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    iget-object p3, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    if-eqz p2, :cond_1

    iget-object v0, p3, Lokio/Buffer;->head:Lokio/Segment;

    if-ne p2, v0, :cond_0

    iget p2, p0, Lokio/PeekSource;->expectedPos:I

    iget v0, v0, Lokio/Segment;->pos:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Peek source is invalid because upstream source was used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object p2, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->request(J)Z

    move-result p2

    if-nez p2, :cond_2

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_2
    iget-object p2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-nez p2, :cond_3

    iget-object p2, p3, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz p2, :cond_3

    iput-object p2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    iget p2, p2, Lokio/Segment;->pos:I

    iput p2, p0, Lokio/PeekSource;->expectedPos:I

    :cond_3
    iget-wide v0, p3, Lokio/Buffer;->size:J

    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    if-eqz p1, :cond_8

    iget-wide v4, p3, Lokio/Buffer;->size:J

    move-wide v6, v2

    move-wide v8, v0

    invoke-static/range {v4 .. v9}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    iget-wide v6, p1, Lokio/Buffer;->size:J

    add-long/2addr v6, v0

    iput-wide v6, p1, Lokio/Buffer;->size:J

    iget-object p2, p3, Lokio/Buffer;->head:Lokio/Segment;

    :goto_1
    iget p3, p2, Lokio/Segment;->limit:I

    iget v6, p2, Lokio/Segment;->pos:I

    sub-int/2addr p3, v6

    int-to-long v6, p3

    cmp-long p3, v2, v6

    if-ltz p3, :cond_5

    sub-long/2addr v2, v6

    iget-object p2, p2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_5
    move-wide v6, v0

    :goto_2
    cmp-long p3, v6, v4

    if-lez p3, :cond_7

    invoke-virtual {p2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object p3

    iget v8, p3, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long/2addr v8, v2

    long-to-int v2, v8

    iput v2, p3, Lokio/Segment;->pos:I

    long-to-int v3, v6

    add-int/2addr v2, v3

    iget v3, p3, Lokio/Segment;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p3, Lokio/Segment;->limit:I

    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_6

    iput-object p3, p3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object p3, p3, Lokio/Segment;->next:Lokio/Segment;

    iput-object p3, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_3

    :cond_6
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v2, p3}, Lokio/Segment;->push(Lokio/Segment;)V

    :goto_3
    iget v2, p3, Lokio/Segment;->limit:I

    iget p3, p3, Lokio/Segment;->pos:I

    sub-int/2addr v2, p3

    int-to-long v2, v2

    sub-long/2addr v6, v2

    iget-object p2, p2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, v4

    goto :goto_2

    :cond_7
    :goto_4
    iget-wide p1, p0, Lokio/PeekSource;->pos:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/PeekSource;->pos:J

    return-wide v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
