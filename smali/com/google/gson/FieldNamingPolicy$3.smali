.class public final enum Lcom/google/gson/FieldNamingPolicy$3;
.super Lcom/google/gson/FieldNamingPolicy;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "UPPER_CAMEL_CASE_WITH_SPACES"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x20

    invoke-static {p0, p1}, Lcom/google/gson/FieldNamingPolicy;->separateCamelCase(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/gson/FieldNamingPolicy;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
