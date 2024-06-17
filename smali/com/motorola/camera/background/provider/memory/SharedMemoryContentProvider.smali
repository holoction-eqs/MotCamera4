.class public final Lcom/motorola/camera/background/provider/memory/SharedMemoryContentProvider;
.super Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/motorola/camera/background/provider/memory/SharedMemoryContentProvider;",
        "Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;",
        "Landroid/os/SharedMemory;",
        "<init>",
        "()V",
        "com/google/android/gms/dynamite/zzo",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final columnNames()[Ljava/lang/String;
    .locals 0

    const-string p0, "shared_memory"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dataFromValues(Landroid/content/ContentValues;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "mSize"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_2

    const-string v0, "file_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {p1, p0}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p0

    const-string p1, "create(filename, size)"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mSize must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mSize must be provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dataToColumns(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/SharedMemory;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final deleteData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    return-void
.end method

.method public final getAuthority()Ljava/lang/String;
    .locals 0

    const-string p0, "com.motorola.camera3.background.provider.SharedMemoryContentProvider"

    return-object p0
.end method

.method public final getEndpoint()Ljava/lang/String;
    .locals 0

    const-string p0, "sharedmem"

    return-object p0
.end method
