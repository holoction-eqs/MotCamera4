.class public final Lcom/motorola/camera/storage/MediaStoreClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MEDIA_TYPES:Ljava/util/List;

.field public static client:Landroid/content/ContentProviderClient;

.field public static final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "images"

    const-string v1, "video"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->MEDIA_TYPES:Ljava/util/List;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final access$acquireClientIfNeeded()Landroid/content/ContentProviderClient;
    .locals 2

    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->client:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "getContext().contentResolver"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->client:Landroid/content/ContentProviderClient;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Provider not found"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static final access$closeClient()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->client:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/camera/storage/MediaStoreClient;->client:Landroid/content/ContentProviderClient;

    return-void
.end method

.method public static final access$translateThrowable(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/motorola/camera/storage/exception/DisconnectedException;

    invoke-direct {v0, p0}, Lcom/motorola/camera/storage/exception/DisconnectedException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    instance-of v1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "Volume "

    invoke-static {v0, v2}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_5

    const-string v2, " not found"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/motorola/camera/storage/exception/VolumeNotFoundException;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/storage/exception/VolumeNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    instance-of v1, p0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    if-nez v0, :cond_3

    const-string v0, "SecurityException"

    :cond_3
    const/4 v2, 0x3

    invoke-direct {v1, v2, v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_4
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/Exception;

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method public static final deleteMediaItem(Landroid/net/Uri;)I
    .locals 1

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->requireMediaItem(Landroid/net/Uri;)V

    new-instance v0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreDelete;

    invoke-direct {v0, p0}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreDelete;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroidx/transition/ViewOverlayApi14;->execute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final openMediaItem(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    const-string v0, "uri"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->requireMediaItem(Landroid/net/Uri;)V

    new-instance v0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreInsert;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/transition/ViewOverlayApi14;->execute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public static queryOrNull$default(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "uri"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->requireMediaStoreUri(Landroid/net/Uri;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;-><init>(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)V

    invoke-virtual {v1}, Landroidx/transition/ViewOverlayApi14;->execute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    :goto_1
    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public static requireMediaItem(Landroid/net/Uri;)V
    .locals 3

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->requireMediaStoreUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/storage/MediaStoreClient;->MEDIA_TYPES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "media"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "pathSegments[3]"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "uri must be a media item"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static requireMediaStoreUri(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "authority must be media"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "scheme must be content"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final updateMediaItem(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1

    const-string v0, "uri"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->requireMediaItem(Landroid/net/Uri;)V

    new-instance v0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreUpdate;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v0}, Landroidx/transition/ViewOverlayApi14;->execute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
