.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->label:I

    const-wide/16 v1, 0x2710

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$startSwitchToDefaultTimer$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-object v0
.end method
