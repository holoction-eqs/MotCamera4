.class public final Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public final cues:Lcom/google/common/collect/ImmutableList;

.field public final timeUs:J


# direct methods
.method public constructor <init>(JLcom/google/common/collect/RegularImmutableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    iput-object p3, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->cues:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public final getCues(J)Ljava/util/List;
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->cues:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    :goto_0
    return-object p0
.end method

.method public final getEventTime(I)J
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iget-wide p0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    return-wide p0
.end method

.method public final getEventTimeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getNextEventTimeIndex(J)I
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
