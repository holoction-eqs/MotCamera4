.class public abstract Lcom/motorola/camera/QuickLaunch;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getCameraFacing(Landroid/content/Context;)I
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "integer"

    const-string v2, "android"

    const-string v3, "config_quick_capture_default_camera"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    const-string v1, "quick_capture_default_camera"

    invoke-static {p0, v1, v0}, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isDoubleTapPwrAvailable(Lcom/motorola/camera/CameraApp;)Z
    .locals 6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->DOUBLE_TAP_POWER_HIDE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_doublePressOnPowerBehavior"

    const-string v2, "integer"

    const-string v3, "android"

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v2, "config_cameraDoubleTapPowerGestureEnabled"

    const-string v4, "bool"

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/motorola/camera/Util;->hasGyroSensor()Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eq v0, v5, :cond_2

    return v3

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public static isGestureAvailable(Lcom/motorola/camera/CameraApp;)Z
    .locals 4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "android"

    const-string v2, "config_cameraLaunchGestureSensorType"

    const-string v3, "integer"

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-eq p0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static setSecureSettingInt(Lcom/motorola/camera/CameraApp;Ljava/lang/String;I)Z
    .locals 4

    const-string v0, " to "

    const-string v1, "QuickLaunch"

    const-string v2, "Cannot set "

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return p0

    :catch_0
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static supports(Lcom/motorola/camera/CameraApp;I)Z
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    const-string v2, "android"

    const-string v3, "com.motorola.permission.WRITE_SECURE_SETTINGS"

    const/4 v4, 0x0

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "bool"

    const-string v0, "config_quick_capture_automatic_camera"

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "integer"

    const-string v1, "config_quick_capture_default_camera"

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-ltz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/motorola/camera/QuickLaunch;->isDoubleTapPwrAvailable(Lcom/motorola/camera/CameraApp;)Z

    move-result v4

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lcom/motorola/camera/QuickLaunch;->isGestureAvailable(Lcom/motorola/camera/CameraApp;)Z

    move-result v4

    :cond_7
    :goto_1
    return v4
.end method
