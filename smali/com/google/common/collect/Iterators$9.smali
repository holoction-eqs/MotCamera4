.class public final Lcom/google/common/collect/Iterators$9;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "SourceFile"


# instance fields
.field public done:Z

.field public final synthetic val$value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Iterators$9;->val$value:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/UnmodifiableIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/common/collect/Iterators$9;->done:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$9;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Iterators$9;->done:Z

    iget-object p0, p0, Lcom/google/common/collect/Iterators$9;->val$value:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
