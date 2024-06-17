.class Lcom/google/gson/internal/sql/SqlTimeTypeAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 0

    iget-object p0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    const-class p1, Ljava/sql/Time;

    if-ne p0, p1, :cond_0

    new-instance p0, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
