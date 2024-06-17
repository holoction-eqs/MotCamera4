.class public Lcom/motorola/camera/DataBinderMapperImpl;
.super Landroidx/databinding/DataBinderMapper;
.source "SourceFile"


# static fields
.field public static final INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    const v2, 0x7f0d0038

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d003e

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d003f

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d00ff

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/databinding/DataBinderMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public final collectDependencies()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    invoke-direct {v0}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getDataBinder(Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 1

    sget-object p0, Lcom/motorola/camera/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-lez p0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p0, "layout-h407dp-normal/super_slow_motion_activity_0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingH407dpNormalImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingH407dpNormalImpl;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_1
    const-string p0, "layout/super_slow_motion_activity_0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The tag for super_slow_motion_activity is invalid. Received: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "layout-h407dp-normal/control_bar_setting_value_item_0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingH407dpNormalImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingH407dpNormalImpl;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_4
    const-string p0, "layout/control_bar_setting_value_item_0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The tag for control_bar_setting_value_item is invalid. Received: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string p0, "layout-h407dp-normal/control_bar_setting_item_0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_7
    const-string p0, "layout/control_bar_setting_item_0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingImpl;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The tag for control_bar_setting_item is invalid. Received: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string p0, "layout/cli_onboard_fragment_0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_a
    const-string p0, "layout-h407dp-normal/cli_onboard_fragment_0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingH407dpNormalImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingH407dpNormalImpl;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The tag for cli_onboard_fragment is invalid. Received: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "view must have a tag"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
