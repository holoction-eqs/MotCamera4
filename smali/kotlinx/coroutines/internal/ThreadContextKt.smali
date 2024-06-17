.class public abstract Lkotlinx/coroutines/internal/ThreadContextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NO_THREAD_ELEMENTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public static final restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/ThreadState;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    iget-object p0, p1, Lkotlinx/coroutines/internal/ThreadState;->elements:[Lkotlinx/coroutines/ThreadContextElement;

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    return-void

    :cond_1
    aget-object p0, p0, p1

    invoke-static {v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    throw v1

    :cond_2
    sget-object p1, Lkotlin/coroutines/CoroutineContext$plus$1;->INSTANCE$10:Lkotlin/coroutines/CoroutineContext$plus$1;

    invoke-interface {p0, v1, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v1
.end method

.method public static final updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/coroutines/CoroutineContext$plus$1;->INSTANCE$9:Lkotlin/coroutines/CoroutineContext$plus$1;

    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    :cond_0
    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlinx/coroutines/internal/ThreadState;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/ThreadState;-><init>(Lkotlin/coroutines/CoroutineContext;I)V

    sget-object p1, Lkotlin/coroutines/CoroutineContext$plus$1;->INSTANCE$11:Lkotlin/coroutines/CoroutineContext$plus$1;

    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-static {p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
