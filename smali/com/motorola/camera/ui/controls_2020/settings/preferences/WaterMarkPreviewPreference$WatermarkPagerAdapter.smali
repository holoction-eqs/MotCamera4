.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public bitmapList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;->bitmapList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final clearBitmapList()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;->bitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;->bitmapList:Ljava/util/List;

    return-void
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;->bitmapList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter$WaterMarkViewHolder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;->bitmapList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter$WaterMarkViewHolder;->imageView:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter$WaterMarkViewHolder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0119

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "from(parent.context)\n   \u2026ence_item, parent, false)"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter$WaterMarkViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
