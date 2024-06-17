.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;I)V
    .locals 6

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->$r8$classId:I

    const/4 v3, 0x1

    if-eq p3, v3, :cond_3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1

    const/4 v3, 0x3

    if-eq p3, v3, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f1205de

    const/4 v3, 0x4

    sget v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    const v5, 0x7f1205c9

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f1205e0

    const/4 v3, 0x2

    sget v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    const v5, 0x7f120202

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f1205d9

    const/4 v3, 0x3

    sget v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPressKeySwitchModeSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f120202

    goto :goto_0

    :cond_2
    const v1, 0x7f1205c9

    :goto_0
    move v5, v1

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    return-void

    :cond_3
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f1205cd

    const/4 v3, 0x1

    sget v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    const v5, 0x7f120202

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    return-void
.end method


# virtual methods
.method public final clickControl()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->$r8$classId:I

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPressKeySwitchModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setCurrentTooltip(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getTooltipIndex()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setCurrentTooltip(I)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    :goto_0
    return-void

    :pswitch_1
    const/4 p0, 0x2

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setCurrentTooltip(I)V

    return-void

    :pswitch_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getTooltipIndex()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setCurrentTooltip(I)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    :goto_1
    return-void

    :goto_2
    const/4 p0, 0x3

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setCurrentTooltip(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final load()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->$r8$classId:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_0
    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    new-array v1, v3, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    return-void

    :pswitch_1
    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget-object v0, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    const-string v2, "mEventHandler.layoutManager"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v0

    iget-object v2, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v0, :cond_1

    const v0, 0x7f1205ce

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->updateContextRes(I)V

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getControlBarGuideline()F

    move-result v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->modeControlBarSize:F

    add-float/2addr v0, v1

    goto :goto_1

    :cond_1
    const v0, 0x7f1205cd

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->updateContextRes(I)V

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v0

    :goto_1
    iget v1, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1205de

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f1205df

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget v0, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget v0, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenHeight:I

    int-to-double v0, v0

    const-wide v4, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v0, v4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v2

    div-int/2addr v2, v3

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    return-void

    :goto_3
    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget-object v0, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getToggleBarGuideLine()F

    move-result v0

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    sub-float/2addr v0, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final show()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->$r8$classId:I

    const/16 v1, 0x30

    const v2, 0x800033

    const v3, 0x800035

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->load()V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->load()V

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->load()V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->LEFT_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;->load()V

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
