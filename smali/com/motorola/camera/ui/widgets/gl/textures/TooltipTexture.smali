.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mArrowDirection:I

.field public mArrowPosition:F

.field public final mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

.field public final mArrowThickness:F

.field public final mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

.field public final mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mDensity:F

.field public mIsRtl:Z

.field public mRadius:F

.field public mShowClose:Z

.field public mTextPaddingX:F

.field public mTextPaddingY:F

.field public final mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public final mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mUseDynamicViewSize:Z

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 13

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v1, 0x7f0603dd

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowDirection:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v1, p1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mRadius:F

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowThickness:F

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-direct {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-direct {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, -0x1000000

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v9, ""

    const/high16 v10, 0x41600000    # 14.0f

    const/high16 v11, -0x1000000

    const/4 v12, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v4, -0x1000000

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v1, 0x7f0801c2

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingX:F

    const/high16 p1, 0x41400000    # 12.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingY:F

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p0, :cond_0

    iget v1, p0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized getRect()Lcom/google/common/base/Splitter$1;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPreRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/high16 v4, 0x43340000    # 180.0f

    if-eqz v3, :cond_1

    cmpl-float v5, v1, v4

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget v5, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v5, v2, Landroid/graphics/PointF;->x:F

    :goto_1
    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    if-eqz v3, :cond_3

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget v1, v2, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_3
    :goto_2
    iget v1, v2, Landroid/graphics/PointF;->y:F

    :goto_3
    div-float/2addr v1, v6

    new-instance v2, Lcom/google/common/base/Splitter$1;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float v4, v3, v5

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v6, v0, v1

    add-float/2addr v3, v5

    sub-float/2addr v0, v1

    invoke-direct {v2, v4, v6, v3, v0}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 5

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->loadTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->LOCALES_RTL:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mIsRtl:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eq v4, v1, :cond_0

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eq v4, v1, :cond_1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mTextureState:I

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->updateTexture$1()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v2, 0x7f06007a

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final onDraw([F[F)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_0
    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1, v3, v5}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v4

    :cond_2
    if-nez p1, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDismissCurrentTooltip()V

    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v2
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final setDisplayOrientation(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    return-void
.end method
