.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final limit:I

.field public final strategy:Lcom/google/common/base/Splitter$1;

.field public final trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$1;)V
    .locals 1

    sget-object v0, Lcom/google/common/base/CharMatcher$None;->INSTANCE:Lcom/google/common/base/CharMatcher$None;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$1;

    iput-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher$FastMatcher;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    return-void
.end method


# virtual methods
.method public final splitToList(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/common/base/Splitter$1$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/common/base/Splitter$1$1;-><init>(Lcom/google/common/base/Splitter$1;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Lcom/google/common/base/Splitter$SplittingIterator;->hasNext$com$google$common$base$AbstractIterator()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$SplittingIterator;->next$com$google$common$base$AbstractIterator()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
