.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final controlLabel$delegate:Lkotlin/Lazy;

.field public final controlPanelToggleLayout$delegate:Lkotlin/Lazy;

.field public final controlState$delegate:Lkotlin/Lazy;

.field public final itemOptionsRecyclerView$delegate:Lkotlin/Lazy;

.field public final itemOptionsToggleView$delegate:Lkotlin/Lazy;

.field public lastSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final selectedItemIndicatorView$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;->controlLabel$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;->controlState$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;->selectedItemIndicatorView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;->itemOptionsRecyclerView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;->controlPanelToggleLayout$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder$controlLabel$2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;->itemOptionsToggleView$delegate:Lkotlin/Lazy;

    return-void
.end method
