.class public final Lkotlin/sequences/SequenceBuilderIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public nextIterator:Ljava/util/Iterator;

.field public nextStep:Lkotlin/coroutines/Continuation;

.field public nextValue:Ljava/lang/Object;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final exceptionalState()Ljava/lang/RuntimeException;
    .locals 3

    iget v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state of the iterator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string p0, "Iterator has failed."

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object p0
.end method

.method public final hasNext()Z
    .locals 4

    :goto_0
    iget v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->exceptionalState()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v2, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    return v3

    :cond_3
    iput-object v1, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    iget-object v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    iget-object v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextValue:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->exceptionalState()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    iput v1, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    iget-object p0, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x4

    iput p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    return-void
.end method

.method public final yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextValue:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    iput-object p2, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    const-string p0, "frame"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final yieldAll(Landroidx/core/view/ViewGroupKt$children$1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-nez v0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    const/4 p1, 0x2

    iput p1, p0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    iput-object p2, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    const-string p0, "frame"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v2

    :goto_0
    if-ne p0, v2, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1
.end method
