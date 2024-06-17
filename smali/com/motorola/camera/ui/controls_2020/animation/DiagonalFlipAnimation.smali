.class public final Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# static fields
.field public static final SQRT:F


# instance fields
.field public mCamera:Landroid/graphics/Camera;

.field public final mDuration:J

.field public final mFromDegree:F

.field public final mRotate:F

.field public mSizeF:Landroid/util/SizeF;

.field public final mToDegree:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->SQRT:F

    return-void
.end method

.method public constructor <init>(FFFJ)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mFromDegree:F

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mToDegree:F

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mRotate:F

    iput-wide p4, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mDuration:J

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mToDegree:F

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mFromDegree:F

    invoke-static {v0, v1, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p1}, Landroid/graphics/Camera;->rotateX(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    const/4 p1, 0x0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mRotate:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mSizeF:Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    neg-float p1, p1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mSizeF:Landroid/util/SizeF;

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mSizeF:Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mSizeF:Landroid/util/SizeF;

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    neg-float p0, v0

    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    return-void
.end method

.method public final initialize(IIII)V
    .locals 5

    new-instance v0, Landroid/util/SizeF;

    int-to-float v1, p1

    sget v2, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->SQRT:F

    div-float v3, v1, v2

    int-to-float v4, p2

    div-float/2addr v4, v2

    invoke-direct {v0, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mSizeF:Landroid/util/SizeF;

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/animation/DiagonalFlipAnimation;->mCamera:Landroid/graphics/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->setLocation(FFF)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method
