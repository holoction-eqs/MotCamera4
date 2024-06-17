.class public final Lkotlinx/coroutines/channels/ConflatedBufferedChannel;
.super Lkotlinx/coroutines/channels/BufferedChannel;
.source "SourceFile"


# instance fields
.field public final onBufferOverflow:I


# direct methods
.method public constructor <init>(IILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    iput p2, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onBufferOverflow:I

    const/4 p0, 0x1

    const/4 p3, 0x0

    if-eq p2, p0, :cond_0

    move p2, p0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    if-eqz p2, :cond_3

    if-lt p1, p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, p3

    :goto_1
    if-eqz p0, :cond_2

    return-void

    :cond_2
    const-string p0, "Buffered channel capacity must be at least 1, but "

    const-string p2, " was specified"

    invoke-static {p0, p1, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "This implementation does not support suspension for senders, use "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p1, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final isConflatedDropOldest()Z
    .locals 1

    const/4 v0, 0x2

    iget p0, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onBufferOverflow:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySendImpl-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    check-cast p2, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    :cond_0
    iget-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lcom/google/gson/JsonParseException;)Lcom/google/gson/JsonParseException;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySendImpl-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final trySendImpl-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 20

    move-object/from16 v8, p0

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v0, v8, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onBufferOverflow:I

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-ne v0, v11, :cond_3

    invoke-super/range {p0 .. p1}, Lkotlinx/coroutines/channels/BufferedChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    xor-int/2addr v1, v12

    if-nez v1, :cond_2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_10

    iget-object v0, v8, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_10

    move-object/from16 v13, p1

    invoke-static {v0, v13, v10}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lcom/google/gson/JsonParseException;)Lcom/google/gson/JsonParseException;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    throw v0

    :cond_2
    :goto_0
    move-object v9, v0

    goto/16 :goto_6

    :cond_3
    move-object/from16 v13, p1

    sget-object v14, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannel;->sendSegment$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    :goto_1
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannel;->sendersAndCloseStatus$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v15, v1, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosed(JZ)Z

    move-result v17

    sget v7, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v4, v7

    div-long v1, v15, v4

    rem-long v10, v15, v4

    long-to-int v10, v10

    iget-wide v12, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v3, v12, v1

    if-eqz v3, :cond_6

    invoke-static {v8, v1, v2, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_5

    if-eqz v17, :cond_4

    goto/16 :goto_4

    :cond_4
    move-object/from16 v13, p1

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    move-object v12, v1

    goto :goto_2

    :cond_6
    move-object v12, v0

    :goto_2
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v10

    move-object/from16 v3, p1

    move-wide/from16 v18, v4

    move-wide v4, v15

    move-object v6, v14

    move v13, v7

    move/from16 v7, v17

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    const/4 v3, 0x4

    if-eq v0, v3, :cond_8

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :goto_3
    move-object/from16 v13, p1

    move v11, v2

    move-object v0, v12

    const/4 v10, 0x0

    move v12, v1

    goto :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v15, v0

    if-gez v0, :cond_b

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz v17, :cond_c

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v9, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    invoke-direct {v9, v0}, Lkotlinx/coroutines/channels/ChannelResult$Closed;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    instance-of v0, v14, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_d

    move-object v0, v14

    check-cast v0, Lkotlinx/coroutines/Waiter;

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_e

    add-int v7, v10, v13

    invoke-interface {v0, v12, v7}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    :cond_e
    iget-wide v0, v12, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long v0, v0, v18

    int-to-long v2, v10

    add-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V

    goto :goto_6

    :cond_f
    invoke-virtual {v12}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    :cond_10
    :goto_6
    return-object v9
.end method
