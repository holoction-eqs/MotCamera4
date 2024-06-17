.class public final Lkotlin/collections/IndexingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public index:I

.field public final iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/collections/IndexingIterator;->$r8$classId:I

    const-string v0, "iterator"

    .line 1
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/IndexingIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/DropSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/collections/IndexingIterator;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lkotlin/sequences/DropSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 4
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lkotlin/collections/IndexingIterator;->iterator:Ljava/util/Iterator;

    iget p1, p1, Lkotlin/sequences/DropSequence;->count:I

    iput p1, p0, Lkotlin/collections/IndexingIterator;->index:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/collections/IndexingIterator;->$r8$classId:I

    iget-object v1, p0, Lkotlin/collections/IndexingIterator;->iterator:Ljava/util/Iterator;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :goto_0
    iget v0, p0, Lkotlin/collections/IndexingIterator;->index:I

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/IndexingIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/IndexingIterator;->index:I

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkotlin/collections/IndexingIterator;->$r8$classId:I

    iget-object v1, p0, Lkotlin/collections/IndexingIterator;->iterator:Ljava/util/Iterator;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lkotlin/collections/IndexedValue;

    iget v2, p0, Lkotlin/collections/IndexingIterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkotlin/collections/IndexingIterator;->index:I

    if-ltz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :goto_0
    iget v0, p0, Lkotlin/collections/IndexingIterator;->index:I

    if-lez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/IndexingIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/IndexingIterator;->index:I

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, Lkotlin/collections/IndexingIterator;->$r8$classId:I

    const-string v0, "Operation is not supported for read-only collection"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
