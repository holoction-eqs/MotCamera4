.class public abstract Lcom/google/common/collect/AbstractIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "SourceFile"


# instance fields
.field public next:Ljava/lang/Object;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 8

    iget v0, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_8

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    iput v1, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/Sets$2$1;

    const/4 v1, 0x3

    iget v4, v0, Lcom/google/common/collect/Sets$2$1;->$r8$classId:I

    iget-object v5, v0, Lcom/google/common/collect/Sets$2$1;->this$0:Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :cond_1
    :pswitch_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v5

    check-cast v7, Lcom/google/common/collect/Sets$2;

    iget-object v7, v7, Lcom/google/common/collect/Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_2
    iput v1, v0, Lcom/google/common/collect/AbstractIterator;->state:I

    goto :goto_2

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v5

    check-cast v7, Lcom/google/common/base/Predicate;

    invoke-interface {v7, v4}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_4
    iput v1, v0, Lcom/google/common/collect/AbstractIterator;->state:I

    :goto_2
    const/4 v4, 0x0

    :goto_3
    iput-object v4, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    if-eq v0, v1, :cond_5

    iput v2, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    return v2

    :cond_6
    return v3

    :cond_7
    return v2

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/AbstractIterator;->state:I

    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
