.class public Lkotlinx/coroutines/internal/ThreadSafeHeap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final _size$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _size:I

.field public a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    const-string v1, "_size"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method


# virtual methods
.method public final addImpl(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .locals 4

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->setHeap(Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;)V

    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    iput-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    iput-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    sget-object v3, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    aput-object p1, v0, v1

    iput v1, p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->siftUpFrom(I)V

    return-void
.end method

.method public final getSize()I
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final removeAtImpl(I)Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
    .locals 7

    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    sget-object v3, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v1

    if-ge p1, v1, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_0

    aget-object v3, v0, p1

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    aget-object v4, v0, v1

    invoke-static {v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->siftUpFrom(I)V

    goto :goto_1

    :cond_0
    :goto_0
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v3

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-static {v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    aget-object v6, v3, v1

    invoke-static {v6}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    move v1, v4

    :cond_2
    aget-object v4, v3, p1

    invoke-static {v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    aget-object v3, v3, v1

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    move p1, v1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->setHeap(Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;)V

    iput v2, p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    move-result p0

    aput-object v1, v0, p0

    return-object p1
.end method

.method public final siftUpFrom(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final swap(II)V
    .locals 2

    iget-object p0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, p0, p2

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, p0, p1

    invoke-static {v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    aput-object v0, p0, p1

    aput-object v1, p0, p2

    iput p1, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    iput p2, v1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    return-void
.end method
