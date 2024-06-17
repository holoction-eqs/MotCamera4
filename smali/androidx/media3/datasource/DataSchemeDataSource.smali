.class public final Landroidx/media3/datasource/DataSchemeDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "SourceFile"


# instance fields
.field public bytesRemaining:I

.field public data:[B

.field public dataSpec:Landroidx/media3/datasource/DataSpec;

.field public readPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_0
    iput-object v1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)J
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing()V

    iput-object p1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported scheme: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v2, -0x1

    const-string v3, ","

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v2, v5, :cond_4

    aget-object v0, v1, v4

    aget-object v1, v1, v3

    const-string v2, ";base64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error while parsing Base64 encoded string: "

    invoke-static {p1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroidx/media3/common/ParserException;

    invoke-direct {v0, p1, p0, v4, v3}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_0
    sget-object v1, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    array-length v1, v0

    int-to-long v1, v1

    iget-wide v3, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v1, v3, v1

    if-gtz v1, :cond_3

    long-to-int v1, v3

    iput v1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->readPosition:I

    array-length v0, v0

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    const-wide/16 v1, -0x1

    iget-wide v3, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v0, v5

    iput v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget p0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    int-to-long v3, p0

    :goto_1
    return-wide v3

    :cond_3
    iput-object v6, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    new-instance p0, Landroidx/media3/datasource/DataSourceException;

    const/16 p1, 0x7d8

    invoke-direct {p0, p1}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unexpected URI format: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroidx/media3/common/ParserException;

    invoke-direct {p1, p0, v6, v4, v3}, Landroidx/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw p1
.end method

.method public final read([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->readPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->readPosition:I

    iget p1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    invoke-virtual {p0, p3}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    return p3
.end method
