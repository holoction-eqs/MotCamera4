.class public final Lcom/motorola/camera/limitfunctionality/ThermalHandler;
.super Lcom/motorola/camera/limitfunctionality/LimiterHandler;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final FEATURES_LEVEL_2:Ljava/util/EnumSet;

.field public static volatile mThermalLevel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->ALWAYS_AWARE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MOTION_PHOTOS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v3, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MULTI_SHOT_RATE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v4, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->SURFACE_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v5, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v6, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RESOLUTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    filled-new-array/range {v1 .. v6}, [Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->FEATURES_LEVEL_2:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public final getLimitedFeatures()Ljava/util/EnumSet;
    .locals 1

    sget p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->FEATURES_LEVEL_2:Ljava/util/EnumSet;

    goto :goto_1

    :cond_1
    const-class p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    instance-of p0, p2, Landroid/os/Bundle;

    if-eqz p0, :cond_2

    check-cast p2, Landroid/os/Bundle;

    sget-object p0, Lcom/motorola/camera/settings/CustomKeyHelper;->THERMAL_LEVEL_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object p1, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    const-string p1, "ThermalHandler"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "thermal level "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 p2, 0x2

    if-lt p0, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->limitFeatures(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final start()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ENV_THERMAL_LEVEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 v1, 0x2

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string p0, "ThermalHandler"

    invoke-static {p0, v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->limitFeatures(Ljava/lang/String;Z)V

    return-void
.end method

.method public final stop()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ENV_THERMAL_LEVEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method
