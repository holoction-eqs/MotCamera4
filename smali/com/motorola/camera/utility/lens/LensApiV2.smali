.class public final Lcom/motorola/camera/utility/lens/LensApiV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/utility/lens/LensApiWrapper;


# static fields
.field public static final GOOGLE_LENS_DATA:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isAvailable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/utility/lens/LensApiV2;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApiV2;->TAG:Ljava/lang/String;

    const-string v0, "google://lens"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(\"google://lens\")"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/utility/lens/LensApiV2;->GOOGLE_LENS_DATA:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final getStatus()I
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/utility/lens/LensApiV2;->isAvailable:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isAvailable(Lcom/motorola/camera/utility/lens/LensApiHelper$initialize$1;)Ljava/lang/Object;
    .locals 8

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/utility/lens/LensApiV2;->GOOGLE_LENS_DATA:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lkotlin/jvm/JvmClassMappingKt;->resolveActivityCompat(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const/16 v4, 0x21

    invoke-static {v4}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/motorola/camera/utility/ActivityUtilKt$$ExternalSyntheticApiModelOutline0;->m()Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/motorola/camera/utility/ActivityUtilKt$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    const-wide/32 v6, 0x11f4fb4b

    cmp-long p1, v4, v6

    if-ltz p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Lens activity available: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", valid version: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/utility/lens/LensApiV2;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/motorola/camera/utility/lens/LensApiV2;->isAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final launch(Landroid/app/Activity;Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;)V
    .locals 1

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiV2;->GOOGLE_LENS_DATA:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x7

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final onLaunchResult(I)Z
    .locals 3

    invoke-static {}, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;->values()[Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    iget v2, v1, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;->value:I

    if-ne v2, p1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;->RESULT_UNKNOWN_ERROR:Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    :cond_2
    sget-object p0, Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;->RESULT_OK:Lcom/motorola/camera/utility/lens/LensApiV2$Companion$LaunchResult;

    if-eq v0, p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error launching Lens "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiV2;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p0
.end method
