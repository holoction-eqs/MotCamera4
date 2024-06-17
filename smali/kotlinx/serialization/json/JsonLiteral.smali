.class public final Lkotlinx/serialization/json/JsonLiteral;
.super Lkotlinx/serialization/json/JsonPrimitive;
.source "SourceFile"


# instance fields
.field public final coerceToInlineType:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final content:Ljava/lang/String;

.field public final isString:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonPrimitive;-><init>()V

    iput-boolean p2, p0, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lkotlinx/serialization/json/JsonLiteral;->coerceToInlineType:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lkotlinx/serialization/json/JsonLiteral;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lkotlinx/serialization/json/JsonLiteral;

    iget-boolean v2, p0, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    iget-boolean v3, p1, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    iget-object p1, p1, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/JsonLiteral;->content:Ljava/lang/String;

    iget-boolean p0, p0, Lkotlinx/serialization/json/JsonLiteral;->isString:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/StringOpsKt;->printQuoted(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
