.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/zzpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzpj;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzpj;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpj;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpj;->zza:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    move-object v2, p0

    check-cast v2, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;

    iget-object v2, v2, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->selectionArgs:[Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;

    iget-object v3, v3, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->values:Landroid/os/Parcelable;

    check-cast v3, Landroid/os/Bundle;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->selection:Ljava/lang/Object;

    check-cast p0, Landroid/os/CancellationSignal;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$closeClient()V

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    move-object v2, p0

    check-cast v2, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    iget-object v2, v2, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->projection:[Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    iget-object v3, v3, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->selection:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    iget-object v4, v4, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->selectionArgs:[Ljava/lang/String;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;

    iget-object v5, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreQuery;->sortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$closeClient()V

    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_2
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p0

    :catchall_2
    move-exception p0

    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$closeClient()V

    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_3
    :try_start_3
    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;->values:Ljava/lang/Object;

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-object p0

    :catchall_3
    move-exception p0

    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$closeClient()V

    :cond_3
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_4
    :try_start_4
    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreDelete;

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    move-object v2, p0

    check-cast v2, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreDelete;

    iget-object v2, v2, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreDelete;->selection:Ljava/lang/String;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreDelete;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreDelete;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_4
    move-exception p0

    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$closeClient()V

    :cond_4
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :pswitch_5
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->zzi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/google/android/gms/internal/mlkit_common/zzpn;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/common/internal/LibraryVersion;->zzb:Lcom/google/android/gms/common/internal/LibraryVersion;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzpn;->zzi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/LibraryVersion;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_0
    :try_start_5
    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    move-object v2, p0

    check-cast v2, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;

    iget-object v2, v2, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->values:Landroid/os/Parcelable;

    check-cast v2, Landroid/content/ContentValues;

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;

    iget-object v3, v3, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->selection:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_5
    move-exception p0

    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/storage/MediaStoreClient;->access$closeClient()V

    :cond_5
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
