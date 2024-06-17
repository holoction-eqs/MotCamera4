.class public final Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/utility/InAppUpdateUtils;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-object v0

    .line 2
    :goto_0
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->$r8$classId:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    iget v0, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzc:I

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    if-ne v0, v4, :cond_1

    .line 5
    invoke-static {}, Lcom/google/android/play/core/appupdate/zzx;->defaultOptions()Lcom/google/android/play/core/appupdate/zzx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zza(Lcom/google/android/play/core/appupdate/zzx;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->startForInAppUpdate()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    .line 8
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    .line 9
    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    invoke-direct {p1, v1, v3}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(II)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    .line 10
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 11
    invoke-virtual {v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;

    move-result-object v5

    .line 12
    monitor-enter v5

    .line 13
    :try_start_0
    iget-object v6, v5, Lcom/google/android/play/core/appupdate/zzg;->zzb:Lcom/google/android/play/core/appupdate/zzc;

    .line 14
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v7, v6, Lcom/google/android/play/core/appupdate/zzc;->zza:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v8, "registerListener"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/motorola/camera/saving/XmpData$DocData;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v6, Lcom/google/android/play/core/appupdate/zzc;->zzb:Ljava/util/HashSet;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/google/android/play/core/appupdate/zzc;->zze()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    monitor-exit v5

    .line 17
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_LAST_CHECK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 18
    iget v0, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzd:I

    const/4 v5, 0x4

    if-eq v0, v4, :cond_9

    const/16 v6, 0xb

    if-eq v0, v6, :cond_8

    .line 19
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_LAST_AVAILABLE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    .line 20
    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 21
    check-cast v6, Ljava/lang/Integer;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 22
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 23
    check-cast v7, Ljava/lang/Boolean;

    const-string v8, "installedNewVersionFlag"

    invoke-static {v7, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const v8, 0x55d71eb

    if-ne v7, v8, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 24
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    .line 25
    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    invoke-direct {p1, v5, v5}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(II)V

    goto/16 :goto_6

    .line 26
    :cond_3
    :goto_3
    iget v5, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzc:I

    if-ne v5, v4, :cond_7

    .line 27
    invoke-static {}, Lcom/google/android/play/core/appupdate/zzx;->defaultOptions()Lcom/google/android/play/core/appupdate/zzx;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zza(Lcom/google/android/play/core/appupdate/zzx;)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    if-eqz v5, :cond_7

    .line 28
    iget-object v4, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 29
    iput-object p1, v4, Lcom/motorola/camera/utility/InAppUpdateUtils;->appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 30
    iget p1, p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzb:I

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "InAppUpdateUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "appUpdate - available version: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v6}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_PROMPT_TIMES_SHOWN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 34
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 35
    check-cast p1, Ljava/lang/Integer;

    const-string v0, "updatePromptTimesShown"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p1, v1, :cond_6

    move p1, v2

    goto :goto_5

    :cond_6
    move p1, v3

    :goto_5
    if-eqz p1, :cond_a

    .line 36
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 37
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    .line 38
    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    invoke-direct {p1, v2, v3}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(II)V

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 39
    iget-object p1, p1, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    .line 40
    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    invoke-direct {v0, v4, v3}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(II)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    goto :goto_7

    :cond_8
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 41
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    .line 42
    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    invoke-direct {p1, v5, v0}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(II)V

    goto :goto_6

    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;->this$0:Lcom/motorola/camera/utility/InAppUpdateUtils;

    .line 43
    iget-object p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->onStateUpdateChange:Lkotlin/jvm/functions/Function1;

    .line 44
    new-instance p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    invoke-direct {p1, v5, v0}, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;-><init>(II)V

    :goto_6
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_7
    return-void

    :catchall_0
    move-exception p0

    .line 45
    :try_start_3
    monitor-exit v6

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v5

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
