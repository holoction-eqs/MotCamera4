.class public final Lcom/google/gson/JsonNull;
.super Lcom/google/gson/JsonElement;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/gson/JsonNull;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/JsonNull;

    invoke-direct {v0}, Lcom/google/gson/JsonNull;-><init>()V

    sput-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/gson/JsonNull;

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const-class p0, Lcom/google/gson/JsonNull;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
