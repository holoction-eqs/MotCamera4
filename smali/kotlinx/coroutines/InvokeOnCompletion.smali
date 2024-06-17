.class public final Lkotlinx/coroutines/InvokeOnCompletion;
.super Lkotlinx/coroutines/JobNode;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final handler:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkotlinx/coroutines/InvokeOnCompletion;->$r8$classId:I

    invoke-direct {p0}, Lkotlinx/coroutines/JobNode;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/InvokeOnCompletion;->handler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lkotlinx/coroutines/InvokeOnCompletion;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/InvokeOnCompletion;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    .line 2
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/InvokeOnCompletion;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    .line 3
    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/InvokeOnCompletion;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/InvokeOnCompletion;->$r8$classId:I

    iget-object v1, p0, Lkotlinx/coroutines/InvokeOnCompletion;->handler:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobNode;->getJob()Lkotlinx/coroutines/JobSupport;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lkotlinx/coroutines/CompletedExceptionally;

    check-cast v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz p1, :cond_0

    check-cast p0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object p0, p0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/JobSupportKt;->unboxState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 5
    :pswitch_1
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :goto_1
    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
