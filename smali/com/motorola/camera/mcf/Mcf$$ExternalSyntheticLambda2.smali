.class public final synthetic Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    sget-object p0, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFilesCoroutine:Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/Incomplete;

    xor-int/2addr v0, v4

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "getContext().filesDir"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/motorola/camera/storage/StorageUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->start()Z

    :cond_0
    sget-object p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/lens/LensApiHelper;->initialize()V

    return-void

    :pswitch_1
    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v3, v4

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v2, Lcom/motorola/camera/device/callables/GetCharacteristicsCallable;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/device/callables/GetCharacteristicsCallable;-><init>(Lcom/motorola/camera/device/callables/GetCharacteristicsListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    invoke-static {}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getMainDisplayRealSize()Landroid/graphics/Point;

    move-result-object p0

    const-string v0, "getMainDisplayRealSize()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->realSize:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->characteristicsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "mcfAllow.value"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznx;->INSTANCE:Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->initIfNot(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    :cond_3
    return-void

    :pswitch_2
    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->FSM_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)J

    :cond_4
    return-void

    :pswitch_3
    sget p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->$r8$clinit:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->motionPhotosUpdateLock()V

    return-void

    :pswitch_4
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getWatermarkPref().all"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "it.key"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    const-string v5, "ltr"

    invoke-static {v3, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    const-string v4, "rtl"

    invoke-static {v5, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_8
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->start()V

    return-void

    :pswitch_6
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_7
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_SMILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_8
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull()V

    return-void

    :pswitch_9
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/shared/PackageUtility;->getContentAiPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/shared/PackageUtility;->getImagerTuningName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.motcameradesktop"

    const-string v3, "com.motorola.camera3"

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/shared/PackageUtility;->cacheVersionForPackage([Ljava/lang/String;)V

    return-void

    :pswitch_a
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$NoI5kRW8wAUxmof6zipOuDt0Yf4()V

    return-void

    :pswitch_b
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$xIupuQUTqQxuXiSVYOE9eUefSmg()V

    return-void

    :pswitch_c
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->bgServiceModels:Ljava/util/ArrayList;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;

    :cond_9
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    invoke-static {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->loadAllModels(Z)V

    return-void

    :pswitch_d
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull()V

    return-void

    :pswitch_e
    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull()V

    return-void

    :pswitch_f
    sget p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->BG_PROCESSING_LIMIT:I

    sget-object p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iput-object v2, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    iput-object v2, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported:Ljava/lang/Boolean;

    invoke-static {}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported()Z

    return-void

    :pswitch_10
    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    return-void

    :pswitch_11
    sget-object p0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    if-nez v0, :cond_a

    monitor-exit p0

    goto :goto_5

    :catch_0
    :cond_a
    :goto_3
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    iget v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v4, :cond_b

    :try_start_1
    const-string v1, "SettingSoundPlayer"

    const-string v5, "waiting for load to complete before unloading"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_b
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->values()[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    move-result-object v0

    array-length v1, v0

    move v5, v3

    :goto_4
    if-ge v5, v1, :cond_c

    aget-object v6, v0, v5

    sget-object v7, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    iget-object v8, v7, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v8, v8, v3

    iget-object v7, v7, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    invoke-virtual {v7, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/media/SoundPool;->unload(I)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    aput-object v2, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    aput-object v2, v1, v4

    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->clear()V

    iput v3, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sput-object v2, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    :goto_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :pswitch_12
    sget-boolean p0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_7

    :cond_d
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->mPhotosVersion:[I

    aput v3, v1, v3

    aput v3, v1, v4

    const/16 v2, 0x21

    :try_start_4
    invoke-static {v2}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v2
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v5, "com.google.android.apps.photos"

    if-eqz v2, :cond_e

    :try_start_5
    invoke-static {}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m$1()Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_6

    :cond_e
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :goto_6
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v5, "info.versionName"

    invoke-static {v2, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/text/Regex;

    const-string v6, "\\."

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v2}, Lkotlin/text/Regex;->split(ILjava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_f

    aget-object v0, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v3

    aget-object v0, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v4
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_f
    :goto_7
    if-nez p0, :cond_10

    goto :goto_8

    :cond_10
    const/16 p0, 0x80

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->getGalleryApplicationInfo(IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_11

    const-string v0, "com.motorola.camera.filmstrip.transition"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->isPRCFilmstripTransitionSupported:Z

    :cond_11
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.motorola.cn.gallery"

    const-string v1, "com.motorola.cn.gallery.app.FoldingGalleryActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_12

    const/high16 v1, 0x20000

    invoke-static {p0, v0, v1}, Lkotlin/jvm/JvmClassMappingKt;->resolveActivityCompat(Landroid/content/pm/PackageManager;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    move v3, v4

    :cond_12
    sput-boolean v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->isFoldingActivityAvailable:Z

    :goto_8
    return-void

    :pswitch_13
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    monitor-enter v1

    :try_start_6
    iget v2, v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    if-ne v2, v0, :cond_13

    monitor-exit v1

    goto :goto_9

    :cond_13
    iput v4, v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_9
    return-void

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :pswitch_14
    invoke-static {}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->isSupported()Z

    return-void

    :pswitch_15
    sget-object p0, Lcom/motorola/camera/CameraIntentReceiver;->VIBRATE_PATTERN:[J

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQuickCaptureVibrationConfigs:[I

    aget v0, v0, v4

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/CameraIntentReceiver;->vibrateForQuickCapture(Landroid/content/Context;J)V

    return-void

    :pswitch_16
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$4OLCw5Gpeom7jKPBBcsAwiHrU4o()V

    return-void

    :goto_a
    sget-object p0, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v2, p0, Lcom/motorola/camera/settings/SettingsManager;->mAvailableCaptureRequestKeys:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_d

    :cond_14
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/motorola/camera/settings/SettingsManager;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v9}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_15
    iget-object v8, p0, Lcom/motorola/camera/settings/SettingsManager;->mAvailableCaptureRequestKeys:Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_16
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_17

    const-string p0, "SettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupAvailableCaptureRequestKeys dur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_d
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_18

    const-string p0, "SettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processCharacteristicsStage3 dur:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
