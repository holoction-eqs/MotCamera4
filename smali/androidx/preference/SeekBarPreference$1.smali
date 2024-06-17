.class public final Landroidx/preference/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->LISTENED_STATES:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TIMELAPSE_VALUES:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SettingsManager.TIMELAPSE_VALUES[progress]"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_TIMELAPSE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->valueText:Landroid/widget/TextView;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->getTimeLapseValueText(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;->updateTextPosition()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->SHOW_STATES:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    mul-int/lit8 p3, p2, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->seekText:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->onBokehLevelChanged(I)V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekText:Landroid/widget/TextView;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :pswitch_3
    const-string p3, "seekBar"

    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    const/4 p3, -0x1

    if-ne p1, p3, :cond_4

    goto/16 :goto_9

    :cond_4
    sget-object p3, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    iget-object p3, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p3, p3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v2, p3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateMF(I)Z

    move-result v2

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v4, p3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateWhiteBalance(I)Z

    move-result v2

    :cond_6
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v4, p3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_b

    int-to-float v4, p2

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateExposureTime(F)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v0, :cond_9

    :goto_4
    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_c

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    iget-boolean v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    if-eqz v6, :cond_c

    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    goto :goto_5

    :cond_b
    move v4, v3

    :cond_c
    :goto_5
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v6, p3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    int-to-float v4, p2

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateISO(F)Z

    move-result v4

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v4, :cond_10

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v0, :cond_f

    :goto_6
    if-nez v7, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_10

    :cond_f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_10
    :goto_7
    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v5, v5, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v5, p3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateExposureComp(F)Z

    move-result v2

    :cond_11
    if-nez v2, :cond_12

    if-eqz v4, :cond_13

    :cond_12
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PRO_SLIDER_BAR_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p3, p2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateTextFlag(Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-eqz p1, :cond_13

    sget p2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_13
    if-eqz v4, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureCompDisabled()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    if-nez p1, :cond_15

    const/high16 p1, 0x42480000    # 50.0f

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->updateExposureComp(F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-eqz p1, :cond_14

    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_14
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    goto :goto_9

    :cond_15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isISOAuto()Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result p1

    if-nez p1, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isISOAuto()Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_17
    move p1, v0

    goto :goto_8

    :cond_18
    move p1, v3

    :goto_8
    if-eqz p1, :cond_1a

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAdapter:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;

    if-eqz p1, :cond_19

    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSettingSize:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_19
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isDisabledExposureComp:Z

    :cond_1a
    :goto_9
    return-void

    :pswitch_4
    if-eqz p3, :cond_1c

    move-object p3, p0

    check-cast p3, Landroidx/preference/SeekBarPreference;

    iget-boolean v0, p3, Landroidx/preference/SeekBarPreference;->mUpdatesContinuously:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p3, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_1c

    :cond_1b
    invoke-virtual {p3, p1}, Landroidx/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    goto :goto_a

    :cond_1c
    check-cast p0, Landroidx/preference/SeekBarPreference;

    iget p1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    add-int/2addr p2, p1

    iget-object p0, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_1d

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_a
    return-void

    :goto_b
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->SHOW_STATES:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL_VALUES:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "SettingsManager.VIDEO_PO\u2026IT_LEVEL_VALUES[progress]"

    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->blurValue:Landroid/widget/TextView;

    if-nez p0, :cond_1e

    goto :goto_c

    :cond_1e
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%d"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(locale, format, *args)"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
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

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget v0, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p0, "seekBar"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/SeekBarPreference;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    iget v0, p0, Landroidx/preference/SeekBarPreference$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->onBokehLevelStopChanged()V

    :cond_0
    return-void

    :pswitch_2
    const-string p0, "seekBar"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/preference/SeekBarPreference;

    iput-boolean v1, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    :cond_1
    return-void

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_9

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->preProgress:I

    if-eq p1, v0, :cond_5

    int-to-float v3, p1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-nez v3, :cond_4

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL_VALUES:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v0, v3, :cond_5

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->shouldModeSwitch:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    :cond_7
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->preProgress:I

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_9
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
