.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/recyclerview/widget/ListAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/ListAdapter;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;->this$0:Landroidx/recyclerview/widget/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onClick(Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;->onClick$1(Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;)V

    return-void

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;->onClick$1(Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick$1(Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;->$r8$classId:I

    const-string v1, "Item has no allowed values"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;->this$0:Landroidx/recyclerview/widget/ListAdapter;

    const-string v2, "item"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->shouldIgnoreClick()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ControlBarAdapter"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->controlBarInteractions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->controlBarInteractions:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickListener:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void

    :goto_1
    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->shouldIgnoreClick()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "ControlBarSettingValueAdapter"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->controlBarInteractions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->controlBarInteractions:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickListener:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->value:Ljava/lang/Object;

    invoke-interface {p0, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
