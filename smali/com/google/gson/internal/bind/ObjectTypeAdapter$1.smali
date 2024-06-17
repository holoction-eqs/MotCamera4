.class Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final synthetic val$toNumberStrategy:Lcom/google/gson/ToNumberStrategy;


# direct methods
.method public constructor <init>(Lcom/google/gson/ToNumberPolicy$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;->val$toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 1

    iget-object p2, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/google/gson/internal/bind/ObjectTypeAdapter;

    iget-object p0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;->val$toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    invoke-direct {p2, p1, p0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/ToNumberStrategy;)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
