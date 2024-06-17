.class public final Lcom/google/common/collect/RegularImmutableMap$KeySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# instance fields
.field public final transient list:Lcom/google/common/collect/ImmutableList;

.field public final transient map:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/ImmutableMap;

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->list:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public final asList()Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->list:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final copyIntoArray(I[Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->list:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList;->copyIntoArray(I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isPartialView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->list:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/ImmutableList$Itr;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/ImmutableMap;

    check-cast p0, Lcom/google/common/collect/RegularImmutableMap;

    iget p0, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    return p0
.end method
