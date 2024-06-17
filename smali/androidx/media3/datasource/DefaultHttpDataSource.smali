.class public final Landroidx/media3/datasource/DefaultHttpDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "SourceFile"


# instance fields
.field public final allowCrossProtocolRedirects:Z

.field public bytesRead:J

.field public bytesToRead:J

.field public final connectTimeoutMillis:I

.field public connection:Ljava/net/HttpURLConnection;

.field public final contentTypePredicate:Lcom/google/common/base/Predicate;

.field public final defaultRequestProperties:Lcom/google/android/gms/common/api/internal/zaad;

.field public inputStream:Ljava/io/InputStream;

.field public final keepPostFor302Redirects:Z

.field public opened:Z

.field public final readTimeoutMillis:I

.field public final requestProperties:Lcom/google/android/gms/common/api/internal/zaad;

.field public responseCode:I

.field public final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/google/android/gms/common/api/internal/zaad;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connectTimeoutMillis:I

    iput p3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->readTimeoutMillis:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    iput-object p4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Lcom/google/android/gms/common/api/internal/zaad;

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    new-instance p2, Lcom/google/android/gms/common/api/internal/zaad;

    invoke-direct {p2, v0}, Lcom/google/android/gms/common/api/internal/zaad;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Lcom/google/android/gms/common/api/internal/zaad;

    iput-boolean p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    return-void
.end method

.method public static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .locals 2

    if-eqz p0, :cond_4

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    iget-wide v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    sub-long v5, v3, v5

    :goto_0
    iget-object v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v3, v5, v6}, Landroidx/media3/datasource/DefaultHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x7d0

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    iget-boolean v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    iget-boolean v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_3
    throw v2
.end method

.method public final closeConnectionQuietly()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    const/16 v0, 0x7d1

    if-eqz p2, :cond_4

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v2, "https"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const-string p1, "Unsupported protocol redirect: "

    invoke-static {p1, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    iget-boolean p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disallowed cross-protocol redirect ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_1
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v0, p2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    throw p1

    :cond_4
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final makeConnection(Landroidx/media3/datasource/DataSpec;)Ljava/net/HttpURLConnection;
    .locals 26

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v1, Ljava/net/URL;

    iget-object v0, v12, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget v2, v12, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iget-object v3, v12, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    iget-wide v13, v12, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v9, v12, Landroidx/media3/datasource/DataSpec;->length:J

    .line 1
    iget v0, v12, Landroidx/media3/datasource/DataSpec;->flags:I

    const/4 v15, 0x1

    and-int/2addr v0, v15

    const/16 v16, 0x0

    if-ne v0, v15, :cond_0

    move/from16 v17, v15

    goto :goto_0

    :cond_0
    move/from16 v17, v16

    .line 2
    :goto_0
    iget-boolean v0, v11, Landroidx/media3/datasource/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    iget-boolean v8, v11, Landroidx/media3/datasource/DefaultHttpDataSource;->keepPostFor302Redirects:Z

    if-nez v0, :cond_1

    if-nez v8, :cond_1

    const/4 v15, 0x1

    iget-object v12, v12, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    move-wide v4, v13

    move-wide v6, v9

    move/from16 v8, v17

    move v9, v15

    move-object v10, v12

    invoke-virtual/range {v0 .. v10}, Landroidx/media3/datasource/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v6, v1

    move v7, v2

    move-object/from16 v18, v3

    move/from16 v0, v16

    :goto_1
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    const/16 v19, 0x0

    iget-object v5, v12, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object/from16 v3, v18

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-wide v4, v13

    move-object/from16 v22, v6

    move v12, v7

    move-wide v6, v9

    move/from16 v23, v8

    move/from16 v8, v17

    move-wide/from16 v24, v9

    move/from16 v9, v19

    move-object/from16 v10, v21

    invoke-virtual/range {v0 .. v10}, Landroidx/media3/datasource/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12f

    const/16 v4, 0x12d

    const/16 v5, 0x12c

    const/16 v6, 0x12e

    if-eq v12, v15, :cond_2

    const/4 v7, 0x3

    if-ne v12, v7, :cond_3

    :cond_2
    if-eq v1, v5, :cond_8

    if-eq v1, v4, :cond_8

    if-eq v1, v6, :cond_8

    if-eq v1, v3, :cond_8

    const/16 v7, 0x133

    if-eq v1, v7, :cond_8

    const/16 v7, 0x134

    if-ne v1, v7, :cond_3

    goto :goto_4

    :cond_3
    const/4 v7, 0x2

    if-ne v12, v7, :cond_7

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_4

    if-eq v1, v6, :cond_4

    if-ne v1, v3, :cond_7

    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v23, :cond_5

    if-ne v1, v6, :cond_5

    move v0, v15

    goto :goto_2

    :cond_5
    move/from16 v0, v16

    :goto_2
    if-nez v0, :cond_6

    const/16 v18, 0x0

    move v7, v15

    goto :goto_3

    :cond_6
    move v7, v12

    :goto_3
    move-object/from16 v1, v22

    invoke-virtual {v11, v1, v2}, Landroidx/media3/datasource/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move-object v6, v0

    goto :goto_5

    :cond_7
    return-object v0

    :cond_8
    :goto_4
    move-object/from16 v1, v22

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v11, v1, v2}, Landroidx/media3/datasource/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move-object v6, v0

    move v7, v12

    :goto_5
    move-object/from16 v12, p1

    move/from16 v0, v20

    move/from16 v8, v23

    move-wide/from16 v9, v24

    goto/16 :goto_1

    :cond_9
    move/from16 v20, v4

    new-instance v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance v1, Ljava/net/NoRouteToHostException;

    const-string v2, "Too many redirects: "

    move/from16 v3, v20

    .line 3
    invoke-static {v2, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v2, v15}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    throw v0
.end method

.method public final makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4

    .line 13
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 14
    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Lcom/google/android/gms/common/api/internal/zaad;

    if-eqz v1, :cond_1

    .line 15
    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v1, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v1

    throw p0

    .line 18
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Lcom/google/android/gms/common/api/internal/zaad;

    .line 19
    monitor-enter v1

    .line 20
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v1, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_1
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p10, Landroidx/media3/datasource/HttpUtil;->CONTENT_RANGE_WITH_START_AND_END:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x0

    cmp-long p10, p4, v0

    const-wide/16 v0, -0x1

    if-nez p10, :cond_4

    cmp-long p10, p6, v0

    if-nez p10, :cond_4

    const/4 p4, 0x0

    goto :goto_2

    .line 22
    :cond_4
    new-instance p10, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {p10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {p10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, p6, v0

    if-eqz v0, :cond_5

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-virtual {p10, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_2
    if-eqz p4, :cond_6

    const-string p5, "Range"

    .line 23
    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    if-eqz p0, :cond_7

    const-string p4, "User-Agent"

    invoke-virtual {p1, p4, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p8, :cond_8

    const-string p0, "gzip"

    goto :goto_3

    :cond_8
    const-string p0, "identity"

    :goto_3
    const-string p4, "Accept-Encoding"

    invoke-virtual {p1, p4, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p0, 0x1

    if-eqz p3, :cond_9

    move p4, p0

    goto :goto_4

    :cond_9
    const/4 p4, 0x0

    :goto_4
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    sget p4, Landroidx/media3/datasource/DataSpec;->$r8$clinit:I

    if-eq p2, p0, :cond_c

    const/4 p0, 0x2

    if-eq p2, p0, :cond_b

    const/4 p0, 0x3

    if-ne p2, p0, :cond_a

    const-string p0, "HEAD"

    goto :goto_5

    .line 24
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_b
    const-string p0, "POST"

    goto :goto_5

    :cond_c
    const-string p0, "GET"

    .line 25
    :goto_5
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_d

    array-length p0, p3

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    :cond_d
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    :goto_6
    return-object p1

    :catchall_1
    move-exception p0

    .line 26
    monitor-exit v1

    throw p0
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)J
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    iput-wide v2, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing()V

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/DefaultHttpDataSource;->makeConnection(Landroidx/media3/datasource/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v5

    iput-object v5, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    iput v6, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    iget v6, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const-wide/16 v7, -0x1

    const-string v9, "Content-Range"

    const/16 v10, 0xc8

    iget-wide v11, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v13, v0, Landroidx/media3/datasource/DataSpec;->length:J

    if-lt v6, v10, :cond_d

    const/16 v15, 0x12b

    if-le v6, v15, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    iget-object v15, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->contentTypePredicate:Lcom/google/common/base/Predicate;

    if-eqz v15, :cond_2

    invoke-interface {v15, v6}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    new-instance v0, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v6}, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget v6, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-ne v6, v10, :cond_3

    cmp-long v6, v11, v2

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move-wide v11, v2

    :goto_1
    const-string v6, "Content-Encoding"

    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "gzip"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    cmp-long v7, v13, v7

    if-eqz v7, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string v7, "Content-Length"

    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroidx/media3/datasource/HttpUtil;->CONTENT_RANGE_WITH_START_AND_END:Ljava/util/regex/Pattern;

    const-string v9, "Inconsistent headers ["

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v13, "]"

    const-string v14, "HttpUtil"

    if-nez v10, :cond_5

    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "Unexpected Content-Length ["

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-wide/16 v15, -0x1

    :goto_2
    move-wide/from16 v17, v15

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    sget-object v10, Landroidx/media3/datasource/HttpUtil;->CONTENT_RANGE_WITH_START_AND_END:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x2

    :try_start_2
    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    sub-long v15, v15, v19

    const-wide/16 v19, 0x1

    move-object v10, v5

    add-long v4, v15, v19

    move-wide/from16 v0, v17

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    move-wide/from16 v17, v4

    goto :goto_4

    :cond_6
    cmp-long v2, v0, v4

    if-eqz v2, :cond_8

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_1
    move-object v10, v5

    move-wide/from16 v0, v17

    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected Content-Range ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v10, v5

    move-wide/from16 v0, v17

    :cond_8
    :goto_3
    move-wide/from16 v17, v0

    :goto_4
    const-wide/16 v0, -0x1

    cmp-long v0, v17, v0

    if-eqz v0, :cond_9

    sub-long v17, v17, v11

    goto :goto_5

    :cond_9
    const-wide/16 v17, -0x1

    :goto_5
    move-object/from16 v4, p0

    move-wide/from16 v0, v17

    iput-wide v0, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_7

    :cond_a
    :goto_6
    move-object v4, v1

    move-object v10, v5

    iput-wide v13, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    :goto_7
    const/16 v1, 0x7d0

    :try_start_4
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v6, :cond_b

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v2, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    :try_start_5
    invoke-virtual {v4, v11, v12}, Landroidx/media3/datasource/DefaultHttpDataSource;->skipFully(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    iget-wide v0, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    return-wide v0

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    instance-of v0, v2, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v0, :cond_c

    move-object v0, v2

    check-cast v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v0

    :cond_c
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    throw v0

    :catch_4
    move-exception v0

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    new-instance v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v3, v0, v1, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    throw v3

    :cond_d
    :goto_8
    move-object v4, v1

    move-object v10, v5

    invoke-virtual {v10}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    iget v1, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const/16 v5, 0x1a0

    if-ne v1, v5, :cond_11

    invoke-virtual {v10, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Landroidx/media3/datasource/HttpUtil;->CONTENT_RANGE_WITH_START_AND_END:Ljava/util/regex/Pattern;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_9

    :cond_e
    sget-object v6, Landroidx/media3/datasource/HttpUtil;->CONTENT_RANGE_WITH_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    :goto_a
    cmp-long v1, v11, v7

    if-nez v1, :cond_11

    iput-boolean v6, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->opened:Z

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    const-wide/16 v0, -0x1

    cmp-long v0, v13, v0

    if-eqz v0, :cond_10

    move-wide v2, v13

    :cond_10
    return-wide v2

    :cond_11
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_13

    :try_start_6
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1000

    new-array v2, v2, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_b
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_12

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    :cond_12
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    goto :goto_c

    :cond_13
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_c

    :catch_5
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    iget v1, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-ne v1, v5, :cond_14

    new-instance v1, Landroidx/media3/datasource/DataSourceException;

    const/16 v2, 0x7d8

    invoke-direct {v1, v2}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    goto :goto_d

    :cond_14
    const/4 v1, 0x0

    :goto_d
    new-instance v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v3, v4, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    invoke-direct {v2, v3, v1, v0}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILandroidx/media3/datasource/DataSourceException;Ljava/util/Map;)V

    throw v2

    :catch_6
    move-exception v0

    move-object v4, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object v0

    throw v0
.end method

.method public final read([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_2
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    :goto_0
    move p0, v3

    goto :goto_1

    :cond_3
    iget-wide p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, p1

    :goto_1
    return p0

    :catch_0
    move-exception p0

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object p0

    throw p0
.end method

.method public final skipFully(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    int-to-long v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-long v5, v4

    sub-long/2addr p1, v5

    invoke-virtual {p0, v4}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {p0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 p2, 0x7d0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    throw p0

    :cond_3
    return-void
.end method
