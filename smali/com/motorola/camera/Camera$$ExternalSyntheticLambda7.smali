.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->$r8$classId:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    const/16 v3, 0x18

    invoke-direct {v1, v3, v2, v0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    const/16 v3, 0x14

    invoke-direct {v1, v3, v2, v0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->SHOW_STATES:Ljava/util/Set;

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SELECTIVE_COLOR_ROI_PIXEL:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v1, v3}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->pickIDLE:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_PIXEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v8}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void

    :pswitch_3
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    sget v3, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;->$r8$clinit:I

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v3, v1, :cond_5

    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v2, v7}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;Ljava/lang/Object;I)V

    goto :goto_3

    :cond_4
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v2, v9}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;Ljava/lang/Object;I)V

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->HIDE_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v2, v1, :cond_6

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SECURE_LAUNCH_SETTINGS_FINISH:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v2, v1, :cond_7

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    :goto_3
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void

    :pswitch_4
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_ITEM_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_8

    goto/16 :goto_6

    :cond_8
    const-string v1, "null cannot be cast to non-null type android.os.Bundle"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "PREVIOUS_VALUE"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VALUE"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SETTING"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoStabilizationConfigured(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v2, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    move v1, v9

    goto :goto_4

    :cond_9
    move v1, v7

    :goto_4
    if-eqz v1, :cond_d

    if-eqz v3, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    move v1, v9

    goto :goto_5

    :cond_a
    move v1, v7

    :goto_5
    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    :cond_b
    if-nez v8, :cond_c

    goto :goto_6

    :cond_c
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    invoke-direct {v1}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->bannerStabData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    iput-boolean v9, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->sustainWhileChangingMode:Z

    iput-boolean v7, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->rotatable:Z

    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v2, 0x7f080270

    invoke-static {v8, v2}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f1204ae

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    const v2, 0x7f1204ad

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    const v2, 0x7f1204af

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026abilization_button_close)"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lkotlin/UInt$Companion;

    invoke-direct {v3}, Lkotlin/UInt$Companion;-><init>()V

    iput-object v3, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveCallback:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveButtonText:Ljava/lang/String;

    const v2, 0x7f1204b0

    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.stri\u2026bilization_button_enable)"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerStabData$1$2;

    invoke-direct {v3, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$setBannerStabData$1$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V

    iput-object v3, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeCallback:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$OnClickListener;

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeButtonText:Ljava/lang/String;

    goto :goto_6

    :cond_d
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->dismissPrompt()V

    :goto_6
    return-void

    :pswitch_5
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->LISTENED_NOTIFIERS:Ljava/util/List;

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_e

    const/4 v1, -0x1

    goto :goto_7

    :cond_e
    sget-object v3, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_7
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    if-eq v1, v9, :cond_11

    if-eq v1, v4, :cond_10

    if-eq v1, v6, :cond_f

    goto :goto_a

    :cond_f
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->viewfinderFrameRate:Landroidx/lifecycle/MutableLiveData;

    goto :goto_8

    :cond_10
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->glFrameRate:Landroidx/lifecycle/MutableLiveData;

    :goto_8
    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    goto :goto_9

    :cond_11
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    const-string v3, "null cannot be cast to non-null type com.motorola.camera.mcf.McfCallbackAIScene"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/mcf/McfCallbackAIScene;

    iget-object v3, v2, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mScene:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->candidateScene:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, v2, Lcom/motorola/camera/mcf/McfCallbackAIScene;->mCandidateScenes:Ljava/lang/String;

    :goto_9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_a
    return-void

    :pswitch_6
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v2, :cond_12

    goto :goto_b

    :cond_12
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->LISTENED_STATES:Ljava/util/Set;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_b

    :cond_13
    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v2, 0x19

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_b
    return-void

    :pswitch_7
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v1, v2, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_14
    return-void

    :pswitch_8
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_BANNER_PROMPT:Lcom/motorola/camera/Notifier$TYPE;

    if-eq v1, v3, :cond_15

    goto/16 :goto_12

    :cond_15
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v1, :cond_16

    goto/16 :goto_11

    :cond_16
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iput-object v8, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v1, :cond_17

    goto :goto_c

    :cond_17
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_18

    const v3, 0x7f0a0091

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_18
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_19

    const v3, 0x7f0a008f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    :cond_19
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_1a

    const v3, 0x7f0a0090

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_d

    :cond_1a
    move-object v1, v8

    :goto_d
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerIcon:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_1b

    const v3, 0x7f0a0093

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_e

    :cond_1b
    move-object v1, v8

    :goto_e
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerTitle:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_1c

    const v3, 0x7f0a0092

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_f

    :cond_1c
    move-object v1, v8

    :goto_f
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerText:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_1d

    const v3, 0x7f0a008d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_10

    :cond_1d
    move-object v1, v8

    :goto_10
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->acceptButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_1e

    const v3, 0x7f0a008e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    :cond_1e
    iput-object v8, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismissButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->acceptButton:Landroid/widget/Button;

    if-eqz v1, :cond_1f

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v7}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1f
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismissButton:Landroid/widget/Button;

    if-eqz v1, :cond_20

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v9}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_20
    :goto_11
    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.BannerPromptComponent.BannerData"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->display:Z

    if-eqz v2, :cond_26

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_21

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_21

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_21
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz v1, :cond_22

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->titleText:Ljava/lang/String;

    if-eqz v1, :cond_22

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_22

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz v1, :cond_23

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->messageText:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerText:Landroid/widget/TextView;

    if-eqz v2, :cond_23

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz v1, :cond_24

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->positiveButtonText:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->acceptButton:Landroid/widget/Button;

    if-eqz v2, :cond_24

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->bannerData:Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;

    if-eqz v1, :cond_25

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$BannerData;->negativeButtonText:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismissButton:Landroid/widget/Button;

    if-eqz v2, :cond_25

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v4}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "IS_SELECTED"

    invoke-virtual {v0, v1, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->BANNER_PROMPT_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_12

    :cond_26
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;->dismiss()V

    :goto_12
    return-void

    :pswitch_9
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    sget-object v1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    if-eqz v1, :cond_27

    iput-boolean v7, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    invoke-static {v7}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    :cond_27
    return-void

    :pswitch_a
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentManager;

    sget-object v1, Lcom/motorola/camera/cli/content/CliContentManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v1, v9}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeDualPreviewContentStatus()V

    return-void

    :pswitch_b
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    const-string v0, "this$0"

    invoke-static {v11, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-nez v0, :cond_2b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameSaved:Z

    if-nez v0, :cond_2b

    iput-boolean v9, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameSaved:Z

    instance-of v0, v2, Landroid/os/Bundle;

    if-eqz v0, :cond_28

    move-object v8, v2

    check-cast v8, Landroid/os/Bundle;

    :cond_28
    const-wide/16 v0, 0x0

    if-eqz v8, :cond_29

    const-string v2, "ON_UP"

    invoke-virtual {v8, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_13

    :cond_29
    move-wide v2, v0

    :goto_13
    cmp-long v0, v2, v0

    if-lez v0, :cond_2b

    iget-object v1, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter v1

    :try_start_0
    iget-object v0, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraDrawTimestamps:[J

    aget-wide v4, v0, v7

    cmp-long v0, v2, v4

    if-lez v0, :cond_2a

    goto :goto_14

    :cond_2a
    move v7, v9

    :goto_14
    iget-object v0, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    aget-object v12, v0, v7

    iget-object v2, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->previewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    aput-object v2, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v12, :cond_2b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v13, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v13, v1, v0}, Landroid/util/Size;-><init>(II)V

    iget v14, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->orientation:I

    iget v0, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->lastLux:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.2f"

    const-string v2, "format(format, *args)"

    invoke-static {v0, v9, v1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v3, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->exposure:F

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v9, v1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->iso:I

    iget v3, v11, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->aperture:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_iso"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_fnum"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "_lux"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_exp"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;Ljava/nio/Buffer;Landroid/util/Size;IJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2b
    :goto_15
    return-void

    :pswitch_c
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/Camera;

    sget-object v1, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void

    :goto_16
    iget-object v0, v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_AUTO_ENHANCE_DIALOG:Lcom/motorola/camera/Notifier$TYPE;

    if-ne v1, v2, :cond_2c

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_ENHANCE_LAUNCH_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
