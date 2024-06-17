.class public final Lcom/motorola/camera/limitfunctionality/BatteryHandler;
.super Lcom/motorola/camera/limitfunctionality/LimiterHandler;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# static fields
.field public static final FEATURES_10_PERC:Ljava/util/EnumSet;

.field public static final FEATURES_5_PERC:Ljava/util/EnumSet;


# instance fields
.field public mACCharging:Z

.field public mBatteryLevel:F

.field public final mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->ALWAYS_AWARE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MULTI_SHOT_RATE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v3, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_LVL_2:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v4, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->PREVIEW_RATE_DEPTH:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v5, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->SURFACE_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v6, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_STABILIZATION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    filled-new-array/range {v1 .. v6}, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_10_PERC:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_5_PERC:Ljava/util/EnumSet;

    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RECORD:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/limitfunctionality/LimiterHandler;-><init>()V

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;

    return-void
.end method


# virtual methods
.method public final getLimitedFeatures()Ljava/util/EnumSet;
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_10_PERC:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatteryLevel:F

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    sget-object v1, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_5_PERC:Ljava/util/EnumSet;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->processEvent()V

    return-void
.end method

.method public final processBatteryStatus(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mACCharging:Z

    const-string v0, "level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, v1, :cond_1

    if-eq p1, v1, :cond_2

    :cond_1
    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatteryLevel:F

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->processEvent()V

    return-void
.end method

.method public final processEvent()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mACCharging:Z

    xor-int/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatteryLevel:F

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float p0, p0, v2

    const/4 v2, 0x0

    if-gez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    const-string p0, "BatteryHandler"

    invoke-static {p0, v1}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->limitFeatures(Ljava/lang/String;Z)V

    return-void
.end method

.method public final start()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {v1, v2, v0}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->processBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {v0, v1}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->BATTERY_LIMIT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method
