.class public abstract Lkotlinx/coroutines/YieldContext;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "SourceFile"


# static fields
.field public static final Key:Lkotlinx/coroutines/CoroutineId$Key;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/CoroutineId$Key;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineId$Key;-><init>()V

    sput-object v0, Lkotlinx/coroutines/YieldContext;->Key:Lkotlinx/coroutines/CoroutineId$Key;

    return-void
.end method
