.class public final Lkotlinx/coroutines/channels/ChannelSegment;
.super Lkotlinx/coroutines/internal/Segment;
.source "SourceFile"


# instance fields
.field public final _channel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final data:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lkotlinx/coroutines/internal/Segment;-><init>(JLkotlinx/coroutines/internal/Segment;I)V

    iput-object p4, p0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget p2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    mul-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public final casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getNumberOfSlots()I
    .locals 0

    sget p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    return p0
.end method

.method public final getState$kotlinx_coroutines_core(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final onCancellation(ILkotlin/coroutines/CoroutineContext;)V
    .locals 6

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sub-int/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/Waiter;

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v5, 0x0

    if-nez v3, :cond_b

    instance-of v3, v2, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v3, :cond_9

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v3, :cond_2

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, p0, :cond_8

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, p0, :cond_6

    goto :goto_2

    :cond_6
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unexpected state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    invoke-virtual {p0, p1, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    if-eqz v1, :cond_a

    invoke-static {v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, v4, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_a

    invoke-static {p0, v0, p2}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_a
    return-void

    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_5

    :cond_c
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    :goto_5
    invoke-virtual {p0, p1, v2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, v5}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    if-eqz v1, :cond_d

    invoke-static {v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, v4, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_d

    invoke-static {p0, v0, p2}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_d
    return-void
.end method

.method public final onCancelledRequest(IZ)V
    .locals 20

    move-object/from16 v0, p0

    if-eqz p2, :cond_7

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v7}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    iget-wide v3, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v3, v1

    move/from16 v1, p1

    int-to-long v1, v1

    add-long/2addr v3, v1

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel;->isRendezvousOrUnlimited()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS:I

    const/4 v8, 0x0

    move v2, v8

    :goto_0
    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v10, 0x3fffffffffffffffL    # 1.9999999999999998

    if-ge v2, v1, :cond_2

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v3

    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long/2addr v5, v10

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    and-long v1, v3, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    add-long v5, v12, v1

    move-object v1, v9

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    :goto_1
    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v1

    sget-object v9, Lkotlinx/coroutines/channels/BufferedChannel;->completedExpandBuffersAndPauseFlag$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    and-long v5, v3, v10

    and-long v14, v3, v12

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    goto :goto_2

    :cond_4
    move v14, v8

    :goto_2
    cmp-long v15, v1, v5

    if-nez v15, :cond_6

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel;->getBufferEndCounter()J

    move-result-wide v18

    cmp-long v1, v1, v18

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    and-long v1, v3, v10

    add-long v5, v16, v1

    move-object v1, v9

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_6
    if-nez v14, :cond_3

    add-long/2addr v5, v12

    move-object v1, v9

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_1

    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    return-void
.end method

.method public final retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final setElementLazy(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method

.method public final setState$kotlinx_coroutines_core(ILkotlinx/coroutines/internal/Symbol;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method
