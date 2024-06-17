.class public final Lkotlinx/coroutines/CoroutineDispatcher$Key;
.super Lkotlin/coroutines/AbstractCoroutineContextKey;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lkotlin/UInt$Companion;->$$INSTANCE:Lkotlin/UInt$Companion;

    sget-object v0, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/AbstractCoroutineContextKey;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlinx/coroutines/CoroutineDispatcher$Key$1;)V

    return-void

    :cond_0
    sget-object p1, Lkotlinx/coroutines/CoroutineDispatcher;->Key:Lkotlinx/coroutines/CoroutineDispatcher$Key;

    sget-object v0, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE$13:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/AbstractCoroutineContextKey;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlinx/coroutines/CoroutineDispatcher$Key$1;)V

    return-void
.end method
