.class public final Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0014\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;",
        "Landroidx/viewpager/widget/ViewPager;",
        "",
        "Lcom/motorola/camera/cli/onboard/model/Onboard;",
        "onboardList",
        "",
        "setAdapterFromList",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final isCurrentItemLast()Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    :goto_1
    return v1
.end method

.method public final onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    new-instance v2, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v2, p0, v1}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v5, v3, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public final setAdapterFromList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/camera/cli/onboard/model/Onboard;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onboardList"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.cli.onboard.adapter.OnboardAdapter"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;

    invoke-virtual {p1}, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;

    invoke-direct {v0, p1}, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0a03f1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
