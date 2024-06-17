.class public final Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCollisionCheck(Lcom/google/common/base/Splitter$1;)Z
    .locals 14

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v1

    iget-object v2, v1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gez v3, :cond_0

    iget v3, v4, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_0

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_0

    iget v3, v4, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    if-eqz v2, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v0, v3

    neg-float v3, v0

    invoke-virtual {v1, v3, v3}, Lcom/google/common/base/Splitter$1;->inset(FF)V

    iget-object v3, v1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget-object p1, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    iget v7, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v4, v7

    if-gez v8, :cond_6

    iget v8, p1, Landroid/graphics/RectF;->left:F

    iget v9, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v8, v9

    if-gez v10, :cond_6

    iget v10, v3, Landroid/graphics/RectF;->top:F

    iget v11, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v12, v10, v11

    if-lez v12, :cond_6

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v13, p1, v12

    if-lez v13, :cond_6

    cmpg-float v4, v4, v8

    if-gez v4, :cond_2

    iput v8, v3, Landroid/graphics/RectF;->left:F

    :cond_2
    cmpl-float v4, v10, p1

    if-lez v4, :cond_3

    iput p1, v3, Landroid/graphics/RectF;->top:F

    :cond_3
    cmpl-float p1, v9, v7

    if-lez p1, :cond_4

    iput v7, v3, Landroid/graphics/RectF;->right:F

    :cond_4
    cmpg-float p1, v12, v11

    if-gez p1, :cond_5

    iput v11, v3, Landroid/graphics/RectF;->bottom:F

    :cond_5
    move p1, v5

    goto :goto_1

    :cond_6
    move p1, v6

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->height()F

    move-result p1

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v0

    sub-float p1, v3, p1

    goto :goto_2

    :cond_7
    move p1, v3

    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    goto :goto_3

    :cond_8
    move v5, v6

    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return v2
.end method
