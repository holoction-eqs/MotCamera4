.class public final Landroidx/media3/datasource/FileDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "SourceFile"


# instance fields
.field public bytesRemaining:J

.field public file:Ljava/io/RandomAccessFile;

.field public opened:Z

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/FileDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Landroidx/media3/datasource/FileDataSource;->opened:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/media3/datasource/FileDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Exception;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    iput-object v0, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Landroidx/media3/datasource/FileDataSource;->opened:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/media3/datasource/FileDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_2
    throw v2
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/FileDataSource;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)J
    .locals 8

    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v1, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iput-object v0, p0, Landroidx/media3/datasource/FileDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing()V

    const/16 v3, 0x7d0

    const/16 v4, 0x7d6

    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object v5, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    :try_start_1
    invoke-virtual {v5, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v1

    :cond_0
    iput-wide v4, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/FileDataSource;->opened:Z

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    iget-wide p0, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J

    return-wide p0

    :cond_1
    new-instance p0, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 p1, 0x7d8

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(ILjava/lang/String;Ljava/io/FileNotFoundException;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    invoke-direct {p1, p0, v3}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Exception;I)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    invoke-direct {p1, p0, v3}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Exception;I)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    invoke-direct {p1, p0, v4}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Exception;I)V

    throw p1

    :catch_3
    move-exception p0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/FileDataSource$Api21;->access$000(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x7d5

    :goto_0
    invoke-direct {p1, p0, v4}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Exception;I)V

    throw p1

    :cond_3
    new-instance p1, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-direct {p1, v1, v0, p0}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(ILjava/lang/String;Ljava/io/FileNotFoundException;)V

    throw p1
.end method

.method public final read([BII)I
    .locals 5

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    iget-wide p2, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/FileDataSource;->bytesRemaining:J

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    const/16 p2, 0x7d0

    invoke-direct {p1, p0, p2}, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Exception;I)V

    throw p1
.end method
