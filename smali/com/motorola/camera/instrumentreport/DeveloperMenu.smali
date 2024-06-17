.class public abstract Lcom/motorola/camera/instrumentreport/DeveloperMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mDebug:Ljava/lang/Boolean;


# direct methods
.method public static isMenuEnabled()Z
    .locals 5

    sget-object v0, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->mDebug:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PROPERTY_KEY_IS_PRODUCTION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SECURE_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->ROOTED_DEVICE:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v3}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "qe 1/1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    sput-object v0, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->mDebug:Ljava/lang/Boolean;

    :cond_4
    sget-object v0, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->mDebug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method
