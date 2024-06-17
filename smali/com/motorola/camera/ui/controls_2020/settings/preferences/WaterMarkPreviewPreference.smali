.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\u000bB1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;",
        "Landroidx/preference/Preference;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "WatermarkPagerAdapter",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public pagerAdapter:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;

.field public pagerInd:Landroid/view/View;

.field public viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const p3, 0x7f04040a

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/viewpager2/widget/MarginPageTransformer;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070523

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->pagerAdapter:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_1
    const v0, 0x7f0a02f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->pagerInd:Landroid/view/View;

    const v0, 0x7f0a0256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "this.findViewById(R.id.left_ind)"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0349

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "this.findViewById(R.id.right_ind)"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Landroidx/viewpager2/widget/PageTransformerAdapter;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, v1}, Landroidx/viewpager2/widget/PageTransformerAdapter;-><init>(ILandroid/view/View;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v0, v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/UByte$Companion;->adjustMarginOnLargerDisplay(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->isSignatureChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->updatePreview(Z)V

    return-void
.end method

.method public final onDetached()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->pagerAdapter:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;->clearBitmapList()V

    :cond_1
    return-void
.end method

.method public final updatePreview(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/service/WatermarkGenerator;->createPreviewBitmap(Z)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->pagerInd:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->pagerInd:Landroid/view/View;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object p1, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/service/WatermarkGenerator;->createPreviewBitmap(Z)Ljava/util/ArrayList;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->pagerAdapter:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;->clearBitmapList()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$WatermarkPagerAdapter;->bitmapList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
