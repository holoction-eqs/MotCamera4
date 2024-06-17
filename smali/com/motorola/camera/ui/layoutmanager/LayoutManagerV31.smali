.class public Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.source "SourceFile"


# instance fields
.field public mComponentsMargin:I

.field public mTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;-><init>()V

    instance-of v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    iget-object v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iget v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    iget-object v0, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget-object p2, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    iput-object p2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public computeLayout(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mTopMargin:I

    const v0, 0x7f0b0025

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    return-void
.end method

.method public getBottomMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCaptureBarGuideLine()F
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselFromTop()F

    move-result v0

    const/high16 v1, 0x41e00000    # 28.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x42100000    # 36.0f

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getComponentsMargin()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public getComponentsMargin()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    return p0
.end method

.method public final getIndicatorBarMarginHeight()F
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->top:I

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mTopMargin:I

    int-to-float p0, p0

    return p0
.end method

.method public final getModeCarouselFromTop()F
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v0

    const/high16 v1, 0x41e00000    # 28.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const v2, 0x3fe38e39

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v0

    sub-float/2addr v2, v0

    add-float/2addr v2, v1

    const/high16 v0, 0x40800000    # 4.0f

    add-float/2addr v2, v0

    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getNonStandardPreviewOffset()F

    move-result p0

    add-float/2addr p0, v0

    return p0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const v2, 0x3faaaaab

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v0

    sub-float/2addr v2, v0

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getComponentsMargin()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getBottomMargin()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    goto :goto_0
.end method

.method public final getModeCarouselY()F
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselFromTop()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final getModeSliderY()F
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselY()F

    move-result p0

    return p0
.end method

.method public final getToggleBarGuideLine()F
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getModeCarouselFromTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->getComponentsMargin()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42080000    # 34.0f

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getNonStandardPreviewOffset()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutManagerV31{, mComponentsMargin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->mComponentsMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateInsets(Landroid/app/Activity;Landroid/view/WindowInsets;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateInsets(Landroid/app/Activity;Landroid/view/WindowInsets;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout(Landroid/content/Context;)V

    return-void
.end method
