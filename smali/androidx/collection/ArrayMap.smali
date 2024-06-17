.class public final Landroidx/collection/ArrayMap;
.super Landroidx/collection/SimpleArrayMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public mCollections:Landroidx/collection/ArrayMap$1;


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 4

    invoke-direct {p0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    if-eqz p1, :cond_1

    iget v0, p1, Landroidx/collection/SimpleArrayMap;->mSize:I

    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->ensureCapacity(I)V

    iget v1, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    iget-object v1, p1, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    iget-object v3, p0, Landroidx/collection/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/collection/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/ArrayMap$1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/ArrayMap$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/collection/ArrayMap$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/ArrayMap$1;

    :cond_0
    iget-object p0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/ArrayMap$1;

    iget-object v0, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MapCollections$KeySet;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/collection/MapCollections$KeySet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/collection/MapCollections$KeySet;-><init>(Landroidx/collection/MapCollections;I)V

    iput-object v0, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections$KeySet;

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/ArrayMap$1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/ArrayMap$1;

    invoke-direct {v0, p0, v1}, Landroidx/collection/ArrayMap$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/ArrayMap$1;

    :cond_0
    iget-object p0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/ArrayMap$1;

    iget-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MapCollections$KeySet;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/collection/MapCollections$KeySet;

    invoke-direct {v0, p0, v1}, Landroidx/collection/MapCollections$KeySet;-><init>(Landroidx/collection/MapCollections;I)V

    iput-object v0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections$KeySet;

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/ArrayMap$1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/ArrayMap$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/collection/ArrayMap$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/ArrayMap$1;

    :cond_0
    iget-object p0, p0, Landroidx/collection/ArrayMap;->mCollections:Landroidx/collection/ArrayMap$1;

    iget-object v0, p0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MapCollections$ValuesCollection;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/collection/MapCollections$ValuesCollection;

    invoke-direct {v0, p0}, Landroidx/collection/MapCollections$ValuesCollection;-><init>(Landroidx/collection/MapCollections;)V

    iput-object v0, p0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections$ValuesCollection;

    return-object p0
.end method
