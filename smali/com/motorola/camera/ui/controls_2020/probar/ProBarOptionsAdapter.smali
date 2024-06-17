.class public final Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mListener:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;

.field public final mSettings:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;)V
    .locals 1

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mSettings:Ljava/util/List;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mListener:Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public final defaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;Z)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v1, 0x7f0603fb

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x7f06036c

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    const/16 p0, 0x60

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const p0, 0x3ec28f5c    # 0.38f

    goto :goto_0

    :cond_0
    const/16 p0, 0xff

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mSettings:Ljava/util/List;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    const-string v0, "payloads"

    .line 2
    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mSettings:Ljava/util/List;

    invoke-static {v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureCompDisabled()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->defaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->isDefaultValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->selectedDefaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->selectedCustomState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;I)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mSettings:Ljava/util/List;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    .line 3
    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->icon:I

    .line 4
    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v4

    iget-object v5, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->root:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->descriptionWhenOpened:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->isDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->selectedDefaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->selectedCustomState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->descriptionWhenClosed:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->isDefaultValue()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureCompDisabled()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->defaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;Z)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f060379

    .line 6
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 7
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v4, 0x7f06036c

    .line 8
    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 9
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 11
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 p1, 0xff

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 12
    :goto_1
    new-instance p1, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, p0}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda1;-><init>(ILcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00dd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v0, v1}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->getItemCount()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    if-le v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v1

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->getItemCount()I

    move-result p0

    div-int/2addr p2, p0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public final selectedCustomState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v1, 0x7f06003c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f060379

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final selectedDefaultState(Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v1, 0x7f06003c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f0603fb

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
