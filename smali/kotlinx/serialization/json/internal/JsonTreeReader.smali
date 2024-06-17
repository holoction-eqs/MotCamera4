.class public final Lkotlinx/serialization/json/internal/JsonTreeReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final isLenient:Z

.field public final lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

.field public stackDepth:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/StringJsonLexer;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    iget-boolean p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    return-void
.end method

.method public static final access$readObject(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/DeepRecursiveScopeImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    iget v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;

    invoke-direct {v0, p0, p2}, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x6

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/String;

    iget-object p1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Lkotlinx/serialization/json/internal/JsonTreeReader;

    iget-object v9, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Lkotlin/DeepRecursiveScopeImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p2, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(B)B

    move-result v2

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekNextToken()B

    move-result v9

    if-eq v9, v6, :cond_a

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    move v9, v2

    move-object v2, v1

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    :goto_1
    iget-object v10, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {v10}, Lkotlinx/serialization/json/internal/StringJsonLexer;->canConsumeValue()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-boolean v9, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    iget-object v10, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    if-eqz v9, :cond_3

    invoke-virtual {v10}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeString$1()Ljava/lang/String;

    move-result-object v9

    :goto_2
    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(B)B

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p2, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$0:Lkotlin/DeepRecursiveScopeImpl;

    iput-object p0, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$1:Lkotlinx/serialization/json/internal/JsonTreeReader;

    iput-object p1, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$2:Ljava/util/LinkedHashMap;

    iput-object v9, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->L$3:Ljava/lang/String;

    iput v4, v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readObject$2;->label:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p2, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    iput-object v10, p2, Lkotlin/DeepRecursiveScopeImpl;->value:Ljava/lang/Object;

    if-ne v1, v2, :cond_4

    goto :goto_6

    :cond_4
    move-object v10, v2

    move-object v2, p0

    move-object p0, v9

    move-object v9, p2

    move-object p2, v1

    :goto_3
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v2, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken()B

    move-result p0

    if-eq p0, v6, :cond_6

    if-ne p0, v3, :cond_5

    move v9, p0

    move-object p0, v2

    goto :goto_4

    :cond_5
    iget-object p0, v2, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    const-string p1, "Expected end of the object or comma"

    invoke-static {p0, p1, v5, v8, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v8

    :cond_6
    move-object p2, v9

    move v9, p0

    move-object p0, v2

    move-object v2, v10

    goto :goto_1

    :cond_7
    :goto_4
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    if-ne v9, v7, :cond_8

    invoke-virtual {p0, v3}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(B)B

    goto :goto_5

    :cond_8
    if-eq v9, v6, :cond_9

    :goto_5
    new-instance v2, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v2, p1}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    :goto_6
    return-object v2

    :cond_9
    const-string p1, "Unexpected trailing comma"

    invoke-static {p0, p1, v5, v8, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v8

    :cond_a
    const-string p0, "Unexpected leading comma"

    invoke-static {p2, p0, v5, v8, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v8
.end method


# virtual methods
.method public final read()Lkotlinx/serialization/json/JsonElement;
    .locals 9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekNextToken()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    goto/16 :goto_6

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    goto/16 :goto_6

    :cond_1
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v1, v4, :cond_d

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    invoke-direct {v0, p0, v5}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlin/DeepRecursiveScopeImpl;

    invoke-direct {v1, v0}, Lkotlin/DeepRecursiveScopeImpl;-><init>(Lkotlin/jvm/functions/Function3;)V

    :cond_2
    :goto_0
    iget-object v0, v1, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    iget-object v2, v1, Lkotlin/DeepRecursiveScopeImpl;->cont:Lkotlin/coroutines/Continuation;

    if-nez v2, :cond_3

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    goto/16 :goto_5

    :cond_3
    sget-object v3, Lkotlin/DeepRecursiveKt;->UNDEFINED_RESULT:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    iget-object v0, v1, Lkotlin/DeepRecursiveScopeImpl;->function:Lkotlin/jvm/functions/Function3;

    iget-object v3, v1, Lkotlin/DeepRecursiveScopeImpl;->value:Ljava/lang/Object;

    const-string v4, "null cannot be cast to non-null type kotlin.Function3<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.startCoroutineUninterceptedOrReturn, P of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.startCoroutineUninterceptedOrReturn, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.startCoroutineUninterceptedOrReturn>, kotlin.Any?>"

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-static {v4, v0}, Lkotlin/LazyKt__LazyKt;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    invoke-interface {v0, v1, v3, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-eq v0, v3, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    goto :goto_1

    :cond_4
    iput-object v3, v1, Lkotlin/DeepRecursiveScopeImpl;->result:Ljava/lang/Object;

    :goto_1
    invoke-interface {v2, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v4}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(B)B

    move-result v1

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekNextToken()B

    move-result v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_c

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_6
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->canConsumeValue()Z

    move-result v7

    const/4 v8, 0x7

    if-eqz v7, :cond_9

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeString$1()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(B)B

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v7

    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken()B

    move-result v1

    if-eq v1, v6, :cond_6

    if-ne v1, v8, :cond_8

    goto :goto_3

    :cond_8
    const-string p0, "Expected end of the object or comma"

    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_9
    :goto_3
    if-ne v1, v4, :cond_a

    invoke-virtual {v0, v8}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(B)B

    goto :goto_4

    :cond_a
    if-eq v1, v6, :cond_b

    :goto_4
    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v0, v2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    :goto_5
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->stackDepth:I

    move-object p0, v0

    goto :goto_6

    :cond_b
    const-string p0, "Unexpected trailing comma"

    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_c
    const-string p0, "Unexpected leading comma"

    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_d
    const/16 v2, 0x8

    if-ne v1, v2, :cond_e

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->readArray()Lkotlinx/serialization/json/JsonArray;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_e
    const-string p0, "Cannot begin reading element, unexpected token: "

    invoke-static {p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3, v5, v4}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method

.method public final readArray()Lkotlinx/serialization/json/JsonArray;
    .locals 9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken()B

    move-result v1

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekNextToken()B

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eq v2, v6, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->canConsumeValue()Z

    move-result v7

    const/16 v8, 0x9

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken()B

    move-result v1

    if-eq v1, v6, :cond_0

    if-ne v1, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    iget v8, v0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Expected end of the array or comma"

    invoke-static {v0, p0, v8, v5, v6}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_3
    const/16 p0, 0x8

    if-ne v1, p0, :cond_4

    invoke-virtual {v0, v8}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(B)B

    goto :goto_2

    :cond_4
    if-eq v1, v6, :cond_5

    :goto_2
    new-instance p0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {p0, v2}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_5
    const-string p0, "Unexpected trailing comma"

    invoke-static {v0, p0, v4, v5, v3}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_6
    const-string p0, "Unexpected leading comma"

    invoke-static {v0, p0, v4, v5, v3}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method

.method public final readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->isLenient:Z

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeString$1()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-nez p1, :cond_2

    const-string v0, "null"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    return-object p0

    :cond_2
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method
