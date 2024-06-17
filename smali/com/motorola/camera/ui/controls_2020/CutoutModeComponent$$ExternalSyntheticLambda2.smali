.class public final synthetic Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

.field public final synthetic f$1:F

.field public final synthetic f$2:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;FLcom/motorola/camera/ui/layoutmanager/LayoutValue;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$1:F

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$2:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->previewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v1

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$1:F

    const v4, 0x7f080108

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    iput v3, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    :goto_0
    iput v3, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    :goto_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto/16 :goto_5

    :cond_0
    sget-object v1, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v1

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->density:F

    iget-object v6, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$2:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v7, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    if-nez v7, :cond_1

    const/4 v7, -0x1

    goto :goto_2

    :cond_1
    sget-object v8, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {v7}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v7

    aget v7, v8, v7

    :goto_2
    if-eq v7, v5, :cond_3

    const/4 v1, 0x3

    if-eq v7, v1, :cond_2

    move v1, v3

    goto :goto_4

    :cond_2
    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v1

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    check-cast v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v6, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v1

    :goto_3
    mul-float/2addr v1, v2

    :goto_4
    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->viewfinderGuide$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v7, "<get-viewfinderGuide>(...)"

    invoke-static {v1, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v7, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v7}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    invoke-interface {v6}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v1

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v2, v1

    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    goto/16 :goto_1

    :goto_5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    if-nez v2, :cond_5

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideTop$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-guideTop>(...)"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$3:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideBottom$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-guideBottom>(...)"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;->f$4:I

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    return-void
.end method
