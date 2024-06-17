.class public final Landroidx/media3/exoplayer/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allocatedCount:I

.field public availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

.field public availableCount:I

.field public final individualAllocationSize:I

.field public targetBufferSize:I

.field public final trimOnReset:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trimOnReset:Z

    const/high16 v0, 0x10000

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    const/16 v0, 0x64

    new-array v0, v0, [Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    return-void
.end method


# virtual methods
.method public final declared-synchronized trim()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
