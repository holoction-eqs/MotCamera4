.class public final Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Waiter;


# instance fields
.field public continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public receiveResult:Ljava/lang/Object;

.field public final synthetic this$0:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/BufferedChannel;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->NO_RECEIVE_RESULT:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/4 v7, 0x0

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v8, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    :goto_0
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    iput-object v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_7

    :cond_0
    sget v1, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->$r8$clinit:I

    throw v0

    :cond_1
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    div-long v4, v9, v2

    rem-long v2, v9, v2

    long-to-int v11, v2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {v8, v4, v5, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v12, v2

    goto :goto_1

    :cond_3
    move-object v12, v1

    :goto_1
    move-object v1, v8

    move-object v2, v12

    move v3, v11

    move-wide v4, v9

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v13, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lkotlinx/coroutines/internal/Symbol;

    if-eq v1, v13, :cond_13

    sget-object v14, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v14, :cond_5

    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-gez v1, :cond_4

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_4
    move-object v1, v12

    goto :goto_0

    :cond_5
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_12

    iget-object v7, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/JvmClassMappingKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__IndentKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v15

    :try_start_0
    iput-object v15, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    move-object v1, v7

    move-object v2, v12

    move v3, v11

    move-wide v4, v9

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_6

    invoke-virtual {v0, v12, v11}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :cond_6
    const/4 v11, 0x0

    iget-object v13, v15, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    iget-object v6, v7, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-ne v1, v14, :cond_10

    :try_start_1
    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-gez v1, :cond_7

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_7
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/ChannelSegment;

    :goto_2
    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iput-object v11, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    iput-object v2, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    invoke-virtual {v8}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_8
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_9
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannel;->receivers$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v9

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    div-long v4, v9, v2

    rem-long v2, v9, v2

    long-to-int v12, v2

    iget-wide v2, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    invoke-virtual {v7, v4, v5, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    move-object v14, v2

    goto :goto_4

    :cond_b
    move-object v14, v1

    :goto_4
    move-object v1, v7

    move-object v2, v14

    move v3, v12

    move-wide v4, v9

    move-object/from16 v16, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_c

    invoke-virtual {v0, v14, v12}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    goto :goto_6

    :cond_c
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_e

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v1

    cmp-long v1, v9, v1

    if-gez v1, :cond_d

    invoke-virtual {v14}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_d
    move-object v1, v14

    move-object/from16 v6, v16

    goto :goto_2

    :cond_e
    sget-object v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;

    if-eq v1, v2, :cond_f

    invoke-virtual {v14}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    iput-object v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    iput-object v11, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v2, v16

    if-eqz v2, :cond_11

    new-instance v11, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;

    invoke-direct {v11, v2, v1, v13}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v2, v6

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    iput-object v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    iput-object v11, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    new-instance v11, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;

    invoke-direct {v11, v2, v1, v13}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_11
    :goto_5
    invoke-virtual {v15, v11, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    invoke-virtual {v15}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v15}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    throw v0

    :cond_12
    invoke-virtual {v12}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    iput-object v1, v0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unreachable"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    :cond_0
    return-void
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->NO_RECEIVE_RESULT:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiveException()Ljava/lang/Throwable;

    move-result-object p0

    sget v0, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->$r8$clinit:I

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "`hasNext()` has not been invoked"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
