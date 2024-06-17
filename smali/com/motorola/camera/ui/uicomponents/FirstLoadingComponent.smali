.class public final Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# instance fields
.field public captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public galleryThumbnailYGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public modeMenuBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public modePillArea:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public modePillYGuideline:Landroidx/constraintlayout/widget/Guideline;


# virtual methods
.method public final attach()V
    .locals 0

    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    const-string v0, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final init()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailYGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillYGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modeMenuBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->setCaptureBarGuidelinePosition(Z)V

    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->setCaptureBarGuidelinePosition(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->updateVerticalPosition()V

    return-void
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->setCaptureBarGuidelinePosition(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->updateVerticalPosition()V

    return-void
.end method

.method public final rotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->updateVerticalPosition()V

    return-void
.end method

.method public final setCaptureBarGuidelinePosition(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v2

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_0
    const-string p1, "mEventHandler.layoutManager"

    invoke-static {v0, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillYGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_2

    invoke-static {v1, p0, p1}, Ljms/IJobMgrService$_Parcel;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final updateVerticalPosition()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v1, "mEventHandler.layoutManager"

    invoke-static {v0, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modeMenuBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getTsbMarginHeight()F

    move-result v0

    move-object v1, v3

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modeMenuBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_4

    invoke-interface {v3}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getTsbMarginHeight()F

    move-result v0

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v1, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v0, v1

    const v1, 0x7f07006f

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailYGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_3

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillYGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_6

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_1

    :cond_4
    const v0, 0x7f070184

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    const v0, 0x7f07006d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailYGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillYGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    :cond_6
    :goto_1
    return-void
.end method
