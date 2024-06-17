.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public final projection:[Ljava/lang/String;

.field public final selection:Ljava/lang/String;

.field public final selectionArgs:[Ljava/lang/String;

.field public final sortOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/transition/ViewOverlayApi14;-><init>(Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->projection:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->selection:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->selectionArgs:[Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->sortOrder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doOperation()Ljava/lang/Object;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzpj;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpj;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Landroid/database/Cursor;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cause is null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    const-string v1, "toString(this)"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->projection:[Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->selectionArgs:[Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "MediaStoreQuery(uri="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", projection="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", selection={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->selection:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}, selectionArgs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sortOrder={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->sortOrder:Ljava/lang/String;

    const-string/jumbo v0, "})"

    invoke-static {v1, p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
