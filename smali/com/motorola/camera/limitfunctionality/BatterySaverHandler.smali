.class public final Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;
.super Lcom/motorola/camera/limitfunctionality/LimiterHandler;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# static fields
.field public static final FEATURES:Ljava/util/EnumSet;


# instance fields
.field public final mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;

.field public mPowerManager:Lcom/google/common/base/Joiner;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->ALWAYS_AWARE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->CINEMAGRAPH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v3, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MULTI_SHOT_RATE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v4, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_LVL_1:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v5, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_DEPTH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v6, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->SURFACE_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v7, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_STABILIZATION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    filled-new-array/range {v1 .. v7}, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->FEATURES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;-><init>()V

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;

    return-void
.end method


# virtual methods
.method public final getLimitedFeatures()Ljava/util/EnumSet;
    .locals 0

    sget-object p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->FEATURES:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->processEvent()V

    return-void
.end method

.method public final processEvent()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mPowerManager:Lcom/google/common/base/Joiner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

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
    const-string v0, "BatterySaverHandler"

    invoke-static {v0, p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->limitFeatures(Ljava/lang/String;Z)V

    return-void
.end method

.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mPowerManager:Lcom/google/common/base/Joiner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/base/Joiner;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mPowerManager:Lcom/google/common/base/Joiner;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {v1, v2, v0}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-virtual {p0}, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->processEvent()V

    return-void
.end method

.method public final stop()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, p0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {v0, v1}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_SAVER_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method
