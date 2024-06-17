.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;->$r8$classId:I

    const-string v2, "MotoCamera"

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/Camera;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    sget-object v1, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v2, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "check memory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->LOW_MEM_KILL_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v3}, Ljms/IJobMgrService$_Parcel;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mLowMemKillSizeMb:[I

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v4

    aget v3, v3, v4

    int-to-long v3, v3

    :cond_1
    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    sput-wide v3, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->EXTRA_FREE_MEM_SIZE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v3}, Ljms/IJobMgrService$_Parcel;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v3

    sput v3, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mExtraFreeMemSizeMb:[I

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    aget v1, v3, v1

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    long-to-int v1, v3

    goto :goto_0

    :cond_2
    mul-int/lit16 v1, v3, 0x3e8

    :goto_0
    sput v1, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "low memory kill size = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/motorola/camera/Camera;->mLowMemKillSize:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extra free memory size (kb) = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->killApps()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/Camera;->mMemKillerExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Camera;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_5
    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->killApps()V

    return-void

    :pswitch_4
    sget-object v1, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDisablePreviewScreenshots"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_5
    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :goto_1
    sget-object v1, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->getDefault()Lcom/motorola/camera/reflect/android/app/IActivityManager;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-boolean v4, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setExtraFreeKBytes: mExtraFreeMemSizeKb "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mVmRequestDurationMs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/motorola/camera/Camera;->mVmRequestDurationMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget v2, Lcom/motorola/camera/Camera;->mExtraFreeMemSizeKb:I

    sget v4, Lcom/motorola/camera/Camera;->mVmRequestDurationMs:I

    iget-object v5, v1, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mSetExtraFreeKbytes:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_7

    :try_start_1
    iget-object v1, v1, Lcom/motorola/camera/reflect/android/app/IActivityManager;->mIActivityManager:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_7
    invoke-virtual {p0, v3}, Lcom/motorola/camera/Camera;->setExtraFreeKBytesRepeatedly(Z)V

    :cond_8
    return-void

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
