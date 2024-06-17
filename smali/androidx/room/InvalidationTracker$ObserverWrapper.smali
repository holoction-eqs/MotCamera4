.class public final Landroidx/room/InvalidationTracker$ObserverWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final observer:Landroidx/room/MultiInstanceInvalidationClient$1;

.field public final singleTableSet:Ljava/util/Set;

.field public final tableIds:[I

.field public final tableNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationClient$1;[I[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->observer:Landroidx/room/MultiInstanceInvalidationClient$1;

    iput-object p2, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    iput-object p3, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    array-length p1, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    aget-object p1, p3, v1

    invoke-static {p1}, Lkotlin/ExceptionsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :goto_1
    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->singleTableSet:Ljava/util/Set;

    array-length p0, p2

    array-length p1, p3

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final notifyByTableInvalidStatus$room_runtime_release(Ljava/util/Set;)V
    .locals 8

    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableIds:[I

    array-length v1, v0

    sget-object v2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    new-instance v2, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {v2}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    array-length v1, v0

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_1

    aget v6, v0, v4

    add-int/lit8 v7, v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->tableNames:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v2, v5}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/ExceptionsKt;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    goto :goto_1

    :cond_2
    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->singleTableSet:Ljava/util/Set;

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->observer:Landroidx/room/MultiInstanceInvalidationClient$1;

    invoke-virtual {p0, v2}, Landroidx/room/MultiInstanceInvalidationClient$1;->onInvalidated(Ljava/util/Set;)V

    :cond_4
    return-void
.end method
