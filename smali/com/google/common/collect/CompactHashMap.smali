.class public final Lcom/google/common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NOT_FOUND:Ljava/lang/Object;


# instance fields
.field public transient entries:[I

.field public transient entrySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

.field public transient keySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

.field public transient keys:[Ljava/lang/Object;

.field public transient metadata:I

.field public transient size:I

.field public transient table:Ljava/lang/Object;

.field public transient values:[Ljava/lang/Object;

.field public transient valuesView:Lcom/google/common/collect/Maps$Values;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lkotlin/ResultKt;->constrainToRange(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected size must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clear()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lkotlin/ResultKt;->constrainToRange(II)I

    move-result v3

    iput v3, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    check-cast v0, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, [S

    if-eqz v1, :cond_3

    check-cast v0, [S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    :cond_3
    check-cast v0, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    :goto_1
    iput v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/io/ExceptionsKt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final delegateOrNull()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 7

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lkotlin/UnsignedKt;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int v4, v0, v2

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->tableGet(ILjava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    not-int v4, v2

    and-int/2addr v0, v4

    :cond_2
    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v5

    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v6}, Lkotlin/io/ExceptionsKt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v3

    :cond_3
    and-int v3, v5, v2

    if-nez v3, :cond_2

    return v1
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final key(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Lcom/google/common/collect/CompactHashMap$KeySetView;

    :cond_0
    return-object v0
.end method

.method public final moveLastEntry(II)V
    .locals 8

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge p1, p0, :cond_2

    aget-object v6, v2, p0

    aput-object v6, v2, p1

    aget-object v7, v3, p0

    aput-object v7, v3, p1

    aput-object v5, v2, p0

    aput-object v5, v3, p0

    aget v2, v1, p0

    aput v2, v1, p1

    aput v4, v1, p0

    invoke-static {v6}, Lkotlin/UnsignedKt;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    and-int/2addr v2, p2

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->tableGet(ILjava/lang/Object;)I

    move-result v3

    add-int/lit8 p0, p0, 0x1

    if-ne v3, p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, v2, p1}, Lkotlin/TuplesKt;->tableSet(Ljava/lang/Object;II)V

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    aget v0, v1, v3

    and-int v2, v0, p2

    if-ne v2, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    not-int p0, p2

    and-int/2addr p0, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    aput p0, v1, v3

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    aput-object v5, v2, p1

    aput-object v5, v3, p1

    aput v4, v1, p1

    :goto_1
    return-void
.end method

.method public final needsAllocArrays()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v3

    const-string v5, "Arrays already allocated"

    invoke-static {v5, v3}, Lkotlin/collections/ArraysUtilJVM;->checkState(Ljava/lang/String;Z)V

    iget v3, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    int-to-double v7, v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    if-le v5, v7, :cond_1

    shl-int/lit8 v5, v6, 0x1

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x40000000    # 2.0f

    :goto_0
    move v6, v5

    :cond_1
    const/4 v5, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Lkotlin/TuplesKt;->createTable(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x20

    iget v6, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 v6, v6, -0x20

    and-int/lit8 v5, v5, 0x1f

    or-int/2addr v5, v6

    iput v5, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    new-array v5, v3, [I

    iput-object v5, v0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    new-array v5, v3, [Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v6

    iget v7, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v8, v7, 0x1

    invoke-static/range {p1 .. p1}, Lkotlin/UnsignedKt;->smearedHash(Ljava/lang/Object;)I

    move-result v9

    iget v10, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 v10, v10, 0x1f

    const/4 v11, 0x1

    shl-int v10, v11, v10

    sub-int/2addr v10, v11

    and-int v12, v9, v10

    iget-object v13, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->tableGet(ILjava/lang/Object;)I

    move-result v13

    if-nez v13, :cond_5

    if-le v8, v10, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v3, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v12, v8}, Lkotlin/TuplesKt;->tableSet(Ljava/lang/Object;II)V

    goto/16 :goto_4

    :cond_5
    not-int v12, v10

    and-int v4, v9, v12

    const/16 v16, 0x0

    :goto_1
    sub-int/2addr v13, v11

    aget v17, v3, v13

    and-int v15, v17, v12

    if-ne v15, v4, :cond_6

    aget-object v14, v5, v13

    invoke-static {v1, v14}, Lkotlin/io/ExceptionsKt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    aget-object v0, v6, v13

    aput-object v2, v6, v13

    return-object v0

    :cond_6
    and-int v14, v17, v10

    move/from16 v17, v4

    add-int/lit8 v4, v16, 0x1

    if-nez v14, :cond_d

    const/16 v5, 0x9

    if-lt v4, v5, :cond_a

    iget v3, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 v3, v3, 0x1f

    shl-int v3, v11, v3

    sub-int/2addr v3, v11

    add-int/2addr v3, v11

    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v15, -0x1

    goto :goto_2

    :cond_8
    const/4 v15, 0x0

    :goto_2
    if-ltz v15, :cond_9

    invoke-virtual {v0, v15}, Lcom/google/common/collect/CompactHashMap;->key(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v15}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    iget v3, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v15, v3, :cond_7

    goto :goto_2

    :cond_9
    iput-object v4, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget v3, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v3, v3, 0x20

    iput v3, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    if-le v8, v10, :cond_b

    :goto_3
    invoke-static {v10}, Lkotlin/TuplesKt;->newCapacity(I)I

    move-result v3

    invoke-virtual {v0, v10, v3, v9, v7}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v10

    goto :goto_4

    :cond_b
    and-int v4, v8, v10

    or-int/2addr v4, v15

    aput v4, v3, v13

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v3

    array-length v3, v3

    if-le v8, v3, :cond_c

    ushr-int/lit8 v4, v3, 0x1

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v4, v3

    or-int/2addr v4, v11

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    :cond_c
    not-int v3, v10

    and-int/2addr v3, v9

    const/4 v13, 0x0

    and-int/lit8 v4, v10, 0x0

    or-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v4

    aput v3, v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v3

    aput-object v1, v3, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v1

    aput-object v2, v1, v7

    iput v8, v0, Lcom/google/common/collect/CompactHashMap;->size:I

    iget v1, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    const/4 v15, 0x0

    return-object v15

    :cond_d
    move/from16 v16, v4

    move v13, v14

    move/from16 v4, v17

    goto/16 :goto_1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public final removeHelper(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    sget-object v1, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v2, 0x1

    shl-int v0, v2, v0

    sub-int/2addr v0, v2

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p1

    move v5, v0

    invoke-static/range {v3 .. v9}, Lkotlin/TuplesKt;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    iget p1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    iget p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return-object v1
.end method

.method public final requireEntries()[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public final requireKeys()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public final requireValues()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public final resizeTable(IIII)I
    .locals 8

    invoke-static {p2}, Lkotlin/TuplesKt;->createTable(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    invoke-static {v0, p3, p4}, Lkotlin/TuplesKt;->tableSet(Ljava/lang/Object;II)V

    :cond_0
    iget-object p3, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object p4

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    invoke-static {v1, p3}, Lkotlin/TuplesKt;->tableGet(ILjava/lang/Object;)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    invoke-static {v6, v0}, Lkotlin/TuplesKt;->tableGet(ILjava/lang/Object;)I

    move-result v7

    invoke-static {v0, v6, v2}, Lkotlin/TuplesKt;->tableSet(Ljava/lang/Object;II)V

    not-int v2, p2

    and-int/2addr v2, v5

    and-int v5, v7, p2

    or-int/2addr v2, v5

    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    iget p3, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 p3, p3, -0x20

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return p2
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    :goto_0
    return p0
.end method

.method public final value(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Lcom/google/common/collect/Maps$Values;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$Values;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Lcom/google/common/collect/Maps$Values;

    :cond_0
    return-object v0
.end method
