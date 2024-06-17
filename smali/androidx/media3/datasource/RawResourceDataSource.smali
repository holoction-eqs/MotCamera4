.class public final Landroidx/media3/datasource/RawResourceDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "SourceFile"


# instance fields
.field public assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field public bytesRemaining:J

.field public inputStream:Ljava/io/FileInputStream;

.field public opened:Z

.field public final packageName:Ljava/lang/String;

.field public final resources:Landroid/content/res/Resources;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/RawResourceDataSource;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rawresource:///"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->uri:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/FileInputStream;

    :try_start_1
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_2
    return-void

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v1, v0, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_3
    throw v1

    :catch_1
    move-exception v3

    :try_start_3
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v1, v0, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/FileInputStream;

    :try_start_4
    iget-object v4, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_5
    throw v3

    :catch_2
    move-exception v3

    :try_start_5
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v1, v0, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_6
    throw v1
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/RawResourceDataSource;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/datasource/RawResourceDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rawresource"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x7d5

    iget-object v5, v0, Landroidx/media3/datasource/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    const/16 v6, 0x3ec

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v9, "android.resource"

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "\\d+"

    invoke-virtual {v3, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v6, ""

    goto :goto_0

    :cond_2
    const-string v10, ":"

    invoke-static {v6, v10}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-static {v9, v6, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "raw"

    iget-object v9, v0, Landroidx/media3/datasource/RawResourceDataSource;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3, v6, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const-string v1, "Resource not found."

    invoke-direct {v0, v4, v1, v8}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_4
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported URI scheme ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "). Only rawresource and android.resource are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v8}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing()V

    :try_start_1
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    iput-object v3, v0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, v0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/FileInputStream;

    const-wide/16 v9, -0x1

    cmp-long v6, v4, v9

    const/16 v11, 0x7d8

    iget-wide v12, v1, Landroidx/media3/datasource/DataSpec;->position:J

    if-eqz v6, :cond_7

    cmp-long v14, v12, v4

    if-gtz v14, :cond_6

    goto :goto_3

    :cond_6
    :try_start_2
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, v11, v8, v8}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v14

    add-long v7, v14, v12

    invoke-virtual {v2, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v7

    sub-long/2addr v7, v14

    cmp-long v12, v7, v12

    if-nez v12, :cond_f

    const-wide/16 v12, 0x0

    if-nez v6, :cond_a

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-nez v4, :cond_8

    iput-wide v9, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v2, v4, v12

    if-ltz v2, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/4 v1, 0x0

    invoke-direct {v0, v11, v1, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_a
    sub-long/2addr v4, v7

    iput-wide v4, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J
    :try_end_2
    .catch Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    cmp-long v2, v4, v12

    if-ltz v2, :cond_e

    :goto_4
    iget-wide v2, v1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v4, v2, v9

    if-eqz v4, :cond_c

    iget-wide v5, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v7, v5, v9

    if-nez v7, :cond_b

    move-wide v5, v2

    goto :goto_5

    :cond_b
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_5
    iput-wide v5, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    :cond_c
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    if-eqz v4, :cond_d

    goto :goto_6

    :cond_d
    iget-wide v2, v0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    :goto_6
    return-wide v2

    :cond_e
    :try_start_3
    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    invoke-direct {v0, v11}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw v0

    :cond_f
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/4 v1, 0x0

    invoke-direct {v0, v11, v1, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_3
    .catch Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :cond_10
    const/16 v0, 0x7d0

    new-instance v1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Resource is compressed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    move-object v3, v8

    move-object v1, v0

    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, v4, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-object v3, v8

    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const-string v1, "Resource identifier must be an integer."

    invoke-direct {v0, v6, v1, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 9

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    const/16 v6, 0x7d0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v7, p3

    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/FileInputStream;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_4

    iget-wide p0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long p0, p0, v4

    if-nez p0, :cond_3

    return v3

    :cond_3
    new-instance p0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    const-string p2, "End of stream reached having not read sufficient data."

    invoke-direct {p0, v6, p2, p1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p0

    :cond_4
    iget-wide p2, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    return p1

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/4 p2, 0x0

    invoke-direct {p1, v6, p2, p0}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
