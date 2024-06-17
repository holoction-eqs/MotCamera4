.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final idCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final idPerType:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idPerType:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getId(Lkotlin/reflect/KClass;)I
    .locals 3

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idPerType:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;-><init>(Ljava/lang/Object;I)V

    const-string p0, "<this>"

    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    invoke-virtual {v1, p1}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    :cond_0
    const-string p1, "this[key] ?: compute(key\u2026is.putIfAbsent(key, it) }"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method
