.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Controller;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;->$r8$classId:I

    const v1, 0x7f120329

    const-string v2, "statesToListenFor"

    const-string v3, "MotoCameraController"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    iget-object v2, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    const v3, 0x7f1200b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->setTitle(I)V

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v6}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/Controller;I)V

    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->buttonNeutral:Landroid/widget/Button;

    if-eqz p0, :cond_2

    if-eqz v2, :cond_1

    const v3, 0x7f120111

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->show()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/Controller;

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz v4, :cond_4

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    :cond_4
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    :cond_5
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v7}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v4, Lcom/motorola/camera/LocationManager;->mGeoLocationStateListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v8, v9}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-virtual {v4}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    iget-object v8, v4, Lcom/motorola/camera/LocationManager;->mStopReceiveLocationRunnable:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;

    invoke-static {v8, v5}, Lcom/motorola/camera/LocationManager;->postStopReceiveLocationCallback(Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;Z)V

    :cond_6
    iget-object v4, v4, Lcom/motorola/camera/LocationManager;->mProviderChangedReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {v7, v4}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/shared/OrientationEvent;->disable()V

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

    invoke-static {v7, v4}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/CommandLineReceiver;

    invoke-static {v7, v4}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mUXDumpReceiver:Lcom/motorola/camera/UXDumpReceiver;

    invoke-static {v7, v4}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/fsm/ChangeEvent;

    if-eqz v4, :cond_7

    iget-object v4, v4, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

    sget-object v8, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    const-string v8, "listener"

    invoke-static {v4, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v9, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;

    invoke-direct {v9, v4, v6}, Lcom/motorola/camera/storage/MediaVolumesHolder$addMediaVolumesChangedListener$$inlined$runOnWorker$1;-><init>(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->shouldHaveSecureMediaIds()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v9, Lcom/motorola/camera/SecureMediaIdsManager$$ExternalSyntheticLambda0;

    invoke-direct {v9, v4, v5}, Lcom/motorola/camera/SecureMediaIdsManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/SecureMediaIdsManager;I)V

    invoke-virtual {v8, v9}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_9
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->registerHingeAngleListeners(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Landroidx/work/WorkQuery$Builder;

    if-eqz v4, :cond_a

    iget-object v4, v4, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v8}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v8

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->debugActionReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v8, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_a
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/motorola/camera/instrumentreport/MeasureKpi;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v6

    if-eqz v2, :cond_b

    iget-object v2, v4, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    iget-object v6, v6, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v9, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/16 v10, 0xa

    invoke-direct {v9, v10, v2, v4, v8}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    iget-object v2, v4, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    if-eqz v2, :cond_c

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v6}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v6

    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->debugActionReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v6, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_c
    iget-object v2, v4, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_d

    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_d
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    sget-object v6, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    invoke-virtual {v2, v4, v6}, Lcom/motorola/camera/CameraKpi;->unsetKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    :cond_e
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lkotlin/UInt$Companion;

    invoke-virtual {v2}, Lkotlin/UInt$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    iput-boolean v5, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_f

    sget p0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "orientation:%s unregisterListeners dur:%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_1
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/Controller;

    iget-boolean v0, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    if-eqz v0, :cond_10

    goto/16 :goto_3

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    if-nez v7, :cond_11

    new-instance v7, Lcom/motorola/camera/Controller$McfOrientationListener;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v8

    invoke-direct {v7, v8}, Lcom/motorola/camera/Controller$McfOrientationListener;-><init>(Z)V

    iput-object v7, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    :cond_11
    iget-object v7, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0, v7}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mcfOrientationListener:Lcom/motorola/camera/Controller$McfOrientationListener;

    invoke-virtual {p0, v7}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-nez v7, :cond_12

    new-instance v7, Landroidx/core/view/MenuHostHelper;

    iget-object v8, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    check-cast v8, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v7, v8}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v8, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    invoke-virtual {v7, v8}, Landroidx/core/view/MenuHostHelper;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iput-object v7, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    :cond_12
    iget-object v7, p0, Lcom/motorola/camera/Controller;->mFilterViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    invoke-virtual {p0, v7}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v7

    if-eqz v7, :cond_17

    new-instance v7, Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v8, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v9

    iget-object v10, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    iget-object v10, v10, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v10, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {v7, v8, p0, v9, v10}, Lcom/motorola/camera/cli/content/CliContentManager;-><init>(Landroid/app/Activity;Lcom/motorola/camera/Controller;ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object v7, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v8, v7, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget-boolean v9, v8, Lcom/motorola/camera/cli/content/CliPresentationHolder;->isInitialized:Z

    if-eqz v9, :cond_13

    goto :goto_2

    :cond_13
    iget-object v9, v8, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/arch/view/BaseViewModel;

    if-nez v9, :cond_14

    new-instance v9, Lcom/motorola/camera/cli/content/CliContentViewModel;

    invoke-direct {v9}, Lcom/motorola/camera/cli/content/CliContentViewModel;-><init>()V

    iput-object v9, v8, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    :cond_14
    iput-boolean v6, v8, Lcom/motorola/camera/cli/content/CliPresentationHolder;->isInitialized:Z

    iget-object v9, v8, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v9, Lcom/motorola/camera/arch/view/BaseViewModel;

    if-eqz v9, :cond_15

    iget-object v10, v8, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v9, v10, v4}, Lcom/motorola/camera/arch/view/BaseViewModel;->onCreate(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_15
    iget-object v4, v8, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/arch/view/BaseViewModel;

    check-cast v4, Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-eqz v4, :cond_16

    new-instance v9, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;

    invoke-direct {v9, v8}, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;-><init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;)V

    iput-object v9, v4, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;

    :cond_16
    :goto_2
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v7, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v4, v8}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v4, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v8, Lcom/motorola/camera/Notifier$TYPE;->DUAL_PREVIEW_ENABLE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v7, v7, Lcom/motorola/camera/cli/content/CliContentManager;->dualPreviewListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v7}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_17
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v4, :cond_18

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_18
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v4, :cond_19

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;)V

    :cond_19
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    if-nez v4, :cond_1a

    new-instance v4, Lcom/motorola/camera/LocationManager;

    invoke-direct {v4}, Lcom/motorola/camera/LocationManager;-><init>()V

    iput-object v4, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    :cond_1a
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mLocation:Lcom/motorola/camera/LocationManager;

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/LocationManager;->startLocationUpdates(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/shared/OrientationEvent;->enable()V

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

    if-nez v4, :cond_1b

    new-instance v4, Lcom/motorola/camera/HeadsetReceiver;

    invoke-direct {v4, p0}, Lcom/motorola/camera/HeadsetReceiver;-><init>(Lcom/motorola/camera/Controller;)V

    iput-object v4, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

    :cond_1b
    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v7, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/motorola/camera/Controller;->mHeadsetReceiver:Lcom/motorola/camera/HeadsetReceiver;

    invoke-static {v7, v8, v4}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/CommandLineReceiver;

    if-eqz v4, :cond_1c

    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "com.motorola.camera.ACTION_SET_ZOOM"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/motorola/camera/Controller;->mCommandLineReceiver:Lcom/motorola/camera/CommandLineReceiver;

    invoke-static {v7, v8, v4}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1c
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mUXDumpReceiver:Lcom/motorola/camera/UXDumpReceiver;

    if-eqz v4, :cond_1d

    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "com.motorola.actions.camera.DUMP_XML"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v8, p0, Lcom/motorola/camera/Controller;->mUXDumpReceiver:Lcom/motorola/camera/UXDumpReceiver;

    invoke-static {v7, v8, v4}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1d
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/fsm/ChangeEvent;

    if-nez v4, :cond_1e

    new-instance v4, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {v4, p0}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Lcom/motorola/camera/Controller;)V

    iput-object v4, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/fsm/ChangeEvent;

    :cond_1e
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    if-nez v4, :cond_1f

    new-instance v4, Lcom/motorola/camera/ControllerSaveListener;

    invoke-direct {v4, p0}, Lcom/motorola/camera/ControllerSaveListener;-><init>(Lcom/motorola/camera/Controller;)V

    iput-object v4, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    :cond_1f
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mStorageChangedEventDetector:Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4, v5}, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/ChangeEvent;I)V

    sget-object v8, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v7, v4, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$onMediaVolumesChangedListener$1;

    invoke-static {v7}, Lcom/motorola/camera/storage/MediaVolumesHolder;->addMediaVolumesChangedListener(Lcom/motorola/camera/storage/OnMediaVolumesChangedListener;)V

    new-instance v7, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4, v6}, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/ChangeEvent;I)V

    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mControllerSaveListener:Lcom/motorola/camera/ControllerSaveListener;

    if-eqz v4, :cond_20

    iput v5, v4, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    invoke-static {v4}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    :cond_20
    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->shouldHaveSecureMediaIds()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v8, Lcom/motorola/camera/SecureMediaIdsManager$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4, v6}, Lcom/motorola/camera/SecureMediaIdsManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/SecureMediaIdsManager;I)V

    invoke-virtual {v7, v8}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_21
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Controller;->registerHingeAngleListeners(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Landroidx/work/WorkQuery$Builder;

    if-nez v4, :cond_22

    new-instance v4, Landroidx/work/WorkQuery$Builder;

    const/16 v7, 0x9

    invoke-direct {v4, v7}, Landroidx/work/WorkQuery$Builder;-><init>(I)V

    iput-object v4, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Landroidx/work/WorkQuery$Builder;

    :cond_22
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mCalibrationDataDebugUiListener:Landroidx/work/WorkQuery$Builder;

    iget-object v4, v4, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->registerActionReceiver()V

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    if-nez v4, :cond_23

    new-instance v4, Lcom/motorola/camera/instrumentreport/MeasureKpi;

    iget-object v7, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-direct {v4, v7}, Lcom/motorola/camera/instrumentreport/MeasureKpi;-><init>(Lcom/motorola/camera/fsm/camera/CameraFsm;)V

    iput-object v4, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    :cond_23
    iget-object v4, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    invoke-virtual {v4}, Lcom/motorola/camera/instrumentreport/MeasureKpi;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v6

    if-eqz v2, :cond_24

    iget-object v2, v4, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    iget-object v7, v7, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v9, 0xf

    invoke-direct {v8, v9, v2, v4}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    iget-object v2, v4, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;->registerActionReceiver()V

    :cond_25
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mMeasureKpi:Lcom/motorola/camera/instrumentreport/MeasureKpi;

    sget-object v7, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    invoke-virtual {v2, v4, v7}, Lcom/motorola/camera/CameraKpi;->setKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    sget-object v2, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    iput-boolean v5, v2, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z

    :cond_26
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lkotlin/UInt$Companion;

    invoke-virtual {v2}, Lkotlin/UInt$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v2, v4, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    iput-boolean v6, p0, Lcom/motorola/camera/Controller;->mRegistered:Z

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_27

    sget p0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "orientation:%s registerListeners dur:%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_3
    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v6}, Lcom/motorola/camera/mcf/McfAlgoAssets;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Z)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->registerClient(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->unregisterClient(Ljava/lang/Object;)V

    return-void

    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    iput v1, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v1, 0x7f120328

    iput v1, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v6}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/Controller;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const p0, 0x7f120327

    iput p0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
