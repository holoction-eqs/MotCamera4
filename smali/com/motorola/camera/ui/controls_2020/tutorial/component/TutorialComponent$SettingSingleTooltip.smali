.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const p1, 0x7f1205d9

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final show()V
    .locals 10

    sget v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    const v2, 0x7f0a0234

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v7, v2, v3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x800033

    goto :goto_2

    :cond_4
    const v0, 0x800035

    :goto_2
    move v5, v0

    float-to-int v6, v1

    sget-object v8, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const/4 v9, 0x1

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;I)V

    :cond_5
    return-void
.end method
