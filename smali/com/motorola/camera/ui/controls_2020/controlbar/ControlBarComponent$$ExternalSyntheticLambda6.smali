.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;->$r8$classId:I

    const-string v2, "mParentView.context"

    const-string v3, "getKey(it.key.mName)"

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "it"

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    const-string v8, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    iget-object v8, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueModel;->value:Ljava/lang/Object;

    invoke-direct {v7, v8, v9, v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesSettingName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget v2, v2, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0, v5, v6}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isInModeChange()Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v6

    :cond_4
    const/4 v7, 0x1

    if-nez v6, :cond_5

    move v6, v7

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_1
    iget-object v8, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_2

    :cond_6
    move v8, v5

    :goto_2
    check-cast v1, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object v11, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v11, v11, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v11

    invoke-static {v11, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/content/Context;)V

    iget-boolean v11, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAutoTrigger:Z

    iput-boolean v11, v10, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isAutoTrigger:Z

    iget-boolean v11, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->isAlwaysOn:Z

    iput-boolean v11, v10, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isAlwaysOn:Z

    iget v11, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->values:I

    if-le v11, v7, :cond_7

    move v11, v7

    goto :goto_4

    :cond_7
    move v11, v5

    :goto_4
    iput-boolean v11, v10, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->areMultiValuesEnabled:Z

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingModel;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v4, v4, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v11, v11, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v4, v11}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f0600bc

    goto :goto_5

    :cond_8
    const v4, 0x7f06036c

    :goto_5
    iput v4, v10, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->backgroundTint:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-static {v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v6, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_b

    move v7, v2

    goto :goto_7

    :cond_b
    if-nez v8, :cond_c

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v7, 0x4

    :goto_7
    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;

    if-ne v7, v2, :cond_d

    invoke-direct {v3, v0, v7, v1, v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ILjava/util/List;I)V

    goto :goto_8

    :cond_d
    invoke-direct {v3, v7, v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda9;-><init>(ILcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Ljava/util/ArrayList;)V

    :goto_8
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_9
    return-void

    :goto_a
    move-object/from16 v1, p1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v13, v2

    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    const/4 v4, 0x0

    if-nez v9, :cond_e

    goto/16 :goto_d

    :cond_e
    iget-object v10, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v10, :cond_f

    goto/16 :goto_d

    :cond_f
    iget-object v15, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v15, :cond_10

    goto/16 :goto_d

    :cond_10
    iget-object v12, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesSettingName:Landroid/widget/TextView;

    if-nez v12, :cond_11

    goto/16 :goto_d

    :cond_11
    if-ne v1, v2, :cond_13

    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    new-instance v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;

    const/16 v16, 0x0

    move-object v7, v8

    move-object v6, v8

    move-object v8, v9

    move-object v9, v10

    move-object v5, v11

    move-wide v10, v13

    move-object/from16 v17, v12

    move/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;-><init>(Landroid/view/View;Landroid/view/View;JI)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v5, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isControlPanelAvailableInCurrentMode()Z

    move-result v5

    if-eqz v5, :cond_12

    move-object v9, v15

    goto :goto_b

    :cond_12
    const/4 v9, 0x0

    :goto_b
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;

    const/4 v12, 0x1

    move-object v7, v6

    move-object/from16 v8, v17

    move-wide v10, v13

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;-><init>(Landroid/view/View;Landroid/view/View;JI)V

    :goto_c
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v5, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_d

    :cond_13
    move-object/from16 v17, v12

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;

    const/4 v12, 0x0

    move-object v7, v6

    move-object v8, v10

    move-wide v10, v13

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;-><init>(Landroid/view/View;Landroid/view/View;JI)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v5, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;

    const/4 v12, 0x1

    move-object v7, v6

    move-object v8, v15

    move-object/from16 v9, v17

    move-wide v10, v13

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda8;-><init>(Landroid/view/View;Landroid/view/View;JI)V

    goto :goto_c

    :goto_d
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v5, v3

    if-ne v1, v2, :cond_15

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsBtn:Landroid/view/View;

    if-nez v1, :cond_14

    goto :goto_e

    :cond_14
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsBtn:Landroid/view/View;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_f

    :cond_15
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsBtn:Landroid/view/View;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    const/16 v2, 0x32

    int-to-long v2, v2

    sub-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_16
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
