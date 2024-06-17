.class public Lkotlinx/coroutines/sync/SemaphoreImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final _availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _availablePermits:I

.field private volatile deqIdx:J

.field private volatile enqIdx:J

.field private volatile head:Ljava/lang/Object;

.field public final onCancellationRelease:Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

.field public final permits:I

.field private volatile tail:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "head"

    const-class v1, Lkotlinx/coroutines/sync/SemaphoreImpl;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "deqIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "tail"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Lkotlinx/coroutines/sync/SemaphoreSegment;

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v2}, Lkotlinx/coroutines/sync/SemaphoreSegment;-><init>(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V

    iput-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head:Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Ljava/lang/Object;

    sub-int/2addr v0, p1

    iput v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:I

    new-instance p1, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of acquired permits should be in 0..1"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final acquire(Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :cond_0
    sget-object v2, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v2

    iget v3, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-gt v2, v3, :cond_0

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x0

    iget-object v5, v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    iget-object v6, v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v7, v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    if-lez v2, :cond_1

    sget-object v0, Lkotlinx/coroutines/sync/MutexImpl;->owner$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;

    invoke-direct {v0, v6, v1, v4}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;I)V

    invoke-virtual {v5, v0, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    sget-object v2, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/sync/SemaphoreSegment;

    sget-object v9, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    sget-object v11, Lkotlinx/coroutines/sync/SemaphoreImpl$addAcquireToQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$addAcquireToQueue$createNewSegment$1;

    sget v12, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    int-to-long v12, v12

    div-long v12, v9, v12

    :goto_0
    invoke-static {v8, v12, v13, v11}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lkotlin/text/UStringsKt;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    if-nez v15, :cond_9

    invoke-static {v14}, Lkotlin/text/UStringsKt;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v15

    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Lkotlinx/coroutines/internal/Segment;

    move-object/from16 v17, v11

    move-wide/from16 v18, v12

    iget-wide v11, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object v13, v5

    move-object/from16 v20, v6

    iget-wide v5, v15, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v5, v11, v5

    if-ltz v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v15}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    invoke-virtual {v2, v0, v4, v15}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move/from16 v5, v16

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_3

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    :cond_5
    :goto_3
    move/from16 v4, v16

    :goto_4
    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    move-object v5, v13

    move-object/from16 v11, v17

    move-wide/from16 v12, v18

    move-object/from16 v6, v20

    const/4 v4, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v15}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v15}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    :cond_8
    move-object v5, v13

    move-object/from16 v11, v17

    move-wide/from16 v12, v18

    move-object/from16 v6, v20

    const/4 v4, 0x0

    goto :goto_1

    :cond_9
    move-object v13, v5

    move-object/from16 v20, v6

    :goto_5
    invoke-static {v14}, Lkotlin/text/UStringsKt;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    sget v4, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    int-to-long v4, v4

    rem-long/2addr v9, v4

    long-to-int v4, v9

    iget-object v5, v2, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :cond_a
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move/from16 v5, v16

    goto :goto_6

    :cond_b
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_c

    invoke-interface {v1, v2, v4}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    goto :goto_8

    :cond_c
    sget-object v6, Lkotlinx/coroutines/sync/SemaphoreKt;->PERMIT:Lkotlinx/coroutines/internal/Symbol;

    sget-object v8, Lkotlinx/coroutines/sync/SemaphoreKt;->TAKEN:Lkotlinx/coroutines/internal/Symbol;

    iget-object v9, v2, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :cond_d
    invoke-virtual {v9, v4, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move/from16 v2, v16

    goto :goto_7

    :cond_e
    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v6, :cond_d

    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_f

    sget-object v2, Lkotlinx/coroutines/sync/MutexImpl;->owner$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object/from16 v10, v20

    invoke-virtual {v2, v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;

    const/4 v11, 0x0

    invoke-direct {v2, v10, v1, v11}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;I)V

    invoke-virtual {v13, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    :goto_8
    move/from16 v4, v16

    goto :goto_9

    :cond_f
    const/4 v11, 0x0

    move v4, v11

    :goto_9
    if-eqz v4, :cond_0

    :goto_a
    return-void
.end method

.method public final release()V
    .locals 15

    move-object v0, p0

    :cond_0
    sget-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v2

    iget v3, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-ge v2, v3, :cond_14

    if-ltz v2, :cond_1

    return-void

    :cond_1
    sget-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    sget-object v3, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    sget v5, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    int-to-long v5, v5

    div-long v5, v3, v5

    sget-object v7, Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;

    :cond_2
    invoke-static {v2, v5, v6, v7}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/text/UStringsKt;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v8}, Lkotlin/text/UStringsKt;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlinx/coroutines/internal/Segment;

    iget-wide v13, v12, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v10, v9, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v10, v13, v10

    if-ltz v10, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v1, p0, v12, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v12, :cond_5

    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_8

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    :cond_7
    :goto_2
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_2

    goto :goto_4

    :cond_8
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    goto :goto_0

    :cond_9
    :goto_4
    invoke-static {v8}, Lkotlin/text/UStringsKt;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/sync/SemaphoreSegment;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    iget-wide v7, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_a

    goto :goto_8

    :cond_a
    sget v2, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    int-to-long v5, v2

    rem-long/2addr v3, v5

    long-to-int v2, v3

    sget-object v3, Lkotlinx/coroutines/sync/SemaphoreKt;->PERMIT:Lkotlinx/coroutines/internal/Symbol;

    iget-object v1, v1, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_f

    sget v3, Lkotlinx/coroutines/sync/SemaphoreKt;->MAX_SPIN_CYCLES:I

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/sync/SemaphoreKt;->TAKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v5, v6, :cond_b

    const/4 v10, 0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    sget-object v4, Lkotlinx/coroutines/sync/SemaphoreKt;->PERMIT:Lkotlinx/coroutines/internal/Symbol;

    sget-object v5, Lkotlinx/coroutines/sync/SemaphoreKt;->BROKEN:Lkotlinx/coroutines/internal/Symbol;

    :cond_d
    invoke-virtual {v1, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v6, 0x1

    const/4 v10, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_d

    const/4 v6, 0x1

    const/4 v10, 0x0

    :goto_6
    xor-int/2addr v10, v6

    goto :goto_9

    :cond_f
    const/4 v6, 0x1

    sget-object v1, Lkotlinx/coroutines/sync/SemaphoreKt;->CANCELLED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v3, v1, :cond_10

    goto :goto_8

    :cond_10
    instance-of v1, v3, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v1, :cond_12

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    iget-object v1, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

    invoke-interface {v3, v2, v1}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v3, v1}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    :goto_7
    move v10, v6

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v10, 0x0

    goto :goto_9

    :cond_12
    instance-of v1, v3, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v1, :cond_13

    check-cast v3, Lkotlinx/coroutines/selects/SelectInstance;

    check-cast v3, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-virtual {v3, p0, v2}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_7

    :goto_9
    if-eqz v10, :cond_0

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_a
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    if-le v2, v3, :cond_15

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_a

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The number of released permits cannot be greater than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
