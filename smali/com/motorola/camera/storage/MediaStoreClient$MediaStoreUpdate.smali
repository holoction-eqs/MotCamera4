.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final selection:Ljava/lang/Object;

.field public final selectionArgs:[Ljava/lang/String;

.field public final values:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->$r8$classId:I

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->$r8$classId:I

    const-string v0, "uri"

    .line 2
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/transition/ViewOverlayApi14;-><init>(Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->values:Landroid/os/Parcelable;

    iput-object p3, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->selection:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->selectionArgs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->$r8$classId:I

    const-string v0, "uri"

    .line 3
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/transition/ViewOverlayApi14;-><init>(Landroid/net/Uri;)V

    iput-object p2, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->selectionArgs:[Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->values:Landroid/os/Parcelable;

    iput-object p4, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->selection:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final doOperation()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->$r8$classId:I

    const-string v1, "cause is null"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzpj;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/mlkit_common/zzpj;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Ljava/lang/Integer;

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

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/mlkit_common/zzpj;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    check-cast p0, Landroid/database/Cursor;

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->$r8$classId:I

    const-string v1, ")"

    const-string v2, "toString(this)"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->selectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->selection:Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->values:Landroid/os/Parcelable;

    iget-object p0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroid/net/Uri;

    check-cast v6, Landroid/content/ContentValues;

    check-cast v5, Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MediaStoreUpdate(uri="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", values="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", selection={"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}, selectionArgs="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p0, Landroid/net/Uri;

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    check-cast v6, Landroid/os/Bundle;

    check-cast v5, Landroid/os/CancellationSignal;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MediaStoreQueryBundle(uri="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", projection="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", queryArgs="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", cancellationSignal="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
