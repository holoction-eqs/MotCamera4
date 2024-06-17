.class public final Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "SourceFile"


# instance fields
.field public final headers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Sets$FilteredSet;

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$FilteredSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/util/Iterator;

    if-nez p1, :cond_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0, v0}, Lkotlin/jvm/JvmClassMappingKt;->filter(Ljava/util/Set;Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;)Lcom/google/common/collect/Sets$FilteredSet;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->hashCodeImpl(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0, v0}, Lkotlin/jvm/JvmClassMappingKt;->filter(Ljava/util/Set;Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;)Lcom/google/common/collect/Sets$FilteredSet;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method
