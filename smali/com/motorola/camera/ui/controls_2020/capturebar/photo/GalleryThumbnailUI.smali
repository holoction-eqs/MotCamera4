.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final animateHide:Lkotlin/jvm/functions/Function0;

.field public final animateShow:Lkotlin/jvm/functions/Function0;

.field public final crossFadeAnimDuration:I

.field public final galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

.field public final hide:Lkotlin/jvm/functions/Function0;

.field public orientation:I

.field public final parentView:Landroid/view/View;

.field public final show:Lkotlin/jvm/functions/Function0;

.field public final videoIndication:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/constraintlayout/utils/widget/ImageFilterButton;Landroid/widget/ImageView;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$init$2;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$init$2;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$init$2;Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$init$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->videoIndication:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->animateHide:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->animateShow:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->hide:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->show:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->crossFadeAnimDuration:I

    return-void
.end method


# virtual methods
.method public final getRotation(I)F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p0

    invoke-static {p0, p1}, L_COROUTINE/ArtificialStackFrames;->getRotation(FI)F

    move-result p0

    return p0
.end method

.method public final getTransitionDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v1, p0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0, v3, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/BitmapDrawable;

    aput-object v0, p1, v2

    aput-object v0, p1, v3

    invoke-direct {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p0
.end method

.method public final reset()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->videoIndication:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setClickEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
