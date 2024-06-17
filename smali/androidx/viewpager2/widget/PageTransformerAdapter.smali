.class public final Landroidx/viewpager2/widget/PageTransformerAdapter;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mLayoutManager:Ljava/lang/Object;

.field public mPageTransformer:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->$r8$classId:I

    iput-object p2, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 6

    iget p3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    check-cast p3, Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    neg-float p2, p2

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    iget-object v1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, p1

    int-to-float v1, v1

    add-float/2addr v1, p2

    iget-object v3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    check-cast v3, Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    check-cast v3, Landroidx/viewpager2/widget/MarginPageTransformer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v4, v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_4

    instance-of v4, v5, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v4, :cond_4

    check-cast v5, Landroidx/viewpager2/widget/ViewPager2;

    iget v3, v3, Landroidx/viewpager2/widget/MarginPageTransformer;->mMarginPx:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v5, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    if-eqz v4, :cond_2

    neg-float v3, v3

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected the page view to be managed by a ViewPager2 instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "LayoutManager returned a null child at pos %d/%d while transforming pages"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPageSelected(I)V
    .locals 3

    iget v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->$r8$classId:I

    iget-object v1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v1, Landroid/widget/ImageView;

    const v0, 0x7f080379

    const v2, 0x7f08037a

    if-nez p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    :pswitch_1
    return-void

    :goto_1
    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.tutorial.adapter.TutorialAdapter"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    iget-object p0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->updateTutorialControl(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
