.class public final synthetic Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x0

    const-string v2, "cliOnboardFragment"

    const/4 v3, 0x0

    const-string v4, "this$0"

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->remove$2()V

    return-void

    :pswitch_1
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->remove$2()V

    return-void

    :pswitch_2
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->cliOnboardFragment:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    move v1, v2

    :cond_3
    if-nez v1, :cond_5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-static {v2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :goto_4
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    iget-object v4, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v5, "mEventHandler.layoutManager"

    invoke-static {v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v6

    invoke-direct {v0, v6}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->cliOnboardFragment:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;->cliOnboardFragment:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object v2, v3

    :goto_5
    instance-of v6, v2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v6, :cond_8

    move-object v3, v2

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v2

    const-class v6, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v3, v2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v6, 0x7f0a01d9

    invoke-virtual {v3, v6, v0, v2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :cond_9
    invoke-static {v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v0, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void

    :cond_d
    invoke-static {v2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
