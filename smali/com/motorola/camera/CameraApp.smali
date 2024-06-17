.class public Lcom/motorola/camera/CameraApp;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Landroidx/work/Configuration$Provider;


# static fields
.field public static final LOCALES_RTL:Ljava/util/List;

.field public static final mColdTime:J

.field public static sInstance:Lcom/motorola/camera/CameraApp;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mActivityRequestCode:I

.field public mActivityResultCode:I

.field public mActivityWindows:Ljava/util/HashMap;

.field public volatile mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

.field public final mAppInitializedCond:Landroid/os/ConditionVariable;

.field public mCameraKpi:Lcom/motorola/camera/CameraKpi;

.field public mDesktopMode:Z

.field public mDisplayRotation:I

.field public mDisplaySize:Landroid/graphics/Point;

.field public mGestureNavEnable:Z

.field public volatile mGestureNavInit:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsActivityOnResume:Z

.field public mIsActivityOnTop:Z

.field public mIsActivityVisible:Z

.field public mIsColdStart:Z

.field public mIsMemPressureExpected:Z

.field public mIsPreviewLimited:Z

.field public volatile mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

.field public mLatestWindow:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mNotchScreenUnuseHeight:I

.field public mPreviewRect:Landroid/graphics/Rect;

.field public mRawSize:Landroid/graphics/Point;

.field public mResumeRefCount:I

.field public mSecure:Z

.field public mStartRefCount:I

.field public mToast:Landroid/widget/Toast;

.field public mTrimMemoryLevel:I

.field public mUserMonkey:Ljava/lang/Boolean;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static -$$Nest$misObservedActivity(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Camera"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "SecureCamera"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "CliCameraActivity"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "iw"

    const-string v1, "ur"

    const-string v2, "ar"

    const-string v3, "fa"

    invoke-static {v2, v3, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/CameraApp;->LOCALES_RTL:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/motorola/camera/CameraApp;->mColdTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/CameraApp;->mActivityRequestCode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/CameraApp;->mActivityResultCode:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/CameraApp;->mNotchScreenUnuseHeight:I

    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavEnable:Z

    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mAppInitializedCond:Landroid/os/ConditionVariable;

    iput v0, p0, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static checkMultiWindow(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-boolean v0, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f120123

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/CameraApp;->showToast(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static checkPendingMediaUri(Landroid/net/Uri;)Z
    .locals 12

    const-string v0, "CameraApp"

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PENDING_MEDIA_URIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    array-length v4, v2

    if-lez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    array-length v5, v2

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v8, v2, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "is_pending"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/motorola/camera/storage/MediaStoreClient;->updateMediaItem(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v9, v3

    :goto_1
    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move v7, v10

    goto :goto_2

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checkPendingMediaUri: updateMediaItem "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    move v3, v7

    :cond_4
    return v3
.end method

.method public static getCachePreferences()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "com.motorola.camera_preferences.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/motorola/camera/CameraApp;
    .locals 1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    return-object v0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "com.motorola.camera_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static waitForInstance()Z
    .locals 5

    const/4 v0, 0x5

    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v2, 0x0

    const-string v3, "CameraApp"

    if-nez v1, :cond_0

    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Camera app has not been initialized, waiting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x258

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto :goto_0

    :catch_0
    return v2

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "The Camera app has not been initialized yet!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, v1, Lcom/motorola/camera/CameraApp;->mAppInitializedCond:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/analytics/AnalyticsHelper;

    invoke-direct {v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

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
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    return-object p0
.end method

.method public final getCameraActivityWindow()Landroid/view/Window;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLatestWindow:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/motorola/camera/CameraApp;->mLatestWindow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/Window;

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    move-object v1, v0

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    const-string v1, "SecureCamera"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/Window;

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    const-string v0, "CliCameraActivity"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final getCameraKpi()Lcom/motorola/camera/CameraKpi;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v0}, Lcom/motorola/camera/CameraKpi;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mCameraKpi:Lcom/motorola/camera/CameraKpi;

    return-object p0
.end method

.method public final getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/service/JmsServiceInterface;

    invoke-direct {v1}, Lcom/motorola/camera/service/JmsServiceInterface;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

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
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mJmsServiceInterface:Lcom/motorola/camera/service/JmsServiceInterface;

    return-object p0
.end method

.method public final hasSoftTSB()Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->equals(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isAccessibilityEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isGestureNavigateEnabled()Z
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "integer"

    const-string v3, "android"

    const-string v4, "config_navBarInteractionMode"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/CameraApp;->mGestureNavEnable:Z

    :cond_1
    iput-boolean v3, p0, Lcom/motorola/camera/CameraApp;->mGestureNavInit:Z

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mGestureNavEnable:Z

    return p0
.end method

.method public final isRtlLayout()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isTalkbackLayoutEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/Util;->AUTO_TEST:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isAccessibilityEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final isUserAMonkey()Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/CameraApp;->mUserMonkey:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/CameraApp;->mUserMonkey:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mUserMonkey:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onCreate()V
    .locals 6

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_COLD_O:Lcom/motorola/camera/CameraKpi$KPI;

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    sget-wide v2, Lcom/motorola/camera/CameraApp;->mColdTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App init:"

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sput-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    iput v0, p0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mSecure:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/CameraApp;->mIsColdStart:Z

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/utility/ForegroundRunner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->init(Landroid/content/Context;)V

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    sput-boolean v0, Lcom/motorola/camera/background/provider/FileDataContract;->isForegroundProcessingEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraApp;->mActivityWindows:Ljava/util/HashMap;

    new-instance v0, Lcom/motorola/camera/CameraApp$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/CameraApp$1;-><init>(Lcom/motorola/camera/CameraApp;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mAppInitializedCond:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    new-instance v0, Landroidx/media3/common/util/NetworkTypeObserver;

    invoke-direct {v0}, Landroidx/media3/common/util/NetworkTypeObserver;-><init>()V

    new-instance v1, Lcom/google/android/material/color/DynamicColorsOptions;

    invoke-direct {v1, v0}, Lcom/google/android/material/color/DynamicColorsOptions;-><init>(Landroidx/media3/common/util/NetworkTypeObserver;)V

    new-instance v0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;

    invoke-direct {v0, v1}, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;-><init>(Lcom/google/android/material/color/DynamicColorsOptions;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final postRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final safeStartActivity(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public final setScreenParameters(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 1

    iput p3, p0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    const/16 p3, 0x21

    invoke-static {p3}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    invoke-static {p0, p3}, Lcom/motorola/camera/Util;->isCLIState(Landroid/content/Context;I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p3, p3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p3, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/shared/Util;->hasNaturalOrientationFeature(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p3, :cond_1

    const/4 p3, 0x2

    iput p3, p0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    goto :goto_1

    :cond_1
    iget-boolean p3, p0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p3, :cond_2

    iput v0, p0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    :cond_2
    :goto_1
    iput-object p2, p0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget p3, p1, Landroid/graphics/Point;->x:I

    if-eqz p3, :cond_3

    iget p3, p1, Landroid/graphics/Point;->y:I

    if-nez p3, :cond_4

    :cond_3
    move-object p1, p2

    :cond_4
    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    return-void
.end method

.method public final showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    iget-object p1, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
