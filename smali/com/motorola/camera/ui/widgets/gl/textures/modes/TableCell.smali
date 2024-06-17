.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public isAnimation:Z

.field public isGone:Z

.field public isRtl:Z

.field public mAlign:I

.field public final mAnimFlags:Lcom/motorola/camera/utility/Flags;

.field public mCellHeight:F

.field public mCellWidth:F

.field public final mContentBox:Landroid/graphics/RectF;

.field public mContentFixed:Landroid/graphics/PointF;

.field public mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mPaddingLeft:F

.field public mPaddingRight:F

.field public mReverseColor:Z

.field public mSelected:Z

.field public mTag:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingLeft:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellHeight:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mContentBox:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mReverseColor:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isRtl:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    invoke-direct {p1, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    return-void
.end method


# virtual methods
.method public final DP(F)F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public abstract getContentSize()Landroid/graphics/PointF;
.end method

.method public final declared-synchronized getRect()Lcom/google/common/base/Splitter$1;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v1

    new-instance v1, Lcom/google/common/base/Splitter$1;

    neg-float v3, v0

    neg-float v4, v2

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Lcom/google/common/base/Splitter$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSortRect()Lcom/google/common/base/Splitter$1;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v1

    new-instance v1, Lcom/google/common/base/Splitter$1;

    neg-float v3, v0

    neg-float v4, v2

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Lcom/google/common/base/Splitter$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    return p0
.end method

.method public final left(F)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingLeft:F

    return-void
.end method

.method public final right(F)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    return-void
.end method

.method public setAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z

    return-void
.end method

.method public final setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    :goto_0
    return-void
.end method

.method public abstract setPress()V
.end method

.method public abstract setSelected(Z)V
.end method

.method public updateContentBox(FF)V
    .locals 9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    sub-float v3, v2, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, p1

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellHeight:F

    sub-float v6, v5, v0

    div-float/2addr v6, v4

    add-float/2addr v6, p2

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAlign:I

    and-int/lit8 v8, v7, 0x8

    if-eqz v8, :cond_0

    move v3, p1

    :cond_0
    and-int/lit8 v8, v7, 0x10

    if-eqz v8, :cond_1

    add-float v3, p1, v2

    sub-float/2addr v3, v1

    :cond_1
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_2

    add-float/2addr v5, p2

    sub-float v6, v5, v0

    :cond_2
    and-int/lit8 v5, v7, 0x4

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move p2, v6

    :goto_0
    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingLeft:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_4

    add-float v3, p1, v5

    :cond_4
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isRtl:Z

    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    add-float/2addr v3, p1

    :cond_5
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    cmpl-float v8, v7, v6

    if-eqz v8, :cond_6

    add-float/2addr v2, p1

    sub-float/2addr v2, v1

    sub-float v3, v2, v7

    :cond_6
    if-eqz v5, :cond_7

    if-eqz v8, :cond_7

    add-float v3, p1, v7

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mContentBox:Landroid/graphics/RectF;

    iput v3, p1, Landroid/graphics/RectF;->left:F

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    add-float v2, p2, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    add-float v2, v3, v1

    iput v2, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    div-float/2addr v0, v4

    add-float/2addr v0, p2

    invoke-virtual {p0, v1, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method
