.class public final Lcom/motorola/camera/detector/ScanningEngine;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"


# static fields
.field public static sInstance:Lcom/motorola/camera/detector/ScanningEngine;


# instance fields
.field public mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

.field public final mCallbacks:Ljava/util/Set;

.field public mEngineStatus:I

.field public mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/detector/ScanningEngine;
    .locals 2

    const-class v0, Lcom/motorola/camera/detector/ScanningEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/detector/ScanningEngine;->sInstance:Lcom/motorola/camera/detector/ScanningEngine;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/detector/ScanningEngine;

    invoke-direct {v1}, Lcom/motorola/camera/detector/ScanningEngine;-><init>()V

    sput-object v1, Lcom/motorola/camera/detector/ScanningEngine;->sInstance:Lcom/motorola/camera/detector/ScanningEngine;

    :cond_0
    sget-object v1, Lcom/motorola/camera/detector/ScanningEngine;->sInstance:Lcom/motorola/camera/detector/ScanningEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    sget-object p1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionEnabled:[Z

    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->ALWAYS_AWARE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {p1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    if-nez p1, :cond_11

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ALWAYS_AWARE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    move p1, v1

    goto :goto_4

    :cond_4
    :goto_3
    move p1, v3

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionEnabled:[Z

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v0

    aget-boolean v0, v4, v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz p1, :cond_5

    iput-boolean v1, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    new-instance v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v3}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V

    iget-object p1, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_5
    new-instance p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    new-instance v0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeTimeBetweenScans:[I

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    aget v1, v4, v1

    sget-object v4, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v4, v4, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionBackoff:Z

    invoke-direct {p1, v0, v1, v4}, Lcom/motorola/camera/detector/MLKitBarcodeDetector;-><init>(Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;IZ)V

    iput-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    iput-boolean v3, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    iput-object v2, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    iput v3, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    goto/16 :goto_7

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz p1, :cond_11

    iput-boolean v1, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    new-instance v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v3}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V

    iget-object p1, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iput-object v2, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v0

    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz p1, :cond_8

    iput-boolean v1, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    new-instance v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v3}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V

    iget-object p1, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iput-object v2, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    :cond_8
    iput v1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    goto/16 :goto_7

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v4

    if-eqz v4, :cond_d

    iput-object v2, p0, Lcom/motorola/camera/detector/ScanningEngine;->mLastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    sget-object p1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionEnabled:[Z

    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_b

    move p1, v3

    goto :goto_6

    :cond_b
    :goto_5
    move p1, v1

    :goto_6
    if-eqz p1, :cond_c

    sget-object p1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->ALWAYS_AWARE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {p1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result p1

    if-nez p1, :cond_c

    move v1, v3

    :cond_c
    if-eqz v1, :cond_11

    iget p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz p0, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mLastCaptureTimeStamp:J

    iput-boolean v3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    goto :goto_7

    :cond_d
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz p0, :cond_11

    iput-boolean v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    goto :goto_7

    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_f
    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter p1

    :try_start_4
    iget-object v0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    if-eqz p1, :cond_10

    iput-boolean v1, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanAllowed:Z

    new-instance v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v3}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V

    iget-object p1, p1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iput-object v2, p0, Lcom/motorola/camera/detector/ScanningEngine;->mBarcodeDetector:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    :cond_10
    iput v1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mEngineStatus:I

    :cond_11
    :goto_7
    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method
