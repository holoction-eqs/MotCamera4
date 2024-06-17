.class public final Lkotlinx/serialization/internal/LinkedHashMapSerializer;
.super Lkotlinx/serialization/internal/AbstractCollectionSerializer;
.source "SourceFile"


# instance fields
.field public final descriptor:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

.field public final keySerializer:Lkotlinx/serialization/KSerializer;

.field public final valueSerializer:Lkotlinx/serialization/KSerializer;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-direct {p0}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->keySerializer:Lkotlinx/serialization/KSerializer;

    iput-object v1, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->valueSerializer:Lkotlinx/serialization/KSerializer;

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/LinkedHashMapClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->descriptor:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    return-void
.end method


# virtual methods
.method public final builder()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method public final builderSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/LinkedHashMap;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    check-cast p1, Ljava/util/Map;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/Map;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->descriptor:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    return-object p0
.end method

.method public final bridge synthetic readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/util/Map;Z)V

    return-void
.end method

.method public final readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/util/Map;Z)V
    .locals 5

    const-string v0, "builder"

    .line 2
    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->descriptor:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    iget-object v1, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->keySerializer:Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    invoke-interface {p1, v0, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    .line 4
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p4

    add-int/lit8 v4, p2, 0x1

    if-ne p4, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "Value must follow key in a map, index for key: "

    const-string p1, ", returned index for value: "

    .line 5
    invoke-static {p0, p2, p1, p4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 p4, p2, 0x1

    :goto_1
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    iget-object p0, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->valueSerializer:Lkotlinx/serialization/KSerializer;

    if-eqz p2, :cond_3

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p2

    instance-of p2, p2, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez p2, :cond_3

    invoke-static {p3, v1}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, p4, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 7
    :cond_3
    invoke-interface {p1, v0, p4, p0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    :goto_2
    invoke-interface {p3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->collectionSize(Ljava/lang/Object;)I

    check-cast p1, Lkotlinx/serialization/encoding/AbstractEncoder;

    const-string v0, "descriptor"

    iget-object v1, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->descriptor:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    move-object v5, p1

    check-cast v5, Lkotlinx/serialization/encoding/AbstractEncoder;

    iget-object v6, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->keySerializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {v5, v1, v0, v6, v3}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    iget-object v3, p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->valueSerializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {v5, v1, v4, v3, v2}, Lkotlinx/serialization/encoding/AbstractEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p0, "<this>"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public final toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/LinkedHashMap;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
