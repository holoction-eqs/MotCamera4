.class public final Lkotlinx/serialization/json/internal/StreamingJsonDecoder;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# instance fields
.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public currentIndex:I

.field public discriminatorHolder:Lcom/adobe/xmp/impl/xpath/XMPPath;

.field public final elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

.field public final json:Lkotlinx/serialization/json/Json$Default;

.field public final lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

.field public final mode:I

.field public final serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json$Default;ILkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/adobe/xmp/impl/xpath/XMPPath;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iput p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:I

    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    iget-object p2, p1, Lkotlinx/serialization/json/Json$Default;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    const/4 p2, -0x1

    iput p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    iput-object p5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/adobe/xmp/impl/xpath/XMPPath;

    iget-object p1, p1, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/JsonElementMarker;

    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/JsonElementMarker;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    return-void
.end method


# virtual methods
.method public final beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-static {p1, v0}, Lkotlinx/coroutines/DelayKt;->switchMode(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)I

    move-result v3

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    iget-object v2, v1, Lkotlinx/serialization/json/internal/StringJsonLexer;->path:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v2, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object v6, v2, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    if-ne v4, v6, :cond_0

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/ByteBuffer;->resize()V

    :cond_0
    iget-object v2, v2, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v3}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getBegin(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(C)V

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekNextToken()B

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    if-eq v1, v5, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:I

    if-ne v1, v3, :cond_1

    iget-object v0, v0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;ILkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/adobe/xmp/impl/xpath/XMPPath;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;ILkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/adobe/xmp/impl/xpath/XMPPath;)V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0

    :cond_3
    const/4 p0, 0x0

    const/4 p1, 0x6

    const-string v0, "Unexpected leading comma"

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final decodeBoolean()Z
    .locals 10

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->skipWhitespaces()I

    move-result v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "EOF"

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v7, 0x1

    const/16 v8, 0x22

    if-ne v2, v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeBoolean(I)Z

    move-result v0

    if-eqz v2, :cond_5

    iget v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v2, v9, :cond_2

    iget v2, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_1

    iget v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    add-int/2addr v1, v7

    iput v1, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    goto :goto_1

    :cond_1
    const-string v0, "Expected closing quotation mark"

    invoke-static {p0, v0, v5, v6, v4}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_2
    invoke-static {p0, v3, v5, v6, v4}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_3
    invoke-static {p0, v3, v5, v6, v4}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_4
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeBoolean(I)Z

    move-result v0

    :cond_5
    :goto_1
    return v0
.end method

.method public final decodeByte()B
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNumericLiteral()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse byte for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeChar()C
    .locals 4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected single char, but got \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v3, v2, v1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final decodeDouble()D
    .locals 6

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object p0, p0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    if-nez p0, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlinx/coroutines/JobKt;->throwInvalidFloatingPointDecoded(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/Number;)V

    throw v3

    :cond_2
    :goto_0
    return-wide v4

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse type \'double\' for input \'"

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "descriptor"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:I

    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v3

    const-string v4, "Unexpected trailing comma"

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v7, 0x3a

    const/4 v8, 0x0

    iget-object v9, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-eqz v3, :cond_e

    const/4 v1, 0x2

    if-eq v3, v1, :cond_4

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->tryConsumeComma()Z

    move-result v1

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->canConsumeValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    if-eq v3, v10, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected end of the array or comma"

    invoke-static {v9, v0, v8, v6, v5}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_1
    :goto_0
    add-int/lit8 v10, v3, 0x1

    iput v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    goto/16 :goto_1a

    :cond_2
    if-nez v1, :cond_3

    goto/16 :goto_1a

    :cond_3
    invoke-static {v9, v4, v8, v6, v5}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_4
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    rem-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_5

    move v3, v11

    goto :goto_1

    :cond_5
    move v3, v8

    :goto_1
    if-eqz v3, :cond_6

    if-eq v1, v10, :cond_7

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->tryConsumeComma()Z

    move-result v1

    goto :goto_2

    :cond_6
    invoke-virtual {v9, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(C)V

    :cond_7
    move v1, v8

    :goto_2
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->canConsumeValue()Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v3, :cond_b

    iget v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    const/4 v5, 0x4

    if-ne v3, v10, :cond_9

    xor-int/2addr v1, v11

    iget v3, v9, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v9, v4, v3, v6, v5}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_9
    iget v3, v9, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    const-string v0, "Expected comma after the key-value pair"

    invoke-static {v9, v0, v3, v6, v5}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_b
    :goto_3
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    add-int/lit8 v10, v1, 0x1

    iput v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    goto/16 :goto_1a

    :cond_c
    if-nez v1, :cond_d

    goto/16 :goto_1a

    :cond_d
    const-string v0, "Expected \'}\', but had \',\' instead"

    invoke-static {v9, v0, v8, v6, v5}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_e
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->tryConsumeComma()Z

    move-result v3

    :goto_4
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->canConsumeValue()Z

    move-result v12

    iget-object v5, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz v12, :cond_2b

    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v12, v3, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    if-eqz v12, :cond_f

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenientNotNull()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_f
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeKeyString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-virtual {v9, v7}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(C)V

    iget-object v7, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-static {v12, v1, v7}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)I

    move-result v8

    iget-boolean v6, v3, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    const/4 v10, -0x3

    if-eq v8, v10, :cond_19

    iget-boolean v14, v3, Lkotlinx/serialization/json/JsonConfiguration;->coerceInputValues:Z

    if-eqz v14, :cond_16

    invoke-interface {v1, v8}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v14

    invoke-interface {v14}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()V

    invoke-virtual {v9, v11}, Lkotlinx/serialization/json/internal/StringJsonLexer;->tryConsumeNull(Z)Z

    move-result v15

    if-eqz v15, :cond_10

    goto :goto_9

    :cond_10
    invoke-interface {v14}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v15

    sget-object v13, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v15, v13}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v14}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()V

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekNextToken()B

    move-result v13

    if-eqz v6, :cond_12

    if-eq v13, v11, :cond_11

    if-eqz v13, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_12
    if-eq v13, v11, :cond_13

    :goto_6
    const/4 v13, 0x0

    goto :goto_8

    :cond_13
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeString$1()Ljava/lang/String;

    move-result-object v13

    :goto_7
    iput-object v13, v9, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekedString:Ljava/lang/String;

    :goto_8
    if-nez v13, :cond_14

    goto :goto_a

    :cond_14
    invoke-static {v13, v14, v7}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)I

    move-result v7

    if-ne v7, v10, :cond_15

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeString$1()Ljava/lang/String;

    :goto_9
    move v7, v11

    goto :goto_b

    :cond_15
    :goto_a
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_16

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->tryConsumeComma()Z

    move-result v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    goto :goto_d

    :cond_16
    if-eqz v5, :cond_18

    iget-object v0, v5, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    const/16 v1, 0x40

    if-ge v8, v1, :cond_17

    iget-wide v3, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v8

    or-long/2addr v3, v5

    iput-wide v3, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    goto :goto_c

    :cond_17
    const-wide/16 v5, 0x1

    ushr-int/lit8 v1, v8, 0x6

    const/4 v7, -0x1

    add-int/2addr v1, v7

    and-int/lit8 v3, v8, 0x3f

    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    aget-wide v10, v0, v1

    shl-long v3, v5, v3

    or-long/2addr v3, v10

    aput-wide v3, v0, v1

    :cond_18
    :goto_c
    move v10, v8

    goto/16 :goto_1a

    :cond_19
    const/4 v7, -0x1

    move v8, v11

    const/4 v5, 0x0

    :goto_d
    if-eqz v8, :cond_2a

    iget-boolean v3, v3, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    iget-object v5, v9, Lkotlinx/serialization/json/internal/StringJsonLexer;->source:Ljava/lang/String;

    if-nez v3, :cond_1d

    iget-object v3, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/adobe/xmp/impl/xpath/XMPPath;

    if-nez v3, :cond_1a

    goto :goto_e

    :cond_1a
    iget-object v8, v3, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v12}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    move v3, v11

    goto :goto_f

    :cond_1b
    :goto_e
    const/4 v3, 0x0

    :goto_f
    if-eqz v3, :cond_1c

    goto :goto_10

    :cond_1c
    iget v0, v9, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v12, v1}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered an unknown key \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-virtual {v9, v1, v0, v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1d
    :goto_10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekNextToken()B

    move-result v8

    const/16 v10, 0x8

    if-eq v8, v10, :cond_1e

    const/4 v12, 0x6

    if-eq v8, v12, :cond_1e

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    goto/16 :goto_16

    :cond_1e
    :goto_11
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->peekNextToken()B

    move-result v8

    if-ne v8, v11, :cond_20

    if-eqz v6, :cond_1f

    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    goto :goto_11

    :cond_1f
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeKeyString()Ljava/lang/String;

    goto :goto_11

    :cond_20
    if-ne v8, v10, :cond_21

    goto :goto_12

    :cond_21
    const/4 v12, 0x6

    if-ne v8, v12, :cond_22

    :goto_12
    move v12, v11

    goto :goto_13

    :cond_22
    const/4 v12, 0x0

    :goto_13
    if-eqz v12, :cond_23

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_23
    const/16 v12, 0x9

    iget-object v13, v9, Lkotlinx/serialization/json/internal/StringJsonLexer;->path:Lcom/adobe/xmp/impl/ByteBuffer;

    if-ne v8, v12, :cond_25

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->byteValue()B

    move-result v8

    if-ne v8, v10, :cond_24

    goto :goto_14

    :cond_24
    iget v0, v9, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found ] instead of } at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_25
    const/4 v12, 0x7

    if-ne v8, v12, :cond_28

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->byteValue()B

    move-result v8

    const/4 v12, 0x6

    if-ne v8, v12, :cond_27

    :goto_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_26

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_15

    :cond_26
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "List is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iget v0, v9, Lkotlinx/serialization/json/internal/StringJsonLexer;->currentPosition:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found } instead of ] at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lkotlinx/coroutines/JobKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_28
    const/16 v12, 0xa

    if-eq v8, v12, :cond_29

    :goto_15
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken()B

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1e

    :goto_16
    invoke-virtual {v9}, Lkotlinx/serialization/json/internal/StringJsonLexer;->tryConsumeComma()Z

    move-result v3

    goto :goto_17

    :cond_29
    const-string v0, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v9, v0, v3, v2, v1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2

    :cond_2a
    move v3, v5

    :goto_17
    move v10, v7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v7, 0x3a

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_2b
    move v7, v10

    if-nez v3, :cond_32

    if-eqz v5, :cond_30

    iget-object v0, v5, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    iget-object v1, v0, Lkotlinx/serialization/internal/ElementMarker;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v3

    :cond_2c
    iget-wide v4, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    const-wide/16 v10, -0x1

    cmp-long v6, v4, v10

    iget-object v8, v0, Lkotlinx/serialization/internal/ElementMarker;->readIfAbsent:Lkotlin/jvm/functions/Function2;

    if-eqz v6, :cond_2d

    not-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    iget-wide v5, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    const-wide/16 v10, 0x1

    shl-long v12, v10, v4

    or-long/2addr v5, v12

    iput-wide v5, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2c

    move v10, v4

    goto :goto_1a

    :cond_2d
    const/16 v4, 0x40

    if-le v3, v4, :cond_30

    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    array-length v3, v0

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_30

    add-int/lit8 v5, v4, 0x1

    mul-int/lit8 v6, v5, 0x40

    aget-wide v12, v0, v4

    :goto_19
    cmp-long v14, v12, v10

    if-eqz v14, :cond_2f

    not-long v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v14

    const-wide/16 v15, 0x1

    shl-long v17, v15, v14

    or-long v12, v12, v17

    add-int/2addr v14, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v1, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2e

    aput-wide v12, v0, v4

    move v10, v14

    goto :goto_1a

    :cond_2e
    const/4 v7, -0x1

    goto :goto_19

    :cond_2f
    const-wide/16 v15, 0x1

    aput-wide v12, v0, v4

    move v4, v5

    const/4 v7, -0x1

    goto :goto_18

    :cond_30
    const/4 v10, -0x1

    :goto_1a
    const/4 v0, 0x3

    if-eq v2, v0, :cond_31

    iget-object v0, v9, Lkotlinx/serialization/json/internal/StringJsonLexer;->path:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v1, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v1, [I

    iget v0, v0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    aput v10, v1, v0

    :cond_31
    return v10

    :cond_32
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v9, v4, v2, v1, v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 3

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    iget-object v1, v1, Lkotlinx/serialization/json/internal/StringJsonLexer;->path:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ByteBuffer;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, " at path "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-static {p1, p0, v0, v1}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndexOrThrow(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final decodeFloat()F
    .locals 5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object p0, p0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    if-nez p0, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlinx/coroutines/JobKt;->throwInvalidFloatingPointDecoded(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/Number;)V

    throw v3

    :cond_2
    :goto_0
    return v1

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse type \'float\' for input \'"

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->isUnsignedNumber(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-direct {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;-><init>(Lkotlinx/serialization/json/internal/StringJsonLexer;Lkotlinx/serialization/json/Json$Default;)V

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public final decodeInt()I
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNumericLiteral()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse int for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeJsonElement()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v1, v1, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/StringJsonLexer;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public final decodeLong()J
    .locals 2

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNumericLiteral()J

    move-result-wide v0

    return-wide v0
.end method

.method public final decodeNotNullMark()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonElementMarker;->isUnmarkedNull:Z

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->tryConsumeNull(Z)Z

    move-result p0

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public final decodeNull()V
    .locals 0

    return-void
.end method

.method public final decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x2

    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    if-eqz v0, :cond_1

    iget-object v4, v3, Lkotlinx/serialization/json/internal/StringJsonLexer;->path:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v5, v4, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v5, [I

    iget v6, v4, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    aget v5, v5, v6

    if-ne v5, v1, :cond_1

    iget-object v4, v4, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sget-object v5, Lkotlinx/coroutines/CoroutineId$Key;->INSTANCE$7:Lkotlinx/coroutines/CoroutineId$Key;

    aput-object v5, v4, v6

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lkotlinx/serialization/encoding/AbstractDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_3

    iget-object p1, v3, Lkotlinx/serialization/json/internal/StringJsonLexer;->path:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object p2, p1, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast p2, [I

    iget p3, p1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    aget p2, p2, p3

    if-eq p2, v1, :cond_2

    add-int/2addr p3, v2

    iput p3, p1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object p2, p1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    array-length p2, p2

    if-ne p3, p2, :cond_2

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/ByteBuffer;->resize()V

    :cond_2
    iget-object p2, p1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    iget p3, p1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    aput-object p0, p2, p3

    iget-object p1, p1, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast p1, [I

    aput v1, p1, p3

    :cond_3
    return-object p0
.end method

.method public final decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    const-string v2, "deserializer"

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v2, p1, Lkotlinx/serialization/SealedClassSerializer;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v2, v2, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/DeserializationStrategy;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlinx/coroutines/SupervisorKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v2, v2, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeLeadingMatchingValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/SealedClassSerializer;

    invoke-virtual {v3, p0, v2}, Lkotlinx/serialization/SealedClassSerializer;->findPolymorphicSerializerOrNull(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-static {p0, p1}, Lkotlinx/coroutines/SupervisorKt;->decodeSerializableValuePolymorphic(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Lcom/adobe/xmp/impl/xpath/XMPPath;

    const/16 v3, 0x15

    invoke-direct {p1, v1, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-interface {v2, p0}, Lkotlinx/serialization/DeserializationStrategy;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-interface {p1, p0}, Lkotlinx/serialization/DeserializationStrategy;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "at path"

    invoke-static {p1, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    throw p0

    :cond_4
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/StringJsonLexer;->path:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ByteBuffer;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/MissingFieldException;->missingFields:Ljava/util/List;

    invoke-direct {p1, v1, v0, p0}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/MissingFieldException;)V

    throw p1
.end method

.method public final decodeShort()S
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNumericLiteral()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse short for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lkotlinx/serialization/json/internal/StringJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/StringJsonLexer;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeStringLenientNotNull()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeString$1()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v0, v0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    if-ne v0, v1, :cond_0

    :cond_1
    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:I

    invoke-static {p1}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getEnd(I)C

    move-result p1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Lkotlinx/serialization/json/internal/StringJsonLexer;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;->consumeNextToken(C)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StringJsonLexer;->path:Lcom/adobe/xmp/impl/ByteBuffer;

    iget p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, [I

    aget v2, v0, p1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    aput v1, v0, p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    :cond_2
    iget p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-eq p1, v1, :cond_3

    add-int/2addr p1, v1

    iput p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    :cond_3
    return-void
.end method

.method public final getJson()Lkotlinx/serialization/json/Json$Default;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    return-object p0
.end method

.method public final getSerializersModule()Lkotlinx/serialization/modules/SerialModuleImpl;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    return-object p0
.end method
