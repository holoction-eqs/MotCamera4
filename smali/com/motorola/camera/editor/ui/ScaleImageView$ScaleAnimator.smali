.class public final Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final mEnd:[F

.field public final mResult:[F

.field public final mStart:[F

.field public final synthetic this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/editor/ui/ScaleImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 4

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/16 p1, 0x9

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mStart:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mEnd:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mResult:[F

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mResult:[F

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mStart:[F

    aget v1, v1, v0

    iget-object v3, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->mEnd:[F

    aget v3, v3, v0

    invoke-static {v3, v1, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;->this$0:Lcom/motorola/camera/editor/ui/ScaleImageView;

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
