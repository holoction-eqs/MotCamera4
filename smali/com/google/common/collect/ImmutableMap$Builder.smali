.class public final Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public alternatingKeysAndValues:[Ljava/lang/Object;

.field public duplicateKey:Ljava/lang/Object;

.field public entriesUsed:Z

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    return-void
.end method


# virtual methods
.method public final buildOrThrow()Lcom/google/common/collect/RegularImmutableMap;
    .locals 15

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->duplicateKey:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    if-nez v0, :cond_15

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    goto/16 :goto_c

    :cond_0
    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v0, v1, v4, v3}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_1
    array-length v5, v3

    shr-int/2addr v5, v1

    invoke-static {v0, v5}, Lkotlin/collections/ArraysUtilJVM;->checkPositionIndex(II)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v5

    if-ne v0, v1, :cond_2

    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_2
    add-int/lit8 v6, v5, -0x1

    const/16 v7, 0x80

    const/4 v8, -0x1

    if-gt v5, v7, :cond_7

    new-array v5, v5, [B

    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([BB)V

    move v7, v2

    move v8, v7

    :goto_0
    if-ge v7, v0, :cond_6

    mul-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v2

    aget-object v11, v3, v9

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v9, v1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Lkotlin/UnsignedKt;->smear(I)I

    move-result v12

    :goto_1
    and-int/2addr v12, v6

    aget-byte v13, v5, v12

    const/16 v14, 0xff

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_4

    int-to-byte v13, v10

    aput-byte v13, v5, v12

    if-ge v8, v7, :cond_3

    aput-object v11, v3, v10

    xor-int/lit8 v10, v10, 0x1

    aput-object v9, v3, v10

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    aget-object v14, v3, v13

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    new-instance v4, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v10, v13, 0x1

    aget-object v12, v3, v10

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v11, v9, v12}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v3, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    if-ne v8, v0, :cond_c

    :goto_3
    move-object v4, v5

    goto/16 :goto_b

    :cond_7
    const v7, 0x8000

    if-gt v5, v7, :cond_d

    new-array v5, v5, [S

    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([SS)V

    move v7, v2

    move v8, v7

    :goto_4
    if-ge v7, v0, :cond_b

    mul-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v2

    mul-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v2

    aget-object v11, v3, v9

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v9, v1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Lkotlin/UnsignedKt;->smear(I)I

    move-result v12

    :goto_5
    and-int/2addr v12, v6

    aget-short v13, v5, v12

    const v14, 0xffff

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_9

    int-to-short v13, v10

    aput-short v13, v5, v12

    if-ge v8, v7, :cond_8

    aput-object v11, v3, v10

    xor-int/lit8 v10, v10, 0x1

    aput-object v9, v3, v10

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    aget-object v14, v3, v13

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    new-instance v4, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v10, v13, 0x1

    aget-object v12, v3, v10

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v11, v9, v12}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v3, v10

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_b
    if-ne v8, v0, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_a

    :cond_d
    new-array v5, v5, [I

    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([II)V

    move v7, v2

    move v9, v7

    :goto_7
    if-ge v7, v0, :cond_11

    mul-int/lit8 v10, v7, 0x2

    add-int/2addr v10, v2

    mul-int/lit8 v11, v9, 0x2

    add-int/2addr v11, v2

    aget-object v12, v3, v10

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v10, v1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lkotlin/UnsignedKt;->smear(I)I

    move-result v13

    :goto_8
    and-int/2addr v13, v6

    aget v14, v5, v13

    if-ne v14, v8, :cond_f

    aput v11, v5, v13

    if-ge v9, v7, :cond_e

    aput-object v12, v3, v11

    xor-int/lit8 v8, v11, 0x1

    aput-object v10, v3, v8

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_f
    aget-object v8, v3, v14

    invoke-virtual {v12, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    new-instance v4, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v8, v14, 0x1

    aget-object v11, v3, v8

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v12, v10, v11}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v3, v8

    :goto_9
    add-int/lit8 v7, v7, 0x1

    const/4 v8, -0x1

    goto :goto_7

    :cond_10
    add-int/lit8 v13, v13, 0x1

    const/4 v8, -0x1

    goto :goto_8

    :cond_11
    if-ne v9, v0, :cond_12

    goto/16 :goto_3

    :cond_12
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_a
    filled-new-array {v5, v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    :goto_b
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_13

    check-cast v4, [Ljava/lang/Object;

    const/4 v0, 0x2

    aget-object v0, v4, v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->duplicateKey:Ljava/lang/Object;

    aget-object v0, v4, v2

    aget-object v1, v4, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    move v0, v1

    :cond_13
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v1, v0, v4, v3}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_c
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->duplicateKey:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    if-nez p0, :cond_14

    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_15
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v2, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "null value in entry: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "null key in entry: null="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
