.class public final synthetic Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x1

    const-string v2, "this$0"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->hide()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->animateShow()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->hide()V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void

    :pswitch_5
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->stateHide:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->hide()V

    return-void

    :pswitch_6
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->isAutoZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->isAutoCaptureSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->stateHide:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->hide()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->stateHide:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->animateShow()V

    :goto_0
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->isAutoZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->isAutoCaptureSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLIDE_SCAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "get(SettingsManager.FIRS\u2026IME_USE_SLIDE_SCAN).value"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->tutorialTip:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->show()V

    :cond_1
    return-void

    :pswitch_7
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->tutorialTip:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    :cond_2
    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->animateShow()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
