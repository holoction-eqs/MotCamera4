.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# instance fields
.field public final adapterClickListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;

.field public clickEnabled:Z

.field public final clickListener:Lkotlin/jvm/functions/Function2;

.field public controlBarInteractions:I


# direct methods
.method public constructor <init>(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;->DIFF_UTIL:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickListener:Lkotlin/jvm/functions/Function2;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;-><init>(Landroidx/recyclerview/widget/ListAdapter;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->adapterClickListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickEnabled:Z

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    const/4 v0, 0x3

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;->binding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v1, v0, p2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    iput-object p2, p1, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;->item:Ljava/lang/Object;

    iget-boolean p2, p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;->isSelected:Z

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    const-string p1, "clickListener"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->adapterClickListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter$adapterClickListener$1;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {v1, p1, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    return-void
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBinding;->$r8$clinit:I

    sget-object p1, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const p1, 0x7f0d003f

    invoke-static {p0, p1, p2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBinding;

    const-string p1, "inflate(layoutInflater, parent, false)"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method
