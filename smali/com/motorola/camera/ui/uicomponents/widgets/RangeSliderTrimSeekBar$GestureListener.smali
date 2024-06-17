.class public final Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public direction:F

.field public moveRestricted:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

.field public trimEnd:F

.field public trimStart:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 9

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->moveRestricted:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Landroidx/media3/exoplayer/StreamVolumeManager;

    array-length v3, v2

    move v4, v0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Landroidx/media3/exoplayer/StreamVolumeManager;->audioManager:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_1
    iput v4, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v2, 0x1

    if-eq v4, v5, :cond_2

    iget-object p1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Landroidx/media3/exoplayer/StreamVolumeManager;

    aget-object p1, p1, v4

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/StreamVolumeManager;->setPressed(Z)V

    goto :goto_2

    :cond_2
    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->handleTouchRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v3, v4, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    :goto_2
    iget-boolean p1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    if-nez p1, :cond_3

    iget p1, v1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    if-eq p1, v5, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result p1

    int-to-float p1, p1

    sget v3, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->$r8$clinit:I

    iget v3, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    mul-float/2addr p1, v3

    iget-object v3, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->trimStart:F

    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionEndFrame()I

    move-result p1

    int-to-float p1, p1

    iget v3, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    mul-float/2addr p1, v3

    iget-object v3, v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->trimEnd:F

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->updateUIElementsPosition(Z)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;

    invoke-interface {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;->onStartTrackingTouch()V

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->access$animateState(Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    iget p4, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p4, v0, :cond_0

    iget-boolean v2, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->moveHandleActive:Z

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->thumbs:[Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eq p4, v0, :cond_1

    aget-object v3, v2, p4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->moveRestricted:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    if-eq p4, v0, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p4

    iget v0, p1, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->activeThumbIndex:I

    aget p4, p4, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p4

    aget p4, p4, v1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object v0

    aget v0, v0, v5

    add-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v6, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->$r8$clinit:I

    iget-object v6, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v0, v6

    iget v6, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr v0, v6

    float-to-int v0, v0

    sget-object v6, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v6

    iget v7, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->direction:F

    cmpg-float v6, v6, v7

    if-nez v6, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    if-nez v6, :cond_6

    const/4 v6, 0x0

    cmpg-float v8, v7, v6

    if-gez v8, :cond_4

    if-lt v0, p4, :cond_5

    :cond_4
    cmpl-float v6, v7, v6

    if-lez v6, :cond_6

    if-le v0, p4, :cond_6

    :cond_5
    iput-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->moveRestricted:Z

    goto :goto_3

    :cond_6
    return v1

    :cond_7
    :goto_3
    if-eqz v3, :cond_c

    iget-object p4, v3, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Ljava/lang/Object;

    check-cast p4, Landroid/graphics/PointF;

    if-eqz v4, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    goto :goto_4

    :cond_8
    iget p2, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    :goto_4
    iput p2, p4, Landroid/graphics/PointF;->x:F

    iget-object p2, v3, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/PointF;

    iget p4, p2, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->trimStart:F

    cmpg-float v3, p4, v0

    if-gez v3, :cond_9

    move p4, v0

    :cond_9
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->trimEnd:F

    cmpl-float v3, p4, v0

    if-lez v3, :cond_a

    move p4, v0

    :cond_a
    iput p4, p2, Landroid/graphics/PointF;->x:F

    new-instance p2, Ljava/util/ArrayList;

    array-length p4, v2

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    array-length p4, v2

    :goto_5
    if-ge v1, p4, :cond_b

    aget-object v0, v2, v1

    iget-object v0, v0, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sget v3, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->$r8$clinit:I

    iget-object v3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object p2

    goto :goto_7

    :cond_c
    aget-object p2, v2, v1

    iget-object p2, p2, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    aget-object p4, v2, v5

    iget-object p4, p4, Landroidx/media3/exoplayer/StreamVolumeManager;->receiver:Ljava/lang/Object;

    check-cast p4, Landroid/graphics/PointF;

    iget p4, p4, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    sub-float/2addr p2, p3

    sget p4, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->$r8$clinit:I

    iget-object p4, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    sub-float/2addr p2, p4

    iget p4, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr p2, p4

    float-to-int p2, p2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p4

    aget p4, p4, v5

    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object v0

    aget v0, v0, v1

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    add-int v0, p2, p4

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionEndFrame()I

    move-result v1

    if-le v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionEndFrame()I

    move-result p2

    sub-int/2addr p2, p4

    goto :goto_6

    :cond_d
    sub-int v0, p2, p4

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result v1

    if-ge v0, v1, :cond_e

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result p2

    add-int/2addr p2, p4

    :cond_e
    :goto_6
    sub-int v0, p2, p4

    add-int/2addr p2, p4

    filled-new-array {v0, p2}, [I

    move-result-object p2

    :goto_7
    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->direction:F

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    const-string p4, "copyOf(this, size)"

    invoke-static {p3, p4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setValues([I)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object p3

    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p2

    xor-int/2addr p2, v5

    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$GestureListener;->moveRestricted:Z

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v5
.end method
