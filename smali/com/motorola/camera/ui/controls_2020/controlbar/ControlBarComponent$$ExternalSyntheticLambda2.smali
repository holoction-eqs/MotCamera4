.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "this$0"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setControlPanelToggleClickable()V

    return-void

    :pswitch_1
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    invoke-virtual {p0, v2, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggleState(ZZ)V

    return-void

    :pswitch_2
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->updateItems$1()V

    return-void

    :pswitch_3
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->moveControlPanelToggle()V

    :cond_1
    return-void

    :pswitch_4
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->caretAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_2
    return-void

    :pswitch_5
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsBtn:Landroid/view/View;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_6
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->playExternalDisplayButtonAnimation()V

    return-void

    :pswitch_7
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsBtn:Landroid/view/View;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->fadeOutIcon(Landroid/view/View;)V

    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->remove$2()V

    return-void

    :pswitch_9
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->caretAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_4
    return-void

    :pswitch_a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->remove$2()V

    return-void

    :pswitch_b
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->remove$2()V

    return-void

    :pswitch_c
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->notifierListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :pswitch_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void

    :pswitch_e
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->remove$2()V

    return-void

    :pswitch_f
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->remove$2()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarItems:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarItemsObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarSettingValues:Landroidx/lifecycle/MediatorLiveData;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarSettingValuesObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarStateObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void

    :pswitch_10
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateControlBar()V

    return-void

    :pswitch_11
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateControlBar()V

    return-void

    :pswitch_12
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggleState(ZZ)V

    return-void

    :pswitch_13
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->playExternalDisplayButtonAnimation()V

    return-void

    :pswitch_14
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateControlBar()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateSettingsGuideline(Landroid/view/View;Z)V

    :cond_5
    return-void

    :pswitch_15
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsBtn:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->clickEnabled:Z

    return-void

    :pswitch_16
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarItems:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarItemsObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarSettingValues:Landroidx/lifecycle/MediatorLiveData;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarSettingValuesObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarStateObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setControlPanelToggleClickable()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
