.class public final Landroidx/media3/ui/PlayerControlViewLayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public animationEnabled:Z

.field public final basicControls:Landroid/view/ViewGroup;

.field public final bottomBar:Landroid/view/ViewGroup;

.field public final centerControls:Landroid/view/ViewGroup;

.field public final controlsBackground:Landroid/view/View;

.field public final extraControls:Landroid/view/ViewGroup;

.field public final extraControlsScrollView:Landroid/view/ViewGroup;

.field public final hideAllBarsAnimator:Landroid/animation/AnimatorSet;

.field public final hideAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

.field public final hideControllerRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

.field public final hideMainBarAnimator:Landroid/animation/AnimatorSet;

.field public final hideMainBarRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

.field public final hideProgressBarAnimator:Landroid/animation/AnimatorSet;

.field public final hideProgressBarRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

.field public isMinimalMode:Z

.field public final minimalControls:Landroid/view/ViewGroup;

.field public needToShowBars:Z

.field public final onLayoutChangeListener:Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;

.field public final overflowHideAnimator:Landroid/animation/ValueAnimator;

.field public final overflowShowAnimator:Landroid/animation/ValueAnimator;

.field public final overflowShowButton:Landroid/view/View;

.field public final playerControlView:Landroidx/media3/ui/PlayerControlView;

.field public final showAllBarsAnimator:Landroid/animation/AnimatorSet;

.field public final showAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

.field public final showMainBarAnimator:Landroid/animation/AnimatorSet;

.field public final shownButtons:Ljava/util/ArrayList;

.field public final timeBar:Landroid/view/View;

.field public final timeView:Landroid/view/ViewGroup;

.field public uxState:I


# direct methods
.method public static $r8$lambda$RszaR9RCRmDDRP9O4hTOv7xlBiM(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0196

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0195

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    new-instance v2, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    new-instance v2, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    new-instance v2, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v2, v0, v5}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    new-instance v2, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v2, v0, v6}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideMainBarRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    new-instance v2, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const/4 v7, 0x4

    invoke-direct {v2, v0, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideControllerRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    new-instance v2, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v5}, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->onLayoutChangeListener:Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;

    iput-boolean v4, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    iput v3, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->shownButtons:Ljava/util/ArrayList;

    const v2, 0x7f0a0188

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->controlsBackground:Landroid/view/View;

    const v2, 0x7f0a0183

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    const v2, 0x7f0a0192

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->minimalControls:Landroid/view/ViewGroup;

    const v2, 0x7f0a0181

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    const v8, 0x7f0a01ab

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    const v8, 0x7f0a019e

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeBar:Landroid/view/View;

    const v9, 0x7f0a0180

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    const v9, 0x7f0a018b

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->extraControls:Landroid/view/ViewGroup;

    const v9, 0x7f0a018c

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    const v9, 0x7f0a0196

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    const v10, 0x7f0a0195

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    new-instance v11, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0, v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-array v9, v5, [F

    fill-array-data v9, :array_0

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v10, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;

    invoke-direct {v10, v0, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v10, v5, [F

    fill-array-data v10, :array_1

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v11, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0, v6}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v11, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;

    invoke-direct {v11, v0, v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07015d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    const v14, 0x7f070162

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v12, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideMainBarAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0xfa

    invoke-virtual {v12, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v7, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;

    invoke-direct {v7, v0, v1, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroidx/media3/ui/PlayerControlView;I)V

    invoke-virtual {v12, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v12, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v8, v7, v13}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-static {v2, v7, v13}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v12, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;

    invoke-direct {v12, v0, v1, v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroidx/media3/ui/PlayerControlView;I)V

    invoke-virtual {v3, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v8, v13, v11}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-static {v2, v13, v11}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v12, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;

    invoke-direct {v12, v0, v1, v5}, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroidx/media3/ui/PlayerControlView;I)V

    invoke-virtual {v3, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v8, v7, v11}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v2, v7, v11}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;

    invoke-direct {v3, v0, v5}, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v8, v13, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v2, v13, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;

    invoke-direct {v3, v0, v6}, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v8, v11, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-static {v2, v11, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v1, v5, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v5, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v5}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager$1;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static getWidthWithMargins(Landroid/view/View;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static ofTranslationY(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "translationY"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static shouldHideInMinimalMode(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f0a0181

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a019d

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a0194

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a01a1

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a01a2

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a018d

    if-eq p0, v0, :cond_1

    const v0, 0x7f0a018e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final animateOverflow(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->extraControlsScrollView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v0, p1

    mul-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    sub-float v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->basicControls:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public final getShowButton(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->shownButtons:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final postDelayedRunnable(Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final removeHideCallbacks()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideControllerRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideMainBarRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final resetHideCallbacks()V
    .locals 4

    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideControllerRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideProgressBarRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->postDelayedRunnable(Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;J)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->hideMainBarRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    :goto_0
    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->postDelayedRunnable(Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setShowButton(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->shownButtons:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->shouldHideInMinimalMode(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setUxState(I)V
    .locals 2

    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    iput p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v0, p1, :cond_2

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    check-cast v0, Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/ui/PlayerView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final showAllBars()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->animationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBarsAnimator:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showMainBarAnimator:Landroid/animation/AnimatorSet;

    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    return-void
.end method
