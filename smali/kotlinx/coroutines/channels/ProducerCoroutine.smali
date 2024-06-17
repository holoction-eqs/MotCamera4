.class public final Lkotlinx/coroutines/channels/ProducerCoroutine;
.super Lkotlinx/coroutines/channels/ChannelCoroutine;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferedChannel;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferedChannel;ZZ)V

    return-void
.end method


# virtual methods
.method public final isActive()Z
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/AbstractCoroutine;->isActive()Z

    move-result p0

    return p0
.end method

.method public final onCancelled(Ljava/lang/Throwable;Z)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/ChannelCoroutine;->_channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/AbstractCoroutine;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, p1}, Lkotlinx/coroutines/SupervisorKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    const/4 p1, 0x0

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelCoroutine;->_channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    return-void
.end method
