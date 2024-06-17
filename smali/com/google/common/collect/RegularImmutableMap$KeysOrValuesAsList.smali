.class public final Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field public final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field public final transient offset:I

.field public final transient size:I


# direct methods
.method public constructor <init>(II[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->alternatingKeysAndValues:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->offset:I

    iput p2, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->size:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->size:I

    invoke-static {p1, v0}, Lkotlin/collections/ArraysUtilJVM;->checkElementIndex(II)V

    mul-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->offset:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->alternatingKeysAndValues:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final isPartialView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;->size:I

    return p0
.end method
