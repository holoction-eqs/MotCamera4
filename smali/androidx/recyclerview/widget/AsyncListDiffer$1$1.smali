.class public final Landroidx/recyclerview/widget/AsyncListDiffer$1$1;
.super Landroidx/loader/app/LoaderManager;
.source "SourceFile"


# instance fields
.field public final synthetic this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/AsyncListDiffer$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    invoke-direct {p0}, Landroidx/loader/app/LoaderManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/ChildHelper;

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->value:Ljava/lang/Object;

    iget-object v1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->value:Ljava/lang/Object;

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->icon:I

    iget v1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->icon:I

    if-ne p0, v1, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;->isSelected:Z

    iget-boolean v1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;->isSelected:Z

    if-ne p0, v1, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isLocked:Z

    iget-boolean p1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isLocked:Z

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->value:Ljava/lang/Object;

    iget-object v1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->value:Ljava/lang/Object;

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->icon:I

    iget v1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->icon:I

    if-ne p0, v1, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isAlwaysOn:Z

    iget-boolean v1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isAlwaysOn:Z

    if-ne p0, v1, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isAutoTrigger:Z

    iget-boolean v1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isAutoTrigger:Z

    if-ne p0, v1, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isLocked:Z

    iget-boolean v1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isLocked:Z

    if-ne p0, v1, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->areMultiValuesEnabled:Z

    iget-boolean p1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->areMultiValuesEnabled:Z

    if-ne p0, p1, :cond_0

    goto :goto_1

    :pswitch_2
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->value:Ljava/lang/Object;

    iget-object v1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->value:Ljava/lang/Object;

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->icon:Ljava/lang/Integer;

    iget-object v1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->icon:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iget-object v1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p0, v1, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->locked:Z

    iget-boolean v1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->locked:Z

    if-ne p0, v1, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->anyValueDisabled:Z

    iget-boolean p1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->anyValueDisabled:Z

    if-ne p0, p1, :cond_0

    goto :goto_1

    :goto_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->selected:Z

    iget-boolean v1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->selected:Z

    if-ne p0, v1, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->icon:Ljava/lang/Integer;

    iget-object v1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->icon:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->enabled:Z

    iget-boolean p1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->enabled:Z

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    return v0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final areItemsTheSame(II)Z
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/ChildHelper;

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    iget-object p1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    iget-object p1, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :pswitch_2
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :goto_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->value:Ljava/lang/Object;

    iget-object p1, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getChangePayload(II)V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/ChildHelper;

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public final getNewListSize()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;->this$1:Landroidx/recyclerview/widget/AsyncListDiffer$1;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
