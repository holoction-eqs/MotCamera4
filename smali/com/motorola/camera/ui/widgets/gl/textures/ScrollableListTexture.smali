.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;
.source "SourceFile"


# static fields
.field public static final EPSION_ALPHA:F

.field public static final VIEW_MATRIX_ORIGIN:[F


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mDensity:F

.field public final mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

.field public final mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

.field public mForceUp:Z

.field public mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

.field public final mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

.field public mLayoutBounds:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public final mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mShowGlowTex:Z

.field public mShowScrollBar:Z

.field public mViewMatrix:[F

.field public mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->VIEW_MATRIX_ORIGIN:[F

    const v0, 0x3f333333    # 0.7f

    invoke-static {v0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->EPSION_ALPHA:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 12

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mForceUp:Z

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;-><init>(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDragScroll:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p1, p2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    new-instance p1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    move-object v1, p2

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonActiveColor:I

    invoke-direct {p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowGlowTex:Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrix:[F

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->VIEW_MATRIX_ORIGIN:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized doLayout()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->layout()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;->WRAP_CONTENT:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mResizeFbo:Z

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, -0x40000000    # -2.0f

    div-float/2addr v0, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->scrollTo(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final fadeOutDelayed()V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowScrollBar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final getOnScreenSize()Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    invoke-direct {v0, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method public final getViewMatrixOffset()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-object p0
.end method

.method public final limitDragToScrollBounds()F
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitViewMatrixToScrollBounds()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v2, v3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v2, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final limitViewMatrixToScrollBounds()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v3

    cmpg-float v4, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    if-gez v4, :cond_0

    int-to-float v3, v3

    div-float/2addr v3, v5

    div-float/2addr v2, v5

    sub-float/2addr v3, v2

    goto :goto_0

    :cond_0
    div-float/2addr v2, v5

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float v3, v2, v3

    :goto_0
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    int-to-float v1, v1

    div-float/2addr v1, v5

    div-float/2addr v0, v5

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_1
    div-float/2addr v0, v5

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float v1, v0, v1

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v4, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    neg-float v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-void
.end method

.method public loadTexture()V
    .locals 6

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->loadTexture()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v5, v2

    div-float/2addr v5, v2

    invoke-virtual {v0, v5, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    aput-object v1, p0, v4

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    return-void
.end method

.method public final onDrawFboContents([F[F)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrix:[F

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onDrawFboContents([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrix:[F

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public declared-synchronized onPreDraw([F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onPreDraw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->animationUpdate([F)Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
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

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onSingleTap(Landroid/graphics/PointF;JJ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->getOnScreenSize()Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Lcom/google/common/base/Splitter$1;

    iget v2, v0, Landroid/graphics/Point;->x:I

    neg-int v3, v2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    div-float/2addr v5, v4

    int-to-float v2, v2

    div-float/2addr v2, v4

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    if-nez v1, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mForceUp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public abstract scrollTo(F)V
.end method

.method public final setPostTranslation(FFF)V
    .locals 1

    .line 1
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->updateScrollPosition()V

    return-void
.end method

.method public final setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 4

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/16 v0, 0x10

    new-array v1, v0, [F

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->VIEW_MATRIX_ORIGIN:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-static {v1, v0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->translate([FFFF)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrix:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mDirty:Z

    return-void
.end method

.method public final declared-synchronized showLimitingGlow(FZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    if-nez p2, :cond_2

    if-eq v1, v2, :cond_1

    const/4 p1, 0x4

    if-eq v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    iget p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlpha:F

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaStart:F

    const/4 p1, 0x0

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaFinish:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mStartTime:J

    const/high16 p1, 0x447a0000    # 1000.0f

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mDuration:F

    goto :goto_1

    :cond_2
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowGlowTex:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {p2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowAnimation:Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput v2, p2, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    iput-wide v0, p2, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mStartTime:J

    const/high16 v0, 0x43270000    # 167.0f

    iput v0, p2, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mDuration:F

    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaStart:F

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlpha:F

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaFinish:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final showScrollBar()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mFadeRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mShowScrollBar:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->updateScrollBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->fadeOutDelayed()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " layoutBounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " viewOffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unloadTexture()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mGlowTex:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->unloadTexture()V

    return-void
.end method

.method public abstract updateScrollBarVisibility()Z
.end method

.method public abstract updateScrollPosition()V
.end method
