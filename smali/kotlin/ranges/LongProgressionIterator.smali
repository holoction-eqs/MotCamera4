.class public final Lkotlin/ranges/LongProgressionIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final finalElement:J

.field public hasNext:Z

.field public next:J

.field public final step:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    iput-wide p3, p0, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    const-wide/16 v0, 0x0

    cmp-long p5, p5, v0

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-lez p5, :cond_0

    cmp-long p5, p1, p3

    if-gtz p5, :cond_1

    goto :goto_0

    :cond_0
    cmp-long p5, p1, p3

    if-ltz p5, :cond_1

    goto :goto_0

    :cond_1
    move p6, v0

    :goto_0
    iput-boolean p6, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    move-wide p1, p3

    :goto_1
    iput-wide p1, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/ranges/LongProgressionIterator;->next$kotlin$collections$LongIterator()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final next$kotlin$collections$LongIterator()Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    iget-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    iget-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic remove()V
    .locals 0

    invoke-virtual {p0}, Lkotlin/ranges/LongProgressionIterator;->remove$kotlin$collections$LongIterator()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final remove$kotlin$collections$LongIterator()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
