.class public final Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "SourceFile"


# instance fields
.field public final lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

.field public final serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/json/Json$Default;)V
    .locals 1

    const-string v0, "lexer"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    iget-object p1, p2, Lkotlinx/serialization/json/Json$Default;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    return-void
.end method


# virtual methods
.method public final decodeByte()B
    .locals 4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;)Lkotlin/UInt;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Lkotlin/UInt;->data:I

    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-byte v2, v2

    new-instance v3, Lkotlin/UByte;

    invoke-direct {v3, v2}, Lkotlin/UByte;-><init>(B)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    iget-byte p0, v3, Lkotlin/UByte;->data:B

    return p0

    :cond_2
    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->numberFormatError(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse type \'UByte\' for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v1, v3}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unsupported"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final decodeInt()I
    .locals 4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;)Lkotlin/UInt;

    move-result-object v2

    if-eqz v2, :cond_0

    iget p0, v2, Lkotlin/UInt;->data:I

    return p0

    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->numberFormatError(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse type \'UInt\' for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v1, v3}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final decodeLong()J
    .locals 4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/UStringsKt;->toULongOrNull(Ljava/lang/String;)Lkotlin/ULong;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v0, v2, Lkotlin/ULong;->data:J

    return-wide v0

    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->numberFormatError(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse type \'ULong\' for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v1, v3}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final decodeShort()S
    .locals 4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/UStringsKt;->toUIntOrNull(Ljava/lang/String;)Lkotlin/UInt;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Lkotlin/UInt;->data:I

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-short v2, v2

    new-instance v3, Lkotlin/UShort;

    invoke-direct {v3, v2}, Lkotlin/UShort;-><init>(S)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    iget-short p0, v3, Lkotlin/UShort;->data:S

    return p0

    :cond_2
    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->numberFormatError(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse type \'UShort\' for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v1, v3}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final getSerializersModule()Lkotlinx/serialization/modules/SerialModuleImpl;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    return-object p0
.end method
