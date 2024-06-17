.class public final Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;
.super Lcom/motorola/camera/arch/view/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;


# instance fields
.field public final hasCliCutout:Z

.field public viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/arch/view/BaseFragment;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->hasCliCutout:Z

    return-void
.end method


# virtual methods
.method public final finishOnboarding()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v2, "get(SettingsManager.FIRST_TIME_USE_CLI).value"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v2, "get(SettingsManager.SECOND_TIME_USE_CLI).value"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/arch/view/BaseFragment;->eventListener:Lcom/motorola/camera/EventListener;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_2
    return-void
.end method

.method public final loadViewModel()Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;
    .locals 1

    new-instance v0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    iget-boolean p0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->hasCliCutout:Z

    invoke-direct {v0, p0}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;-><init>(Z)V

    return-object v0
.end method

.method public final onActivityCreated()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/arch/view/BaseFragment;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    check-cast p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->onCreate(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/arch/view/BaseFragment;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    check-cast p1, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->$r8$clinit:I

    sget-object p3, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const p3, 0x7f0d0038

    invoke-static {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    const-string p2, "inflate(LayoutInflater.f\u2026ntext), container, false)"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    iget-object p0, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const-string p1, "binding.root"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final showNextPage()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;->isCurrentItemLast()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->finishOnboarding()V

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_2
    :goto_1
    return-void
.end method
