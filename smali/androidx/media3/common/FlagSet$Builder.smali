.class public final Landroidx/media3/common/FlagSet$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public buildCalled:Z

.field public final flags:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/SystemClock;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/media3/common/FlagSet$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    .line 5
    iput-object p1, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    iput-object p2, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final add(I)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object p0, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-void
.end method

.method public final build()Landroidx/media3/common/FlagSet;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-boolean v1, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    new-instance v0, Landroidx/media3/common/FlagSet;

    iget-object p0, p0, Landroidx/media3/common/FlagSet$Builder;->flags:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-object v0
.end method

.method public final declared-synchronized open()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
