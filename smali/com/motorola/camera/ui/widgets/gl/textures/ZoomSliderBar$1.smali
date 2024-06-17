.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final animateScroll(F)V
    .locals 12

    const/4 v6, 0x2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->$r8$classId:I

    const v1, 0x4185999a    # 16.7f

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;

    invoke-direct {v5, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v6, 0x3e8

    mul-float v8, p1, v1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x2

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget p0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :goto_0
    move-object v8, v2

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object v0, v8, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0x3e8

    mul-float p0, p1, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, v2

    move-wide v2, v3

    move v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p0, v10, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget p0, v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v10, p0, v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, v8, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDragApplyValue(F)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->$r8$classId:I

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float p1, p1

    invoke-virtual {v0, v4, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitDragToScrollBounds()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->updateScrollPosition()V

    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->showLimitingGlow(FZ)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float p1, p1

    invoke-virtual {v0, p1, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitDragToScrollBounds()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->showLimitingGlow(FZ)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCallback:Lcom/adobe/xmp/impl/xpath/XMPPath;

    cmpl-float v0, p1, v4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->-$$Nest$mhandleDrag(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;F)V

    :goto_0
    return-void

    :goto_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpl-float v0, p1, v4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->checkZoomDisabledHints()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isShotOngoing(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->-$$Nest$mhandleDrag(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;F)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDragEnd(F)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->$r8$classId:I

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->animateScroll(F)V

    :cond_0
    return-void

    :pswitch_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->animateScroll(F)V

    :cond_1
    return-void

    :pswitch_3
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCallback:Lcom/adobe/xmp/impl/xpath/XMPPath;

    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->-$$Nest$mhandleDragEnd(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V

    return-void

    :goto_0
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->checkZoomDisabledHints()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->cancelTouch()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->-$$Nest$mhandleDragEnd(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDragStart()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mCallback:Lcom/adobe/xmp/impl/xpath/XMPPath;

    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mLastSampleTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :goto_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mCallback:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mLastSampleTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
