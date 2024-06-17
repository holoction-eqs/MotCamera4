.class public final Lcom/google/android/play/core/appupdate/zzr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzb:Lcom/motorola/camera/saving/XmpData$DocData;

.field public static final zzc:Landroid/content/Intent;


# instance fields
.field public final zza:Lcom/google/android/play/core/appupdate/internal/zzx;

.field public final zzd:Ljava/lang/String;

.field public final zze:Landroid/content/Context;

.field public final zzf:Lcom/google/android/play/core/appupdate/zzt;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v1, "AppUpdateService"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/saving/XmpData$DocData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/motorola/camera/saving/XmpData$DocData;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.install.BIND_UPDATE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/appupdate/zzr;->zzc:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/zzt;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzr;->zzf:Lcom/google/android/play/core/appupdate/zzt;

    sget-object p2, Lcom/google/android/play/core/appupdate/internal/zzab;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string p2, "com.android.vending"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_4

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p2, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    :try_start_1
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/16 v4, 0xb

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catch_0
    const-string v3, ""

    :goto_1
    const-string v4, "8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v5, "dev-keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v5, "test-keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    new-array p2, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/google/android/play/core/appupdate/internal/zzab;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "PlayCore"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, v1, Lcom/motorola/camera/saving/XmpData$DocData;->mData:Ljava/lang/String;

    const-string v3, "Phonesky package is not signed -- possibly self-built package. Could not verify."

    invoke-static {v1, v3, p2}, Lcom/motorola/camera/saving/XmpData$DocData;->zzf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_5
    :goto_3
    if-eqz v0, :cond_7

    new-instance p2, Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object p1, v0

    :cond_6
    sget-object v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/motorola/camera/saving/XmpData$DocData;

    sget-object v1, Lcom/google/android/play/core/appupdate/zzr;->zzc:Landroid/content/Intent;

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzx;-><init>(Landroid/content/Context;Lcom/motorola/camera/saving/XmpData$DocData;Landroid/content/Intent;)V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    :cond_7
    return-void
.end method

.method public static zzb(Lcom/google/android/play/core/appupdate/zzr;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzr;->zze:Landroid/content/Context;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzr;->zzi()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "package.name"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p0, p1, [Ljava/lang/Object;

    sget-object p1, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/motorola/camera/saving/XmpData$DocData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x6

    const-string v2, "PlayCore"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/saving/XmpData$DocData;->mData:Ljava/lang/String;

    const-string v1, "The current version of the app could not be retrieved"

    invoke-static {p1, v1, p0}, Lcom/motorola/camera/saving/XmpData$DocData;->zzf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string p1, "app.version.code"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method public static zzi()Landroid/os/Bundle;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/google/android/play/core/appupdate/internal/zzi;->zzc:Ljava/util/HashMap;

    const-class v2, Lcom/google/android/play/core/appupdate/internal/zzi;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/google/android/play/core/appupdate/internal/zzi;->zzc:Ljava/util/HashMap;

    const-string v4, "app_update"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x2afc

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "java"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    const-string v2, "java"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "playcore_version_code"

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "native"

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "native"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "playcore_native_version"

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string v2, "unity"

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "unity"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "playcore_unity_version"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "playcore.version.code"

    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
