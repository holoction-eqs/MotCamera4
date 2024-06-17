.class public Lcom/motorola/camera/ui/widgets/RotateLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public mChild:Landroid/view/View;

.field public mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mOrientation:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/16 p3, 0x5a

    if-eq p1, p3, :cond_0

    const/16 p3, 0xb4

    if-eq p1, p3, :cond_1

    const/16 p3, 0x10e

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, p2, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mOrientation:I

    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    move p2, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mOrientation:I

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    :goto_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mChild:Landroid/view/View;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mOrientation:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    rem-int/lit16 p1, p1, 0x168

    iget v0, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/RotateLayout;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
