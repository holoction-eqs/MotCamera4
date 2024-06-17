.class public final Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final block:Ljava/lang/Object;

.field public final clauseObject:Ljava/lang/Object;

.field public disposableHandleOrSegment:Ljava/lang/Object;

.field public indexInSegment:I

.field public final onCancellationConstructor:Lkotlin/jvm/functions/Function3;

.field public final processResFunc:Lkotlin/jvm/functions/Function3;

.field public final regFunc:Lkotlin/jvm/functions/Function3;

.field public final synthetic this$0:Lkotlinx/coroutines/selects/SelectImplementation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/jvm/internal/SuspendLambda;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->regFunc:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->processResFunc:Lkotlin/jvm/functions/Function3;

    iput-object p5, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->block:Ljava/lang/Object;

    iput-object p6, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->onCancellationConstructor:Lkotlin/jvm/functions/Function3;

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/internal/Segment;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    iget v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->this$0:Lkotlinx/coroutines/selects/SelectImplementation;

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1, p0}, Lkotlinx/coroutines/internal/Segment;->onCancellation(ILkotlin/coroutines/CoroutineContext;)V

    goto :goto_1

    :cond_0
    instance-of p0, v0, Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_1

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final invokeBlock(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>"

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->block:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
