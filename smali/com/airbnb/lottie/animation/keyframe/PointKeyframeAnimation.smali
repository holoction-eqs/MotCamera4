.class public final Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final point:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1

    iput p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/airbnb/lottie/value/ScaleXY;

    invoke-direct {p1}, Lcom/airbnb/lottie/value/ScaleXY;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/value/Keyframe;

    iget-object p2, p2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/content/GradientColor;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length p1, p1

    :goto_0
    new-instance p2, Lcom/airbnb/lottie/model/content/GradientColor;

    new-array v0, p1, [F

    new-array p1, p1, [I

    invoke-direct {p2, v0, p1}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Landroid/graphics/PointF;
    .locals 10

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/PointF;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Landroidx/core/view/MenuHostHelper;

    if-eqz v2, :cond_0

    iget v3, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v8

    .line 1
    iget v9, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    .line 2
    invoke-virtual/range {v2 .. v9}, Landroidx/core/view/MenuHostHelper;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget p2, v1, Landroid/graphics/PointF;->x:F

    invoke-static {p2, p1, p3, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result p1

    iget p2, v0, Landroid/graphics/PointF;->y:F

    iget p3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p4

    add-float/2addr p3, p2

    invoke-virtual {p0, p1, p3}, Landroid/graphics/PointF;->set(FF)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 11

    iget-object v0, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    iget v1, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->$r8$classId:I

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->point:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    check-cast v2, Lcom/airbnb/lottie/model/content/GradientColor;

    check-cast v0, Lcom/airbnb/lottie/model/content/GradientColor;

    iget-object p0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p1, v0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v1, p1

    iget-object v3, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v4, v3

    if-ne v1, v4, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    iget-object v4, v0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    aget v4, v4, v1

    iget-object v5, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    aget v5, v5, v1

    sget-object v6, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    invoke-static {v5, v4, p2, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result v4

    iget-object v5, v2, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    aput v4, v5, v1

    aget v4, p1, v1

    aget v5, v3, v1

    invoke-static {v4, p2, v5}, Landroidx/room/util/DBUtil;->evaluate(IFI)I

    move-result v4

    iget-object v5, v2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    aput v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot interpolate between gradients. Lengths vary ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v3

    const-string v0, ")"

    .line 5
    invoke-static {p2, p1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_1
    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :goto_1
    if-eqz v0, :cond_3

    .line 8
    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    check-cast v1, Lcom/airbnb/lottie/value/ScaleXY;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Landroidx/core/view/MenuHostHelper;

    if-eqz v3, :cond_2

    iget v4, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v9

    .line 9
    iget v10, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move-object v6, v0

    move-object v7, v1

    move v8, p2

    .line 10
    invoke-virtual/range {v3 .. v10}, Landroidx/core/view/MenuHostHelper;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/value/ScaleXY;

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v2

    check-cast p0, Lcom/airbnb/lottie/value/ScaleXY;

    .line 11
    iget p1, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    iget v2, v1, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 12
    sget-object v3, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    invoke-static {v2, p1, p2, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result p1

    .line 13
    iget v0, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    iget v1, v1, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    invoke-static {v1, v0, p2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result p2

    .line 14
    iput p1, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    .line 15
    iput p2, p0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    :goto_2
    return-object p0

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    .line 20
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/animation/keyframe/PointKeyframeAnimation;->getValue(Lcom/airbnb/lottie/value/Keyframe;FFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
