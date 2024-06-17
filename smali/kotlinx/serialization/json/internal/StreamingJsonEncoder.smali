.class public final Lkotlinx/serialization/json/internal/StreamingJsonEncoder;
.super Lkotlinx/serialization/encoding/AbstractEncoder;
.source "SourceFile"


# instance fields
.field public final composer:Lkotlinx/serialization/json/internal/Composer;

.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public forceQuoting:Z

.field public final json:Lkotlinx/serialization/json/Json$Default;

.field public final mode:I

.field public final modeReuseCache:[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

.field public polymorphicDiscriminator:Ljava/lang/String;

.field public final serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json$Default;I[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractEncoder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json$Default;

    iput p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:I

    iput-object p4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->modeReuseCache:[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    iget-object p1, p2, Lkotlinx/serialization/json/Json$Default;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    iget-object p1, p2, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    if-eqz p3, :cond_2

    add-int/lit8 p3, p3, -0x1

    if-eqz p4, :cond_1

    aget-object p1, p4, p3

    if-nez p1, :cond_0

    if-eq p1, p0, :cond_1

    :cond_0
    aput-object p0, p4, p3

    :cond_1
    return-void

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-static {p1, v0}, Lkotlinx/coroutines/DelayKt;->switchMode(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)I

    move-result v1

    invoke-static {v1}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getBegin(I)C

    move-result v2

    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/Composer;->indent()V

    :cond_0
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicDiscriminator:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicDiscriminator:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/Composer;->space()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicDiscriminator:Ljava/lang/String;

    :cond_1
    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:I

    if-ne p1, v1, :cond_2

    return-object p0

    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->modeReuseCache:[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    if-eqz p0, :cond_3

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    aget-object p1, p0, p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    invoke-direct {p1, v3, v0, v1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json$Default;I[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    :goto_0
    return-object p1
.end method

.method public final encodeBoolean(Z)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final encodeByte(B)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->print(B)V

    :goto_0
    return-void
.end method

.method public final encodeChar(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeDouble(D)V
    .locals 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->write(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    if-nez p0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-object p1, v1, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/JobKt;->InvalidFloatingPointEncoded(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    if-eq v0, v2, :cond_6

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/4 v6, 0x2

    if-eq v0, v6, :cond_3

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    iget-boolean v0, v3, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    if-nez v0, :cond_0

    invoke-virtual {v3, v1}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    :cond_0
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json$Default;

    const-string v1, "json"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/Composer;->space()V

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    :cond_2
    if-ne p2, v2, :cond_8

    invoke-virtual {v3, v1}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/Composer;->space()V

    iput-boolean v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    goto :goto_2

    :cond_3
    iget-boolean p1, v3, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    if-nez p1, :cond_5

    rem-int/2addr p2, v6

    if-nez p2, :cond_4

    invoke-virtual {v3, v1}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v5}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/Composer;->space()V

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    goto :goto_2

    :cond_5
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    goto :goto_1

    :cond_6
    iget-boolean p0, v3, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    if-nez p0, :cond_7

    invoke-virtual {v3, v1}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    :cond_7
    :goto_1
    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    :cond_8
    :goto_2
    return-void
.end method

.method public final encodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeFloat(F)V
    .locals 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->write(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowSpecialFloatingPointValues:Z

    if-nez p0, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget-object p1, v1, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/JobKt;->InvalidFloatingPointEncoded(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->isUnsignedNumber(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:I

    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    if-eqz v0, :cond_1

    instance-of p1, v4, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v4, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    new-instance v4, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;

    invoke-direct {v4, p1, p0}, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;-><init>(Lkotlinx/serialization/json/internal/JsonToStringWriter;Z)V

    :goto_0
    new-instance p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    invoke-direct {p0, v4, v3, v2, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json$Default;I[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isInline()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkotlinx/serialization/json/JsonElementKt;->jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    instance-of p1, v4, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, v4, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/JsonToStringWriter;

    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    new-instance v4, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;

    invoke-direct {v4, p1, p0}, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;-><init>(Lkotlinx/serialization/json/internal/JsonToStringWriter;Z)V

    :goto_2
    new-instance p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    invoke-direct {p0, v4, v3, v2, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json$Default;I[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    :cond_4
    :goto_3
    return-object p0
.end method

.method public final encodeInt(I)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->print(I)V

    :goto_0
    return-void
.end method

.method public final encodeLong(J)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/Composer;->print(J)V

    :goto_0
    return-void
.end method

.method public final encodeNull()V
    .locals 1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/Composer;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlinx/serialization/SealedClassSerializer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v1, v0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Lkotlinx/serialization/SealedClassSerializer;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlinx/coroutines/SupervisorKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0, p2}, Lkotlin/reflect/jvm/KCallablesJvm;->findPolymorphicSerializer(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    const-string v3, "<this>"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlinx/serialization/internal/Platform_commonKt;->cachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v1

    const-string v2, "kind"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v1, Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    if-nez v2, :cond_3

    instance-of v2, v1, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez v2, :cond_2

    instance-of v1, v1, Lkotlinx/serialization/descriptors/PolymorphicKind;

    if-nez v1, :cond_1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicDiscriminator:Ljava/lang/String;

    invoke-interface {v0, p0, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Actual serializer for polymorphic cannot be polymorphic itself"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v1}, Lkotlinx/serialization/SealedClassSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sealed class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' cannot be serialized as base class \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' because it has property name that conflicts with JSON class discriminator \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final encodeShort(S)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->print(S)V

    :goto_0
    return-void
.end method

.method public final encodeString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->printQuoted(Ljava/lang/String;)V

    return-void
.end method

.method public final endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:I

    invoke-static {p1}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getEnd(I)C

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lkotlinx/serialization/json/internal/Composer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/Composer;->unIndent()V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/Composer;->nextItem()V

    invoke-static {p1}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getEnd(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/Composer;->print(C)V

    :cond_0
    return-void
.end method

.method public final getSerializersModule()Lkotlinx/serialization/modules/SerialModuleImpl;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    return-object p0
.end method
