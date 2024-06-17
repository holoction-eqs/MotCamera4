.class public final Lcom/motorola/camera/utility/InAppUpdateUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# instance fields
.field public final appContext:Landroid/content/Context;

.field public appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

.field public final appUpdateManager$delegate:Lkotlin/SynchronizedLazyImpl;

.field public bytesDownloaded:J

.field public bytesToDownload:J

.field public final context:Landroid/app/Activity;

.field public installErrorCode:I

.field public isInstallingUpdate:Z

.field public final onStateUpdateChange:Lkotlin/jvm/functions/Function1;

.field public updateDownloaded:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    new-instance p2, Landroidx/window/core/Version$bigInteger$2;

    const/16 v0, 0x12

    invoke-direct {p2, p0, v0}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v0, p2}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateManager$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final completeUpdate()V
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->isInstallingUpdate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;

    move-result-object p0

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzg;->zzc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/zzg;->zza:Lcom/google/android/play/core/appupdate/zzr;

    iget-object p0, v2, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    if-nez p0, :cond_1

    const/16 p0, -0x9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/motorola/camera/saving/XmpData$DocData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "PlayCore"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/saving/XmpData$DocData;->mData:Ljava/lang/String;

    const-string v3, "onError(%d)"

    invoke-static {v1, v3, v0}, Lcom/motorola/camera/saving/XmpData$DocData;->zzf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    new-instance p0, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "completeUpdate(%s)"

    sget-object v3, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/motorola/camera/saving/XmpData$DocData;

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v9}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v10, Lcom/google/android/play/core/appupdate/zzm;

    const/4 v6, 0x1

    move-object v1, v10

    move-object v3, v9

    move-object v4, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/play/core/appupdate/zzm;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;I)V

    new-instance v0, Lcom/google/android/play/core/appupdate/zzm;

    const/4 v11, 0x2

    move-object v6, v0

    move-object v7, p0

    move-object v8, v9

    invoke-direct/range {v6 .. v11}, Lcom/google/android/play/core/appupdate/zzm;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final finishUpdateManager()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/play/core/appupdate/zzg;->zzb:Lcom/google/android/play/core/appupdate/zzc;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v3, "unregisterListener"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/play/core/appupdate/zzc;->zzb:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/play/core/appupdate/zzc;->zze()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateManager$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/appupdate/zzg;

    return-object p0
.end method

.method public final onStateUpdate(Lcom/google/android/play/core/install/zza;)V
    .locals 2

    iget-wide v0, p1, Lcom/google/android/play/core/install/zza;->zzc:J

    iput-wide v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesToDownload:J

    iget-wide v0, p1, Lcom/google/android/play/core/install/zza;->zzb:J

    iput-wide v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesDownloaded:J

    iget v0, p1, Lcom/google/android/play/core/install/zza;->zzd:I

    iput v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    const/4 v1, 0x4

    iget p1, p1, Lcom/google/android/play/core/install/zza;->zza:I

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(II)V

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final startForInAppUpdate()V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_DOWNLOAD_STARTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;

    move-result-object v1

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzx;->defaultOptions()Lcom/google/android/play/core/appupdate/zzx;

    move-result-object v2

    const/16 v5, 0x10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->context:Landroid/app/Activity;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zza(Lcom/google/android/play/core/appupdate/zzx;)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    iget-boolean p0, v0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzp:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v1, v0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzp:Z

    invoke-virtual {v0, v2}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zza(Lcom/google/android/play/core/appupdate/zzx;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :cond_3
    :goto_1
    return-void
.end method
