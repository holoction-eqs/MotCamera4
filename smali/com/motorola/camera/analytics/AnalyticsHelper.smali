.class public final Lcom/motorola/camera/analytics/AnalyticsHelper;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/CameraKpi$CameraKpiListener;


# static fields
.field public static final KPI_LIST:Ljava/util/ArrayList;


# instance fields
.field public final mAlwaysAwareEvent:Lcom/motorola/camera/analytics/AlwaysAwareEvent;

.field public final mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

.field public final mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

.field public final mCameraSwitchEvent:Lcom/motorola/camera/analytics/CameraSwitchEvent;

.field public final mDocEditValues:Landroidx/work/impl/StartStopTokens;

.field public mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

.field public mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

.field public mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

.field public final mMotionPhotoDataManager:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

.field public final mPhotoSolidDataManager:Landroidx/work/Data$Builder;

.field public final mPostCaptureImageEvent:Lcom/motorola/camera/analytics/PostCaptureImageEvent;

.field public final mPostCaptureMultiShotEvent:Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

.field public final mPostCapturePanoramaEvent:Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

.field public final mPostCaptureVideoEvent:Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

.field public final mPostDocEditEvent:Lcom/motorola/camera/analytics/PostDocEditEvent;

.field public final mSessionValues:Landroidx/work/impl/StartStopTokens;

.field public final mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

.field public mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

.field public final mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/CameraKpi$KPI;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    new-instance v0, Landroidx/work/impl/StartStopTokens;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    new-instance v0, Landroidx/work/impl/StartStopTokens;

    invoke-direct {v0, v1}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Landroidx/work/impl/StartStopTokens;

    new-instance v0, Lcom/motorola/camera/analytics/CameraReadyEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/CameraReadyEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

    new-instance v0, Lcom/motorola/camera/analytics/CameraSwitchEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/CameraSwitchEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraSwitchEvent:Lcom/motorola/camera/analytics/CameraSwitchEvent;

    new-instance v0, Lcom/motorola/camera/analytics/UserExitAppEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/UserExitAppEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    new-instance v0, Lcom/motorola/camera/analytics/PostCaptureImageEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCaptureImageEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureImageEvent:Lcom/motorola/camera/analytics/PostCaptureImageEvent;

    new-instance v0, Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureMultiShotEvent:Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

    new-instance v0, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCaptureVideoEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureVideoEvent:Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

    new-instance v0, Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCapturePanoramaEvent:Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

    new-instance v0, Lcom/motorola/camera/analytics/ShotToShotEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/ShotToShotEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    new-instance v0, Lcom/motorola/camera/analytics/AlwaysAwareEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/AlwaysAwareEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAlwaysAwareEvent:Lcom/motorola/camera/analytics/AlwaysAwareEvent;

    new-instance v0, Lcom/motorola/camera/analytics/PostDocEditEvent;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/PostDocEditEvent;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostDocEditEvent:Lcom/motorola/camera/analytics/PostDocEditEvent;

    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-direct {v0}, Lcom/motorola/camera/analytics/AnalyticsService;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    new-instance v0, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMotionPhotoDataManager:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    new-instance v0, Landroidx/work/Data$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/work/Data$Builder;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPhotoSolidDataManager:Landroidx/work/Data$Builder;

    return-void
.end method

.method public static handleCreateCaptureRequest(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v2, "SEQ_ID"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    const-string v0, "ANALYTICS_SWFLASHFIREDONAUTO"

    invoke-virtual {p0, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 21

    new-instance v0, Lcom/google/common/base/Joiner;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPENED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v17, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v18, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v19, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v20, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v20}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object v0, v0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final handleClose(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v1, "TIMED_OUT_EVENT"

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "EXITTYP"

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->POWER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v2, "EXITTYP"

    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/StartStopTokens;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXITTYP"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EXITTYP"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    const-string v2, "EXITTYP"

    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/StartStopTokens;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "ANALYTICS_CONTROL_BAR_TAPS"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "ANALYTICS_CONTROL_PANEL_TAPS"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_LAUNCH:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v2, v2, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_SUM:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v3, v3, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    sget-object v6, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v7, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v4, "MODEADD"

    iget-object v5, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v5, [B

    monitor-enter v5

    :try_start_0
    iget-object v8, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v8, v4, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v7, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "MODEREMOVE"

    iget-object v3, v0, Landroidx/work/impl/StartStopTokens;->lock:Ljava/lang/Object;

    check-cast v3, [B

    monitor-enter v3

    :try_start_1
    iget-object v4, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    :goto_3
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-virtual {p1, v2, v0, v1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)V

    :cond_8
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/CameraKpi;->unsetKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    return-void
.end method

.method public final handleIdle(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v1, "STARTUP"

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->initializeSessionValues()V

    goto :goto_0

    :cond_0
    const-string v1, "SWITCHTIME"

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraSwitchEvent:Lcom/motorola/camera/analytics/CameraSwitchEvent;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-virtual {v1, p0, v0, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "SHOTSEQID"

    invoke-virtual {v0, p1}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->stopShotToShotLogging(J)V

    invoke-virtual {v0, p1}, Landroidx/work/impl/StartStopTokens;->remove(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string p0, "COUNT_SETTINGS_OPENED"

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "COUNT_SECURE_GALLERY_LAUNCHES"

    invoke-virtual {v0, p0, p1}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "COUNT_HELP_OPENED"

    invoke-virtual {v0, p0, p1}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleMultiShot(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 2

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SEQ_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v0, p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureMultiShotEvent:Lcom/motorola/camera/analytics/PostCaptureMultiShotEvent;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-virtual {v1, p0, p1, v0}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)V

    return-void
.end method

.method public final handleOnlineHelpOpened()V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v0, "COUNT_HELP_OPENED"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->HELP_LAUNCHED:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v3, v1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroidx/work/impl/StartStopTokens;->getInt$1(Ljava/lang/String;)I

    move-result v3

    iget-object v1, v1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    add-int/2addr v3, v2

    invoke-virtual {p0, v3, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "COUNT_SETTINGS_OPENED"

    invoke-virtual {p0, v0, v2}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleOpenCamera(Z)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/motorola/camera/analytics/CameraReadyEvent;->ISCOLDSTART:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    invoke-virtual {v2, v1}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "LAUNCHEDBY"

    invoke-virtual {v2, v1}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMPSREXP:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMAVL:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v1, v1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMTHRS:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v1, v1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "ERRTYP"

    invoke-virtual {v2, v1}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    :cond_1
    invoke-virtual {v2}, Landroidx/work/impl/StartStopTokens;->clear()V

    invoke-virtual {v2, v0}, Landroidx/work/impl/StartStopTokens;->putAll(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v3, "evttme"

    invoke-virtual {v2, v0, v1, v3}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v3, "APPTIME"

    invoke-virtual {v2, v0, v1, v3}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    const-string v0, "IS_CLI_DISPLAY"

    invoke-virtual {v2, v0, p1}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/CameraKpi;->setKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/List;)V

    return-void
.end method

.method public final handleSettingsOpened()V
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v0, "COUNT_SETTINGS_OPENED"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/analytics/UserExitAppEvent;->SETTINGS_OPENED:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v3, v1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroidx/work/impl/StartStopTokens;->getInt$1(Ljava/lang/String;)I

    move-result v3

    iget-object v1, v1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    add-int/2addr v3, v2

    invoke-virtual {p0, v3, v1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "COUNT_HELP_OPENED"

    invoke-virtual {p0, v0, v2}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final handleVideoCaptured(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 8

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mCaptureVideoDataList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    new-instance v4, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iget-object v5, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mSessionTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    iget-object v3, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v6, "CAPTURE_TRIGGER"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "RECORDING_ERROR"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v5, "SNAPSHOT_COUNT"

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v4}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    goto :goto_2

    :cond_2
    iput-object v4, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSuperSlowMotionVideoData:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iput-boolean v2, v4, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, "AnalyticsHelper"

    const-string p1, "Video capture trigger is null or recording error occurred, analytics event will not be recorded."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    sget-object p1, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_VIDS:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v0, p1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getInt$1(Ljava/lang/String;)I

    move-result v0

    iget-object p1, p1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    return-void
.end method

.method public final handleVideoStopCapture(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocusEnabledAndSuccessful()Z

    move-result p1

    const-string v2, "FOCUS_SUCCESS"

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "ANALYTICS_IS_CAF"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v2, p1

    float-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "ANALYTICS_ZOOM"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    iget-object v2, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mListened:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, p1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "ANALYTICS_EXPOSURE"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    iget-object v2, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mListened:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, p1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mMaxValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "ANALYTICS_FLASHMODE"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    iget-object v0, p1, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxSettingListenerBase;->mListened:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iput-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    :cond_6
    return-void
.end method

.method public final handleZoom(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 2

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    sget-object p1, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_PINCH:Landroidx/core/text/BidiFormatter$Builder;

    :goto_0
    iget-object v0, p1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getInt$1(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_0
    if-ne v1, p1, :cond_1

    sget-object p1, Lcom/motorola/camera/analytics/UserExitAppEvent;->ZOOM_SCROLL:Landroidx/core/text/BidiFormatter$Builder;

    goto :goto_0

    :goto_1
    iget-object p1, p1, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized initializeSessionValues()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v1, "SEQID"

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/motorola/camera/analytics/CameraReadyEvent;->setupSessionValues(Landroidx/work/impl/StartStopTokens;)V

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mUserExitAppEvent:Lcom/motorola/camera/analytics/UserExitAppEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_SORT_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->MODE_CAROUSEL_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 3

    iget-boolean v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureLogged:Z

    instance-of v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v2, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCapturePanoramaEvent:Lcom/motorola/camera/analytics/PostCapturePanoramaEvent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureImageEvent:Lcom/motorola/camera/analytics/PostCaptureImageEvent;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mPostCaptureVideoEvent:Lcom/motorola/camera/analytics/PostCaptureVideoEvent;

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-virtual {v0, p0, v1, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final logTidbitAction(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mAlwaysAwareData:Lcom/motorola/camera/analytics/AlwaysAwareData;

    iget-wide v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mTimestamp:J

    iput-wide v1, v0, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanSuccess:I

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    if-nez v5, :cond_2

    const/4 v2, 0x3

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-eqz v5, :cond_4

    const/4 v2, 0x2

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_5

    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    iput v2, v0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v4, v1

    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    goto :goto_5

    :cond_8
    move v2, v1

    :goto_5
    iput v2, v0, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoAvailable()Z

    move-result v2

    iput-boolean v2, v0, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    if-eqz p2, :cond_b

    iget-object p2, p2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    iget p2, p2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sCheckinCode:I

    sget-object v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->UNKNOWN:Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    invoke-static {}, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->values()[Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;

    move-result-object v3

    array-length v4, v3

    :goto_6
    if-ge v1, v4, :cond_a

    aget-object v5, v3, v1

    iget v6, v5, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    if-ne v6, p2, :cond_9

    move-object v2, v5

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    iget p2, v2, Lcom/motorola/camera/analytics/AlwaysAwareData$Actions;->checkInData:I

    iput p2, v0, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    :cond_b
    iget-object p1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroidx/loader/app/LoaderManager;->getFieldsCount()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, v0, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    iget-object p2, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAlwaysAwareEvent:Lcom/motorola/camera/analytics/AlwaysAwareEvent;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-virtual {p2, p0, p1, v0}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)V

    return-void
.end method

.method public final onKpiUpdate(Lcom/motorola/camera/CameraKpi$KPI;JI)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object p4, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const/16 v0, 0x32

    if-eq p1, v0, :cond_1

    const/16 v0, 0x44

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->initializeSessionValues()V

    const-string p1, "STARTUP"

    invoke-virtual {p4, p2, p3, p1}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mCameraReadyEvent:Lcom/motorola/camera/analytics/CameraReadyEvent;

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p4, p2}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "SHOTSEQID"

    invoke-virtual {p4, p1}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4, p1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    iget-object p0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iput-wide p2, p0, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mKpiTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method public final setShotToShotMode(JILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    iget-object v1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p4, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mModeName:Ljava/lang/String;

    iput p3, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMode:I

    iget-wide v3, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mEndTime:J

    const-wide/16 v5, -0x1

    cmp-long p3, v3, v5

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget-object p3, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-virtual {v0, p0, p3, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final startShotToShotLogging(Lcom/motorola/camera/ShotType;JI)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v1, "SHOTSEQID"

    invoke-virtual {v0, p2, p3, v1}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    const-string v1, "SEQID"

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    invoke-direct {v2}, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mStartTime:J

    iput p4, v2, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mMcfQueue:I

    iput-wide v0, v2, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mSessionSeqId:J

    sget-object p4, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-eq p4, p1, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(Lcom/motorola/camera/ShotType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mModeName:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p2, p3, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleCreateCaptureRequest(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    sget-object v3, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v4, v3, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/work/impl/StartStopTokens;->getInt$1(Ljava/lang/String;)I

    move-result v4

    iget-object v3, v3, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    add-int/2addr v4, v1

    invoke-virtual {v0, v4, v3}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleMultiShot(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_2

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleVideoCaptured(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    invoke-direct {v0, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxZoomListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxExposureListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    new-instance v0, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMaxTorchListener:Lcom/motorola/camera/analytics/AnalyticsHelper$MaxZoomSettingListener;

    :cond_6
    :goto_2
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "SRC_CAM"

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v0}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(IZ)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SRC_MODE"

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_7
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "DEST_CAM"

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v0}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(IZ)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DEST_MODE"

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    goto :goto_3

    :goto_4
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_8
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v3, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleOpenCamera(Z)V

    goto/16 :goto_6

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v0, "SWITCHTIME"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4, v0}, Landroidx/work/impl/StartStopTokens;->putLong(JLjava/lang/String;)V

    const-string v0, "SWITCHTRIGGER"

    invoke-virtual {p1, v2, v0}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleIdle(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto/16 :goto_6

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPENED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleOnlineHelpOpened()V

    goto/16 :goto_6

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v0, "SHOTSEQID"

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/analytics/AnalyticsHelper;->stopShotToShotLogging(J)V

    invoke-virtual {p1, v0}, Landroidx/work/impl/StartStopTokens;->remove(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->CAPTURED_PICS:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v2, v0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroidx/work/impl/StartStopTokens;->getInt$1(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    add-int/2addr v2, v1

    invoke-virtual {p1, v2, v0}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleClose(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_6

    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleSettingsOpened()V

    goto :goto_6

    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    sget-object v0, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->TIMEDOUT:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    const-string v1, "EXITTYP"

    invoke-virtual {p1, v1, v0}, Landroidx/work/impl/StartStopTokens;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_6

    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5

    :cond_12
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleZoom(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_6

    :cond_13
    :goto_5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleVideoStopCapture(Lcom/motorola/camera/fsm/ChangeEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_14
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final stopShotToShotLogging(J)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mShotToShotEvent:Lcom/motorola/camera/analytics/ShotToShotEvent;

    iget-object v1, v0, Lcom/motorola/camera/analytics/ShotToShotEvent;->mSessionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mEndTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/analytics/ShotToShotEvent$Record;->mModeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mAnalyticsService:Lcom/motorola/camera/analytics/AnalyticsService;

    invoke-virtual {v0, p0, v1, p1}, Lcom/motorola/camera/analytics/LogEvent;->logEvent(Lcom/motorola/camera/analytics/AnalyticsService;Landroidx/work/impl/StartStopTokens;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
