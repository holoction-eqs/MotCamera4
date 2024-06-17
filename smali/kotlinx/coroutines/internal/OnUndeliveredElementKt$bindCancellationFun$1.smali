.class public final Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $context:Ljava/lang/Object;

.field public final synthetic $element:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_bindCancellationFun:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/SelectInstance;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$element:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$this_bindCancellationFun:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$context:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$this_bindCancellationFun:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$element:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$context:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    .line 2
    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    iget p1, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$r8$classId:I

    iget-object v0, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$element:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$context:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/internal/OnUndeliveredElementKt$bindCancellationFun$1;->$this_bindCancellationFun:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    return-void

    .line 4
    :goto_0
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, p1, :cond_0

    .line 5
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    check-cast v1, Lkotlinx/coroutines/selects/SelectInstance;

    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 6
    iget-object p1, v1, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    .line 7
    invoke-static {p0, v0, p1}, Lkotlin/text/StringsKt__IndentKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
