.class public final Lkotlinx/serialization/json/Json$Default;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Default:Lkotlinx/serialization/json/Json$Default;


# instance fields
.field public final _schemaCache:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public final serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/Json$Default;

    invoke-direct {v0}, Lkotlinx/serialization/json/Json$Default;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/JsonConfiguration;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonConfiguration;-><init>()V

    sget-object v1, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object v1, p0, Lkotlinx/serialization/json/Json$Default;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    new-instance v0, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;-><init>(I)V

    iput-object v0, p0, Lkotlinx/serialization/json/Json$Default;->_schemaCache:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    return-void
.end method


# virtual methods
.method public final decodeFromString(Lkotlinx/serialization/KSerializer;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/internal/StringJsonLexer;-><init>(Ljava/lang/String;)V

    new-instance p2, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    const/4 v3, 0x1

    invoke-interface {p1}, Lkotlinx/serialization/DeserializationStrategy;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;ILkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/adobe/xmp/impl/xpath/XMPPath;)V

    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken()B

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expected EOF after parsing, but had "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    add-int/lit8 p1, p1, -0x1

    iget-object p2, v0, Lkotlinx/serialization/json/internal/StringJsonLexer;->source:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/JsonToStringWriter;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;-><init>()V

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lkotlin/time/DurationKt;->encodeByWriter(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/JsonToStringWriter;Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->release()V

    throw p0
.end method
