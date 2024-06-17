.class public final Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final mVector:[F

.field public final synthetic this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/editor/ui/ScaleImageView;FF)V
    .locals 2

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 p1, 0x2

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/32 v0, 0xf4240

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;->mVector:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;->mVector:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    sget v5, Lcom/motorola/camera/editor/ui/ScaleImageView;->$r8$clinit:I

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p0, v2, v4}, Lcom/motorola/camera/editor/ui/ScaleImageView;->scrollBy(FF)Z

    move-result p0

    aget v2, v0, v1

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v2, v4

    aput v2, v0, v1

    aget v1, v0, v3

    mul-float/2addr v1, v4

    aput v1, v0, v3

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    const/4 p0, 0x0

    sub-float v0, p0, v2

    sub-float/2addr p0, v1

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
