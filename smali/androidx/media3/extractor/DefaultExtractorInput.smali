.class public final Landroidx/media3/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorInput;


# instance fields
.field public final dataReader:Landroidx/media3/common/DataReader;

.field public peekBuffer:[B

.field public peekBufferLength:I

.field public peekBufferPosition:I

.field public position:J

.field public final scratchSpace:[B

.field public final streamLength:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.extractor"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->dataReader:Landroidx/media3/common/DataReader;

    iput-wide p2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    iput-wide p4, p0, Landroidx/media3/extractor/DefaultExtractorInput;->streamLength:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    return-void
.end method


# virtual methods
.method public final advancePeekPosition(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    return-void
.end method

.method public final advancePeekPosition(IZ)Z
    .locals 7

    .line 2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, v5

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_0

    :cond_1
    iget p2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    const/4 p0, 0x1

    return p0
.end method

.method public final ensureSpaceForPeek(I)V
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    :cond_0
    return-void
.end method

.method public final getLength()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public final getPeekPosition()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public final peek(II[B)I
    .locals 7

    invoke-virtual {p0, p2}, Landroidx/media3/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_0

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {v0, v1, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return p2
.end method

.method public final peekFully(II[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    return-void
.end method

.method public final peekFully([BIIZ)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p3, p4}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p4, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr p0, p3

    invoke-static {p4, p0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final read([BII)I
    .locals 8

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v1

    :cond_1
    const/4 p1, -0x1

    if-eq v1, p1, :cond_2

    iget-wide p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    :cond_2
    return v1
.end method

.method public final readFromUpstream([BIIIZ)I
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    iget-object p0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->dataReader:Landroidx/media3/common/DataReader;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    add-int/2addr p4, p0

    return p4

    :cond_2
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method public final readFully([BII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    return-void
.end method

.method public final readFully([BIIZ)Z
    .locals 8

    .line 2
    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    :goto_0
    move v6, v0

    :goto_1
    const/4 v0, -0x1

    if-ge v6, p3, :cond_1

    if-eq v6, v0, :cond_1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    .line 3
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v6

    goto :goto_1

    :cond_1
    if-eq v6, v0, :cond_2

    .line 4
    iget-wide p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    int-to-long p3, v6

    add-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    :cond_2
    if-eq v6, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final resetPeekPosition()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return-void
.end method

.method public final skip(I)I
    .locals 7

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    if-nez v0, :cond_0

    const/4 v3, 0x0

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    :cond_0
    const/4 p1, -0x1

    if-eq v0, p1, :cond_1

    iget-wide v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    :cond_1
    return v0
.end method

.method public final skipFully(I)V
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    move v4, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v4, p1, :cond_0

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    neg-int v2, v4

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v4

    goto :goto_0

    :cond_0
    if-eq v4, v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->position:J

    :cond_1
    return-void
.end method

.method public final updatePeekBuffer(I)V
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Landroidx/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    return-void
.end method
