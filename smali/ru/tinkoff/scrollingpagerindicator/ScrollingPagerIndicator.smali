.class public Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public attachRunnable:Lcom/motorola/camera/mcf/Mcf$7;

.field public final colorEvaluator:Landroid/animation/ArgbEvaluator;

.field public currentAttacher:Landroidx/emoji2/text/EmojiCompat$InitCallback;

.field public dotColor:I

.field public dotCountInitialized:Z

.field public final dotMinimumSize:I

.field public final dotNormalSize:I

.field public dotScale:Landroid/util/SparseArray;

.field public final dotSelectedSize:I

.field public firstDotOffset:F

.field public infiniteDotCount:I

.field public itemCount:I

.field public looped:Z

.field public orientation:I

.field public final paint:Landroid/graphics/Paint;

.field public selectedDotColor:I

.field public final spaceBetweenDotCenters:I

.field public visibleDotCount:I

.field public visibleDotThreshold:I

.field public visibleFramePosition:F

.field public visibleFrameWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    sget-object v1, Lru/tinkoff/scrollingpagerindicator/R$styleable;->ScrollingPagerIndicator:[I

    const v2, 0x7f1301df

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotNormalSize:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-gt v4, p2, :cond_0

    move v3, v4

    :cond_0
    iput v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotMinimumSize:I

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    add-int/2addr v3, p2

    iput v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setVisibleDotCount(I)V

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotCount(I)V

    div-int/2addr p2, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->onPageScrolled(FI)V

    :cond_1
    return-void
.end method

.method private getDotCount()I
    .locals 2

    iget-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le v0, v1, :cond_0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->infiniteDotCount:I

    return p0

    :cond_0
    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    return p0
.end method


# virtual methods
.method public final adjustFramePosition(FI)V
    .locals 5

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    iget v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v2, :cond_2

    if-le v0, v1, :cond_2

    invoke-virtual {p0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p2

    int-to-float v0, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr p1, v4

    sub-float/2addr v0, p1

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p2

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr v1, v4

    add-float/2addr v1, v0

    invoke-virtual {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p1

    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr p2, v4

    sub-float/2addr p1, p2

    goto :goto_0

    :cond_1
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float v1, v0, v4

    add-float/2addr v1, p1

    cmpl-float p1, v1, p2

    if-lez p1, :cond_3

    div-float/2addr v0, v4

    sub-float/2addr p2, v0

    iput p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    goto :goto_1

    :cond_2
    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->infiniteDotCount:I

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result p2

    int-to-float v0, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    div-float/2addr p1, v4

    sub-float/2addr v0, p1

    iput v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    :cond_3
    :goto_1
    return-void
.end method

.method public final attachToPager(Ljava/lang/Object;Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .locals 2

    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->currentAttacher:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->detachFromPager()V

    const/4 v0, 0x0

    iput-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->currentAttacher:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    iput-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Lcom/motorola/camera/mcf/Mcf$7;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotCountInitialized:Z

    invoke-virtual {p2, p0, p1}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->attachToPager(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;Ljava/lang/Object;)V

    iput-object p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->currentAttacher:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$7;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Lcom/motorola/camera/mcf/Mcf$7;

    return-void
.end method

.method public getDotColor()I
    .locals 0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    return p0
.end method

.method public final getDotOffsetAt(I)F
    .locals 1

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotOffset:F

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    mul-int/2addr p1, p0

    int-to-float p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    return p0
.end method

.method public getSelectedDotColor()I
    .locals 0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    return p0
.end method

.method public getVisibleDotCount()I
    .locals 0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    return p0
.end method

.method public getVisibleDotThreshold()I
    .locals 0

    iget p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotCount()I

    move-result v2

    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    iget v4, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotNormalSize:I

    sub-int v5, v3, v4

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const v7, 0x3f333333    # 0.7f

    mul-float/2addr v5, v7

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    const v8, 0x3f5b6db7

    int-to-float v9, v6

    mul-float/2addr v9, v8

    iget v8, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    iget v10, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotOffset:F

    sub-float v10, v8, v10

    float-to-int v10, v10

    div-int/2addr v10, v6

    iget v11, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    add-float/2addr v8, v11

    invoke-virtual {v0, v10}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result v11

    sub-float/2addr v8, v11

    float-to-int v8, v8

    div-int/2addr v8, v6

    add-int/2addr v8, v10

    if-nez v10, :cond_1

    add-int/lit8 v6, v8, 0x1

    if-le v6, v2, :cond_1

    add-int/lit8 v8, v2, -0x1

    :cond_1
    :goto_0
    if-gt v10, v8, :cond_10

    invoke-virtual {v0, v10}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotOffsetAt(I)F

    move-result v6

    iget v11, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    cmpl-float v12, v6, v11

    if-ltz v12, :cond_f

    iget v12, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    add-float v13, v11, v12

    cmpg-float v13, v6, v13

    if-gez v13, :cond_f

    iget-boolean v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v13, :cond_4

    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v14, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le v13, v14, :cond_4

    div-float/2addr v12, v15

    add-float/2addr v12, v11

    sub-float v11, v12, v9

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_2

    cmpg-float v11, v6, v12

    if-gtz v11, :cond_2

    sub-float v11, v6, v12

    add-float/2addr v11, v9

    div-float v14, v11, v9

    goto :goto_1

    :cond_2
    cmpl-float v11, v6, v12

    if-lez v11, :cond_3

    add-float v11, v12, v9

    cmpg-float v11, v6, v11

    if-gez v11, :cond_3

    sub-float v11, v6, v12

    div-float/2addr v11, v9

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v14, v12, v11

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    iget-object v11, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    :goto_1
    int-to-float v11, v4

    sub-int v12, v3, v4

    int-to-float v12, v12

    mul-float/2addr v12, v14

    add-float/2addr v12, v11

    iget v11, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le v11, v13, :cond_c

    iget-boolean v11, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    const/4 v13, 0x1

    if-nez v11, :cond_6

    if-eqz v10, :cond_5

    add-int/lit8 v11, v2, -0x1

    if-ne v10, v11, :cond_6

    :cond_5
    move v11, v7

    goto :goto_2

    :cond_6
    move v11, v5

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v16

    iget v15, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-ne v15, v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v16

    :cond_7
    move/from16 v13, v16

    iget v15, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float v16, v6, v15

    cmpg-float v16, v16, v11

    move/from16 v17, v2

    iget v2, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotMinimumSize:I

    if-gez v16, :cond_a

    sub-float v13, v6, v15

    mul-float/2addr v13, v12

    div-float/2addr v13, v11

    int-to-float v11, v2

    cmpg-float v11, v13, v11

    if-gtz v11, :cond_8

    int-to-float v12, v2

    goto :goto_3

    :cond_8
    cmpg-float v2, v13, v12

    if-gez v2, :cond_9

    move v12, v13

    :cond_9
    :goto_3
    move/from16 v16, v3

    goto :goto_4

    :cond_a
    sub-float v16, v6, v15

    int-to-float v13, v13

    sub-float v18, v13, v11

    cmpl-float v16, v16, v18

    if-lez v16, :cond_9

    move/from16 v16, v3

    neg-float v3, v6

    add-float/2addr v3, v15

    add-float/2addr v3, v13

    mul-float/2addr v3, v12

    div-float/2addr v3, v11

    int-to-float v11, v2

    cmpg-float v11, v3, v11

    if-gtz v11, :cond_b

    int-to-float v12, v2

    goto :goto_4

    :cond_b
    cmpg-float v2, v3, v12

    if-gez v2, :cond_d

    move v12, v3

    goto :goto_4

    :cond_c
    move/from16 v17, v2

    goto :goto_3

    :cond_d
    :goto_4
    iget-object v2, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    iget v11, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v14, v11, v13}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-nez v3, :cond_e

    iget v3, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float/2addr v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v12, v11

    invoke-virtual {v1, v6, v3, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_e
    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v13, v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFramePosition:F

    sub-float/2addr v6, v13

    div-float/2addr v12, v11

    invoke-virtual {v1, v3, v6, v12, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_f
    move/from16 v17, v2

    move/from16 v16, v3

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    move/from16 v2, v17

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    iget v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    iget v4, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    :cond_0
    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, v3

    add-int/2addr p1, v4

    goto :goto_0

    :cond_1
    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-lt p1, v0, :cond_0

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    float-to-int p1, p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, p2

    goto :goto_1

    :cond_3
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    move p2, v4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    :cond_5
    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p2, v3

    add-int/2addr p2, v4

    goto :goto_2

    :cond_6
    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-lt p2, v0, :cond_5

    iget p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    float-to-int p2, p2

    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move v4, p1

    goto :goto_4

    :cond_8
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4
    invoke-virtual {p0, v4, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onPageScrolled(FI)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_8

    if-ltz p2, :cond_7

    if-eqz p2, :cond_0

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-ge p2, v1, :cond_7

    :cond_0
    iget-boolean v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-gt v1, v3, :cond_5

    if-le v1, v2, :cond_5

    :cond_1
    iget-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(FI)V

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    add-int/lit8 v3, v1, -0x1

    if-ge p2, v3, :cond_2

    add-int/lit8 v1, p2, 0x1

    :goto_0
    sub-float/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(FI)V

    goto :goto_1

    :cond_2
    if-le v1, v2, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, p1, v1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(FI)V

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->scaleDotByOffset(FI)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    sub-int/2addr p2, v2

    :goto_2
    invoke-virtual {p0, p1, p2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->adjustFramePosition(FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "page must be [0, adapter.getItemCount())"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offset must be [0, 1]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reattach()V
    .locals 1

    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Lcom/motorola/camera/mcf/Mcf$7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$7;->run()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final scaleDotByOffset(FI)V
    .locals 1

    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->getDotCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    iget-object p0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 2

    if-eqz p1, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Position must be [0, adapter.getItemCount()]"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->adjustFramePosition(FI)V

    iget-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-ge v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public setDotColor(I)V
    .locals 0

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDotCount(I)V
    .locals 3

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotCountInitialized:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotCountInitialized:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotScale:Landroid/util/SparseArray;

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    if-ge p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    iget v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->dotSelectedSize:I

    if-eqz p1, :cond_2

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->itemCount:I

    iget v2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    if-le p1, v2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    div-int/lit8 p1, v1, 0x2

    int-to-float p1, p1

    :goto_0
    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->firstDotOffset:F

    iget p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    sub-int/2addr p1, v0

    iget v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->spaceBetweenDotCenters:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleFrameWidth:F

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    return-void
.end method

.method public setLooped(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->looped:Z

    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->reattach()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->orientation:I

    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Lcom/motorola/camera/mcf/Mcf$7;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->reattach()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method

.method public setSelectedDotColor(I)V
    .locals 0

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->selectedDotColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVisibleDotCount(I)V
    .locals 1

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotCount:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->infiniteDotCount:I

    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Lcom/motorola/camera/mcf/Mcf$7;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->reattach()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "visibleDotCount must be odd"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVisibleDotThreshold(I)V
    .locals 0

    iput p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->visibleDotThreshold:I

    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachRunnable:Lcom/motorola/camera/mcf/Mcf$7;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->reattach()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method
