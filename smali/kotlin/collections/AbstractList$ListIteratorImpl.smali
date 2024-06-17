.class public final Lkotlin/collections/AbstractList$ListIteratorImpl;
.super Lkotlin/UIntArray$Iterator;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic this$0:Lkotlin/collections/AbstractList;


# direct methods
.method public constructor <init>(Lkotlin/collections/AbstractList;I)V
    .locals 1

    iput-object p1, p0, Lkotlin/collections/AbstractList$ListIteratorImpl;->this$0:Lkotlin/collections/AbstractList;

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lkotlin/UIntArray$Iterator;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Lkotlin/collections/AbstractCollection;->getSize()I

    move-result p1

    invoke-static {p2, p1}, Lkotlin/UByte$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    iput p2, p0, Lkotlin/UIntArray$Iterator;->index:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final nextIndex()I
    .locals 0

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/collections/AbstractList$ListIteratorImpl;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    iget-object p0, p0, Lkotlin/collections/AbstractList$ListIteratorImpl;->this$0:Lkotlin/collections/AbstractList;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .locals 0

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
