.class public final synthetic Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$swapDone"

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Bitmap;

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_0

    iget-boolean p1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_0

    iput-boolean v0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getTransitionDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    iget-object p1, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p1, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->crossFadeAnimDuration:I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    return-void
.end method
