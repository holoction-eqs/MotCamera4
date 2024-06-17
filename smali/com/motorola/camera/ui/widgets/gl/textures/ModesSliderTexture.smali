.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnim:I

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mBorderH:I

.field public mBtnDownPosition:Landroid/graphics/PointF;

.field public final mCellAll:Ljava/util/ArrayList;

.field public final mDensity:F

.field public final mDialogClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;

.field public final mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;

.field public mDragDirection:I

.field public mDragDisableTime:J

.field public final mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mFromMode:I

.field public mIsModeMenu:Z

.field public mLastPosition:Landroid/graphics/PointF;

.field public mLeftIgnoreArea:F

.field public mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

.field public mOnDownOrigin:Landroid/graphics/PointF;

.field public mOnOtherDownHandled:Z

.field public mOnSliderDownHandled:Z

.field public mOrientation:I

.field public final mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

.field public mResetDialog:Landroid/app/AlertDialog;

.field public mRightIgnoreArea:F

.field public mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

.field public mSkipDragSwitch:Z

.field public mSkipGestureDetector:Z

.field public final mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

.field public mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static -$$Nest$manimateDrag(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;FF)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    const/high16 p1, 0x42700000    # 60.0f

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getFlyDistance(F)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget p1, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iput p1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    iput p1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;

    const/4 p2, 0x5

    invoke-direct {v2, p2, p0, v6}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v3, 0xa0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lkotlin/ULong$Companion;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static -$$Nest$monSliderMoving(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;FLcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    move v4, v3

    :goto_0
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v8, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz v8, :cond_3

    if-eq v8, v5, :cond_1

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    move v8, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v8, v5

    :goto_2
    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    :cond_4
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    sub-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v4, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v2, v2

    cmpl-float v7, v4, v2

    if-lez v7, :cond_5

    goto :goto_4

    :cond_5
    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v2, v1

    cmpg-float v1, v4, v2

    if-gez v1, :cond_6

    :goto_4
    iput v2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    :cond_6
    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    iput v1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move-object v7, v4

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_5

    :cond_7
    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v10, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_9

    move-object v7, v8

    goto :goto_5

    :cond_8
    move-object v8, v4

    :cond_9
    if-nez v7, :cond_a

    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_7

    :cond_a
    if-nez v8, :cond_b

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F

    move-result v1

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float p1, p1, v10

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-lez p1, :cond_c

    sub-float/2addr v1, v9

    invoke-virtual {v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p1, v8

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    add-float/2addr v1, v9

    goto :goto_6

    :cond_c
    sub-float p1, v1, v9

    invoke-virtual {v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p1, v7

    mul-float/2addr p1, p2

    sub-float/2addr v1, p1

    :goto_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorderH:I

    int-to-float p1, p1

    invoke-virtual {v10, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    :goto_7
    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr p2, v2

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_d
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v8, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v8, v7, v1

    if-gez v8, :cond_d

    move-object v4, v2

    move v1, v7

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1

    if-eqz v4, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v5, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_10
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_MOVING:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    return-void
.end method

.method public static -$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnim:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnim:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public static -$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnim:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnim:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 10

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    new-instance v0, Lcom/motorola/camera/utility/Flags;

    const-class v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-direct {v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDisableTime:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDialogClickListener:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-direct {v1, p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mForceUp:Z

    move-object p1, p2

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v3

    monitor-enter v1

    move v4, v2

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    :try_start_0
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    mul-int/lit8 v6, v4, 0x4

    aget v7, v3, v4

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    aput v7, v5, v6

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    add-int/lit8 v7, v6, 0x1

    aget v9, v3, v4

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    aput v9, v5, v7

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    add-int/lit8 v7, v6, 0x2

    aget v9, v3, v4

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    aput v9, v5, v7

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    add-int/lit8 v6, v6, 0x3

    aget v7, v3, v4

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    aput v7, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    monitor-exit v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    invoke-direct {v1, p2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMedium:I

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    const/high16 p1, 0x42000000    # 32.0f

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr p2, p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v1, p1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    mul-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorderH:I

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const v1, 0x7f08033c

    invoke-direct {p2, p0, p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;II)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object p1

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mInitialTouchSlop:F

    invoke-virtual {p2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v4, 0x7f0801cc

    invoke-direct {p2, p0, v3, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;II)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object v3

    iput v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mInitialTouchSlop:F

    invoke-virtual {p2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object p1

    const/16 p2, 0x40

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mFixedHeight:I

    const/4 p2, 0x2

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 p2, -0x1

    invoke-static {v2, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->getModeText(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IZ)Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;IZZ)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v1, p2

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    iput v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    const v1, 0x7f1202b0

    invoke-static {p2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->getModeText(Lcom/motorola/camera/ui/widgets/gl/iRenderer;IZ)Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    return-void
.end method

.method public static getTopYPosition(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;FFZ)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_0

    neg-float p2, p2

    div-float/2addr p2, v0

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeSliderY()F

    move-result p0

    const/high16 p3, 0x41e00000    # 28.0f

    add-float/2addr p0, p3

    mul-float/2addr p0, p1

    add-float/2addr p0, p2

    goto :goto_0

    :cond_0
    div-float/2addr p2, v0

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getToggleBarGuideLine()F

    move-result p0

    mul-float/2addr p0, p1

    sub-float p0, p2, p0

    :goto_0
    return p0
.end method


# virtual methods
.method public final declared-synchronized animateEdit()V
    .locals 9

    monitor-enter p0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;

    const/4 v0, 0x1

    invoke-direct {v1, p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;-><init>(Ljava/lang/Object;ZI)V

    const-wide/16 v2, 0x64

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x2

    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized animateMoveSlider(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateMoveSlider$1(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized animateMoveSlider$1(I)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_5

    const/16 v3, 0x12

    const/4 v4, 0x6

    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-nez p1, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    move-object v5, p1

    goto :goto_1

    :cond_5
    move-object v5, v3

    :goto_1
    :try_start_3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v2, v2

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/4 v4, 0x0

    invoke-direct {p1, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getScaledWidth()F

    move-result v9

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F

    move-result v2

    sub-float v6, v2, v9

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result v2

    float-to-long v2, v2

    const-wide/16 v7, 0xa0

    cmp-long v4, v2, v7

    if-lez v4, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v7, 0xa

    cmp-long v4, v2, v7

    if-gez v4, :cond_7

    :goto_2
    move-wide v10, v7

    goto :goto_3

    :cond_7
    move-wide v10, v2

    :goto_3
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;

    move-object v3, v12

    move-object v4, p0

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;F)V

    move-object v3, v2

    move-object v4, v12

    move-wide v5, v10

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lkotlin/ULong$Companion;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized animateReload(Z)V
    .locals 12

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->isDefaultSlider()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const v0, 0x3a83126f    # 0.001f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    :try_start_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    if-eqz p1, :cond_3

    move v8, v2

    goto :goto_0

    :cond_3
    move v8, v1

    :goto_0
    if-eqz p1, :cond_4

    move v9, v1

    goto :goto_1

    :cond_4
    move v9, v2

    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;

    invoke-direct {v5, p0, p1, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;ZFF)V

    const-wide/16 v6, 0x64

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized animateSliderToMultiMode(I)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v8, v1

    move-object v9, v8

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v10, 0x1

    const/16 v11, 0x2c

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v5, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v5, v4}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_2
    :goto_1
    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-nez v3, :cond_3

    move-object v8, v2

    goto :goto_0

    :cond_3
    if-eq v3, v10, :cond_5

    if-ne v3, v11, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :cond_5
    :goto_2
    if-eqz v10, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_6
    const/16 v0, 0x3e8

    if-nez p1, :cond_7

    move-object v1, v8

    goto :goto_4

    :cond_7
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_8

    goto :goto_3

    :cond_8
    if-ne p1, v0, :cond_a

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    goto :goto_4

    :cond_9
    :goto_3
    move-object v1, v9

    :cond_a
    :goto_4
    if-eqz v1, :cond_d

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v5, v5

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_b

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    move v4, p1

    move-object v5, v8

    move-object v6, v9

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->resetDragSliderModePosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;ILcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_5

    :cond_b
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-nez v3, :cond_c

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    :cond_c
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->resetClickSliderModePosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;F)V

    iget v2, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v2, v1

    iput v2, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_5

    :cond_d
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->resetSliderMenuMode()V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateSliderPosText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_e
    :goto_5
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;I)V

    move-object v4, v8

    move-object v5, v9

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->changeSliderToMultiMode(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;)V

    if-nez p1, :cond_f

    invoke-virtual {v8, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    goto :goto_8

    :cond_f
    if-eq p1, v10, :cond_11

    if-ne p1, v11, :cond_10

    goto :goto_7

    :cond_10
    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;I)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_11
    :goto_7
    invoke-virtual {v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    goto :goto_6

    :goto_8
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_12
    :goto_9
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1

    if-nez p1, :cond_13

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_13

    monitor-exit p0

    return-void

    :cond_13
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v10, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized animateSliderToSingleMode(IZ)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected$1()V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTempModeText(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v4, v1

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-nez v3, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    if-eq v3, v11, :cond_3

    const/16 v6, 0x2c

    if-ne v3, v6, :cond_2

    goto :goto_1

    :cond_2
    move v11, v2

    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    move-object v5, v1

    goto :goto_0

    :cond_4
    const/16 v2, 0x3e8

    if-eq v3, v2, :cond_0

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingLeft:F

    add-float/2addr v1, v3

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;I)V

    const/4 v9, 0x1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v10, p2, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->changeSliderToSingleMode(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;ZF)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->initTempModeLayout(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTalkback(Z)V

    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v11, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final cancelTouch()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnSliderDownHandled:Z

    return-void
.end method

.method public final checkSwitchMode(F)Z
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v0

    cmpl-float v2, p1, v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v5, 0x1

    if-lez v2, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {p0, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->switchToDrag(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;Z)V

    return v5

    :cond_2
    const/high16 v2, -0x3d800000    # -64.0f

    mul-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->switchToDrag(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;Z)V

    return v5

    :cond_4
    :goto_2
    return v1
.end method

.method public final getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F
    .locals 2

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x41000000    # 8.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method public final getButtonEvent()Lcom/motorola/camera/fsm/camera/Trigger;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDirection(II)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v0, p1, :cond_1

    return-object v1

    :cond_1
    if-ne v0, p2, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final getFlyDistance(F)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v2, p1

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float v5, v3, v4

    add-float/2addr v4, v3

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v3, v3

    cmpg-float v5, v5, v3

    if-gtz v5, :cond_0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object p1, v3

    :cond_4
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v2, v2

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v0, v0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v2, v0, :cond_2

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized initTempModeLayout(I)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected$1()V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTempModeText(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v3, v0

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v5, 0x2c

    if-eqz v2, :cond_1

    if-eq v2, v10, :cond_1

    if-eq v2, v5, :cond_1

    const/16 v6, 0x3e8

    if-eq v2, v6, :cond_1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move-object v3, v0

    goto :goto_0

    :cond_2
    if-eq v2, v10, :cond_4

    if-ne v2, v5, :cond_3

    goto :goto_1

    :cond_3
    move v10, v1

    :cond_4
    :goto_1
    if-eqz v10, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-boolean v10, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-boolean v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v9, p1, v0

    invoke-virtual/range {v1 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->changeSliderToSingleMode(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;ZF)V

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v10, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final loadTexture()V
    .locals 8

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnim:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->createSlider(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoServiceMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-nez v5, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    new-instance v1, Landroid/graphics/PointF;

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    const/high16 v7, 0x42800000    # 64.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    mul-float/2addr v5, v7

    invoke-direct {v1, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mContentFixed:Landroid/graphics/PointF;

    goto/16 :goto_7

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v6, 0x27

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v6, 0x28

    if-ne v5, v6, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_6

    :cond_7
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz v5, :cond_b

    if-eq v5, v4, :cond_a

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_9

    goto :goto_3

    :cond_9
    move v5, v0

    goto :goto_4

    :cond_a
    :goto_3
    move v5, v4

    :goto_4
    if-eqz v5, :cond_8

    :cond_b
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    goto :goto_2

    :cond_c
    const/high16 v2, 0x42f00000    # 120.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v5, v2

    iput v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mCenterBorder:F

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    goto :goto_5

    :cond_d
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    const/16 v1, 0x3e8

    iput v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    :goto_6
    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    :cond_e
    :goto_7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    monitor-enter v1

    monitor-exit v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->loadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;I)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    .locals 3

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v0, v0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorderH:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updatePortraitText(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Z)V

    :cond_1
    return-void
.end method

.method public final moveTalkback()V
    .locals 9

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackLayoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    monitor-enter v3

    :try_start_0
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget-boolean v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-nez v7, :cond_3

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v8, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v8, v7}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    monitor-exit v3

    move v2, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    monitor-exit v3

    :goto_3
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v1, v5

    sub-float/2addr v4, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, v3

    const-string v3, "CAROUSEL_SELECT_INDEX"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "LAYOUT_X"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "RELOAD_RIGHT"

    const/high16 v2, 0x42200000    # 40.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_4

    :cond_6
    const-string p0, "RELOAD_RIGHT"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_4
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0
.end method

.method public final onDraw([F[F)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    move-object/from16 v4, p1

    invoke-static {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v9, v11

    mul-float/2addr v4, v11

    sub-float v12, v9, v4

    sub-float v14, v12, v10

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v13, 0x42400000    # 48.0f

    mul-float/2addr v12, v13

    add-float v15, v12, v14

    add-float/2addr v4, v9

    sub-float v16, v4, v10

    sub-float v17, v16, v12

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v4, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v11

    sub-float v12, v9, v4

    sub-float v18, v12, v10

    add-float/2addr v4, v9

    sub-float v19, v4, v10

    iget v4, v6, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v3

    mul-float v20, v4, v11

    add-float v21, v20, v3

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual/range {v13 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setOpacity(FFFFFFFF)V

    iget v3, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v3, v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v3, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_0
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v13 .. v21}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setOpacity(FFFFFFFF)V

    :cond_1
    :goto_0
    invoke-virtual {v5, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onDrawFbo([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onDrawFbo([F[F)V

    return-void
.end method

.method public final onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->existAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->existAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    :goto_0
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getDirection(II)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-static {p0, v0, p1, v1}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    const/16 p1, 0x10

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->onPreDraw([F[F)V

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDisableTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDisableTime:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    monitor-enter v3

    :try_start_0
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->mAnimationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    xor-int/lit8 v3, v4, 0x1

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSkipDragSwitch:Z

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v1, :cond_4

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnSliderDownHandled:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSkipGestureDetector:Z

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0xb4

    const/4 v7, 0x0

    if-eq v3, v1, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_23

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_6

    goto/16 :goto_15

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSkipGestureDetector:Z

    if-eqz v2, :cond_7

    const/4 v0, 0x0

    :cond_7
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_15

    :cond_8
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOrientation:I

    if-eqz v0, :cond_a

    if-ne v0, v6, :cond_9

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    :goto_3
    move v0, v1

    :goto_4
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    if-ne v3, v1, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v7, v3, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3dcccccd    # 0.1f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    :goto_5
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    goto :goto_7

    :cond_b
    if-eqz v0, :cond_c

    cmpl-float v1, v3, v6

    if-lez v1, :cond_d

    goto :goto_6

    :cond_c
    cmpl-float v1, v6, v3

    if-lez v1, :cond_d

    :goto_6
    move v1, v5

    goto :goto_5

    :cond_d
    move v1, v4

    goto :goto_5

    :cond_e
    :goto_7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    if-ne v1, v5, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->checkSwitchMode(F)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_8

    :cond_f
    if-nez v0, :cond_23

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    if-ne v0, v4, :cond_23

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->checkSwitchMode(F)Z

    move-result v0

    if-eqz v0, :cond_23

    :goto_8
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    goto/16 :goto_13

    :cond_10
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    if-eqz v0, :cond_23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const/high16 v3, 0x40800000    # 4.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v4, v3

    float-to-double v3, v4

    cmpl-double v0, v0, v3

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    iput-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    goto/16 :goto_13

    :cond_11
    :goto_9
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_a

    :cond_12
    move v3, v2

    goto :goto_b

    :cond_13
    :goto_a
    move v3, v1

    :goto_b
    if-eqz v3, :cond_15

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    :cond_14
    :goto_c
    move v1, v3

    goto/16 :goto_15

    :cond_15
    iput-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_16

    move v3, v1

    goto :goto_d

    :cond_16
    move v3, v2

    :goto_d
    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v3, v1

    goto :goto_e

    :cond_17
    move v3, v2

    :goto_e
    if-nez v3, :cond_18

    if-nez v0, :cond_18

    goto/16 :goto_13

    :cond_18
    const/4 v0, -0x1

    const/4 v7, 0x4

    if-nez v3, :cond_1c

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-le v8, v1, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLeftIgnoreArea:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRightIgnoreArea:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1c

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->existAnimation(I)Z

    move-result v3

    if-eqz v3, :cond_19

    goto/16 :goto_13

    :cond_19
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_f

    :cond_1a
    iget v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    :goto_f
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFromMode:I

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    if-eqz v0, :cond_1b

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFromMode:I

    :cond_1b
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    goto/16 :goto_13

    :cond_1c
    if-eqz v3, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_1f

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSkipGestureDetector:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v3}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->existAnimation(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_13

    :cond_1d
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object v2

    if-nez v2, :cond_1e

    goto :goto_10

    :cond_1e
    iget v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    :goto_10
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFromMode:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnSliderDownHandled:Z

    goto/16 :goto_15

    :cond_1f
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_24

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnOtherDownHandled:Z

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOrientation:I

    if-eqz v0, :cond_21

    if-ne v0, v6, :cond_20

    goto :goto_11

    :cond_20
    move v0, v2

    goto :goto_12

    :cond_21
    :goto_11
    move v0, v1

    :goto_12
    if-eqz v0, :cond_22

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    if-ne v0, v5, :cond_22

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->checkSwitchMode(F)Z

    :cond_22
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragDirection:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/Flags;->clear()V

    :cond_23
    :goto_13
    move v1, v2

    goto :goto_15

    :cond_24
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnSliderDownHandled:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_25

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_14

    :cond_25
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnSliderDownHandled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLastPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$7;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v1, v4, v0, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_26
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->LIST_LONG_PRESS:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object v0

    if-eqz v0, :cond_28

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    monitor-enter v0

    :try_start_1
    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->mCancelListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations$1()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    goto :goto_14

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_27
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->animateMoveSlider(I)V

    :cond_28
    :goto_14
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/Flags;->clear()V

    goto/16 :goto_c

    :goto_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1
.end method

.method public final reverseColor(Z)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    if-eq v5, v4, :cond_0

    iput v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    :cond_0
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setReverseColor(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    if-eq v4, v2, :cond_5

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    :goto_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    if-eq v4, v1, :cond_3

    iput v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    :cond_3
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setReverseColor(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    if-eq v2, v1, :cond_5

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    goto :goto_1

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setReverseColor(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mReverseColor:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    iget v1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    if-eqz p1, :cond_2

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setOrientation(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setOrientation(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_3
    :goto_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOrientation:I

    return-void
.end method

.method public final setSize(Lcom/motorola/camera/PreviewSize;Z)V
    .locals 13

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v3, v0

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLeftIgnoreArea:F

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v3, v0

    int-to-float v3, v3

    div-float/2addr v3, v2

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mLeftIgnoreArea:F

    int-to-float v0, v0

    div-float/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRightIgnoreArea:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v3

    iget v4, p1, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float/2addr v3, v1

    add-float v10, v3, v4

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v7, v0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;

    invoke-direct {v6, p0, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;FI)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mOrientation:I

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout(Lcom/motorola/camera/PreviewSize;F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mIsModeMenu:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateLayout(Lcom/motorola/camera/PreviewSize;F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final declared-synchronized setVisibility(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final switchToDrag(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;Z)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderLeftMode(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v4

    const/4 v5, -0x1

    const/16 v6, 0x3e8

    if-eq v4, v6, :cond_1

    if-ne v4, v0, :cond_1

    move v2, v6

    goto :goto_2

    :cond_1
    if-ne v0, v6, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    move v2, v6

    :goto_0
    if-ltz v7, :cond_4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result v2

    :goto_2
    xor-int/lit8 v3, p2, 0x1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne p1, v4, :cond_5

    move v0, v6

    :cond_5
    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eqz v3, :cond_9

    if-ne p1, v7, :cond_6

    return-void

    :cond_6
    if-ne p1, v4, :cond_7

    return-void

    :cond_7
    if-ne v2, v5, :cond_8

    return-void

    :cond_8
    move v6, v0

    move v1, v2

    goto :goto_4

    :cond_9
    if-eq p1, v7, :cond_c

    if-ne p1, v4, :cond_a

    goto :goto_3

    :cond_a
    if-ne v1, v5, :cond_b

    return-void

    :cond_b
    move v6, v0

    goto :goto_4

    :cond_c
    :goto_3
    invoke-static {v6}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderLeftMode(I)I

    move-result v1

    :goto_4
    if-eqz p2, :cond_d

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    goto :goto_5

    :cond_d
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-static {p0, v6, v1, p1}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    const/16 p1, 0x10

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return-void

    :cond_e
    :goto_6
    const-string p0, "ModesSliderTexture"

    const-string p1, "switchToDrag ignore"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final unloadTexture()V
    .locals 2

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->unloadTexture()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F

    move-result p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorderH:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    return-void
.end method

.method public final updateLayout()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils;->createSlider(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mCellAll:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    filled-new-array {v3}, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->clearRowAndAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 1
    invoke-virtual {v6, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 2
    iput v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->isDefaultSlider()Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 4
    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 5
    iput v5, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    .line 6
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    iget-boolean v3, v3, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/16 v6, 0x3e8

    if-nez v3, :cond_2

    .line 8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 9
    invoke-virtual {v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 10
    iput v6, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 11
    iput v5, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 13
    iput-boolean v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    filled-new-array {v1}, [Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz v1, :cond_3

    const/16 v3, 0xb4

    if-ne v1, v3, :cond_4

    :cond_3
    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->setOrientation(I)V

    :cond_4
    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateSingleModeCell(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 15
    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    .line 16
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTalkback(Z)V

    return-void
.end method

.method public final updateLayout(Lcom/motorola/camera/PreviewSize;F)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(FFF)V

    invoke-virtual {p0, v1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    invoke-virtual {p2, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 v0, 0x42200000    # 40.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v0, v2

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mReload:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0, p1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    .line 17
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p1

    .line 18
    iget p1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr p1, p2

    const/high16 p2, 0x42480000    # 50.0f

    mul-float/2addr v2, p2

    add-float/2addr v2, p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mEdit:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {p1, v2, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getSelectCell()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->existAnimation(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    :cond_1
    return-void
.end method

.method public final updatePortraitText(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Z)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->GAO_DING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    if-ne v0, v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f120410

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f12040f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setText(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    :cond_3
    return-void
.end method

.method public final updateSingleModeCell(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_5

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v3, 0x2c

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz v5, :cond_3

    if-eq v5, v2, :cond_3

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iput-boolean v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result v1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateTempModeText(I)V

    goto :goto_5

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iput-boolean v1, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    const/4 v0, -0x1

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    return-void
.end method

.method public final declared-synchronized updateSliderPosText(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    const/16 v2, 0x3e8

    if-eqz v1, :cond_2

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCliAllowedMode(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->resetSliderMenuMode()V

    move v0, v2

    :cond_2
    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->sliderContainMode(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->initTempModeLayout(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected$1()V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateSingleModeCell(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p1

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, p1, :cond_5

    :try_start_2
    monitor-exit v0

    goto :goto_2

    :cond_6
    monitor-exit v0

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveSlider(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateSliderTag()V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v5, 0x1f

    const/16 v6, 0x18

    if-ne v4, v6, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    goto :goto_1

    :cond_1
    if-ne v4, v5, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput v6, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    goto :goto_1

    :cond_2
    const/16 v5, 0x12

    const/4 v6, 0x6

    if-ne v4, v6, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iput v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    goto :goto_0

    :cond_3
    if-ne v4, v5, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v6, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updatePortraitText(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateTalkback(Z)V
    .locals 11

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackLayoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move-object v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v3, v7

    sub-float/2addr v6, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v3, v5

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget-boolean v9, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-nez v9, :cond_3

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v10, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v10, v9}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-boolean v9, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    if-eqz v9, :cond_4

    move v4, v6

    :cond_4
    iget v9, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v10, 0x3e8

    if-ne v9, v10, :cond_5

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v10, 0x7f1204fa

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->getBorderWidth(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)F

    move-result v7

    float-to-int v7, v7

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v7

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    float-to-int v8, v7

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    const-string p0, "CAROUSEL_SELECT_INDEX"

    invoke-virtual {v0, p0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "CAROUSEL_WIDTH"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "LAYOUT_X"

    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "CAROUSEL_TEXT"

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "RELOAD_RIGHT"

    if-eqz p1, :cond_7

    const/high16 p1, 0x42200000    # 40.0f

    mul-float/2addr v8, p1

    invoke-virtual {v0, p0, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_4

    :cond_7
    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_4
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final updateTempModeText(I)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getAllowedValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/Setting;->getStringsForValues(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToSliderMode(I)I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setText(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f12040f

    goto :goto_2

    :cond_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mTempBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f12040b

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setText(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
