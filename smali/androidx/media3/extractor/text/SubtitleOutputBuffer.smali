.class public abstract Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.super Landroidx/media3/decoder/DecoderOutputBuffer;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public subsampleOffsetUs:J

.field public subtitle:Landroidx/media3/extractor/text/Subtitle;


# virtual methods
.method public final getCues(J)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getEventTime(I)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v0

    iget-wide p0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final getEventTimeCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result p0

    return p0
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result p0

    return p0
.end method

.method public final setContent(JLandroidx/media3/extractor/text/Subtitle;J)V
    .locals 2

    iput-wide p1, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->timeUs:J

    iput-object p3, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subtitle:Landroidx/media3/extractor/text/Subtitle;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p4, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, p4

    :goto_0
    iput-wide p1, p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->subsampleOffsetUs:J

    return-void
.end method
