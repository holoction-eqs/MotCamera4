.class public Lcom/motorola/camera/Camera;
.super Lcom/motorola/camera/ActivityBase;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Controller$ActivityCallbackInterface;
.implements Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# static fields
.field public static final mCameraButtonIntentFilter:Landroid/content/IntentFilter;

.field public static mExtraFreeMemSizeKb:I

.field public static mLowMemKillSize:J

.field public static mVmRequestDurationMs:I


# instance fields
.field public final launchManager:Lcom/motorola/camera/launch/LaunchManager;

.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

.field public mCTAOpenInCreate:Z

.field public mCTAPermissionAllowed:Z

.field public mCTARecreate:Z

.field public mController:Lcom/motorola/camera/Controller;

.field public mDoLaunch:Z

.field public final mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCliDisplay:Ljava/lang/Boolean;

.field public mIsColdStart:Z

.field public mKeepSessionSettingOnExit:Z

.field public mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

.field public mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

.field public final mMoveTaskToBackListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

.field public mOrientation:I

.field public final mScreenOffReceiver:Lcom/motorola/camera/Camera$1;

.field public final mSetExtraFreeKBytesRunnable:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "motorola.camera.intent.action.START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    const/4 v0, 0x0

    sput v0, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    sput v0, Lcom/motorola/camera/Camera;->mVmRequestDurationMs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/motorola/camera/ActivityBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    new-instance v1, Lcom/motorola/camera/launch/LaunchManager;

    invoke-direct {v1}, Lcom/motorola/camera/launch/LaunchManager;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mMoveTaskToBackListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    new-instance v1, Lcom/motorola/camera/Camera$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/Camera$1;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

    new-instance v1, Lcom/motorola/camera/Camera$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Camera$1;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Lcom/motorola/camera/Camera$1;

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mSetExtraFreeKBytesRunnable:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    return-void
.end method

.method public static isSecureLaunch()Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mSecure:Z

    return v0
.end method


# virtual methods
.method public final adjustLayoutToRealScreenSize()V
    .locals 3

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v0

    const v1, 0x7f0a026b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public final clearMediaIdsForSecureLaunch()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/Util;->getIntentSource(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "flip_changed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    if-nez p0, :cond_1

    new-instance p0, Lcom/motorola/camera/SecureDataHelper;

    invoke-direct {p0}, Lcom/motorola/camera/SecureDataHelper;-><init>()V

    sput-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    :cond_1
    sget-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final configureBaseContextOverride(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ActivityBase;->configureBaseContextOverride(Landroid/content/Context;Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 p0, 0x2

    iput p0, p2, Landroid/content/res/Configuration;->screenLayout:I

    iput v2, p2, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sget p1, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->sDefaultDensityValue:I

    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v0, p0

    div-int/2addr v0, p1

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final isCliDisplay(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/ActivityBase;->getDisplayId(Landroid/content/Context;)I

    move-result p1

    sget v0, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    move v1, p1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mIsCliDisplay:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public final killApps()V
    .locals 15

    invoke-static {}, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->getDefault()Lcom/motorola/camera/reflect/android/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->VM_REQUEST_SWAPPINESS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa

    :cond_0
    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->VM_REQUEST_DURATION_MS:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v3}, Ljms/IJobMgrService$_Parcel;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v3

    if-ne v3, v2, :cond_1

    const/16 v3, 0xdac

    :cond_1
    sget-boolean v4, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    const-string v5, "MotoCamera"

    if-eqz v4, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "vmRequestSwappiness = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "vmRequestDurationMs = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    iget-object v8, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    iget-object v9, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetSwappiness:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_4

    :try_start_0
    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v4

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    sget v1, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    const v9, 0xc350

    if-lt v1, v9, :cond_6

    iget-object v9, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetExtraFreeKbytes:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_5

    :try_start_1
    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v4

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SET_EXTRA_FREE_KBYTES_REPEATEDLY:Z

    if-eqz v1, :cond_6

    if-lez v3, :cond_6

    sput v3, Lcom/motorola/camera/Camera;->mVmRequestDurationMs:I

    invoke-virtual {p0, v4}, Lcom/motorola/camera/Camera;->setExtraFreeKBytesRepeatedly(Z)V

    :cond_6
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v9, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sget-wide v11, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    sub-long/2addr v9, v11

    iget-wide v11, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    cmp-long p0, v9, v11

    if-gez p0, :cond_7

    sub-long/2addr v11, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v11, v9

    long-to-int p0, v11

    move v3, v4

    goto :goto_0

    :cond_7
    move p0, v6

    move v3, p0

    :goto_0
    sget-boolean v9, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checkForMemoryPressure: availMem="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " pressure expected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " requestToFreeUp (kb) ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    sget-object v10, Lcom/motorola/camera/analytics/CameraReadyEvent;->ISCOLDSTART:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v10, v10, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroidx/work/impl/StartStopTokens;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    sget-object v11, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMPSREXP:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v10, :cond_9

    iget-object v10, v11, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroidx/work/impl/StartStopTokens;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_1

    :cond_9
    iget-object v10, v11, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10, v3}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    sget-object v10, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMAVL:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v10, v10, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-wide v11, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v13, 0x100000

    div-long/2addr v11, v13

    long-to-int v11, v11

    invoke-virtual {v9, v11, v10}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    sget-object v10, Lcom/motorola/camera/analytics/CameraReadyEvent;->RAMTHRS:Landroidx/core/text/BidiFormatter$Builder;

    iget-object v10, v10, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-wide v11, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v11, v13

    long-to-int v1, v11

    invoke-virtual {v9, v1, v10}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    :goto_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v3, v1, Lcom/motorola/camera/CameraApp;->mIsMemPressureExpected:Z

    if-lez p0, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "com.motorola.camera3.content.ai"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetReserveFreeKbytesWhitelist:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_a

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    aput-object v1, v7, v4

    invoke-virtual {v3, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v6

    goto :goto_2

    :catch_2
    :cond_a
    move v1, v2

    :goto_2
    if-gez v1, :cond_d

    iget-object v1, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetReserveFreeKbytes:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_b

    :try_start_3
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v1, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    move v2, v6

    :catch_3
    :cond_b
    if-gez v2, :cond_d

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_c

    const-string p0, "use killAllBackgroundProcesses instead"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object p0, v0, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mKillAllBackgroundProcesses:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_d

    :try_start_4
    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_d
    return-void
.end method

.method public final launchGoogleLens()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->selectedApi:Lcom/motorola/camera/utility/lens/LensApiWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, v1}, Lcom/motorola/camera/utility/lens/LensApiWrapper;->launch(Landroid/app/Activity;Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f1201c5

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x4

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v1, p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onAccessibilityStateChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    iget-object p0, p0, Lcom/motorola/camera/Notifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p3, :cond_5

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->GALLERY_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "LOCATION"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/motorola/camera/Camera;->updateLocationSetting(Z)V

    goto :goto_2

    :cond_1
    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    if-ne p2, v2, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    goto :goto_2

    :cond_2
    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    iget-object p3, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p3, :cond_5

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PHOTOS_STABILIZE_CLOSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    :goto_0
    iget-object p3, p3, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p3, v1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_2

    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    sget-object v1, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/utility/lens/LensApiHelper;->selectedApi:Lcom/motorola/camera/utility/lens/LensApiWrapper;

    if-eqz v1, :cond_4

    invoke-interface {v1, p2}, Lcom/motorola/camera/utility/lens/LensApiWrapper;->onLaunchResult(I)Z

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_5

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f1201c5

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput p3, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/motorola/camera/utility/lens/LensApiHelper;->reset()V

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/motorola/camera/utility/lens/LensApiHelper;->initialize()V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->_values()[I

    move-result-object p3

    aget p1, p3, p1

    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput p1, p3, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:I

    iput p2, p3, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p3

    if-eqz p3, :cond_7

    const/16 p3, 0xa

    if-ne p1, p3, :cond_7

    const/4 p1, -0x1

    if-ne p2, p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    :cond_7
    return-void
.end method

.method public final onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/motorola/camera/arch/view/BaseFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/motorola/camera/arch/view/BaseFragment;

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iput-object p0, p1, Lcom/motorola/camera/arch/view/BaseFragment;->eventListener:Lcom/motorola/camera/EventListener;

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

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

    invoke-interface {v0}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->attach()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->showCtaInitialDialog()V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v1, :cond_1

    iput v0, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->getOrientation()Lcom/motorola/camera/shared/OrientationEvent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged$1()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    invoke-static {p0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDensity(Landroid/content/Context;)F

    move-result v1

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v3, :cond_3

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, p1

    cmpl-double p1, v3, v0

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->adjustLayoutToRealScreenSize()V

    const/4 v2, 0x1

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "splitNames:"

    sget-boolean v2, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    const-string v3, "MotoCamera"

    if-eqz v2, :cond_0

    const-string v2, "AUTO_TEST is enabled"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v6, v2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v6, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-boolean v6, v1, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    if-nez v6, :cond_1

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object v2, v2, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v5, v1, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->showCtaInitialDialog()V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v1, v1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v2

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    if-ne v1, v8, :cond_2

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    const-string v9, "DisplayMetricsHelper"

    const-string v10, "updateMainDisplaySize, wrong context being used."

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 v8, 0x0

    invoke-static {v1, v8}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v9

    sput-object v9, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    invoke-static {v2}, Lcom/motorola/camera/utility/ColdStartHelper;->onActivityCreate(Z)V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->getInstance()Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    move-result-object v9

    new-instance v10, Ljava/lang/Thread;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    invoke-direct {v11, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShaderCache;I)V

    const-string v9, "ShaderCache"

    invoke-direct {v10, v11, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    iput-boolean v5, v1, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    const-string v9, "com.motorola.camera3"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v10, 0x7f1200ff

    invoke-virtual {v9, v10, v8}, Lcom/motorola/camera/CameraApp;->showToast(II)V

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    :cond_3
    sget-object v9, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v10, Lcom/motorola/camera/AppFeatures$Feature;->POP_UP_FRONT_CAMERA:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void

    :cond_4
    const/16 v9, 0x21

    :try_start_0
    invoke-static {v9}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m()Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v10

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    :goto_0
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v10, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v11, Lcom/motorola/camera/CameraKpi$KPI;->FSM_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    filled-new-array {v3, v10, v11}, [Lcom/motorola/camera/CameraKpi$KPI;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v10, v8

    :goto_2
    const/4 v11, 0x3

    if-ge v10, v11, :cond_6

    aget-object v11, v3, v10

    iget-object v12, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v12, Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ON_CREATE:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v0, :cond_7

    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v10}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v10

    sget-object v12, Lcom/motorola/camera/CameraKpi$KPI;->START_TO_HAL_OPEN:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v13, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v14, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    sget-object v15, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    filled-new-array {v3, v12, v13, v14, v15}, [Lcom/motorola/camera/CameraKpi$KPI;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v13, v8

    :goto_3
    const/4 v14, 0x5

    if-ge v13, v14, :cond_7

    aget-object v14, v12, v13

    iget-object v15, v10, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v15, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    const/16 v9, 0x21

    goto :goto_3

    :cond_7
    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v6, 0x9

    invoke-virtual {v1, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->addFlags(I)V

    const/high16 v4, 0x8000000

    invoke-virtual {v6, v4}, Landroid/view/Window;->addFlags(I)V

    const/16 v4, 0x400

    invoke-virtual {v6, v4}, Landroid/view/Window;->addFlags(I)V

    const/16 v4, 0x200

    invoke-virtual {v6, v4}, Landroid/view/Window;->addFlags(I)V

    const/high16 v4, 0x200000

    invoke-virtual {v6, v4}, Landroid/view/Window;->addFlags(I)V

    const/16 v4, 0x80

    invoke-virtual {v6, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v1, v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v10

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-virtual {v9, v10, v7, v4}, Lcom/motorola/camera/CameraApp;->setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v7, v4, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iput-boolean v8, v4, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v4, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v4, v5}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v7, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Landroidx/media3/common/Format$$ExternalSyntheticLambda0;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object v9, v7, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast v9, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v4, v7, v9}, Lcom/motorola/camera/fsm/camera/CameraFsm;-><init>(Lcom/motorola/camera/fsm/ChangeEvent;Landroidx/media3/common/Format$$ExternalSyntheticLambda0;)V

    sget-object v7, Lcom/motorola/camera/CameraKpi$KPI;->SET_CONTENT_VIEW:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v0, :cond_8

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_8
    const v9, 0x7f0d0023

    invoke-virtual {v1, v9}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    if-eqz v0, :cond_9

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_9
    new-instance v7, Lcom/motorola/camera/Controller;

    const v9, 0x7f0a026b

    invoke-virtual {v1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-direct {v7, v1, v9, v4, v1}, Lcom/motorola/camera/Controller;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/motorola/camera/fsm/camera/CameraFsm;Lcom/motorola/camera/Controller$ActivityCallbackInterface;)V

    iput-object v7, v1, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->adjustLayoutToRealScreenSize()V

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    sget-object v7, Lcom/motorola/camera/analytics/CameraReadyEvent;->ISCOLDSTART:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Landroidx/work/impl/StartStopTokens;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v8}, Lcom/motorola/camera/QuickLaunchShortcutHelper;->editQuickLaunchShortcuts(Z)V

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/Camera;->clearMediaIdsForSecureLaunch()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v7, v1, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v7, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v9, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_d

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v5

    goto :goto_5

    :cond_b
    :goto_4
    move v2, v8

    :goto_5
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->MEISHE_LUT_FILE_NAME:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v2, :cond_c

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_c
    const-string v2, "Original"

    invoke-static {v6, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MCF_MEISHE_EFFECTS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    invoke-static {v2, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v6, 0x0

    invoke-static {v2, v6, v8}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    :cond_d
    iget-object v2, v1, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v2, v7, v5, v8}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    iput-boolean v4, v1, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    :cond_e
    invoke-virtual {v1, v1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x21

    invoke-static {v2}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static/range {p0 .. p0}, Lmotorola/core_services/cli/CLIManager;->getInstance(Landroid/content/Context;)Lmotorola/core_services/cli/CLIManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lmotorola/core_services/cli/CLIManager;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_f
    invoke-virtual {v1, v1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.motorola.internal.CAMERA_START"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.motorola.faceunlock.FACE_UNLOCK"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {v2, v8}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/Camera;->mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v1, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ON_DESTROY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z

    iget-object v2, v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/instrumentreport/InstrumentReportDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-object v2, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Lcom/motorola/camera/Camera$1;

    invoke-static {p0, v2}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.internal.CAMERA_STOP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.motorola.faceunlock.FACE_UNLOCK"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    iput-object v1, v2, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SET_EXTRA_FREE_KBYTES_REPEATEDLY:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->setExtraFreeKBytesRepeatedly(Z)V

    :cond_2
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onDestroy()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2766

    const/4 v5, 0x0

    if-eq v2, v4, :cond_5

    const/16 v4, 0x2767

    if-eq v2, v4, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_1

    const/16 v2, 0x52

    if-eq v1, v2, :cond_3

    const/16 v2, 0x55

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    move v0, v5

    goto :goto_1

    :cond_1
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/UIManager;->processKeyEvent(Landroid/view/KeyEvent;)V

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_6

    goto :goto_3

    :cond_4
    const-string v2, "SWITCH_TYPE"

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v4, v1, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_2

    :cond_5
    const-string v2, "CAPTURE_TRIGGER"

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->STYLUS:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "IS_SPLIT_SCREEN"

    iget-boolean v4, v0, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v4, v1, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    :goto_2
    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_3
    move v5, v3

    :cond_6
    if-eqz v5, :cond_7

    return v3

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v3, p2}, Lcom/motorola/camera/ui/UIManager;->dispatchKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x42

    if-eq v3, v4, :cond_1

    const/16 v4, 0x55

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x50

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    move v0, v2

    goto :goto_1

    :cond_1
    :pswitch_0
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/UIManager;->processKeyEvent(Landroid/view/KeyEvent;)V

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    move v2, v1

    :cond_3
    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLaunchStarted()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    const-string v2, "MotoCamera"

    if-nez v0, :cond_0

    const-string p1, "Received new intent on main display activity while LID is closed"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-static {}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v1, v1, v0}, Lcom/motorola/camera/launch/LaunchManager;->launch(Landroid/app/Activity;ZIIZ)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.motorola.action.STILL_IMAGE_CAMERA_CLI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.motorola.action.STILL_IMAGE_CAMERA_SECURE_CLI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p0, "Received new intent on main display activity to open CLI -> ignore"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_7

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v3, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/motorola/camera/Controller;->mIsIdle:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget v3, v0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v3, v5, :cond_4

    goto :goto_0

    :cond_4
    iput-object p1, v0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_5
    iget v3, v0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v3, v5, :cond_6

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    invoke-virtual {v0, p1, v4, v1}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, p1, v4, v1}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "NEW_INTENT_REQUEST_MODE"

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "NEW_INTENT_REQUEST_FACING"

    invoke-virtual {v3, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->NEW_INTENT_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_7
    :goto_1
    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->clearMediaIdsForSecureLaunch()V

    return-void
.end method

.method public final onPauseTasks()V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->ON_PAUSE:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    iget-object v2, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Lcom/motorola/camera/Controller;->activeRender(Z)V

    iget-object v2, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iput-boolean v3, v2, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    :cond_2
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v3, v2, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.camera3.ACTION_ENABLE_SELFIE_TILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.camera3.ACTION_ENABLE_QR_SCAN_TILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v2}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->unregisterListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

    invoke-virtual {v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    if-eqz v0, :cond_a

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->FSM_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_7
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_8
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_9
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_a
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;Z)V

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/PermissionsManager;->permissionRequestResult(Landroid/app/Activity;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->updateLocationSetting(Z)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    return-void
.end method

.method public final onResumeTasks()V
    .locals 7

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/Controller;->activeRender(Z)V

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v3, v0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-boolean v1, v0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->STARTUP_PREVIEW_FRAME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->FSM_IDLE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_3
    const-string v0, "MotoCamera"

    const-string v3, "App version: 90010091"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->ON_RESUME:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->UI_SHOW:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->RESUME_TO_OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v2, v5, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v5, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_7
    sget-object v5, Lcom/motorola/camera/storage/MediaVolumesHolder;->INSTANCE:Lcom/motorola/camera/storage/MediaVolumesHolder;

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getClientKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/storage/MediaVolumesHolder;->clients:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v5, Landroidx/emoji2/text/EmojiCompatInitializer$LoadEmojiCompatRunnable;

    invoke-direct {v5, v4}, Landroidx/emoji2/text/EmojiCompatInitializer$LoadEmojiCompatRunnable;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_0
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v2, v0, Lcom/motorola/camera/CameraApp;->mIsActivityVisible:Z

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.motorola.camera3.ACTION_DISABLE_SELFIE_TILE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.motorola.camera3.ACTION_DISABLE_QR_SCAN_TILE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v0

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v0, v5, Lcom/motorola/camera/CameraApp;->mSecure:Z

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_b

    sget-boolean v5, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    iput-boolean v5, v0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    iget-object v5, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz v5, :cond_b

    iget-boolean v6, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    if-nez v6, :cond_9

    iput-boolean v2, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    iget-object v5, v5, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    invoke-interface {v6}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->resume()V

    goto :goto_1

    :cond_9
    iget v5, v0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-ne v5, v4, :cond_a

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v5, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v5, v4}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 v4, 0x3

    iput v4, v0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    goto :goto_2

    :cond_a
    iget-object v4, v0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    if-eqz v4, :cond_b

    iget-boolean v4, v0, Lcom/motorola/camera/Controller;->mIsIdle:Z

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/Controller;->handleIntent(Landroid/content/Intent;)V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/motorola/camera/Controller;->mPendingIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    :cond_b
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/motorola/camera/Camera;->mOrientation:I

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->getIntentSource(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "flip_changed"

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    :cond_c
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v4, p0, Lcom/motorola/camera/Camera;->mActivityForegroundReceiver:Lcom/motorola/camera/Camera$1;

    sget-object v5, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v4, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->registerListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/motorola/camera/CameraIntentReceiver;->checkVibrate()V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v4, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v4, :cond_d

    new-instance v4, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_d
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v4, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_e
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_f
    :goto_3
    iput-boolean v1, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void
.end method

.method public onStart()V
    .locals 9

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->ON_START:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_2
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->showCtaInitialDialog()V

    return-void

    :cond_3
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;

    invoke-interface {p0}, Lcom/motorola/camera/launch/LaunchManager$OnLauncherManagerCallback;->onLaunchStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v5

    iput v5, v0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    const-string v5, "lid_state"

    :try_start_0
    invoke-static {v5}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "MotorolaSettingsGlobal"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v0, v0, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-virtual {v6, v5, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    if-nez v4, :cond_5

    const-string v0, "MotoCamera"

    const-string v1, "Starting mismatching activity and display. Launching proper one."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    iput-boolean v2, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v3, v1, v2, v4}, Lcom/motorola/camera/launch/LaunchManager;->launch(Landroid/app/Activity;ZIIZ)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    const/4 v4, 0x2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_6
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    const-string v5, "INITIALIZED"

    :goto_1
    const-string v6, "LAUNCHEDBY"

    invoke-virtual {v0, v6, v5}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v5

    const-string v6, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v6, p0, Lcom/motorola/camera/Camera;->mIsColdStart:Z

    xor-int/2addr v6, v2

    invoke-virtual {v5, v0, v3, v6}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    :cond_8
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p0, v3}, Lcom/motorola/camera/PermissionsManager;->updatePermissions(Landroid/app/Activity;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isSecureKeyGuardLocked()Z

    move-result v0

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v0, v5, Lcom/motorola/camera/CameraApp;->mSecure:Z

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_11

    iput-object p0, v0, Lcom/motorola/camera/Controller;->mActivityCallback:Lcom/motorola/camera/Controller$ActivityCallbackInterface;

    new-instance v5, Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v6

    invoke-direct {v5, v6}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;-><init>(Z)V

    iput-object v5, v0, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    sget-boolean v5, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v5, :cond_9

    new-instance v5, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    invoke-virtual {v0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result v6

    invoke-direct {v5, v6}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;-><init>(Z)V

    iput-object v5, v0, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    :cond_9
    new-instance v5, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    invoke-direct {v5}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;-><init>()V

    iput-object v5, v0, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sput-wide v5, Lcom/motorola/camera/SensorTime;->sTimebaseDelta:J

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoServiceMode()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_a
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object v5, v0, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object v5, v0, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    if-eqz v5, :cond_b

    invoke-virtual {v0, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_b
    iget-object v5, v0, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "MotoCameraAppVerCode"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const v8, 0x55d71eb

    if-eq v7, v8, :cond_c

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v3, v2

    :cond_c
    if-eqz v3, :cond_d

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v4}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/Controller;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    iget-object v3, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-nez v3, :cond_e

    new-instance v3, Lcom/motorola/camera/ui/UIManager;

    iget-object v5, v0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    iget-object v6, v0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {v3, v0, v5, v6}, Lcom/motorola/camera/ui/UIManager;-><init>(Lcom/motorola/camera/Controller;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v3, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_e
    iget-object v3, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    iget-object v3, v3, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    invoke-interface {v5}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->start()V

    goto :goto_2

    :cond_f
    iget v3, v0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    if-eq v3, v4, :cond_10

    iput v2, v0, Lcom/motorola/camera/Controller;->mInitOnResumeState:I

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v3, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_10
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/Controller;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_11
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->MOVE_CAMERA_TO_BACK:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v3, p0, Lcom/motorola/camera/Camera;->mMoveTaskToBackListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStart()V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_12

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_12
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onStop()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v1, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTAOpenInCreate:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v5, v1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, v0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iput-boolean v2, v0, Lcom/motorola/camera/Controller;->mCanShowDialogs:Z

    iget-object v1, v0, Lcom/motorola/camera/Controller;->mUI:Lcom/motorola/camera/ui/UIManager;

    if-eqz v1, :cond_5

    iget-boolean v4, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    if-nez v4, :cond_4

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v4, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz v5, :cond_5

    iget v4, v4, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    if-eqz v4, :cond_5

    :cond_4
    iput-boolean v2, v0, Lcom/motorola/camera/Controller;->mIsUiResumed:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v4, v1, Lcom/motorola/camera/ui/UIManager;->mRotateUIRunnable:Landroidx/work/Worker$1;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraApp;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/UIManager;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/UIComponent;

    invoke-interface {v1}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->pause()V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v1

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_6

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_6
    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v3, v0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/motorola/camera/utility/ScreenBrightnessHelper;->setupBrightnessBump(Landroid/view/Window;Z)V

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v0, v0, Lcom/motorola/camera/Controller;->mShouldHideWhenLocked:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_9
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->MOVE_CAMERA_TO_BACK:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mMoveTaskToBackListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SET_EXTRA_FREE_KBYTES_REPEATEDLY:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, v2}, Lcom/motorola/camera/Camera;->setExtraFreeKBytesRepeatedly(Z)V

    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object v1, v0, Lcom/motorola/camera/Controller;->mMcfSettingManager:Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_b
    iget-object v1, v0, Lcom/motorola/camera/Controller;->mMcfMlSettingManager:Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_c
    iget-object v1, v0, Lcom/motorola/camera/Controller;->mSceneModeManager:Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_d
    invoke-static {}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->stop()V

    sget-object v1, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/utility/lens/LensApiHelper;->reset()V

    iget-object v1, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iget-object v1, v0, Lcom/motorola/camera/Controller;->mCliContentManager:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/CliContentManager;->finishPresentationHolder()V

    :cond_e
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/Controller;->unregisterStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    iput-boolean v2, v0, Lcom/motorola/camera/Controller;->mActivityChanging:Z

    :cond_f
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    iget-object v0, p0, Lcom/motorola/camera/Camera;->launchManager:Lcom/motorola/camera/launch/LaunchManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, v0, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-boolean v1, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v3, v1, v4, v5}, Lcom/motorola/camera/launch/LaunchManager;->launch(Landroid/app/Activity;ZIIZ)V

    iput-boolean v2, p0, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    :cond_10
    return-void
.end method

.method public final onTopResumedActivityChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onTopResumedActivityChanged(Z)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean p1, v0, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.IS_UNSUPPORTED_DESKTOP_MODE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f1205b6

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v3, 0x4

    iput v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz p0, :cond_1

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA_TOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mCameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraFsm;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onTrimMemory(I)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput p1, p0, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/motorola/camera/CameraApp;->checkMultiWindow(Landroid/app/Activity;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/Controller;->windowHasFocus()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "android.intent.extra.IS_CLI_DISPLAY"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v1, p1, v0, v0}, Lcom/motorola/camera/Controller;->checkIntent(Landroid/content/Intent;ZZ)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mScreenOffReceiver:Lcom/motorola/camera/Camera$1;

    invoke-static {p0, v0, p1}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public final setExtraFreeKBytesRepeatedly(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mSetExtraFreeKBytesRunnable:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    if-eqz p1, :cond_0

    sget p1, Lcom/motorola/camera/Camera;->mVmRequestDurationMs:I

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final showCtaInitialDialog()V
    .locals 7

    iget-boolean v0, p0, Lcom/motorola/camera/Camera;->mCTARecreate:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1200d1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/motorola/camera/Camera$3;

    invoke-direct {v3, p0}, Lcom/motorola/camera/Camera$3;-><init>(Lcom/motorola/camera/Camera;)V

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, v4

    const/16 v0, 0x12

    invoke-virtual {v2, v3, v5, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x3f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f1200cc

    const/16 v5, 0x3f6

    invoke-static {v3, v0, v1, v5}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f1200cb

    const/16 v5, 0x3f9

    invoke-static {v3, v0, v1, v5}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f1200cf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x3e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f1200ce

    const/16 v6, 0x3ea

    invoke-static {v5, v1, v3, v6}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f1200cd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x7f130150

    invoke-direct {v5, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v5}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v3, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120035

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appName:Ljava/lang/String;

    const/high16 v5, 0x7f0f0000

    iput v5, v3, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appIcon:I

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->isOnlyPermission:Z

    iput-object v2, v3, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->privacyContent:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f1200d3

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;

    const/4 v6, 0x5

    invoke-direct {v2, v6}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3, v5}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, v4}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionSupplementDesc:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v0, v3, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/Camera;I)V

    iput-object v0, v3, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    iput-boolean v5, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 14

    if-eqz p1, :cond_10

    invoke-static {p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f010020

    const v2, 0x7f010021

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v5

    const/16 v6, 0x12

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    const/16 v8, 0x11

    if-eq v5, v8, :cond_1

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MISC:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_0
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_FEEDBACK:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_1
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DND_PERMISSION_REQUEST:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_2
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->PHOTOS_STABILIZE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_3
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->OBJECT_DETECTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_4
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->DOCUMENT_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_5
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->CINEMAGRAPH:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_6
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GOOGLE_LENS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_7
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->YOUTUBE_LIVE:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_8
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->VIDEO_PLAYER:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_9
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->CAMERA_SETTINGS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :pswitch_a
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SETTINGS_LOCATION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->COLLAGE_EDITOR:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->SUPER_SLOW_MOTION:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->MOTO_ACTIONS:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;->GALLERY:Lcom/motorola/camera/analytics/UserExitAppEvent$ExitType;

    :goto_0
    iget-object v3, v3, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    sget-object v8, Lcom/motorola/camera/analytics/UserExitAppEvent;->EXITTYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v8, "EXITTYP"

    invoke-virtual {v3, v8, v5}, Landroidx/work/impl/StartStopTokens;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v3

    iget-object v5, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    const/4 v8, 0x4

    const v9, 0x7f1200eb

    packed-switch v3, :pswitch_data_1

    :pswitch_b
    goto/16 :goto_4

    :pswitch_c
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/motorola/camera/Camera$6;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$6;-><init>(Lcom/motorola/camera/Camera;)V

    invoke-static {p0, p1}, Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Landroidx/work/WorkManager;)V

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->launchGoogleLens()V

    goto/16 :goto_6

    :pswitch_d
    const/16 v3, 0x9

    const/16 v10, 0xc

    const/4 v11, 0x5

    const/16 v12, 0xa

    if-eq v4, v3, :cond_5

    if-eq v4, v12, :cond_5

    if-eq v4, v11, :cond_5

    if-eq v4, v10, :cond_5

    const/16 v13, 0x13

    if-eq v4, v13, :cond_5

    const/16 v13, 0xd

    if-eq v4, v13, :cond_5

    const/4 v13, 0x7

    if-eq v4, v13, :cond_5

    if-ne v4, v6, :cond_8

    :cond_5
    if-ne v4, v12, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :cond_7
    :goto_1
    iput-boolean v7, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    invoke-static {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->setBrightnessForLaunch(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_8
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eq v4, v11, :cond_9

    if-eq v4, v12, :cond_9

    if-eq v4, v3, :cond_9

    if-eq v4, v10, :cond_9

    if-eq v4, v6, :cond_9

    new-instance v1, Lcom/motorola/camera/Camera$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/motorola/camera/Camera$4;-><init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Landroid/os/Bundle;)V

    invoke-static {p0, v1}, Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Landroidx/work/WorkManager;)V

    goto/16 :goto_6

    :cond_9
    if-eq v4, v10, :cond_b

    if-eq v4, v12, :cond_b

    if-eq v4, v11, :cond_b

    const/16 p1, 0xf

    if-ne v4, p1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_b
    :goto_2
    if-ne v4, v11, :cond_d

    invoke-static {p0}, Lcom/motorola/camera/ActivityBase;->getDisplayId(Landroid/content/Context;)I

    move-result p1

    const v0, 0x7f0a0234

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v0, v1, v2, v3, v6}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :cond_c
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :cond_d
    :goto_3
    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    invoke-virtual {p0, v5, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v0, v9}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    goto :goto_5

    :pswitch_e
    iput-boolean v7, p0, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    :try_start_1
    invoke-static {p0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->setBrightnessForLaunch(Landroid/app/Activity;Landroid/content/Intent;)V

    iget v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->orientation:I

    if-eqz v0, :cond_e

    const-string v0, "android.intent.extra.UID"

    const-string v1, "motcamera"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    invoke-static {}, Lcom/motorola/camera/Camera;->isSecureLaunch()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/motorola/camera/Camera$5;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/Camera$5;-><init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/KeyguardHelper;->requestDismissKeyguard(Landroid/app/Activity;Landroidx/work/WorkManager;)V

    goto :goto_6

    :cond_f
    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->bundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v0, v9}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    goto :goto_5

    :goto_4
    :try_start_2
    invoke-static {v4}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    invoke-virtual {p0, v5, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v0, v9}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    :goto_5
    iput v8, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v0, p0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_10
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public final updateLocationSetting(Z)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
