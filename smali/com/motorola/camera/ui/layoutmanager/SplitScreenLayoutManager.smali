.class public final Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;
.source "SourceFile"


# instance fields
.field public final mFoldableBaseBottomMargin:I

.field public final mFoldableBaseClearanceHeight:I

.field public final mFoldableBaseComponentsMargin:I

.field public mFoldableBottomMargin:I

.field public mFoldableClearanceHeight:I

.field public mFoldableComponentsMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseBottomMargin:I

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseComponentsMargin:I

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseClearanceHeight:I

    instance-of p2, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->computeLayout(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final computeLayout(Landroid/content/Context;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseBottomMargin:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBottomMargin:I

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseComponentsMargin:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableComponentsMargin:I

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBaseClearanceHeight:I

    iput v0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->computeLayout(Landroid/content/Context;)V

    return-void
.end method

.method public final getBottomMargin()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBottomMargin:I

    return p0
.end method

.method public final getComponentsMargin()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableComponentsMargin:I

    return p0
.end method

.method public final getControlBarGuideline()F
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public final getDualCapturePIPVerticalGuideline()F
    .locals 2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    return p0
.end method

.method public final getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/CameraKpi;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->getRestrictedViewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    return-object p0
.end method

.method public final getRestrictedViewSize()Lcom/motorola/camera/PreviewSize;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    int-to-float p0, p0

    sub-float/2addr v2, p0

    mul-float/2addr v2, v1

    float-to-int p0, v2

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1, v0, p0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    return-object v1
.end method

.method public final getTrait$enumunboxing$()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object p1, p1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v0, p1

    const/high16 p1, 0x40a00000    # 5.0f

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SplitScreenLayoutManager{mBottomMargin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableBottomMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mComponentsMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableComponentsMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFoldableClearanceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/SplitScreenLayoutManager;->mFoldableClearanceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManagerV31;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
