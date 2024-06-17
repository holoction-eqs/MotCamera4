.class public final Landroidx/media3/exoplayer/upstream/SlidingPercentile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INDEX_COMPARATOR:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

.field public static final VALUE_COMPARATOR:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;


# instance fields
.field public currentSortOrder:I

.field public final maxWeight:I

.field public nextSampleIndex:I

.field public recycledSampleCount:I

.field public final recycledSamples:[Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

.field public final samples:Ljava/util/ArrayList;

.field public totalWeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->INDEX_COMPARATOR:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->VALUE_COMPARATOR:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->maxWeight:I

    const/4 p1, 0x5

    new-array p1, p1, [Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSamples:[Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    return-void
.end method


# virtual methods
.method public final addSample(FI)V
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->INDEX_COMPARATOR:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSamples:[Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    aget-object v0, v3, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;-><init>()V

    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->nextSampleIndex:I

    iput v2, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    iput p2, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    iput p1, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    :cond_2
    :goto_1
    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    iget p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->maxWeight:I

    if-le p1, p2, :cond_4

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget v2, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    if-gt v2, p1, :cond_3

    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    sub-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    const/4 p2, 0x5

    if-ge p1, p2, :cond_2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    aput-object v0, v3, p1

    goto :goto_1

    :cond_3
    sub-int/2addr v2, p1

    iput v2, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    iget p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final getPercentile()F
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->VALUE_COMPARATOR:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    move p0, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget v4, v3, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    add-int/2addr p0, v4

    int-to-float v4, p0

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_1

    iget p0, v3, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x7fc00000    # Float.NaN

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget p0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    :goto_1
    return p0
.end method
