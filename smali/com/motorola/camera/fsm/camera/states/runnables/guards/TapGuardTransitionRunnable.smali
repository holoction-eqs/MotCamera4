.class public abstract Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# direct methods
.method public static isInAllowedAreaForTapAnyWhere(Landroid/graphics/PointF;)Z
    .locals 7

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/utility/TouchKeepOutHelper;->sTouchKeepOuts:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    invoke-static {v3}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->getTouchKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;)Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    move-result-object v3

    iget-boolean v5, v3, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mVisible:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mRect:Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    iget v6, p0, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    move v1, v4

    goto :goto_0

    :cond_1
    monitor-exit v0

    :goto_0
    xor-int/lit8 p0, v1, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return v1
.end method

.method public static isTapInPreview(Landroid/graphics/PointF;)Z
    .locals 4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v1, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->MODES_SLIDER:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    invoke-static {v1}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->getTouchKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;)Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static tapAllowed(Landroid/os/Bundle;)Z
    .locals 5

    const-string v0, "LOCATION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sget-object v1, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v1}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v2, v0, p0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
