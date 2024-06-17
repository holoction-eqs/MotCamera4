.class public abstract Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# instance fields
.field public final valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x0

    filled-new-array {p1, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-string p2, "ofInt(0, 0)"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->valueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public getLimitRotatedViews()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public getRotatedDrawables()Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getRotatedViews()Ljava/util/List;
.end method

.method public rotate(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    return-void
.end method

.method public final rotate(IZ)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotateDrawables(IZ)V

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 3
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    const v1, 0x7f0b0069

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->getRotatedViews()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v4

    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-static {v4, v5}, L_COROUTINE/ArtificialStackFrames;->getRotation(FI)F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;

    invoke-direct {v6, v3, v4, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_3
    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->getLimitRotatedViews()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_5

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final rotateDrawables(IZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->getRotatedDrawables()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v2, :cond_8

    check-cast v1, Landroid/graphics/drawable/RotateDrawable;

    iget v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    if-ne v2, p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    sub-int v3, p1, v2

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 v3, v3, 0x168

    :goto_1
    const/16 v4, 0xb4

    if-le v3, v4, :cond_3

    add-int/lit16 v3, v3, -0x168

    :cond_3
    if-gez v3, :cond_5

    rsub-int v2, v2, 0x168

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit16 v2, v2, 0x9c4

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    :cond_4
    rsub-int v3, p1, 0x168

    div-int/lit8 v3, v3, 0x5a

    mul-int/lit16 v3, v3, 0x9c4

    goto :goto_2

    :cond_5
    div-int/lit8 v2, v2, 0x5a

    mul-int/lit16 v2, v2, -0x9c4

    div-int/lit8 v3, p1, 0x5a

    mul-int/lit16 v3, v3, -0x9c4

    if-nez v3, :cond_6

    const/16 v3, -0x2710

    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_7

    const v5, 0x7f0b0069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    goto :goto_3

    :cond_7
    const-wide/16 v4, 0x0

    :goto_3
    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotateDrawableRotation$2;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotateDrawableRotation$2;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_8
    const-string v1, "RotationAwareComponent"

    const-string v2, "Not RotateDrawable instance"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public show()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void
.end method
