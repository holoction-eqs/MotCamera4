.class public final Lcom/motorola/camera/Controller;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/EventListener;
.implements Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;
.implements Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;


# instance fields
.field public mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

.field public mActivityChanging:Z

.field public final mActivityContext:Landroid/app/Activity;

.field public mCalibrationDataDebugUiListener:Landroidx/work/WorkQuery$Builder;

.field public final mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

.field public mCanShowDialogs:Z

.field public mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

.field public final mCommandLineReceiver:Lcom/motorola/camera/CommandLineReceiver;

.field public mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

.field public volatile mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

.field public mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

.field public final mHandler:Landroid/os/Handler;

.field public mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

.field public mInitOnResumeState:I

.field public volatile mIsAllowFolding:Z

.field public volatile mIsIdle:Z

.field public mIsSplitScreen:Z

.field public mIsUiResumed:Z

.field public mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

.field public mLocation:Lcom/motorola/camera/LocationManager;

.field public final mLock:Ljava/lang/Object;

.field public mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

.field public mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

.field public mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

.field public final mMultiCameraListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

.field public volatile mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

.field public volatile mPendingIntent:Landroid/content/Intent;

.field public mRegistered:Z

.field public final mRootView:Landroid/view/ViewGroup;

.field public mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

.field public final mSensorEventListener:Lcom/motorola/camera/mcf/Mcf$1;

.field public mShouldHideWhenLocked:Z

.field public mStorageChangedEventDetector:Lcom/motorola/camera/fsm/ChangeEvent;

.field public mUI:Lcom/motorola/camera/ui/UIManager;

.field public final mUXDumpReceiver:Lcom/motorola/camera/UXDumpReceiver;

.field public mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/Controller$ActivityCallbackInterface;)V
    .locals 7

    const-string v0, "MotoCameraController"

    const-string v1, "parseJson dur:"

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    const/4 v4, 0x1

    iput v4, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mIsIdle:Z

    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    iput-boolean v3, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/motorola/camera/Controller;->mLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/fsm/ChangeEvent;

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    new-instance v5, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    invoke-direct {v5, p0}, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;-><init>(Lcom/motorola/camera/Controller;)V

    iput-object v5, p0, Lcom/motorola/camera/Controller;->mMultiCameraListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    new-instance v5, Lcom/motorola/camera/mcf/Mcf$1;

    invoke-direct {v5, p0, v4}, Lcom/motorola/camera/mcf/Mcf$1;-><init>(Ljava/lang/Object;I)V

    iput-object v5, p0, Lcom/motorola/camera/Controller;->mSensorEventListener:Lcom/motorola/camera/mcf/Mcf$1;

    iput-object p3, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {p3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object p2, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result p3

    sget-object p4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p4, p4, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    invoke-static {p1, p2, v3, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzol;->createLayoutManager(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;ZZZ)Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-static {p1}, Lcom/motorola/camera/JsonConfig;->parseJson(Landroid/content/Context;)V

    sget-boolean p4, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, p2

    invoke-virtual {p4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "Error: JSON parsing exception "

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, v3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    new-instance p2, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ActivityStarter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/motorola/camera/CommandLineReceiver;

    invoke-direct {p1, p0}, Lcom/motorola/camera/CommandLineReceiver;-><init>(Lcom/motorola/camera/EventListener;)V

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/CommandLineReceiver;

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/motorola/camera/UXDumpReceiver;

    invoke-direct {p1}, Lcom/motorola/camera/UXDumpReceiver;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mUXDumpReceiver:Lcom/motorola/camera/UXDumpReceiver;

    :cond_2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p3, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p3, p2}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->MODE_MENU_LIST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    iget-object p4, p3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p4, p3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    iget-object p4, p3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p4, p3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object p4, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result p0

    sget-object p4, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v1, :cond_5

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string p4, "Original"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/motorola/camera/meishe/MeisheEffects;->mKeepLiveFilter:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-static {p4, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_1
    sput-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mKeepLiveFilter:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object p0, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto :goto_2

    :cond_5
    iget-object p0, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    :cond_6
    :goto_2
    iget-object p0, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_7

    iget-object p0, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v4, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_7
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->HDR_WRAPPER:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->resetVstabIhcSettings()V

    return-void
.end method


# virtual methods
.method public final activeRender(Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public final checkFilesGoVersion()V
    .locals 12

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.google.android.apps.nbu.files"

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x68ac

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_LAST:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v7, 0x6ddd00

    add-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->FILES_GO_DIALOG_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-ltz v8, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    move v6, v2

    :cond_2
    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v1, 0x3

    if-le v6, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const v5, 0x7f1200ec

    iput v5, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v5, 0x7f12011a

    iput v5, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    new-instance v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/Controller;I)V

    iput-object v5, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f12014e

    iput p0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance p0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v2, 0x1b

    invoke-direct {p0, v2}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f12012d

    iput p0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final checkIntent(Landroid/content/Intent;ZZ)V
    .locals 5

    new-instance v0, Lcom/motorola/camera/settings/CaptureIntent;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/settings/CaptureIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ON_LAUNCH_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->getOnLaunchAction()Lcom/motorola/camera/launch/OnLaunchAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v1, 0x0

    const-string v2, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingMode()I

    move-result p0

    const/16 p2, 0x18

    const/16 p3, 0x12

    const/4 v3, 0x6

    if-eq p0, p2, :cond_0

    if-eq p0, p3, :cond_0

    if-eq p0, v3, :cond_0

    const/16 p2, 0x13

    if-eq p0, p2, :cond_0

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    const/16 p2, 0x29

    if-eq p0, p2, :cond_0

    const/16 p2, 0x27

    if-ne p0, p2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result p2

    const/16 v4, 0x3e8

    if-eq p2, v4, :cond_2

    if-eq p2, p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->resetSliderMenuMode()V

    :cond_2
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(IZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingCameraFacing(I)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isQuickDrawLaunch()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p2, p3, :cond_6

    goto :goto_0

    :cond_4
    if-ne p0, v3, :cond_6

    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->GAO_DING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p3, v3}, Lcom/motorola/camera/settings/ModeSettingsHelper;->adjustSliderMode(II)V

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p2, 0x1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    const-string p0, "motorola.intent.category.QUICK_LAUNCH"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public final createErrorDialog(Ljava/lang/String;ZIZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    const v2, 0x1030239

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-boolean p1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductWhiteLabel()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x55d71eb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "https://help.motorola.com/hc/apps/camera/index.php?m=&v=%s&t=help_hardware_error"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Comparable;I)V

    const p1, 0x7f120110

    invoke-virtual {v0, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p2, p4}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Controller;ZI)V

    const p0, 0x7f12012d

    invoke-virtual {p1, p0, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2, v1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Controller;ZI)V

    const p0, 0x7f120111

    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOnRotationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result p0

    return p0
.end method

.method public final displayCameraErrorDialog(Z)V
    .locals 11

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCamerasErrors()Lcom/motorola/camera/utility/Error;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, v0, Lcom/motorola/camera/utility/Error;->mSensor:I

    move v3, v1

    :goto_0
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x2

    rem-long/2addr v4, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-le v3, v2, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    const/high16 v4, 0x1000000

    const/high16 v5, 0x2000000

    const/high16 v6, 0x4000000

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result p1

    const v2, 0x7f120126

    goto :goto_6

    :cond_4
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    array-length v7, v3

    move v8, v1

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v3, v8

    sget-object v10, Lcom/motorola/camera/settings/CameraType;->BACK_SLAVE:Lcom/motorola/camera/settings/CameraType;

    if-ne v9, v10, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackSlaveCamera()Z

    move-result v3

    xor-int/2addr v3, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_3
    if-nez v3, :cond_7

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager;->mCameraTypeErrorSet:Landroid/util/ArraySet;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->SECONDARY_CAMERA_TYPES:Ljava/util/Set;

    invoke-static {v7, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_8

    :cond_7
    if-nez p1, :cond_8

    const v2, 0x7f12013f

    move p1, v6

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontWideCamera()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMainCamera()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    return-void

    :cond_b
    :goto_4
    const v2, 0x7f12010b

    move p1, v5

    goto :goto_6

    :cond_c
    :goto_5
    const v2, 0x7f120142

    move p1, v4

    :goto_6
    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductWhiteLabel()Z

    move-result v3

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    if-eqz v3, :cond_10

    if-eq p1, v4, :cond_f

    if-eq p1, v5, :cond_e

    if-eq p1, v6, :cond_d

    const p1, 0x7f120125

    goto :goto_7

    :cond_d
    const p1, 0x7f12013e

    goto :goto_7

    :cond_e
    const p1, 0x7f12010a

    goto :goto_7

    :cond_f
    const p1, 0x7f120141

    :goto_7
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_10
    if-eq p1, v4, :cond_13

    if-eq p1, v5, :cond_12

    if-eq p1, v6, :cond_11

    const p1, 0x7f120124

    goto :goto_8

    :cond_11
    const p1, 0x7f12013d

    goto :goto_8

    :cond_12
    const p1, 0x7f120109

    goto :goto_8

    :cond_13
    const p1, 0x7f120140

    :goto_8
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    invoke-virtual {p0, p1, v1, v2, v1}, Lcom/motorola/camera/Controller;->createErrorDialog(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public final getCameraErrorMessage()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCamerasErrors()Lcom/motorola/camera/utility/Error;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductWhiteLabel()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1200fc

    goto :goto_0

    :cond_0
    const v1, 0x7f1200fb

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->initDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mDisplayCutoutProvider:Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    return-object p0
.end method

.method public final getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    return-object p0
.end method

.method public final getOrientation()Lcom/motorola/camera/shared/OrientationEvent;
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    new-instance v2, Lcom/motorola/camera/shared/OrientationEvent;

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopModeWithLidClosed()Z

    move-result v4

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/motorola/camera/shared/OrientationEvent;-><init>(Landroid/app/Activity;IZZ)V

    iput-object v2, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 24

    new-instance v0, Lcom/google/common/base/Joiner;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_OPT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v17, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v18, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v19, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v20, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v21, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v22, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v23, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v23}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getUiContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final handleIntent(Landroid/content/Intent;)V
    .locals 14

    new-instance v0, Lcom/motorola/camera/settings/CaptureIntent;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/motorola/camera/settings/CaptureIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/CaptureIntent;->getMatchingCameraFacing(I)I

    move-result v3

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v5

    const-string v6, "motorola.intent.category.QUICK_LAUNCH"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v3, v4, :cond_0

    if-ne v2, v5, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isVoiceAssistantCapture()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v2, "motorola.camera.intent.extra.TRIGGERED_LAUNCH_ACTION"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CAPTURE_TRIGGER"

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "TIMER"

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->getTimerVoiceAssistant()I

    move-result v0

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v6, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const-string v10, "FACING"

    const-string v11, "MODE"

    const-string v12, "SWITCH_CASE"

    const-string v13, "MODE_DIRECTION"

    if-eq v3, v4, :cond_1

    if-eq v2, v5, :cond_1

    invoke-virtual {v6, v11, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v13, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v6, v12, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v6, v10, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "INTENT_LAUNCH"

    invoke-virtual {v6, v0, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "USE_CASE"

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v6, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_1
    if-eq v2, v5, :cond_3

    invoke-virtual {v6, v11, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "motorola.camera.intent.action.CINEMAGRAPH_CAMERA"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-virtual {v6, v13, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v6, v12, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v13, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    invoke-virtual {v6, v12, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v6, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_4

    if-eq v3, v4, :cond_4

    invoke-virtual {v6, v10, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v6, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_4
    const-string p0, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final handlePermissionRequired(Landroid/os/Bundle;)V
    .locals 14

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    const/4 v3, 0x5

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const-string v4, "perm_request_code"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-boolean v4, v0, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    if-nez v4, :cond_13

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v4, v4, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz v4, :cond_1

    if-ne p1, v3, :cond_13

    :cond_1
    const-string v4, "android.permission.CAMERA"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "android.permission.RECORD_AUDIO"

    const/4 v8, 0x4

    if-eq p1, v6, :cond_3

    if-eq p1, v8, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_3
    sget-object v9, Lcom/motorola/camera/PermissionsManager;->MEDIA_PERMISSIONS:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v6

    new-array v10, v10, [Ljava/lang/String;

    aput-object v4, v10, v5

    move v11, v5

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_4

    add-int/lit8 v12, v11, 0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v10, v12

    move v11, v12

    goto :goto_0

    :cond_4
    move-object v9, v10

    :goto_1
    if-nez v9, :cond_5

    move v12, v5

    goto :goto_3

    :cond_5
    array-length v10, v9

    move v11, v5

    move v12, v11

    :goto_2
    if-ge v11, v10, :cond_6

    aget-object v13, v9, v11

    invoke-virtual {v2, v13}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v13

    or-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v12, :cond_7

    goto/16 :goto_8

    :cond_7
    iget-boolean v0, v0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    check-cast p0, Lcom/motorola/camera/Camera;

    iput-boolean v6, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-ne p1, v3, :cond_8

    new-instance p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    iput v5, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->backgroundColor:I

    const v0, 0x7f12013a

    iput v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f120143

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageHTML:Ljava/lang/String;

    iput-boolean v5, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v0, 0x7f120102

    iput v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v6}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f120100

    iput p0, p1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_8
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    iput-boolean v5, v0, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    iput-boolean v5, v0, Lcom/motorola/camera/PermissionsManager;->mOptionalPermissionsDenied:Z

    if-eq p1, v6, :cond_c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    if-eq p1, v8, :cond_a

    const/4 v1, 0x7

    if-eq p1, v1, :cond_9

    goto/16 :goto_9

    :cond_9
    iput-boolean v6, v0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_a
    iput-boolean v6, v0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_b
    iput-boolean v6, v0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    sget-object v0, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_9

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/motorola/camera/PermissionsManager;->PERMISSIONS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    sget-object v7, Lcom/motorola/camera/PermissionsManager;->MEDIA_PERMISSIONS:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_5

    :cond_e
    move v7, v5

    goto :goto_6

    :cond_f
    :goto_5
    move v7, v6

    :goto_6
    if-eqz v7, :cond_d

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_10

    move v7, v6

    goto :goto_7

    :cond_10
    move v7, v5

    :goto_7
    if-nez v7, :cond_d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_9

    :cond_12
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-boolean v6, v0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_9

    :cond_13
    :goto_8
    new-instance p1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    :goto_9
    return-void
.end method

.method public final initDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result p0

    const/16 v0, 0x12

    if-eqz p0, :cond_0

    new-instance p0, Lcom/motorola/camera/settings/CacheBehavior;

    invoke-direct {p0, v0}, Lcom/motorola/camera/settings/CacheBehavior;-><init>(I)V

    return-object p0

    :cond_0
    :try_start_0
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutsCoordinates:Lorg/json/JSONArray;

    if-eqz p0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "y"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    new-instance v3, Landroid/graphics/PointF;

    double-to-float v4, v4

    double-to-float v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "MotoCameraController"

    const-string v2, "Improperly formatted cutout display values array"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    new-instance p0, Lcom/motorola/camera/settings/CacheBehavior;

    invoke-direct {p0, v0}, Lcom/motorola/camera/settings/CacheBehavior;-><init>(I)V

    return-object p0
.end method

.method public final isCliDisplay()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    check-cast p0, Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final isSplitScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    return p0
.end method

.method public final onBackInvoked()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public final onRotationChanged(II)V
    .locals 5

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget p1, p1, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    :cond_0
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->hasNaturalOrientationFeature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/motorola/camera/Util;->isCLIState(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_2
    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    :cond_3
    move v1, p2

    :goto_1
    if-nez p1, :cond_4

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_4
    iget-boolean p1, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopModeWithLidClosed()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v0

    goto :goto_2

    :cond_5
    move p1, p2

    :goto_2
    iget-object v2, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/motorola/camera/Util;->isCLIState(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_7

    if-nez v1, :cond_7

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v0, p2

    :cond_7
    :goto_3
    invoke-virtual {v2, v0}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->switchSensor(Z)V

    :cond_8
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ORIENTATION_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final playHaptic(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public final registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/shared/OrientationEvent;->mOnRotationChangeListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v2, 0x15

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final registerHingeAngleListeners(Ljava/lang/Boolean;)V
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mSensorEventListener:Lcom/motorola/camera/mcf/Mcf$1;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    invoke-virtual {v0, p0, v1, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerStateChangeListener(Ljava/util/Collection;)V
    .locals 1

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setLayoutChanged(ZZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    iget-boolean p2, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    invoke-static {p2, v0, p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzol;->createLayoutManager(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;ZZZ)Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TRIPOD_LAYOUT_CHANGED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    iget-object p1, p1, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->onConfigurationChanged(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateAutoGestureCapture()V

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/shared/OrientationEvent;->onOrientationChanged(I)V

    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopModeWithLidClosed()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/motorola/camera/Util;->isCLIState(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mOrientationEventListener:Lcom/motorola/camera/shared/OrientationEvent;

    iget-boolean p0, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->switchSensor(Z)V

    :cond_4
    return-void
.end method

.method public final setScreenParameters(Z)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v3, v0, v2, v1}, Lcom/motorola/camera/CameraApp;->setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v2, v2, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    invoke-static {v2}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->updateDisplayCutout(Landroid/content/Context;I)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->onConfigurationChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final shouldHaveSecureMediaIds()Z
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".cli_continuity"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/motorola/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Camera;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_0
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 12

    const-string v0, "errorMessage:"

    const-string v1, "sensor error, error code: "

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isAnyCameraFacingAllowed()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getCameraErrorMessage()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1200fd

    invoke-virtual {p0, p1, v5, v0, v4}, Lcom/motorola/camera/Controller;->createErrorDialog(Ljava/lang/String;ZIZ)V

    const-string p1, "MotoCameraController"

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getCameraErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_9

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-nez v2, :cond_25

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_7

    :cond_2
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v3

    const/4 v6, 0x2

    if-eqz v3, :cond_5

    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mIsIdle:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    if-eq p1, v6, :cond_3

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFamilyMode(I)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    goto/16 :goto_b

    :cond_5
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object p1, Lcom/motorola/camera/utility/ColdStartHelper;->INSTANCE:Lcom/motorola/camera/utility/ColdStartHelper;

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    :cond_6
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    const/4 v7, 0x3

    if-eqz v3, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    invoke-direct {v0, v7}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    goto :goto_0

    :cond_7
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_GET_CHARACTERISTICS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v8

    const/4 v9, 0x4

    if-eqz v8, :cond_8

    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_CLI_DISPLAY"

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    invoke-direct {v0, v9}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    goto :goto_0

    :cond_8
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v9}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mMultiCameraListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    :cond_9
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v10

    if-nez v10, :cond_24

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraInit;->INIT_PERMISSIONS_OPT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v10}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v10

    if-nez v10, :cond_24

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v10}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v10

    if-nez v10, :cond_24

    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v8

    if-nez v8, :cond_24

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto/16 :goto_6

    :cond_a
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v8

    const/4 v10, 0x6

    if-eqz v8, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v10}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    :cond_b
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v8

    const/4 v11, 0x0

    if-eqz v8, :cond_c

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    iput-object v11, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    const-string v0, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    invoke-virtual {p0, p1, v5, v4}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    invoke-direct {v0, v10}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_c
    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mMultiCameraListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    iget v0, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v0, v7, :cond_d

    iput v5, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "LOADING_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v1, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_d
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v5, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->initData(Lcom/motorola/camera/fsm/camera/UseCase;ZLjava/lang/String;)V

    goto/16 :goto_b

    :cond_e
    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v7

    if-eqz v7, :cond_f

    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    goto/16 :goto_b

    :cond_f
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_5

    :cond_10
    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getNumberOfCameras()I

    move-result p1

    if-lez p1, :cond_2c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasAllPhysicalCameras()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isAnyCameraFacingAllowed()Z

    move-result p1

    if-eqz p1, :cond_2c

    const-string p1, "MotoCameraController"

    const-string v0, "stateChanged: sensor missing, getNumberOfCameras: %d"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getNumberOfCameras()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->displayCameraErrorDialog(Z)V

    goto/16 :goto_b

    :cond_11
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v2, "IS_EXTERNAL_CAMERA"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean p1, p0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    if-nez p1, :cond_12

    goto/16 :goto_b

    :cond_12
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    const v1, 0x1030239

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f120105

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120104

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/Controller;I)V

    const v1, 0x7f120111

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_b

    :cond_13
    invoke-virtual {p0, v5}, Lcom/motorola/camera/Controller;->displayCameraErrorDialog(Z)V

    sget-boolean v0, Lcom/motorola/camera/Util;->USER_BUILD:Z

    if-eqz v0, :cond_2c

    const-string v0, "MotoCameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCamerasErrors()Lcom/motorola/camera/utility/Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/utility/Error;->getError()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto/16 :goto_b

    :cond_14
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMELAPSE_POSTPROCESS_VIDEO:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_3

    :cond_15
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "FINISH_APP"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "error_message"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    if-eqz v2, :cond_16

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const p1, 0x7f1200f8

    invoke-virtual {p0, v1, v5, p1, v5}, Lcom/motorola/camera/Controller;->createErrorDialog(Ljava/lang/String;ZIZ)V

    goto :goto_1

    :cond_16
    const-string v2, "RECREATE_ACTIVITY"

    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v6}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p1, v3}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_17
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    const-string p1, "MotoCameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_18
    :goto_3
    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-eqz v0, :cond_19

    goto :goto_4

    :cond_19
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_1a
    iput v6, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    :cond_1b
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_1c

    move v4, v5

    :cond_1c
    :goto_4
    iput-boolean v4, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    goto/16 :goto_b

    :cond_1d
    :goto_5
    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsIdle:Z

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p1, :cond_20

    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mIsAllowFolding:Z

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->hasTrait$enumunboxing$(I)Z

    move-result p1

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1f

    :cond_1e
    if-nez v0, :cond_20

    if-eqz p1, :cond_20

    :cond_1f
    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz p1, :cond_20

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    invoke-direct {v1, v4, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_20
    :try_start_2
    iput v5, p0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    iget-boolean p1, p0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    if-eqz p1, :cond_21

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object p1

    iget-boolean p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    if-nez p1, :cond_22

    :cond_21
    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    :cond_22
    iget-object p1, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    iput-object v11, p0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_23
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->checkFilesGoVersion()V

    goto/16 :goto_b

    :cond_24
    :goto_6
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->handlePermissionRequired(Landroid/os/Bundle;)V

    goto/16 :goto_b

    :cond_25
    :goto_7
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_retry"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SHOULD_EXIT"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    const-string v1, "ACTIVITY_RESULT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    check-cast v0, Lcom/motorola/camera/Camera;

    if-eqz p1, :cond_27

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_26

    iget p1, p1, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_8

    :cond_26
    iget p1, p1, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    :cond_27
    :goto_8
    invoke-virtual {v0}, Lcom/motorola/camera/ActivityBase;->finish()V

    goto :goto_b

    :cond_28
    :goto_9
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_retry"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "SHOULD_EXIT"

    invoke-virtual {v0, v3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    const-string v4, "ACTIVITY_RESULT"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    check-cast v3, Lcom/motorola/camera/Camera;

    if-eqz v0, :cond_2a

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_29

    iget v0, v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_a

    :cond_29
    iget v0, v0, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    invoke-virtual {v3, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_2a
    :goto_a
    invoke-virtual {v3}, Lcom/motorola/camera/ActivityBase;->finish()V

    :cond_2b
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v0, "EXITTYP"

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->ERROR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_2c
    :goto_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V
    .locals 4

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/StateChangeListener;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 3
    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v2, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/16 v3, 0xa

    invoke-direct {v2, v3, p0, p1, v0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final unregisterStateChangeListener(Ljava/util/Collection;)V
    .locals 1

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final windowHasFocus()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    invoke-interface {v0}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->hasFocus()V

    goto :goto_0

    :cond_0
    return-void
.end method
