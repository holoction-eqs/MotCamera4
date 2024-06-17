.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final values:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1}, Landroidx/transition/ViewOverlayApi14;-><init>(Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->$r8$classId:I

    const-string v0, "uri"

    .line 2
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/transition/ViewOverlayApi14;-><init>(Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final doOperation()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->$r8$classId:I

    const-string v1, "cause is null"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzpj;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/mlkit_common/zzpj;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Landroid/net/Uri;

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    throw p0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzpj;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/mlkit_common/zzpj;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->$r8$classId:I

    const-string v1, ")"

    iget-object v2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroid/net/Uri;

    check-cast v2, Landroid/content/ContentValues;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "MediaStoreInsert(uri="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", values="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p0, Landroid/net/Uri;

    check-cast v2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "MediaStoreOpenFile(uri="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", mode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
