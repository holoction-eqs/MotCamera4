.class public final Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/detector/ScanningEngine$DetectorCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget v0, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManager;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoMonopoly:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    invoke-static {v3, p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->isSameTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/Tidbit;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v1, :cond_3

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->isOtherComponentVisible:Z

    if-nez v3, :cond_8

    if-eqz v0, :cond_4

    goto/16 :goto_6

    :cond_4
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->AUTO_LAUNCH_DATA:Ljava/util/List;

    iget-object v3, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v3}, Landroidx/loader/app/LoaderManager;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->executePrimaryAction(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    sget-wide v4, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->QR_CODE_TIMEOUT:J

    invoke-virtual {v3, v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_5

    :cond_5
    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsScale(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_7

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_5
    const-string v0, "IS_SELECTED"

    invoke-static {v0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SCAN_BAR_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object p0, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {p0}, Landroidx/loader/app/LoaderManager;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->GoogleMatter:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getPrimaryAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logTidbitAction(Lcom/motorola/camera/detector/results/tidbit/Tidbit;Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    :cond_8
    :goto_6
    return-void

    :goto_7
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_8

    :cond_9
    move v1, v2

    :goto_8
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onUpdatedTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManager;->getFieldsCount()I

    move-result v1

    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v0}, Landroidx/loader/app/LoaderManager;->getFieldsCount()I

    move-result v0

    if-le v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;->onNewTidbit(Lcom/motorola/camera/detector/results/tidbit/Tidbit;)V

    :cond_2
    return-void

    :goto_1
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    iget-object p0, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
