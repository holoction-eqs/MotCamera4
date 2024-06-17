.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;
.source "SourceFile"


# instance fields
.field public final mDragScrollHorizontal:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

.field public final mHorizontalScrollbar:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;-><init>(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->mDragScrollHorizontal:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->mHorizontalScrollbar:Z

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/16 p1, 0x8

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized doLayout()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->doLayout()V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->mHorizontalScrollbar:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, -0x40000000    # -2.0f

    div-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->scrollTo(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->mHorizontalScrollbar:Z

    const/16 v0, 0xb4

    const/4 v1, 0x0

    if-nez p4, :cond_3

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz p4, :cond_2

    if-ne p4, v0, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p3, Landroid/graphics/PointF;->x:F

    goto :goto_1

    :cond_2
    :goto_0
    iget v1, p3, Landroid/graphics/PointF;->y:F

    :goto_1
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p3, p2, v1, p1, p4}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    iget p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz p4, :cond_6

    if-ne p4, v0, :cond_5

    goto :goto_2

    :cond_5
    iget v1, p3, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :cond_6
    :goto_2
    iget v1, p3, Landroid/graphics/PointF;->x:F

    :goto_3
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->mDragScrollHorizontal:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p3, p2, v1, p1, p4}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPreDraw([F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onPreDraw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->animationUpdate([F)Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final scrollTo(F)V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->mHorizontalScrollbar:Z

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    mul-float/2addr p1, v2

    div-float/2addr v2, v1

    sub-float/2addr p1, v2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float p1, p1

    invoke-virtual {v0, p1, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitViewMatrixToScrollBounds()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    mul-float/2addr p1, v2

    div-float/2addr v2, v1

    sub-float/2addr p1, v2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, v3, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitViewMatrixToScrollBounds()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_0
    return-void
.end method

.method public final updateScrollBarVisibility()Z
    .locals 8

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->mHorizontalScrollbar:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->EPSION_ALPHA:F

    const/4 v3, 0x1

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-nez v0, :cond_5

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    sub-float v7, v0, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v2, v7, v2

    if-lez v2, :cond_0

    invoke-virtual {v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_0
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    invoke-virtual {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v1, v5

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowScrollBar:Z

    invoke-virtual {v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v1, v3

    :goto_0
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v4

    if-ne v2, v4, :cond_3

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v5

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_4
    return v1

    :cond_5
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    sub-float v7, v0, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v2, v7, v2

    if-lez v2, :cond_6

    invoke-virtual {v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_6
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_7

    invoke-virtual {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v1, v5

    goto :goto_2

    :cond_7
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowScrollBar:Z

    invoke-virtual {v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v1, v3

    :goto_2
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v4

    if-ne v2, v4, :cond_9

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v3, v5

    :cond_9
    :goto_3
    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_a
    return v1
.end method

.method public final updateScrollPosition()V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->mHorizontalScrollbar:Z

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/high16 v5, -0x40800000    # -1.0f

    const v6, 0x3ca3d70a    # 0.02f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollBarVisibility()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v8, v0, v3

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v12, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v12, v8, v11

    add-float/2addr v12, v9

    div-float/2addr v12, v8

    div-float v8, v3, v0

    mul-float/2addr v8, v3

    sub-float v3, v0, v8

    div-float/2addr v0, v11

    mul-float/2addr v3, v12

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v3, v11

    div-float/2addr v3, v11

    div-float/2addr v8, v11

    invoke-virtual {v2, v3, v8, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, v11

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v3

    div-float/2addr v3, v11

    sub-float/2addr v1, v3

    sub-float/2addr v0, v8

    invoke-virtual {v2, v1, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->fadeOutDelayed()V

    cmpg-float p0, v12, v6

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v10

    :goto_0
    invoke-virtual {v4, v10, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollBarVisibility()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v8, v3

    sub-float v8, v0, v8

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    div-float v12, v8, v11

    add-float/2addr v12, v9

    div-float/2addr v12, v8

    int-to-float v3, v3

    div-float v8, v3, v0

    mul-float/2addr v8, v3

    sub-float v3, v0, v8

    div-float/2addr v0, v11

    mul-float/2addr v3, v12

    sub-float/2addr v0, v3

    div-float/2addr v8, v11

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v3, v11

    div-float/2addr v3, v11

    invoke-virtual {v2, v8, v3, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v11

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v3

    div-float/2addr v3, v11

    sub-float/2addr v1, v3

    sub-float/2addr v0, v8

    invoke-virtual {v2, v0, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->fadeOutDelayed()V

    cmpg-float p0, v12, v6

    if-gez p0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v10

    :goto_2
    invoke-virtual {v4, v5, v10, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    return-void
.end method
