.class public final Lcom/motorola/camera/provider/photos/PhotosProviderCaller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PHOTOS_AUTHORITY_URI:Landroid/net/Uri;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsTrustedAuthority:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.google.android.apps.photos.partnercontentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->PHOTOS_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/CameraApp;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/motorola/camera/provider/photos/TrustedPartners;

    invoke-direct {v1, p1, v0}, Lcom/motorola/camera/provider/photos/TrustedPartners;-><init>(Landroid/content/Context;Ljava/util/HashSet;)V

    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.apps.photos.partnercontentprovider"

    :goto_0
    invoke-virtual {v1, p1}, Lcom/motorola/camera/provider/photos/TrustedPartners;->isTrustedAuthority(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->mIsTrustedAuthority:Z

    if-nez p1, :cond_1

    const-string p0, "PhotosProviderCaller"

    const-string p1, "Application is not authorized to access the content. Google Photos may be disabled or not available"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final applyEnhance(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    const v1, 0x7f12038d

    iget-object v2, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "partner_authority"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "output_uri"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p2, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->PHOTOS_AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "applyEnhance"

    invoke-virtual {p0, p2, v1, v0}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->callContentResolver(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "PhotosProviderCaller"

    const-string p1, "Bundle returned from PartnerContentProvider was null, enhance failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final declared-synchronized callContentResolver(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->mIsTrustedAuthority:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "PhotosProviderCaller"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0
.end method
