.class public final synthetic Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$settings$controller$SettingsManagerBridge$$InternalSyntheticLambda$1$c3fc8e4ad7ffa8a96139d964d7d7635bde8197a3f865f7e3a7662a2ac2d3a29a$0()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    const-string v1, "$setting"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/ResolutionListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$settings$controller$SettingsManagerBridge$$InternalSyntheticLambda$1$c3fc8e4ad7ffa8a96139d964d7d7635bde8197a3f865f7e3a7662a2ac2d3a29a$1()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    const-string v1, "$setting"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/IntSettingListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$settings$preferences$LicensePreference$$InternalSyntheticLambda$1$0945991d5cb60b094d93f892fabd6f6ba2172ead99b1e10d8eaf6074722135c5$0()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LicensePreference;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$activity"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v2, 0x7f0d005b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.webkit.WebView"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/open_source_licenses.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    const v4, 0x7f130181

    invoke-direct {v2, p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f12001d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    new-instance v3, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    invoke-direct {v3, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;)V

    invoke-virtual {v3}, Lkotlin/UByte$Companion;->hide$1()V

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    sget-object v3, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v3, 0x7f0603a7

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v3, 0x10

    if-ne p0, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, v3, v3}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LicensePreference;->alertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$sliderbar$ToggleBarComponent$$InternalSyntheticLambda$5$2d91dc175fa9183b4715ceb93975b90222edc8906776ef714282ab3b6e220a3e$0()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->notifyModeComponent(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$sliderbar$ToggleBarComponent$$InternalSyntheticLambda$5$7110a58d21bb5356ea64709de08000c1caf8041367d507cd10391b316152588d$0()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->reverseColor(Z)V

    :cond_1
    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$sliderbar$VideoPortraitComponent$$InternalSyntheticLambda$5$7246773ff74252af9ea6ca19675be8edd4d64052b6ee57556fdab574fe9b576a$0()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/settings/Setting;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->SHOW_STATES:Ljava/util/Set;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$setting"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "setting.value"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$sliderbar$facebeauty$FaceBeautyComponent$$InternalSyntheticLambda$4$843b7d8144a51d7c4245757c2d257e3dedaba7ef3afd20be8d55945ac447aaf3$2()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SETTING"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enterSingleShot:Z

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->notifyFaceBeauty(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->stateHide:Z

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->notifyFaceBeauty(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekSlider:Landroid/widget/SeekBar;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$sliderbar$facebeauty$FaceBeautyComponent$$InternalSyntheticLambda$5$faf9362b4a72bb8dd0f34ca6ea71ed4e74ef2c48d2d754f8f3e95f8bca993855$0()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableFaceBeauty(Z)V

    :cond_0
    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$tutorial$component$CliTutorialComponent$$InternalSyntheticLambda$5$93f3fc3bd1ce78033c2cad0f7afb610bc77a62778ef5a329b7cb26fa748a8d06$0()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$screenConfigList"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->inflateViewStub()V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->tutorialPage:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;

    invoke-direct {v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;-><init>()V

    iput-object p0, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/CliTutorialAdapter;->screenList:Ljava/util/List;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;I)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$tutorial$component$TutorialComponent$$InternalSyntheticLambda$5$6dcec8f585a3bde6afc0ae26eb198486b8d88b992661d35c2d01b29e5b4c692c$0()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    sget v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$screenConfigList"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->inflateViewStub()V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;

    invoke-direct {v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;-><init>()V

    iput-object p0, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance p0, Landroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-direct {p0, v3, v1, v0}, Landroidx/viewpager2/widget/PageTransformerAdapter;-><init>(ILandroid/view/View;Ljava/lang/Object;)V

    iget-object v1, v1, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v1, v1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->itemLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda3;

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.tutorial.adapter.TutorialAdapter"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget v7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleIconRes:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mTitleTextRes:I

    if-eqz v1, :cond_a

    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-nez v7, :cond_6

    goto :goto_5

    :cond_6
    iget-object v8, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f03000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const-string v9, "mParentView.resources.ge\u2026.talkback_tooltip_titles)"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch v1, :sswitch_data_0

    const-string v1, ""

    goto :goto_3

    :sswitch_0
    aget-object v1, v8, v4

    const-string v3, "tutorialTitles[SPOT_COLOR_VIDEO_TITLE_INDEX]"

    goto :goto_2

    :sswitch_1
    aget-object v1, v8, v3

    const-string v3, "tutorialTitles[SPOT_COLOR_TITLE_INDEX]"

    goto :goto_2

    :sswitch_2
    aget-object v1, v8, v2

    const-string v3, "tutorialTitles[PORTRAIT_TITLE_INDEX]"

    goto :goto_2

    :sswitch_3
    const/4 v1, 0x6

    aget-object v1, v8, v1

    const-string v3, "tutorialTitles[MACRO_TITLE_INDEX]"

    goto :goto_2

    :sswitch_4
    const/4 v1, 0x5

    aget-object v1, v8, v1

    const-string v3, "tutorialTitles[ULTRA_RES_TITLE_INDEX]"

    goto :goto_2

    :sswitch_5
    const/4 v1, 0x4

    aget-object v1, v8, v1

    const-string v3, "tutorialTitles[CUTOUT_TITLE_INDEX]"

    goto :goto_2

    :sswitch_6
    aget-object v1, v8, v5

    const-string v3, "tutorialTitles[CINEMAGRAPH_TITLE_INDEX]"

    :goto_2
    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v7, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleText:Landroid/widget/TextView;

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_5
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleClose:Landroid/widget/ImageButton;

    if-eqz v1, :cond_b

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_c

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, p0, v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:I

    if-ne v1, v4, :cond_f

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    goto :goto_6

    :cond_d
    move v3, v2

    :goto_6
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->paginationDotsView:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    if-eqz v4, :cond_11

    invoke-virtual {v4, v3}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotCount(I)V

    invoke-virtual {v4, v2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setCurrentPosition(I)V

    new-instance v3, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;

    invoke-direct {v3}, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;-><init>()V

    invoke-virtual {v4, v1, v3}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachToPager(Ljava/lang/Object;Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_e

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v4, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_8

    :cond_f
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->paginationDotsView:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    if-nez v1, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_8
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->updateTutorialControl(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    :cond_12
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f120401 -> :sswitch_6
        0x7f120402 -> :sswitch_5
        0x7f120407 -> :sswitch_4
        0x7f120409 -> :sswitch_3
        0x7f12040f -> :sswitch_2
        0x7f120415 -> :sswitch_1
        0x7f120416 -> :sswitch_0
    .end sparse-switch
.end method

.method private final run$com$motorola$camera$ui$controls_2020$tutorial$component$TutorialComponent$$InternalSyntheticLambda$8$0c8d6057a8e08eae39633b9c09bbf54fca0d9dae3ced564aa979dfc85125a1ff$0()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    sget v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->shouldShowSuperSlowMotionTooltip()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->cliSkippedShowTutorial()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getSettingSingleTooltip()Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;->show()V

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getSettingSingleTooltip()Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->nextShowTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;

    :cond_3
    :goto_0
    return-void
.end method

.method private final run$com$motorola$camera$ui$controls_2020$tutorial$component$TutorialComponent$ZoomTooltip$$InternalSyntheticLambda$5$900be97b953a77b59d06b59e1a333f3c402de95dc9745c20d7463bae4d8be58a$0()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ZoomTooltip;

    const-string p0, "this$0"

    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "this$1"

    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    const/16 v4, 0x54

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v4, v0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->ZOOM_SLIDER_BG:F

    mul-float/2addr v0, v3

    if-eqz p0, :cond_2

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, v2, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    sub-float/2addr v2, v0

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getToggleBarGuideLine()F

    move-result v0

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    sub-float/2addr v0, v2

    const/16 v2, 0x14

    int-to-float v2, v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x44

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    :cond_4
    if-eqz p0, :cond_5

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    :goto_2
    move-object v5, p0

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    add-float/2addr p0, v4

    iget v3, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sub-float/2addr p0, v3

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_6

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    goto :goto_2

    :goto_3
    const/16 p0, 0x30

    float-to-int v3, v4

    float-to-int v4, v2

    const/4 v6, 0x1

    move v2, p0

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;I)V

    return-void
.end method

.method private final run$com$motorola$camera$ui$uicomponents$AbstractComponent$$InternalSyntheticLambda$4$9a72635d5da0d8739e62c5946ad55170c43de2afda42915527f5ae6bbe7b77ad$0()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->viewStubInflationStates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->inflateViewStub()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->viewStubInflationStates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->updateViewStub()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$uicomponents$AbstractComponent$$InternalSyntheticLambda$4$9a72635d5da0d8739e62c5946ad55170c43de2afda42915527f5ae6bbe7b77ad$0()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$tutorial$component$TutorialComponent$ZoomTooltip$$InternalSyntheticLambda$5$900be97b953a77b59d06b59e1a333f3c402de95dc9745c20d7463bae4d8be58a$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$tutorial$component$TutorialComponent$$InternalSyntheticLambda$8$0c8d6057a8e08eae39633b9c09bbf54fca0d9dae3ced564aa979dfc85125a1ff$0()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$tutorial$component$TutorialComponent$$InternalSyntheticLambda$5$6dcec8f585a3bde6afc0ae26eb198486b8d88b992661d35c2d01b29e5b4c692c$0()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$tutorial$component$CliTutorialComponent$$InternalSyntheticLambda$5$93f3fc3bd1ce78033c2cad0f7afb610bc77a62778ef5a329b7cb26fa748a8d06$0()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$sliderbar$facebeauty$FaceBeautyComponent$$InternalSyntheticLambda$5$faf9362b4a72bb8dd0f34ca6ea71ed4e74ef2c48d2d754f8f3e95f8bca993855$0()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$sliderbar$facebeauty$FaceBeautyComponent$$InternalSyntheticLambda$4$843b7d8144a51d7c4245757c2d257e3dedaba7ef3afd20be8d55945ac447aaf3$2()V

    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$sliderbar$VideoPortraitComponent$$InternalSyntheticLambda$5$7246773ff74252af9ea6ca19675be8edd4d64052b6ee57556fdab574fe9b576a$0()V

    return-void

    :pswitch_7
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$sliderbar$ToggleBarComponent$$InternalSyntheticLambda$5$7110a58d21bb5356ea64709de08000c1caf8041367d507cd10391b316152588d$0()V

    return-void

    :pswitch_8
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$sliderbar$ToggleBarComponent$$InternalSyntheticLambda$5$2d91dc175fa9183b4715ceb93975b90222edc8906776ef714282ab3b6e220a3e$0()V

    return-void

    :pswitch_9
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$settings$preferences$LicensePreference$$InternalSyntheticLambda$1$0945991d5cb60b094d93f892fabd6f6ba2172ead99b1e10d8eaf6074722135c5$0()V

    return-void

    :pswitch_a
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$settings$controller$SettingsManagerBridge$$InternalSyntheticLambda$1$c3fc8e4ad7ffa8a96139d964d7d7635bde8197a3f865f7e3a7662a2ac2d3a29a$1()V

    return-void

    :pswitch_b
    invoke-direct {p0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->run$com$motorola$camera$ui$controls_2020$settings$controller$SettingsManagerBridge$$InternalSyntheticLambda$1$c3fc8e4ad7ffa8a96139d964d7d7635bde8197a3f865f7e3a7662a2ac2d3a29a$0()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/ChangeEvent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v7, v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->stateHide:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->hide()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_ZOOM_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "get(SettingsManager.SCAN_AUTO_ZOOM_ENABLE).value"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, v7, :cond_0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->enableZoomToggle(Z)V

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "get(SettingsManager.SCAN\u2026UTO_CAPTURE_ENABLE).value"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0, v6, v7}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;ZI)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {v6}, Lkotlin/UByte$Companion;->setAutoCaptureEnable(Z)V

    :cond_1
    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/ChangeEvent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->setIdleUi(Z)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->animateUIPause(Z)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mSessionTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->startCounter(Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    :cond_2
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isCurrentScenePersistent()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->cleanUp(Z)V

    goto :goto_1

    :cond_3
    iput-boolean v6, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOptOutHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isCurrentScenePersistent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateSceneDetection()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility()V

    :goto_0
    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v0, v0, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    if-eqz v0, :cond_6

    const-string v0, "mEventHandler"

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v2

    :cond_5
    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-eq v2, v0, :cond_6

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_6
    :goto_1
    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "isEnabled"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;->setupAudioLensSwitchDrawable(Z)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$panelSettings"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-eqz v1, :cond_7

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;I)V

    iget-object v0, v1, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0, p0, v2}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_7
    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "$this_apply"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0, v7, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->animateVisibility(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$sceneMode"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v5, v2, :cond_a

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v7, v2, :cond_a

    :goto_2
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v7

    goto :goto_4

    :cond_a
    :goto_3
    move v2, v6

    :goto_4
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfFlash:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v7

    goto :goto_5

    :cond_b
    move v2, v6

    :goto_5
    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->autoSetting:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v4, "FLASH.mName"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfFlash:Z

    if-nez v4, :cond_d

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    move v2, v6

    goto :goto_7

    :cond_d
    :goto_6
    move v2, v7

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v7

    goto :goto_9

    :cond_f
    :goto_8
    move p0, v6

    :goto_9
    iput-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfAutoNV:Z

    iget-object p0, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v1, "AUTO_NIGHT_VISION.mName"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfAutoNV:Z

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mKeepHideByLux:Z

    if-nez v1, :cond_10

    move v6, v7

    :cond_10
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION_LIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfAutoNV:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->updateItems$1()V

    return-void

    :pswitch_13
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->Companion:Lkotlin/ULong$Companion;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterTouchHandler()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    move-result-object v1

    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->downEvent:Landroid/view/MotionEvent;

    iput-boolean v6, v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->longPress:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v1

    const-string v2, "MODE"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterState(I)Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->setShutterState(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->reset()V

    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p0, :cond_11

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    :cond_11
    return-void

    :pswitch_15
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$animationRect"

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setRoundPercent(F)V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_16
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->Companion:L_COROUTINE/ArtificialStackFrames;

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->thumbnailUi:Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    if-eqz v2, :cond_27

    const-string v8, "mEventHandler"

    iget-object v9, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {v9, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$init$2;

    invoke-direct {v8, v0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent$init$2;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;I)V

    if-eqz p0, :cond_12

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getTransitionDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object p0

    iget-object v0, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_12
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    new-array v0, v5, [I

    iget-object v3, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v10}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v10

    sget-boolean v11, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accelerometer_rotation"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v7, :cond_13

    move v11, v7

    goto :goto_a

    :cond_13
    move v11, v6

    :goto_a
    invoke-interface {v9}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-interface {v9}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v9, v9, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v9}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {p0, v12, v13, v14, v9}, Landroid/graphics/Rect;->inset(IIII)V

    :cond_14
    const/16 v9, 0x5a

    const/16 v12, 0xb4

    const/16 v13, 0x10e

    if-nez v11, :cond_1e

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v11

    if-eqz v11, :cond_15

    goto/16 :goto_12

    :cond_15
    iget v11, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-eq v11, v9, :cond_1a

    if-ne v11, v13, :cond_16

    goto :goto_e

    :cond_16
    invoke-virtual {v2, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getRotation(I)F

    move-result v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v13, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v13, v12, :cond_17

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    goto :goto_b

    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    neg-int v13, v13

    :goto_b
    div-int/2addr v13, v5

    iget v14, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v14, v12, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    goto :goto_c

    :cond_18
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    neg-int v12, v12

    :goto_c
    div-int/2addr v12, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/2addr v14, v5

    if-eqz v10, :cond_19

    aget v6, v0, v6

    sub-int/2addr v14, v6

    add-int/2addr v14, v13

    neg-int v6, v14

    goto :goto_d

    :cond_19
    aget v6, v0, v6

    sub-int/2addr v14, v6

    add-int v6, v14, v13

    :goto_d
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/2addr v10, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    aget v0, v0, v7

    goto/16 :goto_1b

    :cond_1a
    :goto_e
    invoke-virtual {v2, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getRotation(I)F

    move-result v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v12, v13, :cond_1b

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    goto :goto_f

    :cond_1b
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    neg-int v12, v12

    :goto_f
    div-int/2addr v12, v5

    iget v14, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v14, v13, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    neg-int v13, v13

    goto :goto_10

    :cond_1c
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    :goto_10
    div-int/2addr v13, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/2addr v14, v5

    if-eqz v10, :cond_1d

    aget v6, v0, v6

    sub-int/2addr v14, v6

    add-int/2addr v14, v12

    neg-int v6, v14

    goto :goto_11

    :cond_1d
    aget v6, v0, v6

    sub-int/2addr v14, v6

    add-int v6, v14, v12

    :goto_11
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/2addr v10, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    aget v0, v0, v7

    goto/16 :goto_1a

    :cond_1e
    :goto_12
    iget v11, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-eq v11, v9, :cond_23

    if-ne v11, v13, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-virtual {v2, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getRotation(I)F

    move-result v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v13, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v13, v12, :cond_20

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    goto :goto_13

    :cond_20
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    neg-int v13, v13

    :goto_13
    div-int/2addr v13, v5

    iget v14, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v14, v12, :cond_21

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    goto :goto_14

    :cond_21
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    neg-int v12, v12

    :goto_14
    div-int/2addr v12, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/2addr v14, v5

    if-eqz v10, :cond_22

    aget v6, v0, v6

    sub-int/2addr v14, v6

    add-int/2addr v14, v13

    neg-int v6, v14

    goto :goto_15

    :cond_22
    aget v6, v0, v6

    sub-int/2addr v14, v6

    add-int/2addr v14, v13

    move v6, v14

    :goto_15
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/2addr v10, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    aget v0, v0, v7

    goto :goto_1b

    :cond_23
    :goto_16
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget v12, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v12, v13, :cond_24

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    goto :goto_17

    :cond_24
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    neg-int v12, v12

    :goto_17
    div-int/2addr v12, v5

    iget v14, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    if-ne v14, v13, :cond_25

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    neg-int v13, v13

    goto :goto_18

    :cond_25
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    :goto_18
    div-int/2addr v13, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/2addr v14, v5

    if-eqz v10, :cond_26

    aget v6, v0, v6

    sub-int/2addr v14, v6

    add-int/2addr v14, v12

    neg-int v6, v14

    goto :goto_19

    :cond_26
    aget v6, v0, v6

    sub-int/2addr v14, v6

    add-int v6, v14, v12

    :goto_19
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/2addr v10, v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    aget v0, v0, v7

    :goto_1a
    move v12, v13

    :goto_1b
    sub-int/2addr p0, v0

    add-int/2addr p0, v12

    sub-int/2addr v10, p0

    neg-int p0, v10

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v9, v6

    add-int/2addr v11, p0

    invoke-direct {v0, v6, p0, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f0b0007

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v5, p0

    iget-object p0, v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->videoIndication:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2, v0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2, v8}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_27
    return-void

    :pswitch_17
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$state"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const/4 v4, 0x5

    if-nez v1, :cond_28

    goto/16 :goto_23

    :cond_28
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iput-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v1, :cond_29

    goto :goto_1c

    :cond_29
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1c
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/4 v8, 0x7

    invoke-direct {v1, v0, v8}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2a

    const v8, 0x7f0a0467

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_2a
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2b

    const v8, 0x7f0a0464

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    goto :goto_1d

    :cond_2b
    move-object v1, v2

    :goto_1d
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2c

    const v8, 0x7f0a0469

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    goto :goto_1e

    :cond_2c
    move-object v1, v2

    :goto_1e
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2d

    const v8, 0x7f0a0017

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_1f

    :cond_2d
    move-object v1, v2

    :goto_1f
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->acceptButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2e

    const v8, 0x7f0a033e

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_20

    :cond_2e
    move-object v1, v2

    :goto_20
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refuseButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2f

    const v8, 0x7f0a0468

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    goto :goto_21

    :cond_2f
    move-object v1, v2

    :goto_21
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_30

    const v8, 0x7f0a046c

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_22

    :cond_30
    move-object v1, v2

    :goto_22
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_31

    const v2, 0x7f0a046a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    :cond_31
    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->acceptButton:Landroid/widget/Button;

    if-eqz v1, :cond_32

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_32
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refuseButton:Landroid/widget/Button;

    if-eqz v1, :cond_33

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_33
    :goto_23
    iget v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->availability:I

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    if-eqz v1, :cond_61

    if-eq v1, v7, :cond_60

    if-eq v1, v5, :cond_5f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_34

    goto/16 :goto_3a

    :cond_34
    iget v1, p0, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;->stateChanged:I

    if-eq v1, v7, :cond_59

    if-eq v1, v5, :cond_52

    if-eq v1, v2, :cond_51

    const-wide/16 v8, 0x1388

    const v5, 0x7f0800d1

    if-eq v1, v3, :cond_49

    const-string v10, "UpdatePromptComponent"

    if-eq v1, v4, :cond_3e

    const/16 v2, 0xb

    if-eq v1, v2, :cond_35

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    iput-boolean v7, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appUpdate - unknown state - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    :cond_35
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_36

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_36
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_37

    goto :goto_24

    :cond_37
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_24
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_38

    goto :goto_25

    :cond_38
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_25
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_39

    const v1, 0x7f120173

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_39
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_3a

    const v1, 0x7f1205ea

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3a
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_3b

    goto :goto_26

    :cond_3b
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_26
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_3c

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3c
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_3d

    goto :goto_27

    :cond_3d
    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_27
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iput-boolean v7, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_62

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v7}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    goto/16 :goto_39

    :cond_3e
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_3f

    goto :goto_28

    :cond_3f
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_28
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_40

    goto :goto_29

    :cond_40
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_29
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_41

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_41
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iget-boolean p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->isInstallingUpdate:Z

    if-eqz p0, :cond_43

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_42

    const v1, 0x7f1201c0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_42
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "appUpdate - install failed - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    :cond_43
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_44

    const v1, 0x7f1201bf

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_44
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->installErrorCode:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "appUpdate - download failed - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_45

    const v1, 0x7f1205eb

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_45
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz v1, :cond_46

    new-instance v3, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p0, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_46
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1, p0, v8, v9}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_47

    const v1, 0x7f080124

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_47
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_48

    goto :goto_2b

    :cond_48
    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2b
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    goto/16 :goto_3a

    :cond_49
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_4a

    goto :goto_2c

    :cond_4a
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_2c
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_4b

    goto :goto_2d

    :cond_4b
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_2d
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_4c

    goto :goto_2e

    :cond_4c
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2e
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarText:Landroid/widget/TextView;

    if-eqz p0, :cond_4d

    const v1, 0x7f1205ec

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4d
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_4e

    const v1, 0x7f1205e8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4e
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_4f

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4f
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_50

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_50
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v1, v8, v9}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2f

    :cond_51
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->UPDATE_INSTALLED_NEW_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2f
    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_3a

    :cond_52
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_53

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_53
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    iput-boolean v6, p0, Lcom/motorola/camera/utility/InAppUpdateUtils;->updateDownloaded:Z

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    if-nez p0, :cond_54

    goto :goto_30

    :cond_54
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_30
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_55

    goto :goto_31

    :cond_55
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_31
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_56

    goto :goto_32

    :cond_56
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_32
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_57

    goto :goto_33

    :cond_57
    invoke-virtual {p0, v6}, Landroid/widget/ProgressBar;->setMin(I)V

    :goto_33
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_58

    goto :goto_34

    :cond_58
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    iget-wide v1, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesToDownload:J

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :goto_34
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    iget-wide v1, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->bytesDownloaded:J

    long-to-int v1, v1

    filled-new-array {v1}, [I

    move-result-object v1

    const-string v2, "progress"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_62

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    goto :goto_39

    :cond_59
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerGroup:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    if-nez p0, :cond_5a

    goto :goto_35

    :cond_5a
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_35
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarGroup:Landroidx/constraintlayout/widget/Group;

    if-nez p0, :cond_5b

    goto :goto_36

    :cond_5b
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_36
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_5c

    goto :goto_37

    :cond_5c
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_37
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getSnackbarProgress()Landroid/widget/ProgressBar;

    move-result-object p0

    if-nez p0, :cond_5d

    goto :goto_38

    :cond_5d
    invoke-virtual {p0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_38
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation()V

    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    if-nez p0, :cond_5e

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_5e
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->snackbarButton:Landroid/widget/Button;

    if-eqz p0, :cond_62

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    :goto_39
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3a

    :cond_5f
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f12014f

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v3, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v1, p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_3a

    :cond_60
    iput-boolean v6, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->updateAvailable:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    goto :goto_3a

    :cond_61
    iput-boolean v7, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->updateAvailable:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    :cond_62
    :goto_3a
    return-void

    :pswitch_18
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/scenedetection/scene/Scene;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    iput-object p0, v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isOptInActiveScene()Z

    move-result p0

    if-eqz p0, :cond_6c

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->unsupportedInMacroScene()Z

    move-result p0

    if-nez p0, :cond_6c

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-nez p0, :cond_63

    goto/16 :goto_3f

    :cond_63
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {p0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getTextResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mParentView.resources.ge\u2026urrentScene.textResource)"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInIcon$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_69

    invoke-interface {p0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v4, 0x7

    if-eq p0, v4, :cond_68

    const/16 v4, 0x8

    if-eq p0, v4, :cond_67

    const/16 v4, 0xd

    if-eq p0, v4, :cond_66

    const/16 v4, 0xf

    if-eq p0, v4, :cond_65

    const/16 v4, 0x10

    if-eq p0, v4, :cond_64

    goto :goto_3b

    :cond_64
    const p0, 0x7f080210

    goto :goto_3c

    :cond_65
    :goto_3b
    const p0, 0x7f0800bc

    goto :goto_3c

    :cond_66
    const p0, 0x7f080211

    goto :goto_3c

    :cond_67
    const p0, 0x7f080214

    goto :goto_3c

    :cond_68
    const p0, 0x7f08021b

    :goto_3c
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_69
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInText$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_6a

    goto :goto_3d

    :cond_6a
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3d
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInOpen$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez p0, :cond_6b

    goto :goto_3e

    :cond_6b
    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120516

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6c
    :goto_3e
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->animateIfVisibilityChanged()V

    :cond_6d
    :goto_3f
    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->NEWLINE_REGEX:Lkotlin/text/Regex;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$it"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_6e
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->multiActions:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_6f
    iput-object p0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->currentTidbit:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_70
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_71

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttonsScrollFlow:Landroidx/constraintlayout/helper/widget/Flow;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_71
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->infoCardTitle:Landroid/widget/TextView;

    if-nez v1, :cond_72

    goto :goto_40

    :cond_72
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v2}, Landroidx/loader/app/LoaderManager;->getTitleString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "result.mData.titleString"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->NEWLINE_REGEX:Lkotlin/text/Regex;

    iget-object v3, v3, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_40
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->infoCardDetails:Landroid/widget/TextView;

    if-nez v1, :cond_73

    goto :goto_45

    :cond_73
    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v2}, Landroidx/loader/app/LoaderManager;->getDetailsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "result.mData.detailsString"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    move v4, v6

    move v8, v4

    :goto_41
    if-gt v4, v3, :cond_79

    if-nez v8, :cond_74

    move v9, v4

    goto :goto_42

    :cond_74
    move v9, v3

    :goto_42
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->compare(II)I

    move-result v9

    if-gtz v9, :cond_75

    move v9, v7

    goto :goto_43

    :cond_75
    move v9, v6

    :goto_43
    if-nez v8, :cond_77

    if-nez v9, :cond_76

    move v8, v7

    goto :goto_41

    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_77
    if-nez v9, :cond_78

    goto :goto_44

    :cond_78
    add-int/lit8 v3, v3, -0x1

    goto :goto_41

    :cond_79
    :goto_44
    add-int/2addr v3, v7

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_45
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->infoCard:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7a

    new-instance v2, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v7, v0, p0}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7a
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_7f

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz v2, :cond_7b

    const-string v2, "result.allActions"

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :cond_7b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v6

    :goto_46
    if-ge v4, v3, :cond_7d

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "orderedResults[i]"

    invoke-static {v7, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "it.context"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Landroid/widget/ImageButton;

    invoke-direct {v9, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setId(I)V

    iget-object v10, v7, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->mResource:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    iget v11, v10, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sRes:I

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v11, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v11, 0x7f080343

    invoke-static {v8, v11}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v10, v10, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->sText:I

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v8, v5, v7, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v7

    aput v7, v2, v4

    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_7c

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_7d
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttonsScrollFlow:Landroidx/constraintlayout/helper/widget/Flow;

    if-nez p0, :cond_7e

    goto :goto_47

    :cond_7e
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    :goto_47
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttons:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_7f

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_7f
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->buttonsScroll:Landroid/widget/HorizontalScrollView;

    if-nez p0, :cond_80

    goto :goto_48

    :cond_80
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_48
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->multiActionsScroll:Landroid/widget/ScrollView;

    if-nez p0, :cond_81

    goto :goto_49

    :cond_81
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_49
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;->animateShow()V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$bracketsMargins"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_1b
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$message"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getInfoText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    if-nez p0, :cond_82

    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez p0, :cond_82

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getTextGroup()Landroidx/constraintlayout/widget/Group;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBackground()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getInfoText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0, v6}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getHeadlineText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0, v7}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    :cond_82
    return-void

    :pswitch_1c
    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/service/JmsServiceInterface$1;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    iget-object v1, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v3, v3, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-boolean v5, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    if-nez v5, :cond_85

    iget-boolean v5, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    if-eqz v5, :cond_85

    sget v1, Ljms/IJobMgrService$Stub;->$r8$clinit:I

    if-nez p0, :cond_83

    goto :goto_4a

    :cond_83
    const-string v1, "jms.IJobMgrService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_84

    instance-of v2, v1, Ljms/IJobMgrService;

    if-eqz v2, :cond_84

    move-object v2, v1

    check-cast v2, Ljms/IJobMgrService;

    goto :goto_4a

    :cond_84
    new-instance v2, Ljms/IJobMgrService$Stub$Proxy;

    invoke-direct {v2, p0}, Ljms/IJobMgrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_4a
    iput-object v2, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    new-instance p0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    :try_start_1
    sget-boolean v4, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v5, v4}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)[B

    move-result-object v5

    iget-object v8, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v8, v8, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    invoke-interface {v8, v4, v5}, Ljms/IJobMgrService;->initialize(Ljava/lang/String;[B)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v5, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler;->bgServiceMsgIntf:Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    sget-object v8, Lcom/motorola/camera/service/JmsServiceInterface;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v8, v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->type:Lcom/motorola/camera/background/common/ClientType;

    iget v4, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceClientId:I

    const-string v9, "CameraAppClient"

    invoke-interface {v5, p0, v8, v4, v9}, Ljms/IJobMgrService;->registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4b

    :catch_0
    move-exception p0

    :try_start_3
    sget-object v4, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v5, "JmsServiceInterface registerClient() exception: "

    invoke-static {v4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    iget-object p0, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iput-boolean v7, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    iput-boolean v6, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    cmp-long p0, v4, v1

    if-lez p0, :cond_86

    :goto_4c
    iget-object p0, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    goto :goto_4d

    :catch_1
    move-exception p0

    sget-object v4, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v5, "JmsServiceInterface initialize() exception: "

    invoke-static {v4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    cmp-long p0, v4, v1

    if-lez p0, :cond_86

    goto :goto_4c

    :goto_4d
    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface;->jmsReady:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4e

    :cond_85
    iget-boolean p0, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    if-nez p0, :cond_86

    iget-object p0, v4, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_86
    :goto_4e
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
