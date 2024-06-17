.class public final Lcom/motorola/camera/panorama/PanoStopCaptureCallable;
.super Lcom/motorola/camera/panorama/PanoCallable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallable;-><init>(Lcom/motorola/camera/panorama/PanoCallableListener;)V

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 9

    invoke-static {}, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->getInstance()Lcom/motorola/camera/panorama/morpho/MorphoEngine;

    move-result-object p0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsCapturing:Z

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/morphoinc/app/panoramagp3/DirectionFunction;->direction:I

    if-eq v3, v4, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mDirectionFunction:Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;

    iput-object v2, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mPositionDetector:Lcom/morphoinc/app/panoramagp3/PositionDetector;

    iput-boolean v0, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mIsDirectionDecided:Z

    invoke-virtual {v1, v0}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->setAttachEnabled(Z)V

    iget-object v1, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mMorphoPanoramaGP3:Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PANO_MAKE_360_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->PANORAMA_360_VIEW_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/motorola/camera/panorama/morpho/MorphoEngine;->mRoundDetector:Lcom/morphoinc/app/panoramagp3/RoundDetector;

    invoke-virtual {v5}, Lcom/morphoinc/app/panoramagp3/RoundDetector;->currentDegree()I

    move-result v6

    sget-object v7, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    const-string v8, "Off"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    iget v5, v5, Lcom/morphoinc/app/panoramagp3/RoundDetector;->mDirection:I

    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    rsub-int v6, v6, 0x168

    :cond_4
    int-to-double v5, v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3;->end(ID)I

    move-result v1

    if-eqz v1, :cond_5

    const-string v3, "MorphoEngine"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "MorphoPanoramaGP3.end error ret:0x%08X"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    monitor-exit p0

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v2}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoStopCaptureCallable"

    return-object p0
.end method
