.class public final Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public final mFragment:Lcom/motorola/camera/fragments/SettingsManagerFragment;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mOriginalData:Ljava/util/ArrayList;

.field public final mViews:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;Lcom/motorola/camera/fragments/SettingsManagerFragment;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mOriginalData:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mFragment:Lcom/motorola/camera/fragments/SettingsManagerFragment;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Landroidx/cursoradapter/widget/CursorFilter;

    invoke-direct {v0, p0}, Landroidx/cursoradapter/widget/CursorFilter;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;)V

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->getKeyViewType(Lcom/motorola/camera/settings/SettingsManager$Key;)I

    move-result p0

    return p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->getKeyViewType(Lcom/motorola/camera/settings/SettingsManager$Key;)I

    move-result v0

    if-nez p2, :cond_1

    const p2, 0x7f0d00f7

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderUnknown;

    invoke-direct {p3, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderUnknown;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p2, v0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;Landroid/view/View;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;

    invoke-direct {p3, p0, p2, v2}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;Landroid/view/View;I)V

    goto :goto_0

    :pswitch_2
    const p2, 0x7f0d00f6

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;

    invoke-direct {p3, p0, p2, v2}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;-><init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;Landroid/view/View;I)V

    goto :goto_0

    :pswitch_3
    const p2, 0x7f0d00f4

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;

    invoke-direct {p3, p2}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;-><init>(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mViews:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableDebugPreviewSize()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->setContent(Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method
