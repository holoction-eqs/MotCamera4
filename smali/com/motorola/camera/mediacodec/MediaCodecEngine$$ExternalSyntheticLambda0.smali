.class public final synthetic Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string v2, "$it"

    const-string v3, "this$0"

    iget v4, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    check-cast v0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0, v4}, Lcom/motorola/camera/ui/widgets/LevelerView;->setDisplayOrientation(Landroid/view/View;I)V

    return-void

    :pswitch_1
    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_2
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    sget v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->inflateViewStub()V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mParentView.context"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureTooltip:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v3, "get(SettingsManager.FIRS\u2026E_USE_DUAL_CAPTURE).value"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v5, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x0

    const/4 v5, 0x4

    const/16 v17, 0x0

    const/4 v9, 0x4

    const/16 v18, 0x4

    const/16 v16, 0x4

    move-object v12, v3

    move-object v13, v0

    move-object v14, v1

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x1

    const/16 v17, 0x2

    move-object v12, v3

    move/from16 v16, v18

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v11

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x2

    const/16 v17, 0x1

    move-object v12, v3

    move/from16 v16, v9

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x3

    const/16 v17, 0x3

    move-object v12, v3

    move/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v8

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v12, v2

    move-object v13, v0

    move-object v14, v1

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    filled-new-array {v2}, [Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    new-array v2, v8, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x0

    const/4 v5, 0x3

    const/16 v17, 0x0

    const/4 v8, 0x3

    const/16 v16, 0x3

    move-object v12, v3

    move-object v13, v0

    move-object v14, v1

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x1

    const/16 v17, 0x2

    move-object v12, v3

    move/from16 v16, v8

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v11

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x2

    const/16 v17, 0x3

    move-object v12, v3

    move/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v7

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    new-array v2, v8, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x0

    const/4 v5, 0x3

    const/16 v17, 0x0

    const/4 v8, 0x3

    const/16 v16, 0x3

    move-object v12, v3

    move-object v13, v0

    move-object v14, v1

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x1

    const/16 v17, 0x2

    move-object v12, v3

    move/from16 v16, v8

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v11

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x2

    const/16 v17, 0x3

    move-object v12, v3

    move/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v7

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    new-array v2, v7, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x0

    const/4 v5, 0x2

    const/16 v17, 0x2

    const/16 v16, 0x2

    move-object v12, v3

    move-object v13, v0

    move-object v14, v1

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v10

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    const/4 v15, 0x1

    const/16 v17, 0x3

    move-object v12, v3

    move/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;III)V

    aput-object v3, v2, v11

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_6
    move-object v2, v6

    :goto_0
    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureTooltip:Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureAudioLensSwitchToast;

    invoke-direct {v2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureAudioLensSwitchToast;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    move-object v2, v6

    :goto_1
    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureAudioLensSwitchToast:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureAudioLensSwitchToast;

    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    :cond_8
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->dualCaptureTooltip:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    :cond_9
    iput-object v6, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz v6, :cond_a

    iget-object v1, v6, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_a
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show()V

    :cond_b
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_c
    return-void

    :pswitch_3
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->Companion:Lkotlin/UByte$Companion;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->trySlowMotionReady(I)V

    return-void

    :pswitch_4
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->SHOW_STATES:Ljava/util/Set;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->setSwatchColor(I)V

    :cond_d
    return-void

    :pswitch_5
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.sliderbar.FilterMeisheAdapter"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$inflateViewStub$meisheAdapter$1;->setSelectedFilter(I)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz v0, :cond_e

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    :cond_e
    if-nez v6, :cond_f

    goto :goto_3

    :cond_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_3
    return-void

    :pswitch_6
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->getProSettings()V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    if-nez v1, :cond_11

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;-><init>(Ljava/util/ArrayList;Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;)V

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_5

    :cond_11
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_14

    if-eq v4, v9, :cond_14

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_12
    if-nez v6, :cond_13

    goto :goto_4

    :cond_13
    invoke-virtual {v6, v10}, Landroid/view/View;->setSelected(Z)V

    :cond_14
    :goto_4
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_15
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    if-eq v1, v3, :cond_16

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->setRecyclerViewInCenter(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_16
    return-void

    :pswitch_7
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->INFLATION_STATES:Ljava/util/Set;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v2, "mEventHandler"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->modesAdapter:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/16 v4, 0x3e8

    invoke-static {v1, v4, v2, v3}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesRecycler()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_6

    :cond_17
    move v11, v10

    :goto_6
    if-eqz v11, :cond_18

    invoke-virtual {v0, v10}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->animateMenu(Z)V

    :cond_18
    return-void

    :pswitch_8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->INFLATION_STATES:Ljava/util/Set;

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070356

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    int-to-float v2, v7

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070355

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-float/2addr v3, v1

    float-to-int v1, v3

    neg-int v1, v1

    iput v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_19

    iput v9, v1, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    :cond_19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void

    :pswitch_9
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.dualcapture.DualCaptureLayoutAdapter"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;->setSelectedLayout(I)V

    return-void

    :pswitch_a
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->Companion:L_COROUTINE/ArtificialStackFrames;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->fullScreen:Z

    if-eqz v1, :cond_1a

    goto :goto_7

    :cond_1a
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-nez v0, :cond_1b

    goto :goto_7

    :cond_1b
    iput v4, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v2, 0x1c

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_7
    return-void

    :pswitch_b
    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v1, :cond_1c

    const-string v0, "McfCaptureRequestRunnable"

    const-string v1, "processForTimeout invalid holder!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_1c
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    if-nez v3, :cond_1d

    goto :goto_8

    :cond_1d
    iput-boolean v11, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureCompletePending:Z

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    :goto_8
    return-void

    :pswitch_c
    check-cast v0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-nez v1, :cond_1e

    goto :goto_9

    :cond_1e
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    iget-object v1, v0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->cliCountdownTextCounter:Landroid/widget/TextView;

    if-eqz v1, :cond_1f

    iget-object v0, v0, Lcom/motorola/camera/cli/content/presentation/CliCountdownPresentation;->countdownAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1f
    return-void

    :pswitch_d
    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_20

    invoke-virtual {v0, v1, v4, v10}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    :cond_20
    return-void

    :pswitch_e
    check-cast v0, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    iget-object v0, v0, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x3

    const/4 v2, -0x2

    if-eq v4, v1, :cond_23

    if-eq v4, v2, :cond_23

    if-eq v4, v9, :cond_22

    if-eq v4, v11, :cond_21

    const-string v0, "Unknown focus change type: "

    const-string v1, "AudioFocusManager"

    invoke-static {v0, v4, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_d

    :cond_21
    invoke-virtual {v0, v11}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    invoke-virtual {v0, v11}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    goto :goto_d

    :cond_22
    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    goto :goto_d

    :cond_23
    if-eq v4, v2, :cond_26

    iget-object v1, v0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    if-eqz v1, :cond_24

    iget v1, v1, Landroidx/media3/common/AudioAttributes;->contentType:I

    if-ne v1, v11, :cond_24

    goto :goto_a

    :cond_24
    move v11, v10

    :goto_a
    if-eqz v11, :cond_25

    goto :goto_b

    :cond_25
    move v7, v8

    goto :goto_c

    :cond_26
    :goto_b
    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    :goto_c
    invoke-virtual {v0, v7}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    :goto_d
    return-void

    :pswitch_f
    check-cast v0, L_COROUTINE/_BOUNDARY;

    invoke-virtual {v0, v4}, L_COROUTINE/_BOUNDARY;->onFontRetrievalFailed(I)V

    return-void

    :pswitch_10
    check-cast v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    if-eqz v1, :cond_27

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    :cond_27
    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->STARTED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    iget-object v0, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    return-void

    :goto_e
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    int-to-float v1, v4

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v7, :cond_28

    goto :goto_f

    :cond_28
    move v2, v10

    goto :goto_10

    :cond_29
    :goto_f
    move v2, v11

    :goto_10
    if-eqz v2, :cond_2a

    goto/16 :goto_18

    :cond_2a
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v10

    :goto_11
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_2c

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_2b

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_2b

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2d

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2d

    move v3, v7

    goto :goto_12

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2c
    move v3, v10

    :cond_2d
    :goto_12
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mStaggeredMeter:Z

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    if-eqz v2, :cond_2e

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    if-eq v3, v2, :cond_2e

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mActiveSegment:I

    iput v3, v4, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    monitor-enter v4

    :try_start_0
    iput-boolean v10, v4, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->doLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_13

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2e
    :goto_13
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->zoomReflect(F)F

    move-result v2

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->zoomReflect(F)F

    move-result v6

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->zoomReflect(F)F

    move-result v1

    sub-float/2addr v1, v2

    sub-float/2addr v6, v2

    div-float/2addr v1, v6

    iget-boolean v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v7, 0x0

    if-eqz v2, :cond_32

    iget-object v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v9, v2

    if-lt v3, v9, :cond_2f

    goto :goto_14

    :cond_2f
    iput v3, v4, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v12, v4, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v12, v12

    sub-int/2addr v12, v11

    if-ne v3, v12, :cond_30

    add-int/lit8 v2, v2, -0x1

    :cond_30
    iget-object v3, v4, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v12, v2, :cond_31

    goto :goto_14

    :cond_31
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget v9, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v3, v7, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    neg-float v12, v9

    invoke-virtual {v3, v12, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    sub-float/2addr v2, v9

    mul-float/2addr v2, v1

    invoke-virtual {v3, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    invoke-virtual {v6, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move v1, v11

    goto :goto_15

    :cond_32
    :goto_14
    move v1, v10

    :goto_15
    if-eqz v1, :cond_39

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v3, v2, v7

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mDensity:F

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v5, 0x43b40000    # 360.0f

    const/high16 v9, 0x40000000    # 2.0f

    if-lez v3, :cond_33

    mul-float/2addr v5, v0

    div-float/2addr v5, v9

    div-float v3, v1, v9

    add-float/2addr v3, v5

    sub-float v7, v3, v2

    mul-float/2addr v0, v4

    sub-float v0, v7, v0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_36

    cmpl-float v2, v7, v1

    if-ltz v2, :cond_37

    goto :goto_16

    :cond_33
    div-float/2addr v1, v9

    mul-float/2addr v5, v0

    div-float/2addr v5, v9

    sub-float/2addr v1, v5

    sub-float/2addr v1, v2

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    cmpl-float v2, v0, v7

    if-lez v2, :cond_35

    cmpg-float v2, v1, v7

    if-gez v2, :cond_34

    goto :goto_17

    :cond_34
    :goto_16
    move v7, v1

    goto :goto_17

    :cond_35
    move v7, v1

    :cond_36
    move v11, v10

    :cond_37
    :goto_17
    if-eqz v11, :cond_38

    iput v8, v6, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    iput v0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iput v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    goto :goto_18

    :cond_38
    iput v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    :cond_39
    :goto_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
