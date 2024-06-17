.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "this$0"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->SHOW_STATES:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->updateIconsVisibility()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->hide()V

    return-void

    :pswitch_2
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowVideoPortraitSliderState()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->showToggle()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowVideoPortraitSliderState()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->showSliderBar()V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowVideoPortraitSliderState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    return-void

    :pswitch_3
    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->$r8$lambda$XjyHQbTv1nGm-2iiKCjDbzZ2Fh0(Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;)V

    return-void

    :pswitch_4
    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->$r8$lambda$IIPFlnVPQrtRBKZeldvNF7gep7I(Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;)V

    return-void

    :pswitch_5
    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->$r8$lambda$X-BiwvaLyfPoXgfWAI4yqze7rlQ(Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;)V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->hide()V

    return-void

    :pswitch_7
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_2
    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->hide()V

    return-void

    :pswitch_9
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v3}, Landroid/view/View;->setSelected(Z)V

    :goto_3
    return-void

    :pswitch_a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->hide()V

    return-void

    :pswitch_b
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->updateIconsVisibility()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    :goto_4
    return-void

    :pswitch_c
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v3}, Landroid/view/View;->setSelected(Z)V

    :goto_5
    return-void

    :pswitch_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->show()V

    return-void

    :pswitch_e
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->show()V

    return-void

    :pswitch_f
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->hide()V

    return-void

    :pswitch_10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->hide()V

    return-void

    :pswitch_11
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove$2()V

    return-void

    :goto_6
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
