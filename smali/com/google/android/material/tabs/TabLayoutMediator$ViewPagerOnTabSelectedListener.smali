.class public final Lcom/google/android/material/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final smoothScroll:Z

.field public final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iput-boolean p2, p0, Lcom/google/android/material/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;->smoothScroll:Z

    return-void
.end method


# virtual methods
.method public final onTabReselected()V
    .locals 0

    return-void
.end method

.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, v0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/core/view/MenuHostHelper;

    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v1, Landroidx/viewpager2/widget/ScrollEventAdapter;

    iget-boolean v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    if-nez v1, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;->smoothScroll:Z

    invoke-virtual {v0, p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onTabUnselected()V
    .locals 0

    return-void
.end method
