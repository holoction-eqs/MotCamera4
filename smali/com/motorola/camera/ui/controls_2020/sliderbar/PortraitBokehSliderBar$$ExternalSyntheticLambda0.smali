.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "this$0"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_1
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->getBokehLevel()I

    move-result v0

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehMaxLevel:I

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehMinLevel:I

    if-gt v1, v4, :cond_0

    if-ge v4, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMin(I)V

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehMaxLevel:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    :goto_2
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->modeChanged:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-ne v0, v1, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->showSliderBar()V

    goto :goto_7

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->showToggle()V

    :goto_7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v2

    :cond_a
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    return-void

    :pswitch_2
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_b
    return-void

    :pswitch_3
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-nez p0, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_8
    return-void

    :pswitch_4
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->updateIconsVisibility()V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_a
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->modeChanged:Z

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
