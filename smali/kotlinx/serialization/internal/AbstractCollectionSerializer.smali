.class public abstract Lkotlinx/serialization/internal/AbstractCollectionSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# virtual methods
.method public abstract builder()Ljava/lang/Object;
.end method

.method public abstract builderSize(Ljava/lang/Object;)I
.end method

.method public abstract collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end method

.method public abstract collectionSize(Ljava/lang/Object;)I
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->merge(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final merge(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 4

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->builder()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->builderSize(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()V

    :goto_0
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v0, v3}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->toResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
.end method

.method public abstract toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract toResult(Ljava/lang/Object;)Ljava/lang/Object;
.end method
