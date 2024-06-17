.class Lcom/google/gson/internal/bind/TypeAdapters$28;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method public static readTerminal(Lcom/google/gson/stream/JsonReader;I)Lcom/google/gson/JsonElement;
    .locals 2

    if-eqz p1, :cond_4

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected token: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/gson/JsonPrimitive;

    new-instance v0, Lcom/google/gson/internal/LazilyParsedNumber;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    const/4 p0, 0x0

    throw p0
.end method

.method public static tryBeginNesting(Lcom/google/gson/stream/JsonReader;I)Lcom/google/gson/JsonElement;
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

    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    new-instance p0, Lcom/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/google/gson/JsonArray;-><init>()V

    return-object p0

    :cond_2
    throw v0
.end method

.method public static write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
    .locals 2

    if-eqz p0, :cond_c

    .line 1
    instance-of v0, p0, Lcom/google/gson/JsonNull;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    .line 3
    check-cast p0, Lcom/google/gson/JsonPrimitive;

    .line 4
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)V

    goto/16 :goto_4

    .line 6
    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 7
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 9
    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a JSON Primitive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    instance-of v0, p0, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_8

    .line 12
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()V

    if-eqz v0, :cond_7

    .line 13
    check-cast p0, Lcom/google/gson/JsonArray;

    .line 14
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-static {v0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$28;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()V

    goto/16 :goto_4

    .line 15
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a JSON Array: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_8
    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_b

    .line 17
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    if-eqz v0, :cond_a

    .line 18
    check-cast p0, Lcom/google/gson/JsonObject;

    .line 19
    iget-object p0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 20
    check-cast p0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    move-object v0, p0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet$1;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-static {v0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$28;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    goto :goto_4

    .line 21
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not a JSON Object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t write "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    :goto_4
    return-void
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/gson/internal/bind/TypeAdapters$28;->tryBeginNesting(Lcom/google/gson/stream/JsonReader;I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/google/gson/internal/bind/TypeAdapters$28;->readTerminal(Lcom/google/gson/stream/JsonReader;I)Lcom/google/gson/JsonElement;

    move-result-object p0

    goto :goto_6

    :cond_0
    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, v0, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/gson/internal/bind/TypeAdapters$28;->tryBeginNesting(Lcom/google/gson/stream/JsonReader;I)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v3, :cond_4

    invoke-static {p1, v2}, Lcom/google/gson/internal/bind/TypeAdapters$28;->readTerminal(Lcom/google/gson/stream/JsonReader;I)Lcom/google/gson/JsonElement;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    instance-of v3, v0, Lcom/google/gson/JsonArray;

    if-eqz v3, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/google/gson/JsonArray;

    iget-object v1, v1, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object v3, v0

    check-cast v3, Lcom/google/gson/JsonObject;

    iget-object v3, v3, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v3, v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lcom/google/gson/JsonArray;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p0, v0

    :goto_6
    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    goto :goto_0
.end method

.method public final bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/google/gson/JsonElement;

    invoke-static {p2, p1}, Lcom/google/gson/internal/bind/TypeAdapters$28;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    return-void
.end method
