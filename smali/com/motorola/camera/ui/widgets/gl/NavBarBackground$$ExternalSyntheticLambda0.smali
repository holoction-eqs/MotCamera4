.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/16 v2, 0x10

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mIsMultiShot:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v2, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {p0, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :goto_0
    return-object v1

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v3, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_1
    return-object v1

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isShowModesSliderState()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v3, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {p0, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_2
    return-object v1

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFilterSelected:Z

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->setFilterKeepOut(Z)V

    return-object v1

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mFilterSelected:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->setFilterKeepOut(Z)V

    return-object v1

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v4, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_3
    return-object v1

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v4, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isFaceBeautySliderState()Z

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_4
    return-object v1

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_5
    return-object v1

    :pswitch_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-virtual {p0, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDualCaptureLayoutSelected:Z

    return-object v1

    :pswitch_9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDualCaptureLayoutSelected:Z

    return-object v1

    :pswitch_a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-virtual {p0, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    return-object v1

    :pswitch_b
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-virtual {p0, v7}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->reverseColor(Z)V

    return-object v1

    :pswitch_c
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->reverseColor(Z)V

    return-object v1

    :pswitch_d
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v5, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_6
    return-object v1

    :pswitch_e
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v5, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {p0, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    return-object v1

    :pswitch_f
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-virtual {p0, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    return-object v1

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mToggleBarStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0, v2, v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->handleVisibility(ZZ)V

    :cond_7
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
