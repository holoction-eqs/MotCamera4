.class public final Lkotlinx/serialization/json/JsonPrimitiveSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonPrimitiveSerializer;

.field public static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonPrimitiveSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonPrimitiveSerializer;

    sget-object v0, Lkotlinx/serialization/descriptors/PrimitiveKind$INT;->INSTANCE$8:Lkotlinx/serialization/descriptors/PrimitiveKind$INT;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    sget-object v2, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE$15:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    const-string v3, "kotlinx.serialization.json.JsonPrimitive"

    invoke-static {v3, v0, v1, v2}, Lkotlin/time/DurationKt;->buildSerialDescriptor(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/coroutines/DelayKt;->asJsonDecoder(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    instance-of p1, p0, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz p1, :cond_0

    check-cast p0, Lkotlinx/serialization/json/JsonPrimitive;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected JSON element, expected JsonPrimitive, had "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lkotlinx/serialization/json/JsonPrimitive;

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/coroutines/DelayKt;->access$verify(Lkotlinx/serialization/encoding/Encoder;)V

    instance-of p0, p2, Lkotlinx/serialization/json/JsonNull;

    if-eqz p0, :cond_0

    sget-object p0, Lkotlinx/serialization/json/JsonNullSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

    sget-object p2, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlinx/serialization/json/JsonLiteralSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonLiteralSerializer;

    check-cast p2, Lkotlinx/serialization/json/JsonLiteral;

    :goto_0
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    return-void
.end method
