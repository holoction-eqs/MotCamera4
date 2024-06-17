.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    iget-object v6, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->activityService:Landroid/app/ActivityManager;

    invoke-virtual {v6, p1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p1

    const/4 v6, 0x0

    aget-object p1, p1, v6

    iget v6, p1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v7, p1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    add-int/2addr v6, v7

    iget v7, p1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    iget v8, p1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v9, p1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v8, v9

    iget p1, p1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v8, p1

    int-to-float p1, v8

    div-float/2addr p1, v7

    iget-object v3, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->liveDatas:Lcom/airbnb/lottie/model/MutablePair;

    iget-object v7, v3, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v7, Landroidx/lifecycle/MutableLiveData;

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, v6}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v7, v8}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/MutableLiveData;

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v3, 0x3e8

    sub-long/2addr v3, v6

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    :try_start_1
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    goto :goto_0

    :cond_3
    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->liveDatas:Lcom/airbnb/lottie/model/MutablePair;

    iget-object p1, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
