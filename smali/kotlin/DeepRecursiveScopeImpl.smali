.class public final Lkotlin/DeepRecursiveScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# instance fields
.field public cont:Lkotlin/coroutines/Continuation;

.field public final function:Lkotlin/jvm/functions/Function3;

.field public result:Ljava/lang/Object;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v1, "block"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/DeepRecursiveScopeImpl;->function:Lkotlin/jvm/functions/Function3;

    iput-object v0, p0, Lkotlin/DeepRecursiveScopeImpl;->value:Ljava/lang/Object;

    iput-object p0, p0, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    sget-object p1, Lkotlin/DeepRecursiveKt;->UNDEFINED_RESULT:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iput-object p1, p0, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    return-void
.end method
