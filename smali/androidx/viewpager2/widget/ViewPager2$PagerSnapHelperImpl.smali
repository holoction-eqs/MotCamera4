.class public final Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;
.super Landroidx/recyclerview/widget/PagerSnapHelper;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/core/view/MenuHostHelper;

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager2/widget/ScrollEventAdapter;

    iget-boolean v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method
