.class public final Landroidx/recyclerview/widget/FastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# static fields
.field public static final EMPTY_STATE_SET:[I

.field public static final PRESSED_STATE_SET:[I


# instance fields
.field public mAnimationState:I

.field public mDragState:I

.field public final mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

.field public mHorizontalDragX:F

.field public final mHorizontalRange:[I

.field public mHorizontalThumbCenterX:I

.field public final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field public final mHorizontalThumbHeight:I

.field public mHorizontalThumbWidth:I

.field public final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public final mHorizontalTrackHeight:I

.field public final mMargin:I

.field public mNeedHorizontalScrollbar:Z

.field public mNeedVerticalScrollbar:Z

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRecyclerViewHeight:I

.field public mRecyclerViewWidth:I

.field public final mScrollbarMinimumRange:I

.field public final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field public mState:I

.field public mVerticalDragY:F

.field public final mVerticalRange:[I

.field public mVerticalThumbCenterY:I

.field public final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field public mVerticalThumbHeight:I

.field public final mVerticalThumbWidth:I

.field public final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public final mVerticalTrackWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    new-instance v2, Landroidx/recyclerview/widget/FastScroller$1;

    invoke-direct {v2, p0, v0}, Landroidx/recyclerview/widget/FastScroller$1;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    new-instance v3, Landroidx/recyclerview/widget/FastScroller$2;

    invoke-direct {v3, p0, v0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    iput p7, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    iput p8, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    const/16 p4, 0xff

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance p2, Landroidx/transition/Fade$FadeAnimatorListener;

    invoke-direct {p2, p0}, Landroidx/transition/Fade$FadeAnimatorListener;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-ne p3, p0, :cond_1

    const/4 p3, 0x0

    iput-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final isPointInsideHorizontalThumb(FF)Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget p0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v0, p0, 0x2

    sub-int v0, p2, v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPointInsideVerticalThumb(FF)Z
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    if-eqz v0, :cond_1

    int-to-float v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    iget p0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 p0, p0, 0x2

    sub-int v0, p1, p0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    add-int/2addr p0, p1

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_5

    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr p2, v2

    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v5, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    iget-object v7, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1, v1, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float p2, v2

    int-to-float v4, v3

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int p2, v2

    goto :goto_1

    :cond_2
    int-to-float v2, p2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p2, p2

    :goto_1
    int-to-float p2, p2

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    iget-boolean p2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_4

    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr p2, v2

    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v5, v1, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float p0, v3

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v3

    int-to-float p0, p0

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    if-nez p1, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    if-eqz v2, :cond_1

    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final onRequestDisallowInterceptTouchEvent()V
    .locals 0

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    if-nez v0, :cond_1

    if-eqz v3, :cond_f

    :cond_1
    if-eqz v3, :cond_2

    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iput v2, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    iput v3, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_f

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_f

    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v6, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    aput v5, v6, v3

    iget v7, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v7, v5

    aput v7, v6, v1

    int-to-float v8, v5

    int-to-float v7, v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v7, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v7, v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v4

    if-gez v7, :cond_6

    goto :goto_2

    :cond_6
    iget v7, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    iget-object v8, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v8

    iget-object v9, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v9

    iget v10, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    aget v11, v6, v1

    aget v6, v6, v3

    sub-int/2addr v11, v6

    if-nez v11, :cond_8

    :cond_7
    move v6, v3

    goto :goto_1

    :cond_8
    sub-float v6, v0, v7

    int-to-float v7, v11

    div-float/2addr v6, v7

    sub-int/2addr v8, v10

    int-to-float v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v9, v6

    if-ge v9, v8, :cond_7

    if-ltz v9, :cond_7

    :goto_1
    if-eqz v6, :cond_9

    iget-object v7, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_9
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    :cond_a
    :goto_2
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    if-ne v0, v2, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    aput v5, v0, v3

    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v2, v5

    aput v2, v0, v1

    int-to-float v5, v5

    int-to-float v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_b

    goto :goto_4

    :cond_b
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    iget-object v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    aget v1, v0, v1

    aget v0, v0, v3

    sub-int/2addr v1, v0

    if-nez v1, :cond_d

    :cond_c
    move v0, v3

    goto :goto_3

    :cond_d
    sub-float v0, p1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-int/2addr v4, v6

    int-to-float v1, v4

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    if-ge v5, v4, :cond_c

    if-ltz v5, :cond_c

    :goto_3
    if-eqz v0, :cond_e

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_e
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    :cond_f
    :goto_4
    return-void
.end method

.method public final resetHideDelay(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setState(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eq v2, v1, :cond_0

    sget-object v2, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-ne v2, v1, :cond_2

    if-eq p1, v1, :cond_2

    sget-object v1, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/16 v0, 0x4b0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/16 v0, 0x5dc

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    :cond_3
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    return-void
.end method

.method public final show()V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    const/4 p0, 0x2

    new-array p0, p0, [F

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    aput v2, p0, v3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p0, v0

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
