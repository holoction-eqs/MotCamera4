.class public abstract Lcom/google/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final nullSafe()Lcom/google/gson/TypeAdapter;
    .locals 1

    new-instance v0, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.end method

.method public abstract write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.end method
