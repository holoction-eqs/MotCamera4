.class public abstract Lkotlin/time/DurationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final access$parseDuration(Ljava/lang/String;)J
    .locals 14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    sget v1, Lkotlin/time/Duration;->$r8$clinit:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v5, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-lez v2, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eqz v4, :cond_3

    invoke-static {p0, v5}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/CharSequence;C)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    if-le v0, v2, :cond_18

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x50

    if-ne v5, v6, :cond_17

    add-int/2addr v2, v3

    if-eq v2, v0, :cond_16

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v8, v1

    :goto_4
    if-ge v2, v0, :cond_14

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x54

    if-ne v9, v10, :cond_5

    if-nez v8, :cond_4

    add-int/lit8 v2, v2, 0x1

    if-eq v2, v0, :cond_4

    move v8, v3

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    move v9, v2

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_8

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    new-instance v11, Lkotlin/ranges/CharRange;

    const/16 v12, 0x30

    const/16 v13, 0x39

    invoke-direct {v11, v12, v13}, Lkotlin/ranges/CharRange;-><init>(CC)V

    invoke-virtual {v11, v10}, Lkotlin/ranges/CharRange;->contains(C)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "+-."

    invoke-static {v11, v10}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_6

    :cond_6
    move v10, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v10, v3

    :goto_7
    if-eqz v10, :cond_8

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_9

    move v11, v3

    goto :goto_8

    :cond_9
    move v11, v1

    :goto_8
    if-nez v11, :cond_13

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v2

    if-ltz v11, :cond_12

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt v11, v2, :cond_12

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v11, v11, 0x1

    if-nez v8, :cond_b

    const/16 v12, 0x44

    if-ne v2, v12, :cond_a

    sget-object v2, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    goto :goto_9

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid or unsupported duration ISO non-time unit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const/16 v12, 0x48

    if-ne v2, v12, :cond_c

    sget-object v2, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    goto :goto_9

    :cond_c
    const/16 v12, 0x4d

    if-ne v2, v12, :cond_d

    sget-object v2, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    goto :goto_9

    :cond_d
    const/16 v12, 0x53

    if-ne v2, v12, :cond_11

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    :goto_9
    if-eqz v5, :cond_f

    invoke-virtual {v5, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-lez v5, :cond_e

    goto :goto_a

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected order of duration components"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_a
    const/16 v5, 0x2e

    const/4 v12, 0x6

    invoke-static {v9, v5, v1, v1, v12}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v5

    sget-object v12, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    if-ne v2, v12, :cond_10

    if-lez v5, :cond_10

    invoke-virtual {v9, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lkotlin/time/DurationKt;->parseOverLongIsoComponent(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v6

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10, v2}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    move-result-wide v9

    goto :goto_b

    :cond_10
    invoke-static {v9}, Lkotlin/time/DurationKt;->parseOverLongIsoComponent(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v9

    :goto_b
    invoke-static {v6, v7, v9, v10}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v6

    move-object v5, v2

    move v2, v11

    goto/16 :goto_4

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid duration ISO time unit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing unit for value "

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_14
    if-eqz v4, :cond_15

    shr-long v0, v6, v3

    neg-long v0, v0

    long-to-int p0, v6

    and-int/2addr p0, v3

    shl-long/2addr v0, v3

    int-to-long v2, p0

    add-long v6, v0, v2

    sget p0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    :cond_15
    return-wide v6

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No components"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The string is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final buildSerialDescriptor(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;
    .locals 7

    const-string v0, "serialName"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$1:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v6, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    invoke-direct {v6, p0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    iget-object v0, v6, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    return-object p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Blank serial names are prohibited"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final capitalizeAsciiOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-gt v3, v0, :cond_2

    const/16 v3, 0x7b

    if-ge v0, v3, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static final durationOfMillis(J)J
    .locals 2

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    return-wide p0
.end method

.method public static final durationOfMillisNormalized(J)J
    .locals 5

    new-instance v0, Lkotlin/ranges/LongRange;

    const-wide v1, -0x431bde82d7aL

    const-wide v3, 0x431bde82d7aL

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v0, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    sget v0, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/TuplesKt;->coerceIn(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final encodeByWriter(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/JsonToStringWriter;Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    iget-object v2, p0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v2, v2, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    if-eqz v2, :cond_0

    new-instance v2, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;

    invoke-direct {v2, p1, p0}, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;-><init>(Lkotlinx/serialization/json/internal/JsonToStringWriter;Lkotlinx/serialization/json/Json$Default;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/serialization/json/internal/Composer;

    invoke-direct {v2, p1}, Lkotlinx/serialization/json/internal/Composer;-><init>(Lkotlinx/serialization/json/internal/JsonToStringWriter;)V

    :goto_0
    const/4 p1, 0x1

    invoke-direct {v0, v2, p0, p1, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json$Default;I[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    invoke-virtual {v0, p2, p3}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    return-void
.end method

.method public static final foldCopies(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Z)Lkotlin/coroutines/CoroutineContext;
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lkotlin/coroutines/CoroutineContext$plus$1;->INSTANCE$8:Lkotlin/coroutines/CoroutineContext$plus$1;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v2, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;

    const/4 v3, 0x1

    invoke-direct {v2, v1, p2, v3}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;-><init>(Ljava/lang/Object;ZI)V

    invoke-interface {p0, p1, v2}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    if-eqz v0, :cond_1

    iget-object p2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    sget-object v0, Lkotlin/coroutines/CoroutineContext$plus$1;->INSTANCE$7:Lkotlin/coroutines/CoroutineContext$plus$1;

    invoke-interface {p2, p1, v0}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_1
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public static final isUpperCaseCharAt(Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x41

    if-gt p1, p0, :cond_0

    const/16 p1, 0x5b

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->foldCopies(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Z)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    if-eq p0, p1, :cond_0

    sget-object v0, Lkotlin/UInt$Companion;->$$INSTANCE:Lkotlin/UInt$Companion;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final parseOverLongIsoComponent(Ljava/lang/String;)J
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const-string v3, "+-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sub-int/2addr v0, v3

    const/16 v4, 0x10

    if-le v0, v4, :cond_5

    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v3, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v0

    :cond_2
    iget-boolean v3, v0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v3

    new-instance v4, Lkotlin/ranges/CharRange;

    const/16 v5, 0x30

    const/16 v6, 0x39

    invoke-direct {v4, v5, v6}, Lkotlin/ranges/CharRange;-><init>(CC)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lkotlin/ranges/CharRange;->contains(C)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_4

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_3

    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    :goto_3
    return-wide v0

    :cond_5
    const-string v0, "+"

    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1, p0}, Lkotlin/text/StringsKt___StringsKt;->drop(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final throwMissingFieldException(IILkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    not-int p0, p0

    and-int/2addr p0, p1

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlinx/serialization/MissingFieldException;

    const-string v1, "serialName"

    iget-object p2, p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->serialName:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is required for type with serial name \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', but it was missing"

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string p1, "Fields "

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " are required for type with serial name \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', but they were missing"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/MissingFieldException;)V

    throw p0
.end method

.method public static final toDuration(DLkotlin/time/DurationUnit;)J
    .locals 8

    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlinx/coroutines/SupervisorKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lkotlin/ResultKt;->roundToLong(D)J

    move-result-wide v0

    new-instance v2, Lkotlin/ranges/LongRange;

    const-wide v4, -0x3ffffffffffa14bfL    # -2.0000000001722644

    const-wide v6, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-direct {v2, v4, v5, v6, v7}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v2, v0, v1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v2

    if-eqz v2, :cond_0

    shl-long p0, v0, v3

    .line 1
    sget p2, Lkotlin/time/Duration;->$r8$clinit:I

    .line 2
    sget p2, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlinx/coroutines/SupervisorKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/ResultKt;->roundToLong(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration value cannot be NaN."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toDuration(JLkotlin/time/DurationUnit;)J
    .locals 6

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-string v1, "sourceUnit"

    .line 4
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lkotlin/time/DurationUnit;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object p2, p2, Lkotlin/time/DurationUnit;->timeUnit:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-virtual {p2, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 5
    new-instance v3, Lkotlin/ranges/LongRange;

    neg-long v4, v1

    invoke-direct {v3, v4, v5, v1, v2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v3, p0, p1}, Lkotlin/ranges/LongRange;->contains(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Lkotlin/time/DurationUnit;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    const/4 p2, 0x1

    shl-long/2addr p0, p2

    .line 7
    sget p2, Lkotlin/time/Duration;->$r8$clinit:I

    .line 8
    sget p2, Lkotlin/time/DurationJvmKt;->$r8$clinit:I

    return-wide p0

    .line 9
    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-string v1, "targetUnit"

    .line 10
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lkotlin/time/DurationUnit;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    .line 11
    invoke-static {p0, p1}, Lkotlin/TuplesKt;->coerceIn(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toLowerCaseAsciiOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x41

    if-gt v5, v4, :cond_0

    const/16 v5, 0x5b

    if-ge v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "builder.toString()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;
    .locals 2

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lkotlinx/coroutines/UndispatchedMarker;->INSTANCE:Lkotlinx/coroutines/UndispatchedMarker;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    :cond_3
    instance-of v0, p0, Lkotlinx/coroutines/DispatchedCoroutine;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    instance-of v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/UndispatchedCoroutine;

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1, p1, p2}, Lkotlinx/coroutines/UndispatchedCoroutine;->saveThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_6
    return-object v1
.end method
