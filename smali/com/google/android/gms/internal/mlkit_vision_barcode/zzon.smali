.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static isFoldingActivityAvailable:Z

.field public static isPRCFilmstripTransitionSupported:Z

.field public static final mPhotosVersion:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->mPhotosVersion:[I

    return-void
.end method

.method public static addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const-string p1, "start_gallery_from_secure_camera"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p1, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    if-nez p1, :cond_0

    new-instance p1, Lcom/motorola/camera/SecureDataHelper;

    invoke-direct {p1}, Lcom/motorola/camera/SecureDataHelper;-><init>()V

    sput-object p1, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    :cond_0
    sget-object p1, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string/jumbo p1, "{items:%s}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "security_items"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const-string p1, "com.google.android.apps.photos.api.secure_mode"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string p1, "com.google.android.apps.photos.api.secure_mode_ids"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :cond_5
    :goto_2
    return-void
.end method

.method public static getGalleryApplicationInfo(IZ)Landroid/content/pm/ApplicationInfo;
    .locals 3

    const/16 v0, 0x21

    :try_start_0
    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.motorola.cn.gallery"

    const-string v2, "com.google.android.apps.photos"

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "LaunchGalleryTask"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZ)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f010023

    const v2, 0x7f010024

    invoke-static {p1, p4, v2}, Landroidx/core/app/ActivityOptionsCompat$Api16Impl;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p1, p4, v2, v0, v0}, Landroidx/core/app/ActivityOptionsCompat$Api16Impl;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    sget-boolean p4, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p4

    const-string v2, "image/*"

    const-string v3, "video/*"

    const/4 v4, 0x1

    if-eqz p0, :cond_5

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.REVIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v3

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v8, "PROCESSING_URI"

    invoke-virtual {v7, v8}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const-string v6, "processing_uri_intent_extra"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {v5, p4, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->setGalleryPackage(Landroid/content/Intent;ZZZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v6, "image/jpeg"

    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v5, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V

    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v6

    invoke-direct {v1, v5, v4, v6, p1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    goto :goto_4

    :cond_3
    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v5, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const/high16 v6, 0x20000

    invoke-static {v6, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->getGalleryApplicationInfo(IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_5

    invoke-static {v5, p4, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->setGalleryPackage(Landroid/content/Intent;ZZZ)V

    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v6

    invoke-direct {v1, v5, v4, v6, p1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    :cond_5
    :goto_4
    if-nez v1, :cond_e

    new-instance v1, Landroid/content/Intent;

    if-nez p0, :cond_a

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.APP_GALLERY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x21

    invoke-static {v5}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m()Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v5

    const-string/jumbo v6, "{\n            CameraApp.\u2026LTER.toLong()))\n        }"

    goto :goto_5

    :cond_6
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    const-string/jumbo v6, "{\n            CameraApp.\u2026ESOLVED_FILTER)\n        }"

    :goto_5
    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_7

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_7

    if-eqz p4, :cond_8

    const-string v7, "com.motorola.cn.gallery"

    goto :goto_6

    :cond_8
    const-string v7, "com.google.android.apps.photos"

    :goto_6
    invoke-static {v6, v7}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v1, p4, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->setGalleryPackage(Landroid/content/Intent;ZZZ)V

    move p2, v4

    goto :goto_7

    :cond_9
    move p2, v0

    :goto_7
    if-nez p2, :cond_c

    invoke-static {v2, v3}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string p2, "makeMainSelectorActivity\u2026ent.CATEGORY_APP_GALLERY)"

    invoke-static {v1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    const-string p2, "android.intent.action.VIEW"

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p3

    if-nez p3, :cond_b

    goto :goto_8

    :cond_b
    move-object v2, v3

    :goto_8
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_c
    :goto_9
    new-instance p2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v0

    :cond_d
    invoke-direct {p2, v1, v4, v0, p1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    move-object v1, p2

    :cond_e
    return-object v1
.end method

.method public static final isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v2, "PROCESSING_URI"

    invoke-virtual {v1, v2}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZ)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v3, 0x20000

    invoke-static {v1, p0, v3}, Lkotlin/jvm/JvmClassMappingKt;->resolveActivityCompat(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    move v2, v0

    :goto_1
    return v2
.end method

.method public static final isPhotosProcessingSupported()Z
    .locals 5

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/high16 v0, 0x20000

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->getGalleryApplicationInfo(IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->mPhotosVersion:[I

    aget v3, v0, v2

    const/4 v4, 0x2

    if-gt v3, v4, :cond_2

    if-ne v3, v4, :cond_0

    aget v0, v0, v1

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    :cond_2
    :goto_0
    return v1
.end method

.method public static final isPhotosStabilizationSupported(Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->mPhotosVersion:[I

    aget v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-gt v1, v3, :cond_1

    if-ne v1, v3, :cond_0

    aget p0, p0, v2

    const/16 v1, 0x1a

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public static final setBrightnessForLaunch(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string v0, "activity.window"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/utility/ScreenBrightnessHelper;->getCurrentBrightness()F

    move-result p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "brightness"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public static setGalleryPackage(Landroid/content/Intent;ZZZ)V
    .locals 0

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/ComponentName;

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    sget-boolean p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->isFoldingActivityAvailable:Z

    if-eqz p2, :cond_1

    const-string p2, "com.motorola.cn.gallery.app.FoldingGalleryActivity"

    goto :goto_0

    :cond_1
    const-string p2, "com.motorola.cn.gallery.app.GalleryActivity"

    :goto_0
    const-string p3, "com.motorola.cn.gallery"

    invoke-direct {p1, p3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "start_gallery_from_camera"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string p1, "com.google.android.apps.photos"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-void
.end method

.method public static final start(Lcom/motorola/camera/CameraData;Landroidx/constraintlayout/utils/widget/ImageFilterButton;ZZZLandroidx/work/JobListenableFuture$1;)V
    .locals 10

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask$start$2;-><init>(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {v0, p2, p1, v9, p0}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
