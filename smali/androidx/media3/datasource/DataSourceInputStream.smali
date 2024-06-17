.class public final Landroidx/media3/datasource/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public closed:Z

.field public final dataSource:Landroidx/media3/datasource/DataSource;

.field public final dataSpec:Landroidx/media3/datasource/DataSpec;

.field public opened:Z

.field public final singleByteArray:[B


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/StatsDataSource;Landroidx/media3/datasource/DataSpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->opened:Z

    iput-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->closed:Z

    iput-object p1, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSource:Landroidx/media3/datasource/DataSource;

    iput-object p2, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSpec:Landroidx/media3/datasource/DataSpec;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/datasource/DataSourceInputStream;->singleByteArray:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->singleByteArray:[B

    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DataSourceInputStream;->read([B)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget-byte p0, v0, p0

    and-int/lit16 v1, p0, 0xff

    :goto_0
    return v1
.end method

.method public final read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/datasource/DataSourceInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    .line 3
    iget-boolean v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->opened:Z

    iget-object v2, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/DataSourceInputStream;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-interface {v2, v0}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    iput-boolean v1, p0, Landroidx/media3/datasource/DataSourceInputStream;->opened:Z

    .line 4
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method
