.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $attr:Ljava/lang/Object;

.field public final synthetic $declaration:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $type:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;->$declaration:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;->$type:Ljava/lang/Object;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;->$attr:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;->$r8$classId:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;->$declaration:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    const-string p0, "kotlinTypeRefiner"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    instance-of p0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    :cond_1
    return-object p1

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onSettingIntercept:Lkotlin/jvm/functions/Function1;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->controlPanelValues:Ljava/util/ArrayList;

    if-ltz p1, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v6, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_ITEM_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "PREVIOUS_VALUE"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "VALUE"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    const-string v4, "SETTING"

    invoke-virtual {v7, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->updateSettingValue(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onSettingIntercept:Lkotlin/jvm/functions/Function1;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;->$type:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;->$attr:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;

    new-instance v2, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    const/4 v3, 0x7

    invoke-direct {v2, v1, p0, p1, v3}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p0, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onItemClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
