.class public Lkotlinx/coroutines/channels/BufferedChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/Channel;


# static fields
.field public static final _closeCause$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final bufferEnd$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final closeHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile _closeCause:Ljava/lang/Object;

.field private volatile bufferEnd:J

.field private volatile bufferEndSegment:Ljava/lang/Object;

.field public final capacity:I

.field private volatile closeHandler:Ljava/lang/Object;

.field private volatile completedExpandBuffersAndPauseFlag:J

.field public final onUndeliveredElement:Lkotlin/jvm/functions/Function1;

.field public final onUndeliveredElementReceiveCancellationConstructor:Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;

.field private volatile receiveSegment:Ljava/lang/Object;

.field private volatile receivers:J

.field private volatile sendSegment:Ljava/lang/Object;

.field private volatile sendersAndCloseStatus:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "sendersAndCloseStatus"

    const-class v1, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "receivers"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "bufferEnd"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "completedExpandBuffersAndPauseFlag"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "sendSegment"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "receiveSegment"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "bufferEndSegment"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_closeCause"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "closeHandler"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    if-eqz p1, :cond_2

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    int-to-long v0, p1

    goto :goto_1

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd:J

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag:J

    new-instance p1, Lkotlinx/coroutines/channels/ChannelSegment;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/channels/ChannelSegment;-><init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment:Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment:Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment:Ljava/lang/Object;

    if-eqz p2, :cond_4

    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;-><init>(Ljava/lang/Object;I)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElementReceiveCancellationConstructor:Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;

    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->NO_CLOSE_CAUSE:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause:Ljava/lang/Object;

    return-void

    :cond_5
    const-string p0, "Invalid channel capacity: "

    const-string p2, ", should be >=0"

    invoke-static {p0, p1, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;

    :cond_0
    invoke-static {p3, p1, p2, v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/UStringsKt;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lkotlin/text/UStringsKt;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v2

    :cond_1
    :goto_0
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/internal/Segment;

    iget-wide v5, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v7, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-ltz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v7, v6

    goto :goto_1

    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v4, :cond_3

    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    :cond_5
    :goto_2
    if-eqz v6, :cond_0

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    goto :goto_0

    :cond_7
    :goto_3
    invoke-static {v1}, Lkotlin/text/UStringsKt;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long p1, p1

    iget-wide v0, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v0, p1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_b

    goto :goto_5

    :cond_8
    invoke-static {v1}, Lkotlin/text/UStringsKt;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v0, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_c

    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long p1, p1

    mul-long/2addr v0, p1

    :cond_9
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide p1, 0xfffffffffffffffL

    and-long/2addr p1, v4

    cmp-long v3, p1, v0

    if-ltz v3, :cond_a

    goto :goto_4

    :cond_a
    const/16 v3, 0x3c

    shr-long v6, v4, v3

    long-to-int v6, v6

    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    int-to-long v6, v6

    shl-long/2addr v6, v3

    add-long/2addr v6, p1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_9

    :goto_4
    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long p1, p1

    iget-wide v0, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v0, p1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_b

    :goto_5
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_b
    const/4 p3, 0x0

    :cond_c
    return-object p3
.end method

.method public static final access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->bufferOrRendezvousSend(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v2, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_1
    if-nez p6, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2, v2, p6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    instance-of v3, v0, Lkotlinx/coroutines/Waiter;

    if-eqz v3, :cond_6

    invoke-virtual {p1, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeReceiver(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILkotlinx/coroutines/internal/Symbol;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    iget-object p3, p1, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p4, p2, 0x2

    add-int/2addr p4, v1

    invoke-virtual {p3, p4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, p0, :cond_5

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    :cond_5
    const/4 v1, 0x5

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual/range {p0 .. p7}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellSendSlow(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1

    :goto_1
    return v1
.end method


# virtual methods
.method public final bufferOrRendezvousSend(J)Z
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    iget p0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Channel was cancelled"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    return-void
.end method

.method public final close(Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    move-result p0

    return p0
.end method

.method public final closeOrCancelImpl(Ljava/lang/Throwable;Z)Z
    .locals 15

    move-object v6, p0

    const-wide v7, 0xfffffffffffffffL

    const/16 v9, 0x3c

    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const/4 v11, 0x1

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {v10, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    shr-long v0, v2, v9

    long-to-int v0, v0

    if-nez v0, :cond_1

    and-long v0, v2, v7

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    int-to-long v4, v11

    shl-long/2addr v4, v9

    add-long/2addr v4, v0

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NO_CLOSE_CAUSE:Lkotlinx/coroutines/internal/Symbol;

    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object/from16 v2, p1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_3

    move v13, v11

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_2

    move v13, v12

    :goto_0
    const/4 v14, 0x3

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {v10, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v0, v2, v7

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    int-to-long v4, v14

    shl-long/2addr v4, v9

    add-long/2addr v4, v0

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_5
    invoke-virtual {v10, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    shr-long v0, v2, v9

    long-to-int v0, v0

    if-eqz v0, :cond_7

    if-eq v0, v11, :cond_6

    goto :goto_2

    :cond_6
    and-long v0, v2, v7

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    move v4, v14

    goto :goto_1

    :cond_7
    and-long v0, v2, v7

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    const/4 v4, 0x2

    :goto_1
    int-to-long v4, v4

    shl-long/2addr v4, v9

    add-long/2addr v4, v0

    move-object v0, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    if-eqz v13, :cond_d

    :cond_8
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_3

    :cond_9
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    :cond_a
    :goto_3
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v11

    goto :goto_4

    :cond_b
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_a

    move v0, v12

    :goto_4
    if-eqz v0, :cond_8

    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {v11, v1}, Lkotlin/LazyKt__LazyKt;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_5
    return v13
.end method

.method public final completeClose(J)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 12

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v2, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v4, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v0, v1

    :cond_0
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v2, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v4, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->CLOSED:Lkotlinx/coroutines/internal/Symbol;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    check-cast v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    if-nez v1, :cond_16

    :cond_4
    sget-object v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    :goto_2
    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isConflatedDropOldest()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_c

    move-object v1, v0

    :cond_6
    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    add-int/2addr v5, v2

    :goto_3
    const-wide/16 v6, -0x1

    if-ge v2, v5, :cond_b

    sget v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v8, v8

    iget-wide v10, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v10, v8

    int-to-long v8, v5

    add-long/2addr v10, v8

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v8

    cmp-long v8, v10, v8

    if-gez v8, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v1, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

    if-ne v8, v9, :cond_8

    goto :goto_4

    :cond_8
    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v8, v9, :cond_a

    goto :goto_6

    :cond_9
    :goto_4
    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v1, v5, v8, v9}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    :cond_a
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_b
    sget-object v5, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v1, :cond_6

    :goto_5
    move-wide v10, v6

    :goto_6
    cmp-long v1, v10, v6

    if-eqz v1, :cond_c

    invoke-virtual {p0, v10, v11}, Lkotlinx/coroutines/channels/BufferedChannel;->dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V

    :cond_c
    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_13

    sget v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    sub-int/2addr v5, v3

    :goto_8
    if-ge v2, v5, :cond_12

    sget v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v6, v6

    iget-wide v8, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v8, v6

    int-to-long v6, v5

    add-long/2addr v8, v6

    cmp-long v6, v8, p1

    if-ltz v6, :cond_13

    :cond_d
    invoke-virtual {v1, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

    if-ne v6, v7, :cond_e

    goto :goto_a

    :cond_e
    instance-of v7, v6, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v7, :cond_f

    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v1, v5, v6, v7}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    check-cast v6, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v6, v6, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    goto :goto_9

    :cond_f
    instance-of v7, v6, Lkotlinx/coroutines/Waiter;

    if-eqz v7, :cond_11

    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v1, v5, v6, v7}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_9
    invoke-static {v4, v6}, Lkotlin/reflect/jvm/KCallablesJvm;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    goto :goto_b

    :cond_10
    :goto_a
    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v1, v5, v6, v7}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    :cond_11
    :goto_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    :cond_12
    sget-object v5, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    goto :goto_7

    :cond_13
    if-eqz v4, :cond_15

    instance-of p1, v4, Ljava/util/ArrayList;

    if-nez p1, :cond_14

    check-cast v4, Lkotlinx/coroutines/Waiter;

    invoke-virtual {p0, v4, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V

    goto :goto_d

    :cond_14
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_c
    if-ge v2, p1, :cond_15

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/Waiter;

    invoke-virtual {p0, p2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    :cond_15
    :goto_d
    return-object v0

    :cond_16
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V
    .locals 10

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    :cond_0
    :goto_0
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    iget v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    int-to-long v2, v2

    add-long/2addr v2, v8

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long v5, v8, v2

    move-object v2, p0

    move-wide v3, v8

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v3, v8, v1

    rem-long v1, v8, v1

    long-to-int v1, v1

    iget-wide v5, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3, v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :cond_3
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move v4, v1

    move-wide v5, v8

    invoke-virtual/range {v2 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    iget-object v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lcom/google/gson/JsonParseException;)Lcom/google/gson/JsonParseException;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    throw v1
.end method

.method public final expandBuffer()V
    .locals 17

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v7, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    move-object v8, v0

    :cond_1
    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v0, v0

    div-long v0, v9, v0

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    cmp-long v2, v2, v9

    const-wide/16 v11, 0x1

    if-gtz v2, :cond_3

    iget-wide v2, v8, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v0, v1, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->moveSegmentBufferEndToSpecifiedOrLast(JLkotlinx/coroutines/channels/ChannelSegment;)V

    :cond_2
    invoke-virtual {v6, v11, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts(J)V

    return-void

    :cond_3
    iget-wide v2, v8, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_10

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;

    :goto_1
    invoke-static {v8, v0, v1, v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/UStringsKt;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v3}, Lkotlin/text/UStringsKt;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v4

    :goto_2
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/internal/Segment;

    iget-wide v13, v5, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v11, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v11, v13, v11

    if-ltz v11, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v7, v6, v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v5, :cond_5

    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_9

    invoke-virtual {v5}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    const-wide/16 v11, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    :cond_a
    const-wide/16 v11, 0x1

    goto :goto_2

    :cond_b
    :goto_6
    invoke-static {v3}, Lkotlin/text/UStringsKt;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    invoke-virtual {v6, v0, v1, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->moveSegmentBufferEndToSpecifiedOrLast(JLkotlinx/coroutines/channels/ChannelSegment;)V

    goto :goto_7

    :cond_c
    invoke-static {v3}, Lkotlin/text/UStringsKt;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v2, v11, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_e

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v4, 0x1

    add-long v12, v9, v4

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v4, v1

    mul-long v15, v4, v2

    move-object/from16 v1, p0

    move-wide v2, v12

    move-wide v12, v4

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, v11, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v0, v12

    sub-long/2addr v0, v9

    invoke-virtual {v6, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts(J)V

    goto :goto_8

    :cond_d
    :goto_7
    const-wide/16 v0, 0x1

    invoke-virtual {v6, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts(J)V

    :goto_8
    const/4 v11, 0x0

    :cond_e
    if-nez v11, :cond_f

    goto/16 :goto_0

    :cond_f
    move-object v8, v11

    :cond_10
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v0, v0

    rem-long v0, v9, v0

    long-to-int v0, v0

    invoke-virtual {v8, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/Waiter;

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-eqz v2, :cond_12

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v2, v9, v4

    if-ltz v2, :cond_12

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v8, v0, v1, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v6, v1, v8, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILkotlinx/coroutines/internal/Symbol;)V

    goto/16 :goto_b

    :cond_11
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILkotlinx/coroutines/internal/Symbol;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    const/4 v13, 0x0

    goto/16 :goto_c

    :cond_12
    :goto_9
    invoke-virtual {v8, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/Waiter;

    if-eqz v2, :cond_15

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v2, v9, v4

    if-gez v2, :cond_13

    new-instance v2, Lkotlinx/coroutines/channels/WaiterEB;

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/Waiter;

    invoke-direct {v2, v4}, Lkotlinx/coroutines/channels/WaiterEB;-><init>(Lkotlinx/coroutines/Waiter;)V

    invoke-virtual {v8, v0, v1, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_b

    :cond_13
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v8, v0, v1, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v6, v1, v8, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILkotlinx/coroutines/internal/Symbol;)V

    goto :goto_b

    :cond_14
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILkotlinx/coroutines/internal/Symbol;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v4, :cond_16

    :goto_a
    move v13, v2

    goto :goto_c

    :cond_16
    if-nez v1, :cond_17

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v8, v0, v1, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_b

    :cond_17
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v4, :cond_18

    goto :goto_b

    :cond_18
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->POISONED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v1, v4, :cond_1c

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-eq v1, v4, :cond_1c

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v4, :cond_19

    goto :goto_b

    :cond_19
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v4, :cond_1a

    goto :goto_b

    :cond_1a
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v4, :cond_1b

    goto :goto_9

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected cell state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_b
    const/4 v13, 0x1

    :goto_c
    const-wide/16 v0, 0x1

    invoke-virtual {v6, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->incCompletedExpandBufferAttempts(J)V

    if-eqz v13, :cond_1

    return-void
.end method

.method public final findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 11

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;

    :cond_0
    invoke-static {p3, p1, p2, v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/UStringsKt;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_7

    invoke-static {v1}, Lkotlin/text/UStringsKt;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v2

    :cond_1
    :goto_0
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/internal/Segment;

    iget-wide v7, v6, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v9, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v5, p0, v6, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v6, :cond_3

    move v5, v3

    :goto_1
    if-eqz v5, :cond_6

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    :cond_5
    :goto_2
    move v2, v4

    :goto_3
    if-eqz v2, :cond_0

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    goto :goto_0

    :cond_7
    :goto_4
    invoke-static {v1}, Lkotlin/text/UStringsKt;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long p1, p1

    iget-wide v0, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v0, p1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_10

    :goto_5
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    goto/16 :goto_a

    :cond_8
    invoke-static {v1}, Lkotlin/text/UStringsKt;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v0

    iget-wide v1, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v5

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v7, v0

    div-long/2addr v5, v7

    cmp-long v0, p1, v5

    if-gtz v0, :cond_d

    :cond_9
    :goto_6
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/internal/Segment;

    iget-wide v6, v5, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v6, v6, v1

    if-gez v6, :cond_d

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_a
    invoke-virtual {v0, p0, v5, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v0, v4

    goto :goto_7

    :cond_b
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_a

    move v0, v3

    :goto_7
    if-eqz v0, :cond_c

    invoke-virtual {v5}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    goto :goto_8

    :cond_c
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    goto :goto_6

    :cond_d
    :goto_8
    cmp-long p1, v1, p1

    if-lez p1, :cond_11

    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long p1, p1

    mul-long/2addr v1, p1

    :cond_e
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-ltz p1, :cond_f

    goto :goto_9

    :cond_f
    move-object v4, p0

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_e

    :goto_9
    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long p1, p1

    iget-wide v0, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v0, p1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_10

    goto/16 :goto_5

    :cond_10
    :goto_a
    const/4 p3, 0x0

    :cond_11
    return-object p3
.end method

.method public final getBufferEndCounter()J
    .locals 2

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEnd$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCloseCause()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->_closeCause$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 4

    new-instance v0, Lkotlinx/coroutines/selects/SelectClause1Impl;

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$1;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lkotlin/LazyKt__LazyKt;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceive$2;

    invoke-static {v2, v3}, Lkotlin/LazyKt__LazyKt;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    iget-object v2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElementReceiveCancellationConstructor:Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;

    invoke-direct {v0, p0, v1, v3, v2}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;)V

    return-object v0
.end method

.method public final getReceiveException()Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/ClosedReceiveChannelException;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final getReceiversCounter$kotlinx_coroutines_core()J
    .locals 2

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSendException()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroidx/media3/common/IllegalSeekPositionException;

    const-string v0, "Channel was closed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-object p0
.end method

.method public final getSendersCounter$kotlinx_coroutines_core()J
    .locals 4

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final incCompletedExpandBufferAttempts(J)V
    .locals 8

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    and-long/2addr p1, v1

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    const/4 p2, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v5

    :goto_0
    if-eqz p1, :cond_3

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    and-long/2addr v6, v1

    cmp-long p1, v6, v3

    if-eqz p1, :cond_2

    move p1, p2

    goto :goto_1

    :cond_2
    move p1, v5

    :goto_1
    if-nez p1, :cond_1

    :cond_3
    return-void
.end method

.method public final invokeOnClose(Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;)V
    .locals 6

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->closeHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v4, :cond_5

    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    :cond_3
    invoke-virtual {v1, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_3

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, p0, :cond_6

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Another handler was already registered and successfully invoked"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Another handler is already registered: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isClosed(JZ)Z
    .locals 17

    move-object/from16 v6, p0

    const/16 v0, 0x3c

    shr-long v0, p1, v0

    long-to-int v0, v0

    const/4 v7, 0x0

    if-eqz v0, :cond_22

    const/4 v8, 0x1

    if-eq v0, v8, :cond_22

    const/4 v1, 0x2

    const-wide v2, 0xfffffffffffffffL

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    and-long v0, p1, v2

    invoke-virtual {v6, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->completeClose(J)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    sget v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    const/4 v5, -0x1

    add-int/2addr v4, v5

    :goto_0
    if-ge v5, v4, :cond_b

    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v9, v9

    iget-wide v11, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v11, v9

    int-to-long v9, v4

    add-long/2addr v11, v9

    :cond_1
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-eq v9, v10, :cond_c

    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    iget-object v13, v0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v14, v6, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-ne v9, v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v15

    cmp-long v10, v11, v15

    if-ltz v10, :cond_c

    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v0, v4, v9, v10}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v14, :cond_9

    mul-int/lit8 v9, v4, 0x2

    invoke-virtual {v13, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v14, v9, v3}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lcom/google/gson/JsonParseException;)Lcom/google/gson/JsonParseException;

    move-result-object v3

    goto :goto_3

    :cond_2
    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

    if-eq v9, v10, :cond_a

    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    instance-of v10, v9, Lkotlinx/coroutines/Waiter;

    if-nez v10, :cond_6

    instance-of v10, v9, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_4
    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    if-eq v9, v10, :cond_c

    sget-object v13, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne v9, v13, :cond_5

    goto :goto_7

    :cond_5
    if-eq v9, v10, :cond_1

    goto :goto_6

    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v15

    cmp-long v10, v11, v15

    if-ltz v10, :cond_c

    instance-of v10, v9, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v10, :cond_7

    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v10, v10, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    goto :goto_2

    :cond_7
    move-object v10, v9

    check-cast v10, Lkotlinx/coroutines/Waiter;

    :goto_2
    sget-object v15, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v0, v4, v9, v15}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v14, :cond_8

    mul-int/lit8 v9, v4, 0x2

    invoke-virtual {v13, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v14, v9, v3}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lcom/google/gson/JsonParseException;)Lcom/google/gson/JsonParseException;

    move-result-object v3

    :cond_8
    invoke-static {v2, v10}, Lkotlin/reflect/jvm/KCallablesJvm;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_9
    :goto_3
    invoke-virtual {v0, v4, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    goto :goto_5

    :cond_a
    :goto_4
    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v0, v4, v9, v10}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_5
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_b
    sget-object v4, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v0, :cond_0

    :cond_c
    :goto_7
    if-eqz v2, :cond_e

    instance-of v0, v2, Ljava/util/ArrayList;

    if-nez v0, :cond_d

    check-cast v2, Lkotlinx/coroutines/Waiter;

    invoke-virtual {v6, v2, v7}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V

    goto :goto_9

    :cond_d
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v5

    :goto_8
    if-ge v5, v0, :cond_e

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Waiter;

    invoke-virtual {v6, v1, v7}, Lkotlinx/coroutines/channels/BufferedChannel;->resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_e
    :goto_9
    if-nez v3, :cond_f

    goto/16 :goto_11

    :cond_f
    throw v3

    :cond_10
    const-string v1, "unexpected close status: "

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    and-long v0, p1, v2

    invoke-virtual {v6, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->completeClose(J)Lkotlinx/coroutines/channels/ChannelSegment;

    if-eqz p3, :cond_21

    :cond_12
    :goto_a
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_13

    goto :goto_b

    :cond_13
    sget v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v4, v4

    div-long v9, v2, v4

    iget-wide v11, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v11, v11, v9

    if-eqz v11, :cond_14

    invoke-virtual {v6, v9, v10, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v0, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v0, v0, v9

    if-gez v0, :cond_12

    :goto_b
    move v0, v7

    goto :goto_10

    :cond_14
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    rem-long v4, v2, v4

    long-to-int v0, v4

    :cond_15
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1e

    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

    if-ne v4, v5, :cond_16

    goto :goto_d

    :cond_16
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v4, v0, :cond_17

    goto :goto_c

    :cond_17
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    if-ne v4, v0, :cond_18

    goto :goto_e

    :cond_18
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v4, v0, :cond_19

    goto :goto_e

    :cond_19
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne v4, v0, :cond_1a

    goto :goto_e

    :cond_1a
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->POISONED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v4, v0, :cond_1b

    goto :goto_e

    :cond_1b
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    if-ne v4, v0, :cond_1c

    goto :goto_c

    :cond_1c
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne v4, v0, :cond_1d

    goto :goto_e

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1f

    :goto_c
    move v0, v8

    goto :goto_f

    :cond_1e
    :goto_d
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->POISONED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v1, v0, v4, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    :cond_1f
    :goto_e
    move v0, v7

    :goto_f
    if-eqz v0, :cond_20

    move v0, v8

    :goto_10
    if-nez v0, :cond_22

    goto :goto_11

    :cond_20
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto/16 :goto_a

    :cond_21
    :goto_11
    move v7, v8

    :cond_22
    return v7
.end method

.method public final isClosedForReceive()Z
    .locals 3

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result p0

    return p0
.end method

.method public final isClosedForSend()Z
    .locals 3

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result p0

    return p0
.end method

.method public isConflatedDropOldest()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isRendezvousOrUnlimited()Z
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final iterator()Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    return-object v0
.end method

.method public final moveSegmentBufferEndToSpecifiedOrLast(JLkotlinx/coroutines/channels/ChannelSegment;)V
    .locals 4

    :goto_0
    iget-wide v0, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/internal/Segment;

    iget-wide v0, p2, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v2, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_5

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    :cond_7
    :goto_4
    if-eqz v1, :cond_1

    return-void

    :cond_8
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    goto :goto_2
.end method

.method public final onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lcom/google/gson/JsonParseException;)Lcom/google/gson/JsonParseException;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final receive(Lcom/motorola/camera/service/CameraForegroundProcessingService$startProcessing$1;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/4 v7, 0x0

    sget-object v8, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v2

    if-nez v2, :cond_11

    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    div-long v4, v10, v2

    rem-long v2, v10, v2

    long-to-int v12, v2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4, v5, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object v13, v1

    :goto_1
    move-object/from16 v1, p0

    move-object v2, v13

    move v3, v12

    move-wide v4, v10

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v14, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lkotlinx/coroutines/internal/Symbol;

    const-string v15, "unexpected"

    if-eq v1, v14, :cond_10

    sget-object v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v10, v1

    if-gez v1, :cond_2

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_2
    move-object v1, v13

    goto :goto_0

    :cond_3
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_f

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/JvmClassMappingKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__IndentKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v2, v13

    move v3, v12

    move-wide v4, v10

    move-object/from16 v16, v15

    move-object v15, v6

    move-object v6, v7

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_4

    invoke-virtual {v7, v13, v12}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :cond_4
    const/4 v12, 0x0

    iget-object v14, v0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    iget-object v6, v7, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    if-ne v1, v15, :cond_d

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v10, v1

    if-gez v1, :cond_5

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_5
    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-virtual {v7, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    div-long v4, v10, v2

    rem-long v2, v10, v2

    long-to-int v8, v2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    invoke-virtual {v0, v4, v5, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move-object v13, v2

    goto :goto_3

    :cond_8
    move-object v13, v1

    :goto_3
    move-object/from16 v1, p0

    move-object v2, v13

    move v3, v8

    move-wide v4, v10

    move-object v15, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_9

    invoke-virtual {v7, v13, v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    goto :goto_5

    :cond_9
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v10, v1

    if-gez v1, :cond_a

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_a
    move-object v1, v13

    move-object v6, v15

    goto :goto_2

    :cond_b
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;

    if-eq v1, v0, :cond_c

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    if-eqz v14, :cond_e

    new-instance v12, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;

    invoke-direct {v12, v14, v1, v15}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object v15, v6

    invoke-virtual {v13}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    if-eqz v14, :cond_e

    new-instance v12, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;

    invoke-direct {v12, v14, v1, v15}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_e
    :goto_4
    invoke-virtual {v7, v12, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    throw v0

    :cond_f
    invoke-virtual {v13}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :goto_6
    return-object v1

    :cond_10
    move-object/from16 v16, v15

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object v0

    sget v1, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->$r8$clinit:I

    throw v0
.end method

.method public final resumeWaiterOnClosedChannel(Lkotlinx/coroutines/Waiter;Z)V
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlin/coroutines/Continuation;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of p2, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    if-eqz p2, :cond_3

    check-cast p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object p0, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    iput-object p2, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object p2, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    iput-object p2, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    iget-object p1, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    instance-of p2, p1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz p2, :cond_4

    check-cast p1, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object p2, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    check-cast p1, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    :goto_2
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected waiter: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    :cond_0
    :goto_0
    const/4 v7, 0x0

    sget-object v10, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide v11, 0xfffffffffffffffL

    and-long v13, v2, v11

    const/4 v15, 0x0

    invoke-virtual {v0, v2, v3, v15}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result v16

    sget v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v8

    div-long v4, v13, v2

    rem-long v2, v13, v2

    long-to-int v6, v2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v2, v4

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v15, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-eqz v2, :cond_2

    invoke-static {v0, v4, v5, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v16, :cond_0

    invoke-virtual/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_1c

    :goto_1
    move-object v3, v0

    goto/16 :goto_e

    :cond_1
    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    move-object/from16 v1, p0

    move-object v2, v5

    move-object v4, v3

    move v3, v6

    move-object/from16 v18, v4

    move-object/from16 v4, p1

    move-object/from16 v20, v5

    move/from16 v19, v6

    move-wide v5, v13

    move/from16 v21, v8

    move/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v8, 0x1

    if-eq v1, v8, :cond_1a

    const/4 v7, 0x2

    if-eq v1, v7, :cond_19

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v4, 0x5

    if-eq v1, v5, :cond_6

    if-eq v1, v6, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual/range {v20 .. v20}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :goto_3
    move-object/from16 v1, v20

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v13, v1

    if-gez v1, :cond_5

    invoke-virtual/range {v20 .. v20}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_5
    invoke-virtual/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v15, :cond_1a

    goto/16 :goto_e

    :cond_6
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/JvmClassMappingKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__IndentKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v3

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 p2, v3

    move/from16 v3, v19

    move v11, v4

    move-object/from16 v4, p1

    move v12, v6

    move-wide v5, v13

    move v11, v7

    move-object/from16 v7, p2

    move v12, v8

    move/from16 v8, v16

    :try_start_0
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_17

    if-eq v1, v12, :cond_16

    if-eq v1, v11, :cond_15

    const/4 v2, 0x4

    if-eq v1, v2, :cond_12

    const-string v13, "unexpected"

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    :cond_7
    :goto_4
    invoke-virtual {v10, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide v19, 0xfffffffffffffffL

    and-long v21, v2, v19

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v3, v9}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result v14

    sget v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v8

    div-long v4, v21, v2

    rem-long v2, v21, v2

    long-to-int v7, v2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    invoke-static {v0, v4, v5, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v2

    if-nez v2, :cond_8

    if-eqz v14, :cond_7

    goto :goto_7

    :cond_8
    move-object v5, v2

    goto :goto_5

    :cond_9
    move-object v5, v1

    :goto_5
    move-object/from16 v1, p0

    move-object v2, v5

    move v3, v7

    move-object/from16 v4, p1

    move-object/from16 v16, v5

    move-wide/from16 v5, v21

    move/from16 v17, v7

    move-object/from16 v7, p2

    move/from16 v23, v8

    move v8, v14

    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1

    if-eqz v1, :cond_10

    if-eq v1, v12, :cond_16

    if-eq v1, v11, :cond_d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    const/4 v3, 0x4

    if-eq v1, v3, :cond_b

    const/4 v4, 0x5

    if-eq v1, v4, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :goto_6
    move-object/from16 v1, v16

    goto :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v21, v1

    if-gez v1, :cond_e

    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-eqz v14, :cond_f

    invoke-virtual/range {v16 .. v16}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_e
    :goto_7
    move-object/from16 v1, p2

    goto :goto_8

    :cond_f
    add-int v7, v17, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    :try_start_2
    invoke-virtual {v1, v2, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_10
    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    goto :goto_a

    :cond_11
    move-object/from16 v1, p2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    cmp-long v2, v13, v2

    if-gez v2, :cond_13

    invoke-virtual/range {v20 .. v20}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_13
    :goto_8
    iget-object v2, v0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_14

    iget-object v3, v1, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    move-object/from16 v4, p1

    invoke-static {v2, v4, v3}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    goto :goto_9

    :cond_15
    move-object/from16 v1, p2

    add-int v6, v19, v21

    move-object/from16 v2, v20

    invoke-virtual {v1, v2, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    :goto_9
    move-object/from16 v3, v18

    goto :goto_b

    :cond_16
    move-object/from16 v1, p2

    goto :goto_a

    :cond_17
    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :goto_a
    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_b
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_18

    goto :goto_c

    :cond_18
    move-object v0, v3

    :goto_c
    if-ne v0, v15, :cond_1c

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p2

    :goto_d
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    throw v0

    :cond_19
    move-object/from16 v4, p1

    move-object/from16 v3, v18

    move-object/from16 v2, v20

    if-eqz v16, :cond_1c

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    invoke-virtual/range {p0 .. p2}, Lkotlinx/coroutines/channels/BufferedChannel;->onClosedSend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_1c

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v3, v18

    goto :goto_e

    :cond_1b
    move-object/from16 v3, v18

    move-object/from16 v2, v20

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_1c
    :goto_e
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v4, 0x3c

    shr-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "cancelled,"

    goto :goto_0

    :cond_1
    const-string v2, "closed,"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "capacity="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lkotlinx/coroutines/channels/BufferedChannel;->capacity:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Lkotlinx/coroutines/channels/ChannelSegment;

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->bufferEndSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lkotlinx/coroutines/channels/ChannelSegment;

    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    if-eq v8, v9, :cond_3

    move v8, v7

    goto :goto_3

    :cond_3
    move v8, v6

    :goto_3
    if-eqz v8, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v8, v4, Lkotlinx/coroutines/internal/Segment;->id:J

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lkotlinx/coroutines/channels/ChannelSegment;

    iget-wide v10, v10, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_7

    move-object v3, v4

    move-wide v8, v10

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_4
    check-cast v3, Lkotlinx/coroutines/channels/ChannelSegment;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v12

    :goto_5
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    move v2, v6

    :goto_6
    if-ge v2, v0, :cond_1a

    iget-wide v8, v3, Lkotlinx/coroutines/internal/Segment;->id:J

    sget v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v14, v4

    mul-long/2addr v8, v14

    int-to-long v14, v2

    add-long/2addr v8, v14

    cmp-long v4, v8, v12

    if-ltz v4, :cond_8

    cmp-long v14, v8, v10

    if-gez v14, :cond_1b

    :cond_8
    invoke-virtual {v3, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v3, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 v6, v2, 0x2

    invoke-virtual {v15, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v15, v14, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v15, :cond_b

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    if-ltz v4, :cond_9

    const-string v4, "receive"

    goto/16 :goto_e

    :cond_9
    if-gez v4, :cond_a

    if-ltz v8, :cond_a

    const-string v4, "send"

    goto/16 :goto_e

    :cond_a
    const-string v4, "cont"

    goto/16 :goto_e

    :cond_b
    instance-of v15, v14, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v15, :cond_e

    cmp-long v8, v8, v10

    if-gez v8, :cond_c

    if-ltz v4, :cond_c

    const-string v4, "onReceive"

    goto/16 :goto_e

    :cond_c
    if-gez v4, :cond_d

    if-ltz v8, :cond_d

    const-string v4, "onSend"

    goto/16 :goto_e

    :cond_d
    const-string v4, "select"

    goto/16 :goto_e

    :cond_e
    instance-of v4, v14, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "EB("

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_e

    :cond_f
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v14, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v7

    goto :goto_7

    :cond_10
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v14, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_7
    if-eqz v4, :cond_11

    const-string v4, "resuming_sender"

    goto :goto_e

    :cond_11
    if-nez v14, :cond_12

    move v4, v7

    goto :goto_8

    :cond_12
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v14, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_8
    if-eqz v4, :cond_13

    move v4, v7

    goto :goto_9

    :cond_13
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v14, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_9
    if-eqz v4, :cond_14

    move v4, v7

    goto :goto_a

    :cond_14
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->POISONED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v14, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_a
    if-eqz v4, :cond_15

    move v4, v7

    goto :goto_b

    :cond_15
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v14, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_b
    if-eqz v4, :cond_16

    move v4, v7

    goto :goto_c

    :cond_16
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v14, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_c
    if-eqz v4, :cond_17

    move v4, v7

    goto :goto_d

    :cond_17
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v14, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_d
    if-nez v4, :cond_19

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_e
    new-instance v8, Ljava/lang/StringBuilder;

    if-eqz v6, :cond_18

    const-string v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "),"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_18
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_1a
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/channels/ChannelSegment;

    if-nez v3, :cond_1d

    :cond_1b
    invoke-static {v1}, Lkotlin/text/StringsKt___StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v0

    if-ne v0, v5, :cond_1c

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "this.deleteCharAt(index)"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1c
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final tryResumeReceiver(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/selects/SelectInstance;

    check-cast p1, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    iget-object p0, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    iput-object p2, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object p1, p1, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_2

    new-instance v1, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;

    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-direct {v1, p1, p2, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_2
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_5

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/CancellableContinuation;

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;

    invoke-direct {v1, p0, p2, v0}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_4
    invoke-static {p1, p2, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    :goto_0
    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected receiver type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z
    .locals 3

    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1, v1, v2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_7

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-virtual {p1, p0, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x2

    if-eqz p0, :cond_3

    if-eq p0, p1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v0, :cond_4

    if-ne p0, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected internal result: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v1, p1

    :cond_4
    :goto_0
    if-ne v1, v0, :cond_5

    invoke-virtual {p2, p3, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    :cond_5
    if-ne v1, p1, :cond_6

    move p0, p1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    return p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected waiter: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v8, p0

    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v1, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result v2

    const/4 v11, 0x1

    const-wide v12, 0xfffffffffffffffL

    if-eqz v2, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    and-long/2addr v0, v12

    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->bufferOrRendezvousSend(J)Z

    move-result v0

    xor-int/2addr v0, v11

    :goto_0
    sget-object v14, Lkotlinx/coroutines/channels/ChannelResult;->failed:Lkotlinx/coroutines/channels/ChannelResult$Failed;

    if-eqz v0, :cond_1

    return-object v14

    :cond_1
    sget-object v15, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    :cond_2
    :goto_1
    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    and-long v16, v1, v12

    invoke-virtual {v8, v1, v2, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result v18

    sget v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v7

    div-long v3, v16, v1

    rem-long v1, v16, v1

    long-to-int v6, v1

    iget-wide v1, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    invoke-static {v8, v3, v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v18, :cond_2

    goto :goto_4

    :cond_3
    move-object v4, v1

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    move-object/from16 v3, p1

    move-object/from16 v19, v4

    move-wide/from16 v4, v16

    move/from16 v20, v6

    move-object v6, v15

    move/from16 v21, v7

    move/from16 v7, v18

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v0, :cond_d

    if-eq v0, v11, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :goto_3
    move-object/from16 v0, v19

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v16, v0

    if-gez v0, :cond_9

    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eqz v18, :cond_a

    invoke-virtual/range {v19 .. v19}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v14, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    invoke-direct {v14, v0}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_a
    instance-of v0, v15, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_b

    check-cast v15, Lkotlinx/coroutines/Waiter;

    goto :goto_5

    :cond_b
    const/4 v15, 0x0

    :goto_5
    if-eqz v15, :cond_c

    add-int v6, v20, v21

    move-object/from16 v0, v19

    invoke-interface {v15, v0, v6}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    goto :goto_6

    :cond_c
    move-object/from16 v0, v19

    :goto_6
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    goto :goto_7

    :cond_d
    move-object/from16 v0, v19

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_e
    move-object v14, v1

    :goto_7
    return-object v14
.end method

.method public final updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0xfffffffffffffffL

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-nez v0, :cond_1

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    and-long/2addr v4, v1

    cmp-long v4, p3, v4

    if-ltz v4, :cond_2

    if-nez p5, :cond_0

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;

    return-object p0

    :cond_0
    invoke-virtual {p1, p2, v0, p5}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lkotlinx/coroutines/internal/Symbol;

    return-object p0

    :cond_1
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v4, :cond_2

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v0, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v4, :cond_4

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v0, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_4
    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v4, :cond_5

    goto :goto_3

    :cond_5
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->POISONED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v5, :cond_6

    goto :goto_3

    :cond_6
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v5, :cond_7

    goto :goto_2

    :cond_7
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v5, :cond_2

    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v0, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of p3, v0, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz p3, :cond_8

    check-cast v0, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v0, v0, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    :cond_8
    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeSender(Ljava/lang/Object;Lkotlinx/coroutines/channels/ChannelSegment;I)Z

    move-result p4

    if-eqz p4, :cond_9

    sget-object p3, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILkotlinx/coroutines/internal/Symbol;)V

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_4

    :cond_9
    invoke-virtual {p1, p2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILkotlinx/coroutines/internal/Symbol;)V

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    if-eqz p3, :cond_b

    goto :goto_2

    :cond_a
    :goto_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    and-long/2addr v4, v1

    cmp-long v4, p3, v4

    if-gez v4, :cond_c

    sget-object v4, Lkotlinx/coroutines/channels/BufferedChannelKt;->POISONED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v0, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    :cond_b
    :goto_3
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_4

    :cond_c
    if-nez p5, :cond_d

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_4

    :cond_d
    invoke-virtual {p1, p2, v0, p5}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->expandBuffer()V

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lkotlinx/coroutines/internal/Symbol;

    :goto_4
    return-object p0
.end method

.method public final updateCellSendSlow(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 6

    :cond_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0, p4, p5}, Lkotlinx/coroutines/channels/BufferedChannel;->bufferOrRendezvousSend(J)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p7, :cond_1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v4, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    if-eqz p7, :cond_2

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v4, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    return v2

    :cond_2
    if-nez p6, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    invoke-virtual {p1, p2, v4, p6}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_4
    sget-object v5, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v5, :cond_5

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, v0, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_5
    sget-object p4, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    const/4 p5, 0x5

    if-ne v0, p4, :cond_6

    invoke-virtual {p1, p2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    return p5

    :cond_6
    sget-object p6, Lkotlinx/coroutines/channels/BufferedChannelKt;->POISONED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, p6, :cond_7

    invoke-virtual {p1, p2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    return p5

    :cond_7
    sget-object p6, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, p6, :cond_8

    invoke-virtual {p1, p2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForSend()Z

    return v2

    :cond_8
    invoke-virtual {p1, p2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    instance-of p6, v0, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz p6, :cond_9

    check-cast v0, Lkotlinx/coroutines/channels/WaiterEB;

    iget-object v0, v0, Lkotlinx/coroutines/channels/WaiterEB;->waiter:Lkotlinx/coroutines/Waiter;

    :cond_9
    invoke-virtual {p0, v0, p3}, Lkotlinx/coroutines/channels/BufferedChannel;->tryResumeReceiver(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/channels/ChannelSegment;->setState$kotlinx_coroutines_core(ILkotlinx/coroutines/internal/Symbol;)V

    goto :goto_0

    :cond_a
    iget-object p0, p1, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p3, p2, 0x2

    add-int/2addr p3, v1

    invoke-virtual {p0, p3, p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, p4, :cond_b

    invoke-virtual {p1, p2, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    :cond_b
    move v3, p5

    :goto_0
    return v3
.end method
