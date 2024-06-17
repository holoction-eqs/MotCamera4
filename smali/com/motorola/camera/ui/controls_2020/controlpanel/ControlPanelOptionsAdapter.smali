.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# instance fields
.field public final canChangeValue:Lkotlin/jvm/functions/Function0;

.field public final disabledToast:Lkotlin/jvm/functions/Function0;

.field public final onItemSelected:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$configureForRecycler$1$optionsAdapter$1;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$configureForRecycler$1$optionsAdapter$1;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;-><init>(I)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;->canChangeValue:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;->onItemSelected:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;->disabledToast:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;->imageView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->icon:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->selected:Z

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->enabled:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->contentDescription:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0043

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;

    const-string p2, "view"

    invoke-static {p0, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
