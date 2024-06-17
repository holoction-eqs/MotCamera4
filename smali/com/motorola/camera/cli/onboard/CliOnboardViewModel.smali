.class public final Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;
.super Lcom/motorola/camera/arch/view/BaseViewModel;
.source "SourceFile"


# instance fields
.field public callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

.field public final hasCliCutout:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/arch/view/BaseViewModel;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->hasCliCutout:Z

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    const-string v0, "get(SettingsManager.SECOND_TIME_USE_CLI).value"

    if-eqz p2, :cond_1

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v2, "get(SettingsManager.FIRST_TIME_USE_CLI).value"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v2, 0x7f110020

    const v3, 0x7f120314

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    new-instance v2, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v3, 0x7f11001b

    const v4, 0x7f12030f

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    new-instance v3, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v4, 0x7f11001a

    const v5, 0x7f12030e

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    new-instance v4, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v5, 0x7f11001d

    const v6, 0x7f120311

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    filled-new-array {v1, v2, v3, v4}, [Lcom/motorola/camera/cli/onboard/model/Onboard;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v3, 0x7f11001c

    const v4, 0x7f120310

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v3, 0x7f11001e

    const v4, 0x7f120312

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "wiggle_gesture"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/settings/CaptureIntent;->hasLaunchSource(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->hasCliCutout:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v3, 0x7f0800ed

    const v4, 0x7f1201e9

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v3, 0x7f0800dc

    const v4, 0x7f12030b

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    new-instance v3, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v4, 0x7f0800e9

    const v5, 0x7f12030c

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    filled-new-array {v1, v3}, [Lcom/motorola/camera/cli/onboard/model/Onboard;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v2, :cond_4

    new-instance v1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v2, 0x7f0800db

    const v3, 0x7f12030a

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/cli/onboard/model/Onboard;-><init>(II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    if-eqz p0, :cond_e

    check-cast p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    iget-object v1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    if-eqz v1, :cond_e

    iget-object v2, v1, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    if-nez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v3, v1, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->buttonNavigation:Landroid/widget/Button;

    if-nez v3, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v4, v1, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->smallCliOnboardClose:Landroid/widget/ImageButton;

    if-nez v4, :cond_7

    goto/16 :goto_5

    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x4

    iget-boolean v7, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->hasCliCutout:Z

    if-eqz v7, :cond_8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_8
    if-eqz p2, :cond_b

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v8, -0x1

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_4
    invoke-virtual {v2, p1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;->setAdapterFromList(Ljava/util/List;)V

    new-instance p1, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;

    invoke-direct {p1, v2, v3, p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;-><init>(Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;Landroid/widget/Button;Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;)V

    iget-object v0, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    :cond_c
    iget-object v0, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v5}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;I)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;I)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v7, :cond_d

    if-eqz p2, :cond_e

    :cond_d
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance p2, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_e
    :goto_5
    return-void
.end method

.method public final onDestroy(Landroid/content/Context;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
