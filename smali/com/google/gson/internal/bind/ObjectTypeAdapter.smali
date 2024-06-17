.class public final Lcom/google/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# static fields
.field public static final DOUBLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final gson:Lcom/google/gson/Gson;

.field public final toNumberStrategy:Lcom/google/gson/ToNumberStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

    new-instance v1, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v1, v0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>(Lcom/google/gson/ToNumberPolicy$1;)V

    sput-object v1, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->DOUBLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/ToNumberStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/google/gson/Gson;

    iput-object p2, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    return-void
.end method

.method public static getFactory(Lcom/google/gson/ToNumberPolicy$1;)Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    sget-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->DOUBLE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>(Lcom/google/gson/ToNumberPolicy$1;)V

    return-object v0
.end method

.method public static tryBeginNesting(Lcom/google/gson/stream/JsonReader;I)Ljava/io/Serializable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    new-instance p0, Lcom/google/gson/internal/LinkedTreeMap;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Z)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2
    throw v0
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->tryBeginNesting(Lcom/google/gson/stream/JsonReader;I)Ljava/io/Serializable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->readTerminal$enumunboxing$(Lcom/google/gson/stream/JsonReader;I)Ljava/io/Serializable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->tryBeginNesting(Lcom/google/gson/stream/JsonReader;I)Ljava/io/Serializable;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_4

    invoke-virtual {p0, p1, v3}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->readTerminal$enumunboxing$(Lcom/google/gson/stream/JsonReader;I)Ljava/io/Serializable;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    instance-of v4, v1, Ljava/util/List;

    if-eqz v4, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    if-eqz v5, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_0

    :cond_6
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final readTerminal$enumunboxing$(Lcom/google/gson/stream/JsonReader;I)Ljava/io/Serializable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 p0, 0x7

    if-eq v1, p0, :cond_1

    const/16 p0, 0x8

    if-ne v1, p0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected token: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    invoke-interface {p0, p1}, Lcom/google/gson/ToNumberStrategy;->readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    throw v0
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object p0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v1, v0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p0

    instance-of v0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
