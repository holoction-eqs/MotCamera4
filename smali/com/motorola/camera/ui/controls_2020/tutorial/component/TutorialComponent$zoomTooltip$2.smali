.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$1()V
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isZoomSliderShown:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hideTooltip()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showModeTutorial()V

    return-void

    :pswitch_3
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isControlPanelShown:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isControlPanelShown:Z

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getTooltipIndex()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getTooltipIndex()I

    move-result v1

    if-eq v1, v0, :cond_2

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setCurrentTooltip(I)V

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setCurrentTooltip(I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_4
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isControlPanelShown:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hideTooltip()V

    return-void

    :goto_1
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isZoomSliderShown:Z

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getTooltipIndex()I

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setCurrentTooltip(I)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final invoke$2()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->$r8$classId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->invoke$1()V

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->invoke$1()V

    return-object v0

    :pswitch_2
    iget-object p0, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_0
    iget-object p0, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v2

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V

    :cond_3
    return-object v2

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->invoke$1()V

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->invoke$1()V

    return-object v0

    :pswitch_5
    iget-object p0, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_6

    :cond_4
    iget-object p0, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_1

    :cond_5
    move-object p0, v2

    :cond_6
    :goto_1
    if-eqz p0, :cond_7

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ZoomTooltip;

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ZoomTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V

    :cond_7
    return-object v2

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;->invoke$1()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
