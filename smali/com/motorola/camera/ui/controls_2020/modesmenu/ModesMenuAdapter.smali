.class public final Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public items:Ljava/util/List;

.field public onItemClickListener:Lkotlin/jvm/functions/Function2;

.field public selectedMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "holder.nameTextView.resources"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x24

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v0, v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    if-eqz v5, :cond_1

    const/16 v5, 0xc

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "get(SettingsManager.MODE\u2026E_SELECT_COLOR else mode)"

    invoke-static {v5, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resources.getString(Sett\u2026_SELECT_COLOR else mode))"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;ILcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "context"

    invoke-static {v2, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/motorola/camera/settings/Setting;->getAndroidIcon(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    const-string v4, "get(SettingsManager.MODE).getAndroidIcon(mode)"

    invoke-static {p2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    invoke-static {v2, p2}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    if-ne v0, p0, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v6, :cond_3

    const p2, 0x7f060379

    goto :goto_3

    :cond_3
    const p2, 0x7f0603fb

    :goto_3
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const-string v0, "valueOf(tintColor)"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

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

    const/4 p1, 0x0

    const v0, 0x7f0d0090

    invoke-virtual {p0, v0, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    const-string p2, "layout"

    invoke-static {p0, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    const/4 p0, 0x1

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    const/4 p0, 0x0

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
