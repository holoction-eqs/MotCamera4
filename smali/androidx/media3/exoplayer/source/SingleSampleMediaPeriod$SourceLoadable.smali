.class public final Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Loadable;


# instance fields
.field public final dataSource:Landroidx/media3/datasource/StatsDataSource;

.field public final dataSpec:Landroidx/media3/datasource/DataSpec;

.field public sampleData:[B


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/exoplayer/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    new-instance p2, Landroidx/media3/datasource/StatsDataSource;

    invoke-direct {p2, p1}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 0

    return-void
.end method

.method public final load()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/media3/datasource/StatsDataSource;->bytesRead:J

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-wide v1, v0, Landroidx/media3/datasource/StatsDataSource;->bytesRead:J

    long-to-int v1, v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    if-nez v2, :cond_0

    const/16 v2, 0x400

    new-array v2, v2, [B

    iput-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    goto :goto_1

    :cond_0
    array-length v3, v2

    if-ne v1, v3, :cond_1

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    :cond_1
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Landroidx/media3/datasource/StatsDataSource;->read([BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw p0
.end method
