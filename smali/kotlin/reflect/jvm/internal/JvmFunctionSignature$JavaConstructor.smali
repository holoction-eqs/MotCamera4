.class public final Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;
.super Lkotlin/reflect/jvm/internal/CacheByClass;
.source "SourceFile"


# instance fields
.field public final constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/CacheByClass;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;->constructor:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-string p0, "constructor.parameterTypes"

    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "<init>("

    const-string v3, ")V"

    sget-object v4, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE$2:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    const/16 v5, 0x18

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CoroutineDispatcher$Key$1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
