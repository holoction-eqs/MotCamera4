.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $count:Lkotlin/jvm/internal/Ref$IntRef;

.field public L$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    invoke-direct {p0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->this$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;

    iget-object p1, p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider;->mFileDataRepo:Landroidx/appcompat/widget/Toolbar$1;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object v3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->L$0:Lkotlin/jvm/internal/Ref$IntRef;

    iput v2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataContentProvider$delete$2;->label:I

    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v4, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;

    invoke-direct {v4, p1, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$deleteAll$2;-><init>(Landroidx/appcompat/widget/Toolbar$1;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    const/4 v1, 0x0

    invoke-static {v2, v1, v4, p1}, Lkotlinx/coroutines/DelayKt;->async$default(Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v3

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    const-string p0, "mFileDataRepo"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
