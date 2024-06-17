.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "context"

    invoke-static {v1, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/window/layout/WindowInfoTracker$Companion;->extensionBackend$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/window/layout/adapter/WindowBackend;

    const/4 v4, 0x0

    if-nez p1, :cond_8

    sget-object p1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    sget-object p1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    if-nez p1, :cond_7

    sget-object p1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v5, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_6

    :try_start_1
    invoke-static {}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;->getSidecarVersion()Landroidx/window/core/Version;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    sget-object v6, Landroidx/window/core/Version;->VERSION_0_1:Landroidx/window/core/Version;

    const-string v7, "other"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v5, Landroidx/window/core/Version;->bigInteger$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    const-string v7, "<get-bigInteger>(...)"

    invoke-static {v5, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/math/BigInteger;

    iget-object v6, v6, Landroidx/window/core/Version;->bigInteger$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v6}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    new-instance v5, Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    invoke-direct {v5, v1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    invoke-virtual {v5}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->validateExtensionInterface()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_5

    :catchall_0
    :cond_4
    move-object v5, v4

    :cond_5
    :try_start_2
    new-instance v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    invoke-direct {v1, v5}, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)V

    sput-object v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_7
    :goto_2
    sget-object p1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    :cond_8
    new-instance v1, Landroidx/window/layout/WindowInfoTrackerImpl;

    sget v5, Landroidx/window/layout/WindowMetricsCalculatorCompat;->$r8$clinit:I

    invoke-direct {v1, p1}, Landroidx/window/layout/WindowInfoTrackerImpl;-><init>(Landroidx/window/layout/adapter/WindowBackend;)V

    sget-object p1, Landroidx/window/layout/WindowInfoTracker$Companion;->decorator:Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    const-string v5, "activity"

    invoke-static {p1, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;

    invoke-direct {v5, v1, p1, v4}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;-><init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    invoke-direct {p1, v5}, Lkotlinx/coroutines/flow/CallbackFlowBuilder;-><init>(Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;)V

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1$1;

    iget-object v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {v1, v5}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    iput v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1;->label:I

    new-instance v3, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;

    invoke-direct {v3, v4, p1, v1}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/ChannelFlowBuilder;Lkotlinx/coroutines/flow/FlowCollector;)V

    new-instance p1, Lkotlinx/coroutines/internal/ScopeCoroutine;

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    invoke-static {p1, p1, v3}, Lkotlinx/coroutines/DelayKt;->startUndispatchedOrReturn(Lkotlinx/coroutines/internal/ScopeCoroutine;Lkotlinx/coroutines/internal/ScopeCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    goto :goto_3

    :cond_9
    move-object p0, v2

    :goto_3
    if-ne p0, v0, :cond_a

    return-object v0

    :cond_a
    :goto_4
    return-object v2
.end method
