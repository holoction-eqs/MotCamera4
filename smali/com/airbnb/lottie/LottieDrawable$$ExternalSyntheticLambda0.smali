.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p0, Landroid/graphics/drawable/RotateDrawable;

    const-string v0, "$rotateDrawable"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/editor/ui/ScaleImageView;

    sget v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    sget v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadPosition:F

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mCurrentFrame:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mCurrentFrame:I

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;->onFrameUpdate(IZ)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void

    :pswitch_3
    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/media3/ui/DefaultTimeBar;

    sget v0, Landroidx/media3/ui/DefaultTimeBar;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Landroidx/media3/ui/DefaultTimeBar;->scrubberScale:F

    iget-object p1, p0, Landroidx/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/airbnb/lottie/LottieDrawable;

    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->asyncUpdates:Lcom/airbnb/lottie/AsyncUpdates;

    sget-object v1, Lcom/airbnb/lottie/AsyncUpdates;->ENABLED:Lcom/airbnb/lottie/AsyncUpdates;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V

    :cond_4
    :goto_1
    return-void

    :goto_2
    check-cast p0, Ljava/util/List;

    sget v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->$r8$clinit:I

    const-string v0, "$currentViews"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_3

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
