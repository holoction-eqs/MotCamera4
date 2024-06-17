.class public final Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;
.super Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;
.source "SourceFile"


# instance fields
.field public clickPos:Landroid/graphics/PointF;

.field public final mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public final mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mIsReverseColor:Z

.field public mSelectedColor:I

.field public final mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mUnSelectedColor:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;IZZ)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-direct {p1, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-nez p4, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    if-eqz p4, :cond_1

    if-nez p5, :cond_1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_1
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    sget-object p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {p1, p4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_2
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    .line 1
    iget-object v2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object p3, p2

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p3

    .line 3
    iget p3, p3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMain:I

    .line 4
    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;Landroid/graphics/PointF;Lcom/motorola/camera/utility/Flags;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-direct {p1, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iput-object p6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, p7}, Lcom/motorola/camera/utility/Flags;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final beginEdit()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->EDIT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceLight:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryLight:I

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateBgTex()V

    return-void
.end method

.method public final changeToSliderBg(IZ)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz p2, :cond_0

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    int-to-float p1, p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->left(F)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->right(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateText()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updatePostTranslation()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateShadowTex()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingLeft:F

    add-float/2addr p1, p2

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateBgTex()V

    return-void
.end method

.method public final drawFbo([F[F)V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->EDIT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SHADOW:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    if-nez p1, :cond_4

    invoke-virtual {v2, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :goto_0
    return-void
.end method

.method public final endEdit()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->EDIT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->REMOVED:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SHADOW:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v0

    iget v0, v0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMain:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setAlpha(F)V

    return-void
.end method

.method public final getContentSize()Landroid/graphics/PointF;
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0x42800000    # 64.0f

    const/high16 v3, 0x42200000    # 40.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result p0

    invoke-direct {v1, v3, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result p0

    invoke-direct {v1, v3, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x42b00000    # 88.0f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v2

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result p0

    invoke-direct {v0, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public final loadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_3

    monitor-enter v0

    monitor-exit v0

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateBgTex()V

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->EDIT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->GAO_DING:Lcom/motorola/camera/AppFeatures$Feature;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    const/16 v4, 0x12

    const/4 v5, 0x1

    const/4 v6, 0x6

    if-nez p1, :cond_1

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_1
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SHADOW:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void

    :cond_2
    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p1

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eq p1, v6, :cond_3

    if-ne p1, v4, :cond_4

    :cond_3
    move-object p1, v7

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    invoke-virtual {v8, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    :cond_4
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz p1, :cond_5

    if-ne p1, v5, :cond_6

    :cond_5
    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    invoke-virtual {v8, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    :cond_6
    invoke-virtual {v8, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_7
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p1, :cond_8

    invoke-virtual {v7, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v7, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_9
    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p1

    const v0, 0x3ec28f5c    # 0.38f

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eq p1, v6, :cond_a

    if-ne p1, v4, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p1

    mul-float/2addr p1, v0

    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_b
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eqz p1, :cond_c

    if-ne p1, v5, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p0

    mul-float/2addr p0, v0

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_d
    invoke-virtual {v2, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :goto_0
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 4

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    int-to-float v1, p1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(Lcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ec28f5c    # 0.38f

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void
.end method

.method public final setPress()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    return-void
.end method

.method public final setReverseColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIsReverseColor:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    return-void
.end method

.method public final setSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    :cond_0
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BitmapTextCell{mTextTex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTextTexSlider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconTex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBgTex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mShadowTex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUnSelectedColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clickPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-void
.end method

.method public final updateBgTex()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result p0

    iput p0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final updateContentBox(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updatePostTranslation()V

    return-void
.end method

.method public final updatePostTranslation()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mContentFixed:Landroid/graphics/PointF;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoServiceMode()Z

    move-result v3

    if-nez v3, :cond_2

    const/high16 v3, 0x42b80000    # 92.0f

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    :cond_2
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v4

    neg-float v4, v4

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mBgTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v1, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_3
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v5, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2, v5, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_5
    return-void
.end method

.method public final updateRes()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    :goto_0
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    :cond_1
    if-eqz v3, :cond_2

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    :cond_2
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mSelectedColor:I

    invoke-virtual {v0, v4, v4, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    if-eqz v3, :cond_4

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mUnSelectedColor:I

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    :cond_4
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mIsReverseColor:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    :goto_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->sliderShadow:I

    invoke-virtual {v0, v1, v4, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    :goto_2
    return-void
.end method

.method public final updateShadowTex()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mShadowTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-nez v1, :cond_0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/high16 v0, 0x41800000    # 16.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v0

    iput v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42900000    # 72.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/high16 v0, 0x42100000    # 36.0f

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result p0

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    return-void
.end method

.method public final updateText()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/16 v2, 0x22

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTexSlider:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->MENU:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTextTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eq v1, v2, :cond_4

    const/16 v2, 0x24

    if-eq v1, v2, :cond_2

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v5, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f120405

    goto :goto_0

    :cond_1
    const v1, 0x7f120406

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f120415

    goto :goto_0

    :cond_3
    const v1, 0x7f120416

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f12040f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const v1, 0x7f120419

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
