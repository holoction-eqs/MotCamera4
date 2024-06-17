.class public final synthetic Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    const/16 v1, 0xb4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "this$0"

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->hide()V

    return-void

    :pswitch_1
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->hide()V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    return-void

    :pswitch_2
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->frame$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/RotateLayout;

    if-eqz v4, :cond_0

    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    :cond_0
    iget v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eqz v4, :cond_1

    if-ne v4, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/RotateLayout;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->textLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    :cond_4
    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v2, :cond_5

    const v6, 0x7f0701a6

    goto :goto_1

    :cond_5
    const v6, 0x7f0701a5

    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v2, :cond_6

    const v2, 0x7f0701b0

    goto :goto_2

    :cond_6
    const v2, 0x7f0701ad

    :goto_2
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    float-to-int v2, v5

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_3
    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    float-to-int p0, p0

    iput p0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_4
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/RotateLayout;

    if-nez p0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_6
    return-void

    :pswitch_3
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFixedMacroMode()Z

    move-result v0

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->headline$delegate:Lkotlin/Lazy;

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->delayHideRunnable:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda1;

    const-wide/16 v6, 0xfa0

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_c

    const v10, 0x7f12059e

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    :cond_c
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v0, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_f

    const v10, 0x7f12059d

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    :cond_f
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_10

    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v0, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getSlideScanAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanMode()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eqz v0, :cond_14

    if-ne v0, v1, :cond_15

    :cond_14
    move v0, v3

    goto :goto_9

    :cond_15
    move v0, v2

    :goto_9
    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_17

    const v1, 0x7f1205ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_18

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_18
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_b

    :cond_19
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getSlideScanAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getSlideScanAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->getSlideScanAnimation()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    const-string p0, "IS_SELECTED"

    invoke-static {p0, v3}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->INSTRUCTIONAL_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_1b
    return-void

    :goto_c
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->hide()V

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
