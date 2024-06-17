.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.source "SourceFile"


# instance fields
.field public final synthetic $$delegate_0:Lcom/motorola/camera/device/CameraService;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V
    .locals 7

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p5, v0, :cond_2

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1

    const/4 v0, 0x3

    if-eq p5, v0, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v3, 0x7f1205d2

    const v6, 0x7f120202

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    new-instance p1, Lcom/motorola/camera/device/CameraService;

    invoke-direct {p1}, Lcom/motorola/camera/device/CameraService;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$$delegate_0:Lcom/motorola/camera/device/CameraService;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f1205d3

    const v5, 0x7f1201ed

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    new-instance p1, Lcom/motorola/camera/device/CameraService;

    invoke-direct {p1}, Lcom/motorola/camera/device/CameraService;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$$delegate_0:Lcom/motorola/camera/device/CameraService;

    return-void

    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f1205d0

    const v5, 0x7f120202

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    new-instance p1, Lcom/motorola/camera/device/CameraService;

    invoke-direct {p1}, Lcom/motorola/camera/device/CameraService;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$$delegate_0:Lcom/motorola/camera/device/CameraService;

    return-void

    :cond_2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v2, 0x7f1205cf

    if-ne p4, v0, :cond_3

    const p1, 0x7f1201ed

    goto :goto_0

    :cond_3
    const p1, 0x7f120202

    :goto_0
    move v5, p1

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    new-instance p1, Lcom/motorola/camera/device/CameraService;

    invoke-direct {p1}, Lcom/motorola/camera/device/CameraService;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$$delegate_0:Lcom/motorola/camera/device/CameraService;

    return-void
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->unregisterLayoutListener()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->unregisterLayoutListener()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->unregisterLayoutListener()V

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->unregisterLayoutListener()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final clickControl()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const/4 v2, 0x1

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showDualCaptureTooltip(I)V

    return-void

    :pswitch_1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCount:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    goto :goto_0

    :cond_0
    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showDualCaptureTooltip(I)V

    :goto_0
    return-void

    :pswitch_2
    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showDualCaptureTooltip(I)V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$$delegate_0:Lcom/motorola/camera/device/CameraService;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/device/CameraService;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final show()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0166

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a0435

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->showImpl()V

    if-eqz v1, :cond_1

    new-instance v0, Landroidx/window/core/Version$bigInteger$2;

    const/16 v2, 0xd

    invoke-direct {v0, p0, v2}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0079

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0a0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->showImpl()V

    if-eqz v1, :cond_3

    new-instance v0, Landroidx/window/core/Version$bigInteger$2;

    const/16 v2, 0xc

    invoke-direct {v0, p0, v2}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_3
    return-void

    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f1205d2

    goto :goto_0

    :cond_4
    const v0, 0x7f1205d1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->updateContextRes(I)V

    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "mParentView.rootView.fin\u2026apture_bar_camera_switch)"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->showImpl(Landroid/view/View;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, v0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void

    :goto_1
    iget-object v0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->showImpl()V

    if-eqz v0, :cond_5

    new-instance v1, Landroidx/window/core/Version$bigInteger$2;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showImpl()V
    .locals 13

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const/16 v1, 0x30

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$r8$classId:I

    const v3, 0x7f070073

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v5, 0x7f0704fe

    const v6, 0x7f0704fd

    const/high16 v7, 0x40000000    # 2.0f

    const v8, 0x7f0704f9

    const v9, 0x7f0704f5

    const v10, 0x7f0704f2

    iget-object v11, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    const/4 v12, 0x2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v12, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    add-float/2addr v9, v2

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v9, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    :goto_0
    div-float v2, v9, v7

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v2, v8

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v2, v5

    .line 2
    iget v5, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v9, v2

    div-float/2addr v9, v7

    sub-float/2addr v5, v9

    .line 3
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v5, v2

    .line 4
    iget-object v2, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 5
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getToggleBarGuideLine()F

    move-result v2

    .line 6
    iget v8, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v2, v8

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v2, v8

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 8
    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    neg-float v5, v5

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    float-to-int v0, v5

    .line 10
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    .line 11
    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    .line 12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->reShow()V

    goto :goto_1

    :cond_2
    float-to-int v3, v5

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    :goto_1
    return-void

    .line 13
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v12, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    add-float/2addr v9, v2

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v9, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    :goto_2
    div-float v2, v9, v7

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    sub-float/2addr v2, v8

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v2, v5

    .line 14
    iget v5, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v9, v2

    div-float/2addr v9, v7

    sub-float/2addr v5, v9

    .line 15
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v5, v2

    .line 16
    iget-object v2, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 17
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getToggleBarGuideLine()F

    move-result v2

    .line 18
    iget v7, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v2, v7

    .line 19
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v2, v7

    int-to-float v7, v1

    .line 20
    iget v8, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v7, v8

    sub-float/2addr v2, v7

    .line 21
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 22
    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    neg-float v5, v5

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    float-to-int v0, v5

    .line 24
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    .line 25
    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    .line 26
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->reShow()V

    goto :goto_3

    :cond_5
    float-to-int v3, v5

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    :goto_3
    return-void

    .line 27
    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v12, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v1, v0

    goto :goto_5

    :cond_6
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_5
    div-float v0, v1, v7

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 28
    iget v2, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v2, v2

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v3

    .line 29
    iget-object v3, v4, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    const-string v6, "mEventHandler.layoutManager"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v5

    if-eqz v5, :cond_7

    int-to-float v5, v12

    div-float/2addr v2, v5

    .line 30
    :cond_7
    iget v5, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v5, v5

    const v6, 0x3cf5c28f    # 0.03f

    mul-float/2addr v6, v5

    div-float/2addr v5, v7

    sub-float/2addr v1, v0

    div-float/2addr v1, v7

    sub-float/2addr v5, v1

    div-float/2addr v2, v7

    sub-float/2addr v5, v2

    sub-float/2addr v5, v6

    .line 31
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getDualCapturePIPVerticalGuideline()F

    move-result v0

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v7

    add-float/2addr v1, v0

    .line 32
    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x800033

    goto :goto_6

    :cond_8
    const v0, 0x800035

    .line 33
    :goto_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    float-to-int v0, v5

    .line 34
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    float-to-int v0, v1

    .line 35
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    .line 36
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->reShow()V

    goto :goto_7

    :cond_9
    float-to-int v2, v5

    float-to-int v1, v1

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showImpl(Landroid/view/View;)V
    .locals 9

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 37
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 38
    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->CAPTURE_BAR_LAYOUT_2023:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 40
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget v4, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v5, 0x5a

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_1

    :cond_0
    aget v4, v2, v6

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v2, v6

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0704f2

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    if-ge v4, v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0704f1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v4, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0704fd

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0704fe

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    .line 42
    iget v5, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    div-float/2addr v5, v1

    .line 44
    iget v7, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    sub-float/2addr v7, v5

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    sub-float/2addr v7, p1

    if-eqz v0, :cond_3

    sub-float/2addr v7, v4

    goto :goto_1

    :cond_3
    sub-float v7, v4, v7

    :goto_1
    aget p1, v2, v6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 46
    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_4

    neg-float v7, v7

    :cond_4
    if-eqz v0, :cond_5

    .line 47
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    float-to-int v0, v7

    .line 48
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    .line 49
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    .line 50
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->reShow()V

    goto :goto_3

    :cond_6
    const/16 v1, 0x30

    float-to-int v2, v7

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V

    :goto_3
    return-void
.end method

.method public final unregisterLayoutListener()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->$$delegate_0:Lcom/motorola/camera/device/CameraService;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/device/CameraService;->unregisterLayoutListener()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/device/CameraService;->unregisterLayoutListener()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/device/CameraService;->unregisterLayoutListener()V

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/device/CameraService;->unregisterLayoutListener()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
