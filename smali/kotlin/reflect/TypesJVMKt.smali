.class public abstract Lkotlin/reflect/TypesJVMKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final access$typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 5

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lkotlin/reflect/TypesJVMKt$typeToString$unwrap$1;->INSTANCE:Lkotlin/reflect/TypesJVMKt$typeToString$unwrap$1;

    invoke-static {v0, p0}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->generateSequence(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v3, :cond_7

    if-eqz p0, :cond_6

    const-string v3, "[]"

    if-eq p0, v1, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, p0

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Lkotlin/ranges/IntRange;

    invoke-direct {v4, v1, p0}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object p0

    :goto_2
    iget-boolean v1, p0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "{\n                    va\u2026tring()\n                }"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    new-array v3, p0, [C

    :goto_3
    if-ge v2, p0, :cond_4

    aput-char v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_6
    const-string p0, ""

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Count \'n\' must be non-negative, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Sequence is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_5
    const-string/jumbo v0, "{\n        if (type.isArr\u2026   } else type.name\n    }"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static final computeJavaType(Lkotlin/jvm/internal/KTypeBase;Z)Ljava/lang/reflect/Type;
    .locals 3

    check-cast p0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getClassifier()Lkotlin/reflect/KClassifier;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/KTypeParameter;

    if-eqz v1, :cond_0

    new-instance p0, Lkotlin/reflect/TypeVariableImpl;

    check-cast v0, Lkotlin/reflect/KTypeParameter;

    invoke-direct {p0, v0}, Lkotlin/reflect/TypeVariableImpl;-><init>(Lkotlin/reflect/KTypeParameter;)V

    return-object p0

    :cond_0
    instance-of v1, v0, Lkotlin/reflect/KClass;

    if-eqz v1, :cond_b

    check-cast v0, Lkotlin/reflect/KClass;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KTypeProjection;

    if-eqz v0, :cond_9

    const/4 p0, -0x1

    iget v1, v0, Lkotlin/reflect/KTypeProjection;->variance:I

    if-nez v1, :cond_4

    move v1, p0

    goto :goto_1

    :cond_4
    sget-object v2, Lkotlin/reflect/TypesJVMKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    aget v1, v2, v1

    :goto_1
    if-eq v1, p0, :cond_8

    const/4 p0, 0x1

    if-eq v1, p0, :cond_8

    const/4 p0, 0x2

    const/4 v2, 0x0

    if-eq v1, p0, :cond_6

    const/4 p0, 0x3

    if-ne v1, p0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0, v2}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0

    :cond_6
    :goto_2
    iget-object p0, v0, Lkotlin/reflect/KTypeProjection;->type:Lkotlin/jvm/internal/KTypeBase;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v2}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/jvm/internal/KTypeBase;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Lkotlin/reflect/GenericArrayTypeImpl;

    invoke-direct {p1, p0}, Lkotlin/reflect/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    :cond_8
    :goto_3
    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kotlin.Array must have exactly one type argument: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {p1, v0}, Lkotlin/reflect/TypesJVMKt;->createPossiblyInnerType(Ljava/lang/Class;Ljava/util/List;)Lkotlin/reflect/ParameterizedTypeImpl;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported type classifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static consume(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V
    .locals 10

    :goto_0
    iget v0, p2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    const/4 v0, 0x0

    move v2, v0

    :cond_0
    iget v3, p2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v4, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v4

    const/16 v4, 0xff

    const/4 v5, -0x1

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    add-int/2addr v2, v3

    if-eq v3, v4, :cond_0

    move v3, v2

    :goto_1
    move v2, v0

    :cond_2
    iget v6, p2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v7, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v6, v7

    if-nez v6, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    add-int/2addr v2, v6

    if-eq v6, v4, :cond_2

    :goto_2
    iget v4, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int v6, v4, v2

    if-eq v2, v5, :cond_b

    iget v5, p2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    sub-int/2addr v5, v4

    if-le v2, v5, :cond_4

    goto :goto_6

    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    const/16 v3, 0x8

    if-lt v2, v3, :cond_c

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_5

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    goto :goto_3

    :cond_5
    move v5, v0

    :goto_3
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    const/16 v8, 0x2f

    if-ne v3, v8, :cond_6

    invoke-virtual {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_6
    const/16 v9, 0xb5

    if-ne v2, v9, :cond_8

    if-eq v3, v4, :cond_7

    if-ne v3, v8, :cond_8

    :cond_7
    const/4 v2, 0x3

    if-ne v7, v2, :cond_8

    move v2, v1

    goto :goto_4

    :cond_8
    move v2, v0

    :goto_4
    if-ne v3, v4, :cond_a

    const v3, 0x47413934

    if-ne v5, v3, :cond_9

    goto :goto_5

    :cond_9
    move v1, v0

    :goto_5
    and-int/2addr v2, v1

    :cond_a
    if-eqz v2, :cond_c

    invoke-static {p0, p1, p2, p3}, Lkotlin/reflect/TypesJVMKt;->consumeCcData(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    goto :goto_7

    :cond_b
    :goto_6
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :cond_c
    :goto_7
    invoke-virtual {p2, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public static consumeCcData(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V
    .locals 11

    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    and-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v0, v0, 0x3

    iget v1, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    array-length v2, p3

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p3, v3

    invoke-virtual {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v4, v0, p2}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p0, v5

    if-eqz v5, :cond_2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, p0

    move v8, v0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static final createPossiblyInnerType(Ljava/lang/Class;Ljava/util/List;)Lkotlin/reflect/ParameterizedTypeImpl;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    invoke-static {v1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/reflect/ParameterizedTypeImpl;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, v0}, Lkotlin/reflect/ParameterizedTypeImpl;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/ArrayList;)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    invoke-static {v1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/reflect/ParameterizedTypeImpl;

    invoke-direct {p1, p0, v0, v2}, Lkotlin/reflect/ParameterizedTypeImpl;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/ArrayList;)V

    return-object p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/reflect/TypesJVMKt;->createPossiblyInnerType(Ljava/lang/Class;Ljava/util/List;)Lkotlin/reflect/ParameterizedTypeImpl;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KTypeProjection;

    invoke-static {v1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p1, Lkotlin/reflect/ParameterizedTypeImpl;

    invoke-direct {p1, p0, v0, v2}, Lkotlin/reflect/ParameterizedTypeImpl;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public static delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    if-eq v2, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_3

    return v1

    :cond_3
    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p0, p1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz v2, :cond_8

    array-length v3, v2

    if-lez v3, :cond_8

    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_8

    aget-object v5, v2, v4

    const/4 v5, 0x0

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eqz p2, :cond_4

    if-eq v6, p1, :cond_6

    :cond_4
    if-nez p2, :cond_5

    if-eq v5, p1, :cond_6

    :cond_5
    if-le p1, v6, :cond_7

    if-ge p1, v5, :cond_7

    :cond_6
    invoke-interface {p0, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    return v1
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final getJavaType(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;
    .locals 4

    iget v0, p0, Lkotlin/reflect/KTypeProjection;->variance:I

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/reflect/WildcardTypeImpl;->STAR:Lkotlin/reflect/WildcardTypeImpl;

    return-object p0

    :cond_0
    iget-object p0, p0, Lkotlin/reflect/KTypeProjection;->type:Lkotlin/jvm/internal/KTypeBase;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    new-instance v0, Lkotlin/reflect/WildcardTypeImpl;

    invoke-static {p0, v1}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/jvm/internal/KTypeBase;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lkotlin/reflect/WildcardTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0

    :cond_2
    new-instance v0, Lkotlin/reflect/WildcardTypeImpl;

    invoke-static {p0, v1}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/jvm/internal/KTypeBase;Z)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lkotlin/reflect/WildcardTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, v1}, Lkotlin/reflect/TypesJVMKt;->computeJavaType(Lkotlin/jvm/internal/KTypeBase;Z)Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    sget-object v1, Lkotlin/UInt$Companion;->INSTANCE$4:Lkotlin/UInt$Companion;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 3

    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$3:Lkotlin/UNINITIALIZED_VALUE;

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    sget-object v1, Lcom/google/mlkit/common/internal/zzd;->INSTANCE:Lcom/google/mlkit/common/internal/zzd;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x3

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/google/android/gms/internal/mlkit_common/zzpx;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/google/mlkit/common/internal/zzf;->INSTANCE:Lcom/google/mlkit/common/internal/zzf;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x4

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_common/zzpx;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static removeEmbeddedFontSizes(Landroidx/media3/common/text/Cue$Builder;)V
    .locals 2

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSize:F

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/media3/common/text/Cue$Builder;->textSizeType:I

    iget-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/text/Spannable;

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/text/Spannable;

    new-instance v0, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p0, v0}, Lkotlin/reflect/TypesJVMKt;->removeSpansIf(Landroid/text/Spannable;Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;)V

    :cond_1
    return-void
.end method

.method public static removeSpansIf(Landroid/text/Spannable;Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;)V
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static resolveTextSize(FIII)F
    .locals 2

    const v0, -0x800001

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    return p0

    :cond_2
    int-to-float p1, p2

    :goto_0
    mul-float/2addr p0, p1

    return p0

    :cond_3
    int-to-float p1, p3

    goto :goto_0
.end method
