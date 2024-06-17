.class public final Lkotlinx/serialization/descriptors/SerialDescriptorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;
.implements Lkotlinx/serialization/internal/CachedNames;


# instance fields
.field public final _hashCode$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final annotations:Ljava/util/List;

.field public final elementAnnotations:[Ljava/util/List;

.field public final elementDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final elementNames:[Ljava/lang/String;

.field public final elementOptionality:[Z

.field public final elementsCount:I

.field public final kind:Lkotlinx/serialization/descriptors/SerialKind;

.field public final name2Index:Ljava/util/Map;

.field public final serialName:Ljava/lang/String;

.field public final serialNames:Ljava/util/HashSet;

.field public final typeParametersDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V
    .locals 1

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->serialName:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->kind:Lkotlinx/serialization/descriptors/SerialKind;

    iput p3, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementsCount:I

    iget-object p1, p5, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->annotations:Ljava/util/List;

    iget-object p1, p5, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/ArrayList;

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/util/HashSet;

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    iput-object p3, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->serialNames:Ljava/util/HashSet;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementNames:[Ljava/lang/String;

    iget-object p1, p5, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementDescriptors:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlinx/serialization/internal/Platform_commonKt;->compactArray(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object p1, p5, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementAnnotations:Ljava/util/ArrayList;

    new-array v0, p3, [Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/List;

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementAnnotations:[Ljava/util/List;

    iget-object p1, p5, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementOptionality:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    add-int/lit8 v0, p3, 0x1

    aput-boolean p5, p2, p3

    move p3, v0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementOptionality:[Z

    iget-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementNames:[Ljava/lang/String;

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->withIndex([Ljava/lang/Object;)Lkotlin/collections/IndexingIterable;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/collections/IndexedValue;

    iget-object p5, p3, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    iget p3, p3, Lkotlin/collections/IndexedValue;->index:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p5, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lkotlin/collections/MapsKt___MapsJvmKt;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->name2Index:Ljava/util/Map;

    invoke-static {p4}, Lkotlinx/serialization/internal/Platform_commonKt;->compactArray(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->typeParametersDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance p1, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;

    const/16 p2, 0x15

    invoke-direct {p1, p0, p2}, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->_hashCode$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    iget-object v1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->typeParametersDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object p1, p1, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->typeParametersDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    if-eq p1, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_7

    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v4

    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->annotations:Ljava/util/List;

    return-object p0
.end method

.method public final getElementAnnotations(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementAnnotations:[Ljava/util/List;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementDescriptors:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getElementIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->name2Index:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x3

    :goto_0
    return p0
.end method

.method public final getElementName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getElementsCount()I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementsCount:I

    return p0
.end method

.method public final getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->kind:Lkotlinx/serialization/descriptors/SerialKind;

    return-object p0
.end method

.method public final getSerialName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->serialName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSerialNames()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->serialNames:Ljava/util/HashSet;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->_hashCode$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final isElementOptional(I)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementOptionality:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public final isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isNullable()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->elementsCount:I

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    const-string v3, ", "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->serialName:Ljava/lang/String;

    const/16 v4, 0x28

    invoke-static {v0, v1, v4}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    const-string v5, ")"

    new-instance v6, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

    const/16 v0, 0x9

    invoke-direct {v6, p0, v0}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;-><init>(Ljava/lang/Object;I)V

    const/16 v7, 0x18

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
