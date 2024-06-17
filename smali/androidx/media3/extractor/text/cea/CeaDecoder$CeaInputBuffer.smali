.class public final Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;
.super Landroidx/media3/extractor/text/SubtitleInputBuffer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public queuedInputBufferCount:J


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v1

    invoke-virtual {p1, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v5, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-nez v2, :cond_2

    iget-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    iget-wide p0, p1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    sub-long/2addr v0, p0

    cmp-long p0, v0, v5

    if-nez p0, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    cmp-long p0, v0, v5

    if-lez p0, :cond_0

    :goto_0
    return v3
.end method
