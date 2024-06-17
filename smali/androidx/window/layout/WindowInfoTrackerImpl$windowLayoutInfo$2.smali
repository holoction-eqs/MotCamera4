.class public final Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $activity:Landroid/app/Activity;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Landroidx/window/layout/WindowInfoTrackerImpl;


# direct methods
.method public constructor <init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    iput-object p2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->$activity:Landroid/app/Activity;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;

    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    iget-object p0, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->$activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;-><init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v2}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object v3, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->this$0:Landroidx/window/layout/WindowInfoTrackerImpl;

    iget-object v4, v3, Landroidx/window/layout/WindowInfoTrackerImpl;->windowBackend:Landroidx/window/layout/adapter/WindowBackend;

    new-instance v5, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v6, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->$activity:Landroid/app/Activity;

    invoke-interface {v4, v6, v5, v1}, Landroidx/window/layout/adapter/WindowBackend;->registerLayoutChangeCallback(Landroid/app/Activity;Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;)V

    new-instance v4, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    invoke-direct {v4, v2, v3, v1}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->label:I

    invoke-static {p1, v4, p0}, Lkotlin/text/StringsKt__IndentKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
