.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter$WaterMarkViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final imageView:Landroidx/constraintlayout/utils/widget/ImageFilterView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0497

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.water_mark_preview)"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/utils/widget/ImageFilterView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter$WaterMarkViewHolder;->imageView:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    return-void
.end method
