.class public final Landroidx/collection/MapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# instance fields
.field public final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method public constructor <init>(Landroidx/collection/MapCollections;)V
    .locals 0

    iput-object p1, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colClear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0, p1}, Landroidx/collection/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/collection/MapCollections$ValuesCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Landroidx/collection/MapCollections$ArrayIterator;

    iget-object p0, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/collection/MapCollections$ArrayIterator;-><init>(Landroidx/collection/MapCollections;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0, p1}, Landroidx/collection/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 5

    iget-object p0, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    move v2, v3

    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 5

    iget-object p0, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    move v2, v3

    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result p0

    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object p0, p0, Landroidx/collection/MapCollections$ValuesCollection;->this$0:Landroidx/collection/MapCollections;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MapCollections;->toArrayHelper(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
