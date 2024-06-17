.class public final Lcom/motorola/camera/LocationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public mLastLocation:Landroid/location/Location;

.field public final synthetic this$0:Lcom/motorola/camera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1d4c0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    const-wide/32 v7, -0x1d4c0

    cmp-long v7, v4, v7

    if-gez v7, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eqz v6, :cond_4

    goto :goto_8

    :cond_4
    if-eqz v7, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    if-lez v5, :cond_6

    move v6, v3

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    if-gez v5, :cond_7

    move v7, v3

    goto :goto_4

    :cond_7
    move v7, v2

    :goto_4
    const/16 v8, 0xc8

    if-le v5, v8, :cond_8

    move v5, v3

    goto :goto_5

    :cond_8
    move v5, v2

    :goto_5
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    if-nez v0, :cond_a

    if-nez v8, :cond_9

    move v0, v3

    goto :goto_6

    :cond_9
    move v0, v2

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    if-eqz v7, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v4, :cond_c

    if-nez v6, :cond_c

    goto :goto_8

    :cond_c
    if-eqz v4, :cond_d

    if-nez v5, :cond_d

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    move v3, v2

    :goto_8
    if-eqz v3, :cond_f

    iget-object v0, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    if-nez v0, :cond_e

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    goto :goto_9

    :cond_e
    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    :goto_9
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    iget-object p0, v1, Lcom/motorola/camera/LocationManager;->mStopReceiveLocationRunnable:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;

    invoke-static {p0, v2}, Lcom/motorola/camera/LocationManager;->postStopReceiveLocationCallback(Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;Z)V

    :cond_f
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    iget-object p0, p0, Lcom/motorola/camera/LocationManager;->mStopReceiveLocationRunnable:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/motorola/camera/LocationManager;->postStopReceiveLocationCallback(Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;Z)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
