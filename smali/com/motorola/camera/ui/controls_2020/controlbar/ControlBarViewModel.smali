.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# static fields
.field public static final ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;

.field public static viewModelFactory:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;


# instance fields
.field public final autoExposureStateMachineListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$autoExposureStateMachineListener$1;

.field public final autoSetting:Ljava/util/HashMap;

.field public final controlBarDetailedSetting:Landroidx/lifecycle/MutableLiveData;

.field public final controlBarItems:Landroidx/lifecycle/MutableLiveData;

.field public final controlBarSettingValues:Landroidx/lifecycle/MediatorLiveData;

.field public final controlBarState:Landroidx/lifecycle/MutableLiveData;

.field public final envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public final eventHandler:Lcom/motorola/camera/EventListener;

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public halFlash:Z

.field public isInCapture:Z

.field public final mActivePhysicalCameraIdListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

.field public final mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mKeepHideByLux:Z

.field public final mLuxThreshold:I

.field public mPhysicalCameraId:Ljava/lang/String;

.field public final mTorchControlListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda1;

.field public mcfAutoNV:Z

.field public mcfFlash:Z

.field public final mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$mcfStateAdapter$1;

.field public mcfTorch:Z

.field public resetStateJob:Lkotlinx/coroutines/Job;

.field public final settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final settingLockedChangedListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda0;

.field public shouldIncludeAllSettings:Z

.field public shouldSuspendUpdates:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v1, "FLASH"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v2, "TORCH"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "HDR"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v4, "MOTION_PHOTOS"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/EventListener;)V
    .locals 3

    const-string v0, "eventHandler"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->eventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarDetailedSetting:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarItems:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE$24:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    invoke-static {p1, v0}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarSettingValues:Landroidx/lifecycle/MediatorLiveData;

    const/16 p1, 0x14

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mLuxThreshold:I

    const-string p1, "-1"

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mPhysicalCameraId:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->autoSetting:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->settingLockedChangedListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$mcfStateAdapter$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$mcfStateAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$mcfStateAdapter$1;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$autoExposureStateMachineListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$autoExposureStateMachineListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->autoExposureStateMachineListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$autoExposureStateMachineListener$1;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mTorchControlListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mActivePhysicalCameraIdListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    new-instance p1, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$mAutoDisplayFlashListener$1;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$mAutoDisplayFlashListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;I)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$mAutoDisplayFlashListener$1;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$mAutoDisplayFlashListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static final access$showAMSToast(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Z)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f12003a

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object p0, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    const/16 p0, 0xbb8

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->duration(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public static final access$updateAutoDisplayFlashStatus(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Z)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->autoSetting:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v2, "TORCH.mName"

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v2, "FLASH.mName"

    :goto_1
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->updateItems$1()V

    :cond_4
    return-void
.end method


# virtual methods
.method public final updateItems$1()V
    .locals 10

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->shouldSuspendUpdates:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->shouldIncludeAllSettings:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->eventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getAllSettings(Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getAllSettings(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    :goto_0
    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v4, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iget-object v5, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->autoSetting:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    new-instance v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v8

    goto :goto_4

    :cond_4
    move v5, v6

    :goto_4
    sget-object v9, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v9}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v9}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v9}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move v6, v8

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v7, v3, v2, v5, v6}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;-><init>(ILcom/motorola/camera/settings/SettingsManager$Key;ZZ)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;->DETAILS:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    if-ne v0, v1, :cond_9

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarDetailedSetting:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public final updateSettingValue(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v1, p2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "PREVIOUS_VALUE"

    const-string v5, "SETTING"

    if-nez v2, :cond_1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v6, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "VALUE"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v7, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_ITEM_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    invoke-static {v0, p2, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    invoke-static {v0, p2}, Lcom/motorola/camera/settings/SettingsManager;->setUserSetting(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    sget-object v6, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-eq v2, v6, :cond_3

    sget-object v6, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    if-ne v2, v6, :cond_4

    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lcom/motorola/camera/settings/SettingsManager;->updateHDR10SwitchCase(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2, v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
