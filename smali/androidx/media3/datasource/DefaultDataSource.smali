.class public final Landroidx/media3/datasource/DefaultDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field public assetDataSource:Landroidx/media3/datasource/AssetDataSource;

.field public final baseDataSource:Landroidx/media3/datasource/DataSource;

.field public contentDataSource:Landroidx/media3/datasource/ContentDataSource;

.field public final context:Landroid/content/Context;

.field public dataSchemeDataSource:Landroidx/media3/datasource/DataSchemeDataSource;

.field public dataSource:Landroidx/media3/datasource/DataSource;

.field public fileDataSource:Landroidx/media3/datasource/FileDataSource;

.field public rawResourceDataSource:Landroidx/media3/datasource/RawResourceDataSource;

.field public rtmpDataSource:Landroidx/media3/datasource/DataSource;

.field public final transferListeners:Ljava/util/ArrayList;

.field public udpDataSource:Landroidx/media3/datasource/UdpDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/media3/datasource/DefaultDataSource;->baseDataSource:Landroidx/media3/datasource/DataSource;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/TransferListener;

    invoke-interface {p1, v1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->baseDataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->transferListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->fileDataSource:Landroidx/media3/datasource/FileDataSource;

    invoke-static {v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->assetDataSource:Landroidx/media3/datasource/AssetDataSource;

    invoke-static {v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->contentDataSource:Landroidx/media3/datasource/ContentDataSource;

    invoke-static {v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    invoke-static {v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->udpDataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-static {v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Landroidx/media3/datasource/DataSchemeDataSource;

    invoke-static {v0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->rawResourceDataSource:Landroidx/media3/datasource/RawResourceDataSource;

    invoke-static {p0, p1}, Landroidx/media3/datasource/DefaultDataSource;->maybeAddListenerToDataSource(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/TransferListener;)V

    return-void
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final getAssetDataSource()Landroidx/media3/datasource/DataSource;
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->assetDataSource:Landroidx/media3/datasource/AssetDataSource;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/datasource/AssetDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/datasource/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->assetDataSource:Landroidx/media3/datasource/AssetDataSource;

    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->assetDataSource:Landroidx/media3/datasource/AssetDataSource;

    return-object p0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)J
    .locals 6

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v3, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "file"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->fileDataSource:Landroidx/media3/datasource/FileDataSource;

    if-nez v0, :cond_4

    new-instance v0, Landroidx/media3/datasource/FileDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/FileDataSource;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->fileDataSource:Landroidx/media3/datasource/FileDataSource;

    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_4
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->fileDataSource:Landroidx/media3/datasource/FileDataSource;

    goto/16 :goto_5

    :cond_5
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultDataSource;->getAssetDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v0

    goto/16 :goto_5

    :cond_6
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Landroidx/media3/datasource/DefaultDataSource;->context:Landroid/content/Context;

    if-eqz v1, :cond_8

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->contentDataSource:Landroidx/media3/datasource/ContentDataSource;

    if-nez v0, :cond_7

    new-instance v0, Landroidx/media3/datasource/ContentDataSource;

    invoke-direct {v0, v3}, Landroidx/media3/datasource/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->contentDataSource:Landroidx/media3/datasource/ContentDataSource;

    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_7
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->contentDataSource:Landroidx/media3/datasource/ContentDataSource;

    goto/16 :goto_5

    :cond_8
    const-string v1, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v4, p0, Landroidx/media3/datasource/DefaultDataSource;->baseDataSource:Landroidx/media3/datasource/DataSource;

    if-eqz v1, :cond_a

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_9

    :try_start_0
    const-string v0, "androidx.media3.datasource.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/DataSource;

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Error instantiating RTMP extension"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    if-nez v0, :cond_9

    iput-object v4, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    :cond_9
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rtmpDataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_5

    :cond_a
    const-string v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->udpDataSource:Landroidx/media3/datasource/UdpDataSource;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/media3/datasource/UdpDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/UdpDataSource;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->udpDataSource:Landroidx/media3/datasource/UdpDataSource;

    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_b
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->udpDataSource:Landroidx/media3/datasource/UdpDataSource;

    goto :goto_5

    :cond_c
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Landroidx/media3/datasource/DataSchemeDataSource;

    if-nez v0, :cond_d

    new-instance v0, Landroidx/media3/datasource/DataSchemeDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/DataSchemeDataSource;-><init>()V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Landroidx/media3/datasource/DataSchemeDataSource;

    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_d
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSchemeDataSource:Landroidx/media3/datasource/DataSchemeDataSource;

    goto :goto_5

    :cond_e
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4

    :cond_f
    iput-object v4, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    goto :goto_6

    :cond_10
    :goto_4
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rawResourceDataSource:Landroidx/media3/datasource/RawResourceDataSource;

    if-nez v0, :cond_11

    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource;

    invoke-direct {v0, v3}, Landroidx/media3/datasource/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rawResourceDataSource:Landroidx/media3/datasource/RawResourceDataSource;

    invoke-virtual {p0, v0}, Landroidx/media3/datasource/DefaultDataSource;->addListenersToDataSource(Landroidx/media3/datasource/DataSource;)V

    :cond_11
    iget-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->rawResourceDataSource:Landroidx/media3/datasource/RawResourceDataSource;

    :goto_5
    iput-object v0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    :goto_6
    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-interface {p0, p1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final read([BII)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/datasource/DefaultDataSource;->dataSource:Landroidx/media3/datasource/DataSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p0

    return p0
.end method
