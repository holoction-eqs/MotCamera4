.class public abstract Lcom/google/common/collect/ForwardingMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMap;->toString$com$google$common$collect$ForwardingObject()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString$com$google$common$collect$ForwardingObject()Ljava/lang/String;
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 0

    check-cast p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
