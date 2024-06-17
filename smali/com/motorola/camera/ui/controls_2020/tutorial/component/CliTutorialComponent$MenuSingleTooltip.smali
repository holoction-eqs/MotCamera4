.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "SourceFile"


# instance fields
.field public final mScreenDensity:F

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    const p1, 0x7f1205e2

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->mScreenDensity:F

    return-void
.end method


# virtual methods
.method public final afterShown()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mDegree:F

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->rotate(F)V

    return-void
.end method

.method public final rotate(F)V
    .locals 14

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mDegree:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    iget-object v3, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a028d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    cmpg-float v5, p1, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v10, 0x43870000    # 270.0f

    const/4 v11, -0x1

    const/high16 v12, 0x42b40000    # 90.0f

    const/high16 v13, 0x43b40000    # 360.0f

    if-eqz v8, :cond_1

    sub-float/2addr v13, p1

    invoke-virtual {p0, v13, v4, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->x:F

    float-to-int v0, v0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->y:F

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2, v11, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_5

    :cond_1
    cmpg-float v8, p1, v12

    if-nez v8, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    cmpg-float v8, p1, v10

    if-nez v8, :cond_4

    :goto_2
    move v8, v7

    goto :goto_3

    :cond_4
    move v8, v6

    :goto_3
    if-eqz v8, :cond_6

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_5

    neg-int v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v3

    int-to-float v8, v1

    div-float/2addr v8, v3

    add-float/2addr v8, v2

    goto :goto_4

    :cond_5
    int-to-float v2, v0

    div-float/2addr v2, v3

    int-to-float v8, v1

    div-float/2addr v8, v3

    sub-float v8, v2, v8

    :goto_4
    int-to-float v2, v0

    div-float v11, v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v11, v1

    const/16 v1, 0x9

    int-to-float v1, v1

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->mScreenDensity:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v11

    sub-float/2addr v13, p1

    invoke-virtual {p0, v13, v8, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->x:F

    float-to-int v1, v1

    iget v8, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->y:F

    float-to-int v8, v8

    const/16 v11, 0xa

    int-to-float v11, v11

    mul-float/2addr v11, v3

    add-float/2addr v11, v2

    float-to-int v2, v11

    invoke-virtual {p0, v1, v8, v0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    :goto_5
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateCrossOrientation(F)V

    goto :goto_7

    :cond_6
    cmpg-float v0, p1, v9

    if-nez v0, :cond_7

    move v0, v7

    goto :goto_6

    :cond_7
    move v0, v6

    :goto_6
    if-eqz v0, :cond_9

    sub-float/2addr v13, p1

    invoke-virtual {p0, v13, v4, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v7}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a0202

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v2, v11, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    :cond_8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateCrossOrientation(F)V

    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    :goto_8
    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v5, :cond_b

    move v1, v7

    goto :goto_9

    :cond_b
    move v1, v6

    :goto_9
    if-eqz v1, :cond_c

    goto :goto_a

    :cond_c
    cmpg-float v1, p1, v12

    if-nez v1, :cond_d

    :goto_a
    move v1, v7

    goto :goto_b

    :cond_d
    move v1, v6

    :goto_b
    if-eqz v1, :cond_e

    goto :goto_c

    :cond_e
    cmpg-float v1, p1, v10

    if-nez v1, :cond_f

    :goto_c
    move v1, v7

    goto :goto_d

    :cond_f
    move v1, v6

    :goto_d
    const/4 v2, 0x3

    const v3, 0x7f0a0453

    const/16 v4, 0x13

    if-eqz v1, :cond_10

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_e

    :cond_10
    cmpg-float p1, p1, v9

    if-nez p1, :cond_11

    move v6, v7

    :cond_11
    if-eqz v6, :cond_12

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :cond_12
    :goto_e
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    if-nez p0, :cond_13

    goto :goto_f

    :cond_13
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_f
    return-void
.end method

.method public final show()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a028d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->x:F

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->y:F

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    const v0, 0x800035

    :goto_0
    move v3, v0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->x:F

    float-to-int v4, v0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$MenuSingleTooltip;->y:F

    float-to-int v5, v0

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const/4 v7, 0x2

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$enumunboxing$(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;ILandroid/view/View;)V

    return-void
.end method
