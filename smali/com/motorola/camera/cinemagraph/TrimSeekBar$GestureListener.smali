.class public final Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCurrentSelectedFrame:I

.field public mCurrentSelectedHandle:I

.field public final mExtraTouchArea:F

.field public mShouldMove:Z

.field public final mTouchAreas:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/TrimSeekBar;)V
    .locals 4

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mTouchAreas:Ljava/util/HashMap;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42100000    # 36.0f

    mul-float/2addr p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mExtraTouchArea:F

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->trimHandleContainsInput(Landroid/view/MotionEvent;I)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    iget p1, v2, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    :goto_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->trimHandleContainsInput(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    iget p1, v2, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    goto :goto_0

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    invoke-virtual {v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->stop()V

    iput-boolean v0, v2, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAllowDrawDurationUpdate:Z

    iget p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    invoke-static {v2, p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->-$$Nest$msetActiveHandle(Lcom/motorola/camera/cinemagraph/TrimSeekBar;I)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    return v0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    return p1
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object p4, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTrimCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-interface {p4, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;->onTrim(Z)V

    :cond_0
    iget-boolean p4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    if-nez p4, :cond_1

    iget p4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    invoke-virtual {p0, p2, p4}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->trimHandleContainsInput(Landroid/view/MotionEvent;I)Z

    move-result p4

    if-eqz p4, :cond_1

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    :cond_1
    iget-boolean p4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    const/4 v1, 0x0

    if-nez p4, :cond_2

    return v1

    :cond_2
    iget p4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    if-ne p4, v0, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getStartTrimmingMax()F

    move-result p4

    iget-object v2, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p3

    iget-object p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget-object v2, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    invoke-static {p4, p3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    iget-object p2, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iget p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, v0

    :goto_1
    iget p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    sub-int/2addr p3, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    if-ne p4, v2, :cond_8

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getEndTrimmingMin()F

    move-result p4

    iget-object v2, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p3

    iget-object p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iget-object v2, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    invoke-static {p4, p3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_5

    move p2, v0

    goto :goto_2

    :cond_5
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mShouldMove:Z

    iget-object p2, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iget p3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_1

    :goto_3
    iget p3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    if-eq p3, p2, :cond_7

    iput p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->stop()V

    :cond_6
    iget-object p0, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;

    if-eqz p0, :cond_7

    invoke-interface {p0, p2, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;->onFrameUpdate(IZ)V

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v0

    :cond_8
    return v1
.end method

.method public final trimHandleContainsInput(Landroid/view/MotionEvent;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->updateTouchAreas()V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mTouchAreas:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public final updateTouchAreas()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mTouchAreas:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mExtraTouchArea:F

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    div-float/2addr v6, v3

    add-float/2addr v6, v5

    sub-float v5, v6, v2

    iget v7, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v2

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v5, v7, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    div-float/2addr p0, v3

    sub-float/2addr v5, p0

    sub-float p0, v5, v2

    iget v6, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v2

    iget v2, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p0, v6, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget p0, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v4, p0, v2

    if-lez v4, :cond_2

    sub-float/2addr p0, v2

    div-float/2addr p0, v3

    neg-float v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, p0, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    return-void
.end method
