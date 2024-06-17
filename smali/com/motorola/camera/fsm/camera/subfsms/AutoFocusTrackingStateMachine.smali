.class public final Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# virtual methods
.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->AUTO_FOCUS_TRACKING_RESULT_ROI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusTrackingStateMachine$TouchTrackFocusListener;

    check-cast p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, p1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    aget v4, p1, v0

    if-nez v4, :cond_2

    aget v4, p1, v1

    if-nez v4, :cond_2

    aget v4, p1, v2

    if-nez v4, :cond_2

    aget v4, p1, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v1

    :goto_2
    iget-object v5, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTimeoutCancelRunnable:Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    iget-object v6, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    iget-boolean v1, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x1388

    invoke-virtual {v6, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iput-boolean v0, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, v3}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;I)V

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    iget-object v4, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTrackingRoiView:Lcom/motorola/camera/ui/uicomponents/widgets/TrackingROIView;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v4}, Lkotlin/collections/ArraysUtilJVM;->isSizeValid(Landroid/util/Size;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Landroid/util/Size;

    invoke-static {v4}, Lkotlin/collections/ArraysUtilJVM;->isSizeValid(Landroid/util/Size;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    if-nez v4, :cond_6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    iput-boolean v1, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mTracking:Z

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    aget v4, p1, v2

    iget-object v5, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_7

    iget-object v4, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    aput v4, p1, v2

    :cond_7
    aget v4, p1, v3

    iget-object v5, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_8

    iget-object v4, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    aput v4, p1, v3

    :cond_8
    new-instance v4, Landroid/graphics/PointF;

    aget v0, p1, v0

    int-to-float v0, v0

    aget v1, p1, v1

    int-to-float v1, v1

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    aget v1, p1, v2

    int-to-float v1, v1

    aget v2, p1, v3

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Landroid/util/Size;

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v4, v1, v2}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->convert(Landroid/graphics/PointF;Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mPreviewSize:Landroid/util/Size;

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p2, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->mViewSize:Landroid/util/Size;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v2, v3}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;->convert(Landroid/graphics/PointF;Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v5, v0

    new-instance v6, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;IIII)V

    invoke-virtual {p2, v6}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final resetState()V
    .locals 0

    return-void
.end method
