.class public final Landroidx/media3/datasource/StatsDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field public bytesRead:J

.field public final dataSource:Landroidx/media3/datasource/DataSource;

.field public lastOpenedUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/datasource/StatsDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Landroidx/media3/datasource/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/datasource/StatsDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/StatsDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V

    return-void
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/StatsDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/StatsDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)J
    .locals 2

    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/datasource/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    iget-object v0, p0, Landroidx/media3/datasource/StatsDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/datasource/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/datasource/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroidx/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    return-wide v0
.end method

.method public final read([BII)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/StatsDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Landroidx/media3/datasource/StatsDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/StatsDataSource;->bytesRead:J

    :cond_0
    return p1
.end method
