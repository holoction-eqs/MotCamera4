.class public final Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
.super Landroidx/media3/common/MediaPeriodId;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIJLjava/lang/Object;)V
    .locals 7

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/MediaPeriodId;-><init>(IIIJLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IJ)V
    .locals 7

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move v3, p2

    move-wide v4, p3

    move-object v6, p1

    .line 2
    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/MediaPeriodId;-><init>(IIIJLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 9

    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/common/MediaPeriodId;

    iget v3, p0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v4, p0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v6, p0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget v5, p0, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Landroidx/media3/common/MediaPeriodId;-><init>(IIIJLjava/lang/Object;)V

    move-object p0, v1

    :goto_0
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Landroidx/media3/common/MediaPeriodId;)V

    return-object v0
.end method
