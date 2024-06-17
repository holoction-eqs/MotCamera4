.class public abstract Lkotlinx/serialization/json/internal/CharArrayPoolBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final arrays:Ljava/util/AbstractList;

.field public charsTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Ljava/util/AbstractList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    iput p1, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Ljava/util/AbstractList;

    return-void
.end method


# virtual methods
.method public abstract newInstance()Ljava/lang/Object;
.end method

.method public abstract resetInstance(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final take()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Ljava/util/AbstractList;

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->resetInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
