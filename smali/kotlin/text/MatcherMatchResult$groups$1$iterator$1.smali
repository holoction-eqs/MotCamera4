.class public final Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->$r8$classId:I

    const-string v2, "it"

    iget-object v3, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->this$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    .line 1
    :pswitch_0
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    const-string p0, "$this$buildSerialDescriptor"

    .line 2
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlinx/serialization/internal/EnumSerializer;

    .line 3
    iget-object p0, v3, Lkotlinx/serialization/internal/EnumSerializer;->overriddenDescriptor:Lkotlin/collections/EmptyList;

    const-string v1, "<set-?>"

    .line 4
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    return-object v0

    .line 5
    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->invoke(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    .line 7
    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->invoke(Ljava/lang/Throwable;)V

    return-object v0

    .line 8
    :pswitch_4
    check-cast p1, Lkotlin/ranges/IntRange;

    .line 9
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, p1}, Lkotlin/text/StringsKt__StringsKt;->substring(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_5
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_6
    check-cast p1, Ljava/lang/String;

    .line 12
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    .line 13
    iget-object p0, v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->idCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 15
    :pswitch_7
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$DataToEraseUpperBound;

    .line 16
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    .line 17
    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$DataToEraseUpperBound;->typeParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$DataToEraseUpperBound;->typeAttr:Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    .line 20
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->visitedTypeParameters:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 21
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    const-string v4, "typeParameter.defaultType"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v2, v2, v4, v1}, Lkotlin/text/StringsKt__IndentKt;->extractTypeParametersFromUpperBounds(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/LinkedHashSet;Ljava/util/Set;)V

    const/16 v2, 0xa

    .line 23
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result v2

    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    move v2, v5

    :cond_1
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v1, :cond_3

    invoke-interface {v1, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v11, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v4

    goto :goto_3

    :cond_3
    :goto_1
    const/4 v6, 0x0

    .line 24
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->visitedTypeParameters:Ljava/util/Set;

    if-eqz v4, :cond_4

    invoke-static {v4, p0}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lkotlin/ExceptionsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    :goto_2
    move-object v7, v4

    const/4 v8, 0x0

    const/16 v9, 0x2f

    const/4 v5, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;IZLjava/util/Set;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v4

    .line 25
    invoke-virtual {v3, v11, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;->getErasedUpperBound(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    iget-object v5, v3, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;->projectionComputer:Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, p1, v3, v4}, Lkotlin/UNINITIALIZED_VALUE;->computeProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v4

    :goto_3
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v5

    invoke-interface {v10, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;->Companion:Lkotlin/time/Duration$Companion;

    .line 26
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution$Companion$createByConstructorsMap$1;

    const/4 v2, 0x0

    invoke-direct {v1, v10, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution$Companion$createByConstructorsMap$1;-><init>(Ljava/util/Map;Z)V

    .line 27
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    const-string v4, "typeParameter.upperBounds"

    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;->substituteErasedUpperBounds(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;)Lkotlin/collections/builders/SetBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/collections/builders/SetBuilder;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_8

    .line 28
    iget-object p1, v3, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;->options:Lokio/Timeout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableSet;->getSize()I

    move-result p1

    if-ne p1, v1, :cond_6

    move v2, v1

    :cond_6
    if-eqz v2, :cond_7

    .line 30
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Should only be one computed upper bound if no need to intersect all bounds"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_8
    :goto_4
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->defaultType:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz p0, :cond_9

    .line 32
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->replaceArgumentsWithStarProjections(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    if-nez p0, :cond_a

    .line 33
    :cond_9
    iget-object p0, v3, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;->erroneousErasedBound$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    :cond_a
    :goto_5
    return-object p0

    .line 34
    :pswitch_8
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    const-string p0, "kotlinTypeRefiner"

    .line 35
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-virtual {v3, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    .line 36
    :pswitch_9
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 37
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedPackageFragmentImpl;

    .line 38
    iget-object p0, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedPackageFragmentImpl;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    if-eqz p0, :cond_b

    goto :goto_6

    .line 39
    :cond_b
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1;

    :goto_6
    return-object p0

    .line 40
    :goto_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->invoke(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->$r8$classId:I

    const-string v1, ": "

    iget-object p0, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 42
    iget-object v2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementNames:[Ljava/lang/String;

    .line 43
    aget-object v2, v2, p1

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 46
    aget-object p0, p0, p1

    .line 47
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 48
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 49
    iget-object v2, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    .line 50
    aget-object v2, v2, p1

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    iget p1, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->$r8$classId:I

    iget-object p0, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->this$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    check-cast p0, Lkotlinx/coroutines/CancellableContinuation;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 53
    :goto_0
    check-cast p0, Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->release()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
