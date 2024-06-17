.class public final Lcom/google/gson/internal/bind/TreeTypeAdapter;
.super Lcom/google/gson/internal/bind/SerializationDelegatingTypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/internal/bind/SerializationDelegatingTypeAdapter<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public final delegate()Lcom/google/gson/TypeAdapter;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSerializationDelegate()Lcom/google/gson/TypeAdapter;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
