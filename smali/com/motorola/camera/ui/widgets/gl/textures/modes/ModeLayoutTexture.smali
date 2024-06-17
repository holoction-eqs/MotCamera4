.class public final Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;
.source "SourceFile"


# instance fields
.field public mBottomToTop:Z

.field public mCenterBorder:F

.field public mRotateAnim:Z

.field public final mRows:Ljava/util/ArrayList;

.field public mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mCenterBorder:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mBottomToTop:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized addCellLeft(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p2

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final animationFadeIn(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    if-eqz p2, :cond_0

    const/high16 v0, -0x3de00000    # -40.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    :goto_0
    iget v1, v7, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float v4, v1, v0

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;I)V

    const-wide/16 v11, 0x118

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    const/16 v16, 0x0

    move-object v9, v15

    move-object v1, v15

    move v15, v0

    invoke-direct/range {v9 .. v16}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget v0, v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, v0, v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget v0, v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    add-int/lit16 v0, v0, 0x190

    iget-object v2, v7, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animationFadeOut(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    if-eqz p2, :cond_0

    const/high16 v0, 0x42200000    # 40.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3de00000    # -40.0f

    :goto_0
    iget v1, v7, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float v4, v1, v0

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;

    const/4 v6, 0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;I)V

    const-wide/16 v11, 0x118

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    const/16 v16, 0x0

    move-object v9, v15

    move-object v1, v15

    move v15, v0

    invoke-direct/range {v9 .. v16}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget v0, v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, v0, v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget v0, v8, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    add-int/lit16 v0, v0, 0x190

    iget-object v2, v7, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 4

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const v2, 0x3f4ccccd    # 0.8f

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v3, v2

    invoke-direct {v0, v1, v3, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setAnimation(Z)V

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    add-int/lit16 p1, p1, 0x12c

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final declared-synchronized changeSliderToMultiMode(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v2, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    invoke-virtual {p0, p4, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p4

    invoke-virtual {p0, p2, p4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    invoke-virtual {p0, p3, p2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object p4, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p4, p3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p0, p2, p4, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationFadeIn(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;)V

    goto :goto_1

    :cond_4
    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object p4, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p4, p3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3, p5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationFadeOut(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized changeSliderToSingleMode(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;ZF)V
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    monitor-enter p0

    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v7, v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v9, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    invoke-virtual/range {p5 .. p5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    div-float/2addr v9, v11

    add-float/2addr v9, v10

    iget v10, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v8, v9, v10, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    if-eqz p7, :cond_0

    invoke-virtual {p0, v4, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_0
    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget v10, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v12, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float v10, v10, v12

    if-gez v10, :cond_4

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v12, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v11

    sub-float/2addr v12, v13

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v11

    sub-float/2addr v12, v13

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v13

    iget v13, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v10, v12, v13, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget v12, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v13, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v12, v13

    cmpl-float v14, v12, p8

    if-lez v14, :cond_1

    sub-float v12, v12, p8

    add-float/2addr v13, v12

    iput v13, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v13, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v13, v12

    iput v13, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual {p0, v0, v8, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v11

    sub-float/2addr v4, v3

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v11

    sub-float/2addr v4, v3

    iget v3, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, v4, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    if-eqz p7, :cond_3

    invoke-virtual {p0, v2, v9, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_3

    :cond_4
    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v12, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v11

    sub-float/2addr v12, v13

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    div-float/2addr v13, v11

    sub-float/2addr v12, v13

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v13

    iget v13, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v10, v12, v13, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget v12, v10, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v13, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v12, v13

    cmpl-float v14, v12, p8

    if-lez v14, :cond_5

    sub-float v12, v12, p8

    add-float/2addr v13, v12

    iput v13, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v13, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v13, v12

    iput v13, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual {p0, v2, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_2
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v11

    sub-float/2addr v4, v3

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v11

    sub-float/2addr v4, v3

    iget v3, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v2, v4, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    if-eqz p7, :cond_7

    invoke-virtual {p0, v0, v8, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, -0x3de00000    # -40.0f

    if-eqz v3, :cond_a

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v3, 0x1

    move-object/from16 v7, p6

    if-eqz p7, :cond_9

    invoke-virtual {p0, v2, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationFadeIn(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v9, v4

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v10, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v8, v9

    invoke-direct {v4, v10, v8, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    :goto_5
    invoke-virtual {v2, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_6

    :cond_a
    move-object/from16 v7, p6

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_OUT:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v8, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v3, 0x0

    if-eqz p7, :cond_b

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationFadeOut(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$$ExternalSyntheticLambda1;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v9, v4

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v10, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v8, v9

    invoke-direct {v4, v10, v8, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_5

    :goto_6
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized clearRowAndAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized editFinish()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setAnimation(Z)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected$1()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    instance-of v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    return-object p0
.end method

.method public final declared-synchronized layout()V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    iput v2, v3, Landroid/graphics/PointF;->y:F

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-boolean v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isGone:Z

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->updateCell()V

    iget v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    iget-object v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    div-int/2addr v9, v8

    iget-object v10, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    rem-int/2addr v10, v8

    if-lez v10, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    add-int/2addr v9, v6

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    move v7, v9

    :goto_2
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->y:F

    int-to-float v7, v7

    iget v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    iget v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mCenterBorder:F

    mul-float/2addr v7, v5

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedWidth:F

    add-float/2addr v7, v4

    iget v4, v6, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    iput v7, v6, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_4
    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mBottomToTop:Z

    if-eqz v3, :cond_5

    int-to-float v3, v0

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v3, v4

    if-lez v8, :cond_5

    sub-float/2addr v3, v4

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    if-lez v0, :cond_6

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v8, v4, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    cmpg-float v8, v8, v0

    if-gez v8, :cond_6

    iput v0, v4, Landroid/graphics/PointF;->y:F

    :cond_6
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v5

    sub-float/2addr v0, v3

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-boolean v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isGone:Z

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    iget v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    iget v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I

    iget v10, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    iget-boolean v11, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isRtl:Z

    sub-float/2addr v0, v10

    const/4 v12, 0x3

    if-ne v9, v12, :cond_8

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    goto :goto_5

    :cond_8
    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    neg-float v13, v13

    :goto_5
    div-float/2addr v13, v5

    const/4 v14, 0x2

    if-ne v9, v14, :cond_b

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v12, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    if-lt v6, v12, :cond_9

    goto :goto_7

    :cond_9
    iget v12, v14, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-float v16, v16, v12

    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x3

    const/4 v14, 0x2

    goto :goto_6

    :cond_a
    :goto_7
    :try_start_2
    monitor-exit v4

    sub-float v15, v15, v16

    div-float/2addr v15, v5

    add-float/2addr v13, v15

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_b
    :goto_8
    iput v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginX:F

    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginY:F

    iput v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextX:F

    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextY:F

    if-ne v9, v7, :cond_d

    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    const/4 v2, 0x3

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v2, 0x3

    if-ne v9, v2, :cond_e

    if-eqz v11, :cond_e

    :goto_a
    move v6, v7

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    :goto_b
    if-ne v9, v2, :cond_f

    if-eqz v11, :cond_10

    :cond_f
    if-ne v9, v7, :cond_11

    if-eqz v11, :cond_11

    :cond_10
    move v2, v7

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    :goto_c
    iget-object v12, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v14, 0x0

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iput-boolean v11, v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isRtl:Z

    iget v5, v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    iget-boolean v7, v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-eqz v7, :cond_12

    const/4 v5, 0x0

    :cond_12
    if-lt v14, v8, :cond_13

    sub-float/2addr v0, v10

    iget v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mLineGap:I

    int-to-float v7, v7

    iget v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v7, v13

    sub-float/2addr v0, v7

    iget v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginX:F

    const/4 v14, 0x0

    :cond_13
    if-eqz v6, :cond_15

    :cond_14
    invoke-virtual {v15, v13, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    :goto_e
    add-float/2addr v13, v5

    goto :goto_f

    :cond_15
    if-eqz v2, :cond_16

    sub-float v5, v13, v5

    invoke-virtual {v15, v13, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    move v13, v5

    goto :goto_f

    :cond_16
    const/4 v7, 0x2

    if-ne v9, v7, :cond_17

    if-eqz v11, :cond_14

    neg-float v7, v13

    sub-float/2addr v7, v5

    invoke-virtual {v15, v7, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    goto :goto_e

    :cond_17
    :goto_f
    const/4 v5, 0x1

    add-int/2addr v14, v5

    iput v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextX:F

    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextY:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v7, v5

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final loadTexture()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->mObservers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->loadTexture()V

    goto :goto_1

    :cond_1
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->loadTexture()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized moveMenuCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    iget v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    move v2, v3

    goto :goto_7

    :cond_5
    if-eqz v2, :cond_3

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    if-eqz v1, :cond_6

    invoke-virtual {p0, v5, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v6, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_5
    invoke-virtual {p1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    goto :goto_6

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :goto_6
    invoke-virtual {p2, v7, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_8

    :cond_8
    :goto_7
    move-object v5, v6

    goto :goto_2

    :cond_9
    :goto_8
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->switchCell(ZLcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized moveSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_0
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v4, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-nez v3, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    move v11, v5

    move v5, v6

    :cond_4
    if-nez v5, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    neg-float v11, v5

    move v5, v6

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_3

    if-eqz v4, :cond_6

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget v4, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v4, v7

    iput v4, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_3

    :cond_6
    invoke-virtual {v12, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v14, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v15, v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v15, v11

    iput v15, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v1, v12, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v3, :cond_3

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget v4, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v4, v7

    iput v4, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    :goto_3
    invoke-virtual {v2, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_7
    :goto_4
    move-object/from16 v4, p3

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->switchCell(ZLcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw v0
.end method

.method public final onChanged$1()V
    .locals 0

    return-void
.end method

.method public final onTouchDown(JLandroid/graphics/PointF;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onTouchDown(JLandroid/graphics/PointF;)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    instance-of p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    iput-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public final declared-synchronized removeCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized resetClickSliderModePosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;F)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v3, p2

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized resetDragSliderModePosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;ILcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    iget-object p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p5

    iget p5, p5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p5, p4

    iget-object p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p3, v0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-object p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p5

    iget p5, p5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p3, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p5, p3

    iget-object p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p4, v0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    :cond_1
    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_2

    iget-object p3, p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p4

    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p3, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float p3, p4, p3

    iget-object p4, p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p5, v0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move p5, p3

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne p4, p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;->FADE_IN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell$AnimFlag;

    iget-object v1, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mAnimFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, p4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iput p4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {p3, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p4

    iget v1, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, p5

    iput v1, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {p3, v0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setDisplayOrientation(I)V
    .locals 11

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    aget-object v0, v2, v3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v0

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    int-to-float v0, p1

    sub-float/2addr v0, v7

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-ltz v1, :cond_5

    goto :goto_1

    :cond_5
    add-float/2addr v0, v3

    :goto_1
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    sub-float/2addr v0, v3

    :cond_6
    add-float v8, v7, v0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$4;

    invoke-direct {v4, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$4;-><init>([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const-wide/16 v5, 0xa0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    invoke-virtual {v0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->nextUniqueId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_3

    :cond_7
    :goto_2
    if-ge v3, v1, :cond_8

    aget-object p0, v2, v3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDisplayOrientation(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method public final setOpacity(FFFFFFFF)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom2:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo2:F

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float p1, p1

    div-float/2addr p5, p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mShapeChange:[F

    const/4 p3, 0x0

    aput p5, p2, p3

    div-float/2addr p6, p1

    const/4 p1, 0x1

    aput p6, p2, p1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    int-to-float p0, p0

    div-float/2addr p7, p0

    const/4 p1, 0x2

    aput p7, p2, p1

    div-float/2addr p8, p0

    const/4 p0, 0x3

    aput p8, p2, p0

    return-void
.end method

.method public final setOrientation(I)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized switchCell(ZLcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4, p3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    goto :goto_0

    :cond_0
    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p1, p4, p3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->unloadTexture()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->unloadTexture()V

    return-void
.end method

.method public final varargs declared-synchronized updateAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateCellPosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingLeft:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellHeight:F

    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextX:F

    iget v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextY:F

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateContentBox(FF)V

    iget-object v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    div-int v2, v0, v1

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginX:F

    int-to-float v0, v0

    iget v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    iget v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginY:F

    int-to-float v3, v2

    iget v4, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mLineGap:I

    mul-int/2addr v2, p2

    int-to-float p2, v2

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr p2, v2

    sub-float/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateContentBox(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateSelected$1()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized updateSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Landroid/view/MotionEvent;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    monitor-enter p0

    :try_start_0
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ltz v4, :cond_10

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_9

    :cond_0
    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v2

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    iget-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget-boolean v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    if-eqz v4, :cond_1

    :try_start_1
    const-string v4, "ModeLayoutTexture"

    const-string v6, "cell is animating."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/high16 v8, 0x3f000000    # 0.5f

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v2, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    move v10, v4

    goto :goto_1

    :cond_4
    move v10, v6

    :goto_1
    if-eqz v10, :cond_5

    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v10, v8

    add-float/2addr v10, v11

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v2, v8

    add-float/2addr v2, v10

    iput v2, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v0, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget v10, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v2, v8

    sub-float/2addr v10, v2

    iput v10, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v0, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->addCellLeft(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_6
    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v15

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    const/high16 v10, 0x41c00000    # 24.0f

    mul-float v16, v9, v10

    const/high16 v10, 0x42400000    # 48.0f

    mul-float v17, v9, v10

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v2, v9, v2

    const/16 v14, 0x3e8

    const/4 v13, -0x1

    if-lez v2, :cond_b

    iget-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_3
    if-ltz v2, :cond_f

    iget-object v9, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto/16 :goto_8

    :cond_7
    iget v9, v12, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eq v9, v13, :cond_8

    if-eq v9, v14, :cond_8

    move v9, v4

    goto :goto_4

    :cond_8
    move v9, v6

    :goto_4
    if-eqz v9, :cond_9

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float v11, v9, v8

    invoke-virtual {v1, v12, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v18

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v10, v8

    add-float v19, v10, v9

    const/4 v10, 0x0

    move-object v9, v15

    move-object v4, v12

    move/from16 v12, v16

    move v6, v13

    move/from16 v13, v17

    move v8, v14

    move-object/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Lcom/google/common/base/Splitter$1;->contains(FFFFLandroid/graphics/PointF;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v9, v19, v9

    if-lez v9, :cond_a

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_a

    :goto_5
    invoke-virtual {v1, v4, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->moveSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    goto :goto_7

    :cond_9
    move v6, v13

    move v8, v14

    :cond_a
    add-int/lit8 v2, v2, -0x1

    move v13, v6

    move v14, v8

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_b
    move v6, v13

    move v8, v14

    iget-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_8

    :cond_d
    iget v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eq v9, v6, :cond_e

    if-eq v9, v8, :cond_e

    const/4 v9, 0x1

    goto :goto_6

    :cond_e
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_c

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v10, v9, v18

    iget v9, v5, Landroid/graphics/PointF;->x:F

    sub-float v19, v9, v10

    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v14

    const/4 v11, 0x0

    move-object v9, v15

    move/from16 v12, v16

    move/from16 v13, v17

    invoke-virtual/range {v9 .. v14}, Lcom/google/common/base/Splitter$1;->contains(FFFFLandroid/graphics/PointF;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float v9, v19, v9

    if-gez v9, :cond_c

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_5

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    :goto_8
    monitor-exit p0

    return-void

    :cond_10
    :goto_9
    monitor-exit p0

    return-void

    :goto_a
    monitor-exit p0

    throw v0
.end method
