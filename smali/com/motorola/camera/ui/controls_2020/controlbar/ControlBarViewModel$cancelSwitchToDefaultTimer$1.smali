.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->resetStateJob:Lkotlinx/coroutines/Job;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    return-object p1
.end method
