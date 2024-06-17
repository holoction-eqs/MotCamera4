.class public Landroidx/media3/common/MediaPeriodId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final nextAdGroupIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final windowSequenceNumber:J


# direct methods
.method public constructor <init>(IIIJLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput p1, p0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iput p2, p0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    iput-wide p4, p0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iput p3, p0, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/Object;)V
    .locals 7

    .line 2
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/MediaPeriodId;-><init>(IIIJLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaPeriodId;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v0, p1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iput v0, p0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v0, p1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    iput v0, p0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v0, p1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget p1, p1, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    iput p1, p0, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 4
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/MediaPeriodId;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaPeriodId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaPeriodId;

    iget-object v1, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    iget v3, p1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    iget-wide v5, p1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget p0, p0, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    iget p1, p1, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final isAd()Z
    .locals 1

    iget p0, p0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
