.class public abstract Lkotlinx/serialization/encoding/AbstractDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/encoding/Decoder;
.implements Lkotlinx/serialization/encoding/CompositeDecoder;


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public decodeBoolean()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeValue()V

    const/4 p0, 0x0

    throw p0
.end method

.method public decodeBooleanElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeBoolean()Z

    move-result p0

    return p0
.end method

.method public abstract decodeByte()B
.end method

.method public decodeByteElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)B
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeByte()B

    move-result p0

    return p0
.end method

.method public decodeChar()C
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeValue()V

    const/4 p0, 0x0

    throw p0
.end method

.method public decodeCharElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)C
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeChar()C

    move-result p0

    return p0
.end method

.method public decodeDouble()D
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeValue()V

    const/4 p0, 0x0

    throw p0
.end method

.method public decodeDoubleElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)D
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeValue()V

    const/4 p0, 0x0

    throw p0
.end method

.method public decodeFloat()F
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeValue()V

    const/4 p0, 0x0

    throw p0
.end method

.method public decodeFloatElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)F
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeFloat()F

    move-result p0

    return p0
.end method

.method public decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public decodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/ListLikeDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    return-object p0
.end method

.method public abstract decodeInt()I
.end method

.method public decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeInt()I

    move-result p0

    return p0
.end method

.method public abstract decodeLong()J
.end method

.method public decodeLongElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)J
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public decodeNotNullMark()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public decodeNull()V
    .locals 0

    return-void
.end method

.method public decodeSequentially()V
    .locals 0

    return-void
.end method

.method public decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deserializer"

    invoke-static {p3, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 1

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/DeserializationStrategy;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract decodeShort()S
.end method

.method public decodeShortElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)S
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeShort()S

    move-result p0

    return p0
.end method

.method public decodeString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeValue()V

    const/4 p0, 0x0

    throw p0
.end method

.method public decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public decodeValue()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t retrieve untyped values"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
