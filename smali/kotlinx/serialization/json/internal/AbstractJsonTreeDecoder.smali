.class public abstract Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
.super Lkotlinx/serialization/internal/NamedValueDecoder;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# instance fields
.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public final json:Lkotlinx/serialization/json/Json$Default;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json$Default;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object p1, p1, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    return-void
.end method

.method public static asLiteral(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;)Lkotlinx/serialization/json/JsonLiteral;
    .locals 1

    instance-of v0, p0, Lkotlinx/serialization/json/JsonLiteral;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/serialization/json/JsonLiteral;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected \'null\' when "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was expected"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 10

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$2:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lkotlinx/serialization/descriptors/PolymorphicKind;

    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    const-class v3, Lkotlinx/serialization/json/JsonArray;

    const-string v4, ", but had "

    const-string v5, " as the serialized body of "

    const-string v6, "Expected "

    const/4 v7, -0x1

    if-eqz v2, :cond_2

    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;

    instance-of v2, v0, Lkotlinx/serialization/json/JsonArray;

    if-eqz v2, :cond_1

    check-cast v0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/JsonArray;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_2
    sget-object v2, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-class v2, Lkotlinx/serialization/json/JsonObject;

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    iget-object v8, p0, Lkotlinx/serialization/json/Json$Default;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    invoke-static {v1, v8}, Lkotlinx/coroutines/DelayKt;->carrierDescriptor(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/modules/SerialModuleImpl;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v8

    instance-of v9, v8, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez v9, :cond_6

    sget-object v9, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v2, v2, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    if-eqz v2, :cond_5

    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;

    instance-of v2, v0, Lkotlinx/serialization/json/JsonArray;

    if-eqz v2, :cond_4

    check-cast v0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/JsonArray;)V

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->InvalidKeyKindException(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_1
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;

    instance-of v3, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v3, :cond_7

    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/JsonObject;)V

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_8
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeDecoder;

    instance-of v3, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v3, :cond_9

    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    const/4 p1, 0x0

    invoke-direct {v1, p0, v0, p1, p1}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    :goto_2
    return-object v1

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public abstract currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
.end method

.method public final currentObject()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/NamedValueDecoder;->tagStack:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/NamedValueDecoder;->tagStack:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;->popTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedInline(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/JsonPrimitiveDecoder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/json/internal/JsonPrimitiveDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/JsonElement;)V

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final decodeJsonElement()Lkotlinx/serialization/json/JsonElement;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public decodeNotNullMark()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/serialization/json/JsonNull;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final decodeTaggedBoolean(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v1, v1, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    const-string v2, "boolean"

    if-nez v1, :cond_1

    invoke-static {v0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->asLiteral(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;)Lkotlinx/serialization/json/JsonLiteral;

    move-result-object v1

    iget-boolean v1, v1, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Boolean literal for key \'"

    const-string v1, "\' should be unquoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-static {v0, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getBooleanOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final decodeTaggedByte(Ljava/lang/Object;)B
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    const-string v0, "byte"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlinx/serialization/json/JsonElementKt;->jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x80

    if-gt v2, p1, :cond_0

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0

    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    throw v1
.end method

.method public final decodeTaggedChar(Ljava/lang/Object;)C
    .locals 2

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Char sequence has more than one element."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Char sequence is empty."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "char"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final decodeTaggedDouble(Ljava/lang/Object;)D
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    :try_start_0
    sget-object v1, Lkotlinx/serialization/json/JsonElementKt;->jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v2, v2, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v2, v2, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/JobKt;->InvalidFloatingPointDecoded(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    return-wide v0

    :catch_0
    const-string p1, "double"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final decodeTaggedFloat(Ljava/lang/Object;)F
    .locals 2

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    :try_start_0
    sget-object v1, Lkotlinx/serialization/json/JsonElementKt;->jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v1, v1, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/JobKt;->InvalidFloatingPointDecoded(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    return v0

    :catch_0
    const-string p1, "float"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final decodeTaggedInline(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineDescriptor"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->isUnsignedNumber(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;

    new-instance v0, Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-direct {p2, v0, p0}, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;-><init>(Lkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/json/Json$Default;)V

    move-object p0, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lkotlinx/serialization/internal/NamedValueDecoder;->tagStack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public final decodeTaggedLong(Ljava/lang/Object;)J
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    sget-object v0, Lkotlinx/serialization/json/JsonElementKt;->jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-string p1, "long"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final decodeTaggedShort(Ljava/lang/Object;)S
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    const-string v0, "short"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lkotlinx/serialization/json/JsonElementKt;->jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, -0x8000

    if-gt v2, p1, :cond_0

    const/16 v2, 0x7fff

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->unparsedPrimitive(Ljava/lang/String;)V

    throw v1
.end method

.method public final decodeTaggedString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v1, v1, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    const/4 v2, -0x1

    if-nez v1, :cond_1

    const-string v1, "string"

    invoke-static {v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->asLiteral(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;)Lkotlinx/serialization/json/JsonLiteral;

    move-result-object v1

    iget-boolean v1, v1, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "String literal for key \'"

    const-string v1, "\' should be quoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-static {v0, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    instance-of p1, v0, Lkotlinx/serialization/json/JsonNull;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unexpected \'null\' value instead of string literal"

    invoke-static {v2, p1, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getJson()Lkotlinx/serialization/json/Json$Default;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    return-object p0
.end method

.method public final getPrimitiveValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected JsonPrimitive at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public final getSerializersModule()Lkotlinx/serialization/modules/SerialModuleImpl;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object p0, p0, Lkotlinx/serialization/json/Json$Default;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    return-object p0
.end method

.method public abstract getValue()Lkotlinx/serialization/json/JsonElement;
.end method

.method public final unparsedPrimitive(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method
