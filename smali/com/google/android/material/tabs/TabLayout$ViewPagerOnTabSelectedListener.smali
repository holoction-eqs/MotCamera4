.class public final Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public final onTabReselected()V
    .locals 0

    return-void
.end method

.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public final onTabUnselected()V
    .locals 0

    return-void
.end method
