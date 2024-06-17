.class public final Lcom/google/common/collect/RegularImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/google/common/collect/RegularImmutableList;


# instance fields
.field public final transient array:[Ljava/lang/Object;

.field public final transient size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableList;-><init>(I[Ljava/lang/Object;)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    return-void
.end method


# virtual methods
.method public final copyIntoArray(I[Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p2, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p0

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lkotlin/collections/ArraysUtilJVM;->checkElementIndex(II)V

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final internalArray()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    return-object p0
.end method

.method public final internalArrayEnd()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    return p0
.end method

.method public final internalArrayStart()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isPartialView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    return p0
.end method
