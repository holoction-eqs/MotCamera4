.class public interface abstract Lkotlinx/coroutines/CancellableContinuation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# virtual methods
.method public abstract completeResume(Ljava/lang/Object;)V
.end method

.method public abstract resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V
.end method

.method public abstract tryResume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;
.end method
