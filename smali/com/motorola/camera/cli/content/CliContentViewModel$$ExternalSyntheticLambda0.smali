.class public final synthetic Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(ILandroidx/constraintlayout/widget/Guideline;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;ZI)V
    .locals 1

    .line 2
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$2:Z

    iput p3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IZI)V
    .locals 0

    .line 3
    iput p4, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    const-string v2, "this$0"

    iget-boolean v3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$2:Z

    iget v4, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    sget v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->tooltips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show()V

    :cond_2
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->Companion:Lkotlin/ULong$Companion;

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    int-to-long v0, v4

    invoke-virtual {p0, v0, v1, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->showTimer(JZ)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->LISTENED_STATES:Ljava/util/Set;

    const-string v0, "$guideline"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-static {v4, p0, v1}, Ljms/IJobMgrService$_Parcel;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :goto_1
    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/LinkedHashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibilityChangeListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->CHANGE_CALLBACK_TRACE:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0, v1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_3
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    const-string p0, "MultiVisibilitySubject"

    const-string v0, "Error while calling visibility listener"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v4, v1, v3}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZZ)V

    :cond_9
    return-void

    :goto_5
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v1, v4

    :goto_6
    iput v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
