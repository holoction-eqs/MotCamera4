.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.tutorial.adapter.TutorialAdapter"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const-string v3, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;

    iget-object v2, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    iget v3, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:I

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v3

    aget v3, v4, v3

    :goto_0
    if-ne v3, v0, :cond_1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.FIRST_TIME_USE).value"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TUTORIAL_SKIPPED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->completeTutorial(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    :cond_3
    :goto_1
    return-void

    :goto_2
    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;

    iget-object v2, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    iget v3, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:I

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v3

    aget v3, v4, v3

    :goto_3
    if-eq v3, v0, :cond_a

    const/4 p1, 0x2

    if-eq v3, p1, :cond_6

    :cond_5
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->completeModeTutorial(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    goto/16 :goto_6

    :cond_6
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLAY_TUTORIAL_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getTooltipIndex()I

    move-result p1

    if-ne p1, v1, :cond_9

    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setTooltipIndex(I)V

    goto :goto_5

    :cond_8
    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setTooltipIndex(I)V

    :goto_4
    move p1, v2

    :cond_9
    :goto_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TUTORIAL_TOOLTIP_INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-eq p1, v1, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
