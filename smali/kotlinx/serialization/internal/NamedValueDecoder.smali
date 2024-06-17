.class public abstract Lkotlinx/serialization/internal/NamedValueDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/encoding/Decoder;
.implements Lkotlinx/serialization/encoding/CompositeDecoder;


# instance fields
.field public flag:Z

.field public final tagStack:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/internal/NamedValueDecoder;->tagStack:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final decodeBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final decodeBooleanElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final decodeByte()B
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedByte(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public final decodeByteElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)B
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedByte(Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public final decodeChar()C
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedChar(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public final decodeCharElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)C
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedChar(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public final decodeDouble()D
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final decodeDoubleElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)D
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedDouble(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public final decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 2

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    check-cast p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;

    check-cast v0, Ljava/lang/String;

    const-string v1, "tag"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    const-string v1, ""

    invoke-static {p1, p0, v0, v1}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndexOrThrow(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final decodeFloat()F
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final decodeFloatElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)F
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public final decodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/ListLikeDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedInline(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    return-object p0
.end method

.method public final decodeInt()I
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    check-cast p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;

    check-cast v0, Ljava/lang/String;

    const-string v1, "tag"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    :try_start_0
    sget-object v1, Lkotlinx/serialization/json/JsonElementKt;->jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string v0, "int"

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    sget-object p2, Lkotlinx/serialization/json/JsonElementKt;->jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p1, "int"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final decodeLong()J
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final decodeLongElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)J
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedLong(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final bridge synthetic decodeNull()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic decodeSequentially()V
    .locals 0

    return-void
.end method

.method public final decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p0, p3, p4}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lkotlinx/serialization/internal/NamedValueDecoder;->tagStack:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1;->invoke$2()Ljava/lang/Object;

    move-result-object p1

    iget-boolean p2, p0, Lkotlinx/serialization/internal/NamedValueDecoder;->flag:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lkotlinx/serialization/internal/NamedValueDecoder;->flag:Z

    return-object p1
.end method

.method public final decodeShort()S
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedShort(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public final decodeShortElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)S
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedShort(Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public final decodeString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/NamedValueDecoder;->decodeTaggedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract decodeTaggedBoolean(Ljava/lang/Object;)Z
.end method

.method public abstract decodeTaggedByte(Ljava/lang/Object;)B
.end method

.method public abstract decodeTaggedChar(Ljava/lang/Object;)C
.end method

.method public abstract decodeTaggedDouble(Ljava/lang/Object;)D
.end method

.method public abstract decodeTaggedFloat(Ljava/lang/Object;)F
.end method

.method public abstract decodeTaggedInline(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
.end method

.method public abstract decodeTaggedLong(Ljava/lang/Object;)J
.end method

.method public abstract decodeTaggedShort(Ljava/lang/Object;)S
.end method

.method public abstract decodeTaggedString(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public elementName(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/NamedValueDecoder;->elementName(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "nestedName"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/internal/NamedValueDecoder;->tagStack:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p1
.end method

.method public final popTag()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/NamedValueDecoder;->tagStack:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lkotlinx/serialization/internal/NamedValueDecoder;->flag:Z

    return-object v0
.end method
