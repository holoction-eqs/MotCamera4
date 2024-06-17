.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;


# instance fields
.field public mConfig:[B

.field public mPlatform:Ljava/lang/String;

.field public mTuningConfig:[B


# virtual methods
.method public final declared-synchronized getConfiguration()[B
    .locals 7

    const-string v0, "readMcfConfig dur:"

    const-string v1, "MCF_OVERRIDE_CONFIG:"

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mConfig:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    sget-boolean v2, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "mcf.override.config"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sget-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->MCF_OVERRIDE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v4}, Ljms/IJobMgrService$_Parcel;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v3, v5

    :cond_2
    or-int/2addr v3, v2

    const-string v2, "McfJsonConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->getPlatform()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mConfig:[B

    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "McfJsonConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mConfig:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MCF configuration is invalid"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPlatform()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mPlatform:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mPlatform:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfJsonConfig;->mPlatform:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
