.class public final Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$1;
.super Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lokio/Timeout;->INSTANCE$4:Lokio/Timeout;

    const-string v1, "NO_LOCKS"

    invoke-direct {p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;)V

    return-void
.end method


# virtual methods
.method public final recursionDetectedDefault(Ljava/lang/Object;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;
    .locals 0

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$RecursionDetectedResult;-><init>(Ljava/lang/Object;Z)V

    return-object p0
.end method
