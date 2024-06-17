.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ModeMenuTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.source "SourceFile"


# instance fields
.field public final offsetX:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ModeMenuTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f1205d5

    const/4 v3, 0x0

    sget v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    const v5, 0x7f120202

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    const/16 p1, 0x1a

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ModeMenuTooltip;->offsetX:I

    return-void
.end method


# virtual methods
.method public final clickControl()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ModeMenuTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setCurrentTooltip(I)V

    return-void
.end method

.method public final show()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ModeMenuTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mWidth:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mWidth:I

    :cond_1
    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ModeMenuTooltip;->offsetX:I

    int-to-float v2, v2

    iget v3, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v1

    const/16 v2, 0x14

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    :goto_1
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    const/16 v3, 0x50

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    return-void
.end method
