.class public final Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final mShotType:Lcom/motorola/camera/ShotType;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ShotType;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    return-void
.end method

.method public static handleStorageFull()V
    .locals 2

    .line 1
    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    .line 2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    .line 7
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 8
    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull(Ljava/lang/Integer;)V

    return-void
.end method

.method public static handleStorageFull(Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/AlertPopup$StorageFullPopupData;-><init>(Ljava/lang/Integer;)V

    new-instance p0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x1040009

    iput p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    .line 10
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 11
    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p1, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3
    const-class p1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p1

    :try_start_0
    sget v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxConcurrentCapturesSystemProp:I

    if-lez v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->captureRecordSize()I

    move-result v1

    .line 4
    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 5
    iget-object v2, v2, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 6
    sget v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxFallBackCapturesSystemProp:I

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->isFallBackScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxFallBackCount:I

    goto :goto_2

    :cond_4
    move v2, v0

    .line 8
    :goto_2
    sget v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxConcurrentCapturesSystemProp:I

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_5

    move v1, p3

    goto/16 :goto_7

    :cond_5
    move v1, v0

    goto/16 :goto_7

    .line 9
    :cond_6
    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseAppShutterControl:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x23

    .line 10
    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_8

    :cond_7
    move v1, p3

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    if-nez v1, :cond_9

    .line 11
    monitor-exit p1

    move v1, p3

    goto :goto_8

    :cond_9
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->captureRecordSize()I

    move-result v1

    .line 12
    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 13
    iget-object v2, v2, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getMaxAllowedJobs(Lcom/motorola/camera/mcf/Mcf$SceneMode;)I

    move-result v3

    sget v4, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxFallBackCapturesSystemProp:I

    if-lez v4, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->isFallBackAllowed()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 15
    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxFallBackCount:I

    goto :goto_4

    :cond_b
    move v4, v0

    :goto_4
    add-int/2addr v3, v4

    if-ge v1, v3, :cond_c

    move v1, p3

    goto :goto_5

    :cond_c
    move v1, v0

    .line 16
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-wide v5, Lcom/motorola/camera/saving/ImageCaptureManager;->mLastCaptureTimestamp:J

    sub-long/2addr v3, v5

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->getSnapshotMinInterval(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-lez v2, :cond_d

    move v2, p3

    goto :goto_6

    :cond_d
    move v2, v0

    :goto_6
    and-int/2addr v1, v2

    :goto_7
    monitor-exit p1

    :goto_8
    if-nez v1, :cond_e

    const-string p0, "WaitForMemoryRunnable"

    const-string p1, "Cannot do next capture, queue is full, aborting"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto/16 :goto_c

    :catchall_0
    move-exception p0

    .line 18
    monitor-exit p1

    throw p0

    .line 19
    :cond_e
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt$$Lambda$1;

    invoke-direct {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt$$Lambda$1;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-static {v1, p1}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt$$Lambda$1;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    .line 20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBgService()Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_a

    :cond_10
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 21
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 22
    check-cast v4, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v4, v5

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isRawSuperNight()Z

    move-result v5

    if-eqz v5, :cond_11

    mul-int/lit8 v4, v4, 0x2

    goto :goto_9

    :cond_11
    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    :goto_9
    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->maxNumberOfRequiredFrames()I

    move-result v3

    int-to-long v5, v3

    int-to-long v3, v4

    mul-long/2addr v5, v3

    invoke-virtual {v2}, Lcom/motorola/camera/ShotType;->getMinimumFreeBytes()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getPrimaryMediaVolume()Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_12

    goto :goto_a

    :cond_12
    move p3, v0

    .line 23
    :cond_13
    :goto_a
    sget-boolean v2, Lcom/motorola/camera/storage/MediaVolumesHolder;->isFreeBytesUpdated:Z

    if-eqz v1, :cond_16

    if-eqz p3, :cond_16

    .line 24
    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt$$Lambda$1;->arg$0:Z

    .line 25
    sget-object p3, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable$1;->$SwitchMap$com$motorola$camera$ShotType:[I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p3, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_c

    :pswitch_0
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_c

    :pswitch_1
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    if-nez p1, :cond_14

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    goto :goto_b

    :cond_14
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CURRENT_MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    :goto_b
    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_c

    :pswitch_2
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->canSaveSingleShot(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 26
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 27
    iput-boolean v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    .line 28
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_c

    :cond_15
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_c

    :cond_16
    if-eqz v2, :cond_17

    .line 29
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull()V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_c

    :cond_17
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 30
    :goto_c
    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
