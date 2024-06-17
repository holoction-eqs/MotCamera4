.class public abstract Lkotlin/reflect/jvm/internal/CacheByClassKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "java.lang.ClassValue"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lkotlin/Result$Failure;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    return-void
.end method

.method public static final createCache(Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;)Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;-><init>(Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;)V

    return-object v0
.end method
