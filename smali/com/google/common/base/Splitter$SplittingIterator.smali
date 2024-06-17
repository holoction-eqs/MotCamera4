.class public abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public limit:I

.field public next:Ljava/lang/String;

.field public offset:I

.field public final omitEmptyStrings:Z

.field public state:I

.field public final toSplit:Ljava/lang/CharSequence;

.field public final trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->state:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    iget-object v1, p1, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;

    iput-object v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    iget p1, p1, Lcom/google/common/base/Splitter;->limit:I

    iput p1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final bridge synthetic hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->hasNext$com$google$common$base$AbstractIterator()Z

    move-result p0

    return p0
.end method

.method public final hasNext$com$google$common$base$AbstractIterator()Z
    .locals 10

    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->state:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_c

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    iput v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->state:I

    :goto_1
    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :cond_1
    :goto_2
    iget v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    const/4 v4, -0x1

    const/4 v5, 0x3

    if-eq v1, v4, :cond_9

    move-object v6, p0

    check-cast v6, Lcom/google/common/base/Splitter$1$1;

    iget-object v7, v6, Lcom/google/common/base/Splitter$1$1;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object v7, v7, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v7, Lcom/google/common/base/CharMatcher$FastMatcher;

    iget-object v6, v6, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v7, v1, v6}, Lcom/google/common/base/CharMatcher$FastMatcher;->indexIn(ILjava/lang/CharSequence;)I

    move-result v1

    iget-object v6, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    if-ne v1, v4, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :goto_3
    iget v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-ne v7, v0, :cond_3

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v7, v1, :cond_1

    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_2

    :cond_3
    :goto_4
    iget-object v7, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;

    if-ge v0, v1, :cond_4

    invoke-interface {v6, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/CharMatcher$FastMatcher;->matches(C)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-le v1, v0, :cond_5

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Lcom/google/common/base/CharMatcher$FastMatcher;->matches(C)Z

    move-result v9

    if-eqz v9, :cond_5

    move v1, v8

    goto :goto_5

    :cond_5
    iget-boolean v8, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v8, :cond_6

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget v8, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    if-ne v8, v3, :cond_7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    :goto_6
    if-le v1, v0, :cond_8

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v6, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/CharMatcher$FastMatcher;->matches(C)Z

    move-result v8

    if-eqz v8, :cond_8

    move v1, v4

    goto :goto_6

    :cond_7
    sub-int/2addr v8, v3

    iput v8, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    :cond_8
    invoke-interface {v6, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    iput v5, p0, Lcom/google/common/base/Splitter$SplittingIterator;->state:I

    const/4 v0, 0x0

    :goto_7
    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->next:Ljava/lang/String;

    iget v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->state:I

    if-eq v0, v5, :cond_a

    iput v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->state:I

    move v2, v3

    :cond_a
    return v2

    :cond_b
    return v3

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->next$com$google$common$base$AbstractIterator()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final next$com$google$common$base$AbstractIterator()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->hasNext$com$google$common$base$AbstractIterator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->state:I

    iget-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->next:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/base/Splitter$SplittingIterator;->next:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic remove()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->remove$com$google$common$base$AbstractIterator()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final remove$com$google$common$base$AbstractIterator()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
