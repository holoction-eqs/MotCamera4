.class public final Landroidx/media3/ui/PlayerControlView$SettingsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final iconIds:[Landroid/graphics/drawable/Drawable;

.field public final mainTexts:[Ljava/lang/String;

.field public final subTexts:[Ljava/lang/String;

.field public final synthetic this$0:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->mainTexts:[Ljava/lang/String;

    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->iconIds:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->mainTexts:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    check-cast p1, Landroidx/media3/ui/PlayerControlView$SettingViewHolder;

    invoke-virtual {p0, p2}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->mainTexts:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p1, Landroidx/media3/ui/PlayerControlView$SettingViewHolder;->mainTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aget-object v0, v0, p2

    const/16 v1, 0x8

    iget-object v2, p1, Landroidx/media3/ui/PlayerControlView$SettingViewHolder;->subTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->iconIds:[Landroid/graphics/drawable/Drawable;

    aget-object p0, p0, p2

    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView$SettingViewHolder;->iconView:Landroid/widget/ImageView;

    if-nez p0, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroidx/media3/ui/PlayerControlView$SettingViewHolder;

    invoke-direct {p2, p0, p1}, Landroidx/media3/ui/PlayerControlView$SettingViewHolder;-><init>(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;)V

    return-object p2
.end method

.method public final shouldShowSetting(I)Z
    .locals 3

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    return v2

    :cond_1
    const/16 p1, 0x1e

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, p1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    const/16 p1, 0x1d

    check-cast p0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {p0, p1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    const/16 p0, 0xd

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, p0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    return p0
.end method
