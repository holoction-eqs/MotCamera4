.class Lcom/google/gson/internal/bind/TypeAdapters$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    return-object p0
.end method
