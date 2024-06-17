.class public final synthetic Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    const/16 v0, 0x8

    iget v1, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x2

    const-string v3, "$this_apply"

    const/4 v4, 0x0

    const-string v5, "this$0"

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_10

    :pswitch_0
    check-cast p0, Landroid/content/DialogInterface$OnClickListener;

    check-cast v7, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    sget p1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->$r8$clinit:I

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p1, -0x3

    invoke-interface {p0, v7, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    invoke-virtual {v7}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->dismiss()V

    return-void

    :pswitch_1
    check-cast p0, Landroid/widget/ImageButton;

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->SHOW_STATES:Ljava/util/Set;

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ImageButton;I)V

    invoke-virtual {v7, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ImageButton;I)V

    invoke-virtual {v7, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean p0, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    if-eqz p0, :cond_4

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->resetVideoPortraitState()V

    goto :goto_0

    :cond_2
    iget-object p1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->resetVideoPortraitState()V

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    const/16 v0, 0x40

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setViewExpandState(IZ)V

    iget-boolean p0, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    if-eqz p0, :cond_4

    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->resetVideoPortraitState()V

    invoke-static {v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->storeCurrentZoomValue(Z)V

    :goto_0
    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->switchVideoPortraitMode(Z)V

    iput-boolean v4, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->firstOpenSliderBar:Z

    :cond_4
    :goto_1
    return-void

    :pswitch_2
    check-cast p0, Landroid/widget/ImageButton;

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-virtual {v7, p1, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    :cond_5
    return-void

    :pswitch_3
    check-cast p0, Landroid/widget/ImageButton;

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    sget p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->$r8$clinit:I

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-virtual {v7, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->notifyModeComponent(Z)V

    iget-object p1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    xor-int/2addr p0, v6

    invoke-virtual {v7, p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    :cond_6
    return-void

    :pswitch_4
    check-cast p0, Landroid/widget/ImageButton;

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->HIDE_STATES:Ljava/util/Set;

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, v7, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    xor-int/2addr p0, v6

    invoke-virtual {v7, p1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    :cond_7
    return-void

    :pswitch_5
    check-cast p0, Ljava/lang/Runnable;

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string p1, "$hideSnackbarRunnable"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraApp;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 p1, 0x6

    invoke-direct {p0, v7, p1}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {v7, p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, v7, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_8

    const p1, 0x7f120174

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    iget-object p0, v7, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_9

    const p1, 0x7f1205e7

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_2
    iget-object p0, v7, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual {v7}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/zzg;->getAppUpdateInfo()Lcom/google/android/gms/tasks/zzw;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils;I)V

    new-instance p0, Lcom/motorola/camera/utility/lens/LensApiV1$$ExternalSyntheticLambda0;

    invoke-direct {p0, v2, v0}, Lcom/motorola/camera/utility/lens/LensApiV1$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    check-cast v7, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->NEWLINE_REGEX:Lkotlin/text/Regex;

    const-string p1, "$this_createButton"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    if-eqz p1, :cond_10

    check-cast p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, v7, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->multiActions:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mData:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    const v5, 0x7f0d00e6

    invoke-virtual {p1, v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a035b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f0a035a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    sget-object v9, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->NEWLINE_REGEX:Lkotlin/text/Regex;

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v10, "intent.first"

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->NEWLINE_REGEX:Lkotlin/text/Regex;

    iget-object v10, v10, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    iget v6, v6, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4, v7, p0, v3}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_d
    iget-object p0, v7, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttonsScroll:Landroid/widget/HorizontalScrollView;

    if-nez p0, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object p0, v7, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->multiActionsScroll:Landroid/widget/ScrollView;

    if-nez p0, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_10
    invoke-virtual {v7, p0}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->onClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    :goto_7
    return-void

    :pswitch_7
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    check-cast v7, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->NEWLINE_REGEX:Lkotlin/text/Regex;

    invoke-static {p0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$result"

    invoke-static {v7, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getPrimaryAction()Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->onClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/motorola/camera/editor/ui/FilterButtonView;

    check-cast v7, Lcom/google/gson/FieldAttributes;

    sget v0, Lcom/motorola/camera/editor/ui/FilterButtonView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v7, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/editor/DocEditorActivity;

    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v0, :cond_11

    move v0, v6

    goto :goto_8

    :cond_11
    move v0, v4

    :goto_8
    if-nez v0, :cond_12

    goto/16 :goto_f

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v7, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/editor/DocEditorActivity;

    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v5, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    if-ne v5, v0, :cond_13

    move v5, v6

    goto :goto_9

    :cond_13
    move v5, v4

    :goto_9
    if-eqz v5, :cond_14

    goto/16 :goto_e

    :cond_14
    if-eqz v3, :cond_22

    iget-object v5, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_15

    goto/16 :goto_e

    :cond_15
    iput v0, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    sget-object v3, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v5, 0x3

    if-eq v3, v6, :cond_19

    if-eq v3, v2, :cond_16

    const/4 v2, 0x0

    move v6, v4

    goto/16 :goto_d

    :cond_16
    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v3, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_a

    :cond_17
    new-array v3, v5, [I

    iget-object v5, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v7, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v7, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v7, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v7, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v8, v8, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v5, v7, v8, v3, v4}, Lcom/motorola/camera/mcf/DocUtil;->enhanceRGB([BII[IZ)[B

    move-result-object v5

    if-nez v5, :cond_18

    goto :goto_a

    :cond_18
    iget-object v7, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v2, v3, v2

    aget v3, v3, v6

    invoke-static {v2, v3, v5}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    :goto_a
    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v2, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mEnhancedBitmap:Landroid/graphics/Bitmap;

    move v11, v6

    move v6, v4

    move v4, v11

    goto/16 :goto_d

    :cond_19
    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v3, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_c

    :cond_1a
    new-array v3, v5, [I

    iget-object v5, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v5, v5, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v7, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v7, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v7, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v7, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v8, v8, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v5, v7, v8, v3, v4}, Lcom/motorola/camera/mcf/DocUtil;->monoRGB([BII[IZ)[B

    move-result-object v5

    if-nez v5, :cond_1b

    goto :goto_c

    :cond_1b
    iget-object v7, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    aget v2, v3, v2

    aget v3, v3, v6

    invoke-static {v2, v3, v5}, Lcom/motorola/camera/editor/DocEditorActivity;->createBitmap(II[B)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_DOCUMENT_SHADOW_REMOVAL:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-boolean v2, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v6

    goto :goto_b

    :cond_1c
    move v2, v4

    :goto_b
    if-nez v2, :cond_1d

    goto :goto_c

    :cond_1d
    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v2, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mShadowRemovalRunnableMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_c

    :cond_1e
    new-instance v5, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;

    iget-object v7, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v7, v7, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v2, v7, v1}, Lcom/motorola/camera/shadow/ShadowRemovalRunnable;-><init>(ILandroid/graphics/Bitmap;Lcom/motorola/camera/editor/DocEditorActivity;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_c
    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v2, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    goto :goto_d

    :cond_1f
    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v2, v2, Lcom/motorola/camera/editor/DocJpegHolder;->mAdjustedBitmap:Landroid/graphics/Bitmap;

    move v4, v6

    :goto_d
    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v3, v3, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    float-to-int v3, v3

    iget-object v5, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v5, v3}, Lcom/motorola/camera/editor/ui/ScaleImageView;->setLastRotate(I)V

    iget-object v3, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v4, :cond_20

    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v2}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    :cond_20
    if-eqz v6, :cond_21

    iget-object v2, v1, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {v2}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseEnhanced()V

    :cond_21
    invoke-virtual {v1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateSaveButtonEnableState()V

    :cond_22
    :goto_e
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Landroidx/work/impl/StartStopTokens;

    const-string v2, "ANALYTICS_DOC_EDITOR_FILTER"

    invoke-virtual {v1, v0, v2}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    :goto_f
    return-void

    :goto_10
    check-cast p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    check-cast v7, Landroid/content/Context;

    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->basicPermissionDescMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->advancePermissionDescMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_12

    :cond_23
    new-instance v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    invoke-direct {v0, v7}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v6, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isCtaBasicDialog:Z

    iput-boolean v6, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isOnlyPermission:Z

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v6}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionSupplementDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionSupplementDesc:Ljava/lang/CharSequence;

    new-instance v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v4}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V

    iput-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v6}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V

    iput-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->buttonMessage:Ljava/lang/CharSequence;

    goto :goto_11

    :cond_24
    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->buttonMessage:Ljava/lang/CharSequence;

    :goto_11
    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    iput-object p0, v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionHeaderDesc:Ljava/lang/CharSequence;

    :cond_25
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_13

    :cond_26
    :goto_12
    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_27

    const/16 v0, -0x64

    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_27
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
