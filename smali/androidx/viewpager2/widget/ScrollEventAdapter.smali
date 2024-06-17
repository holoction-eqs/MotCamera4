.class public final Landroidx/viewpager2/widget/ScrollEventAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public mAdapterState:I

.field public mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public mDataSetChangeHappened:Z

.field public mDispatchSelected:Z

.field public mDragStartPosition:I

.field public mFakeDragging:Z

.field public final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mScrollHappened:Z

.field public mScrollState:I

.field public final mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

.field public mTarget:I

.field public final mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    invoke-direct {p1}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    return-void
.end method


# virtual methods
.method public final dispatchSelected(I)V
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public final dispatchStateChanged(I)V
    .locals 2

    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method public final onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-eq v3, v2, :cond_3

    :cond_0
    if-ne p1, v2, :cond_3

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    iput v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    return-void

    :cond_3
    const/4 v3, 0x4

    if-eq p2, v2, :cond_5

    if-ne p2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v2

    :goto_2
    const/4 v5, 0x2

    if-eqz v4, :cond_7

    if-ne p1, v5, :cond_7

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v5}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    iput-boolean v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    :cond_6
    return-void

    :cond_7
    if-eq p2, v2, :cond_9

    if-ne p2, v3, :cond_8

    goto :goto_3

    :cond_8
    move p2, v1

    goto :goto_4

    :cond_9
    :goto_3
    move p2, v2

    :goto_4
    iget-object v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    if-eqz p2, :cond_d

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    iget-boolean p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    if-nez p2, :cond_a

    iget p2, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-eq p2, v0, :cond_c

    iget-object v4, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v4, :cond_c

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v6, v1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    goto :goto_5

    :cond_a
    iget p2, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez p2, :cond_b

    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    iget v4, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-eq p2, v4, :cond_c

    invoke-virtual {p0, v4}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    goto :goto_5

    :cond_b
    move v2, v1

    :cond_c
    :goto_5
    if-eqz v2, :cond_d

    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    :cond_d
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    if-ne p2, v5, :cond_10

    if-nez p1, :cond_10

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    iget p1, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez p1, :cond_10

    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    iget p2, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-eq p1, p2, :cond_f

    if-ne p2, v0, :cond_e

    move p2, v1

    :cond_e
    invoke-virtual {p0, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    :cond_f
    invoke-virtual {p0, v1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    :cond_10
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    iget-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    const/4 v1, -0x1

    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    if-gtz p3, :cond_3

    if-nez p3, :cond_2

    if-gez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    iget-object p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p3, p3, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p3

    if-ne p3, p1, :cond_1

    move p3, p1

    goto :goto_1

    :cond_1
    move p3, v3

    :goto_1
    if-ne p2, p3, :cond_2

    goto :goto_2

    :cond_2
    move p2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move p2, p1

    :goto_3
    if-eqz p2, :cond_4

    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-eqz p2, :cond_4

    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    add-int/2addr p2, p1

    goto :goto_4

    :cond_4
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    :goto_4
    iput p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    iget p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    if-eq p3, p2, :cond_7

    goto :goto_5

    :cond_5
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    if-nez p2, :cond_7

    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-ne p2, v1, :cond_6

    move p2, v3

    :cond_6
    :goto_5
    invoke-virtual {p0, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    :cond_7
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-ne p2, v1, :cond_8

    move p2, v3

    :cond_8
    iget p3, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    iget v0, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    iget-object v4, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v4, :cond_9

    invoke-virtual {v4, p2, p3, v0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    :cond_9
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    iget p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    if-eq p2, p3, :cond_a

    if-ne p3, v1, :cond_b

    :cond_a
    iget p2, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez p2, :cond_b

    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-eq p2, p1, :cond_b

    invoke-virtual {p0, v3}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    :cond_b
    return-void
.end method

.method public final resetState()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    const/4 v3, 0x0

    iput v3, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    iput v0, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    iput v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    iput v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    return-void
.end method

.method public final updateScrollEventValues()V
    .locals 14

    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iput v1, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    iput v5, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    iput v3, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    iput v4, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    iput v5, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    iput v3, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    iput v4, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    return-void

    :cond_1
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v5

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v6

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v7

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_2

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v10

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v10

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v10

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v7

    add-int/2addr v9, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-nez v6, :cond_3

    move v6, v10

    goto :goto_0

    :cond_3
    move v6, v4

    :goto_0
    iget-object v11, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v1, v5

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Landroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p0

    if-ne p0, v10, :cond_4

    move p0, v10

    goto :goto_1

    :cond_4
    move p0, v4

    :goto_1
    if-eqz p0, :cond_5

    neg-int v1, v1

    :cond_5
    move v9, v8

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr p0, v7

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, p0, v1

    :goto_2
    neg-int p0, v1

    iput p0, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-gez p0, :cond_17

    new-instance p0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;

    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_9

    :cond_7
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v3, :cond_8

    move v3, v10

    goto :goto_3

    :cond_8
    move v3, v4

    :goto_3
    const/4 v5, 0x2

    filled-new-array {v1, v5}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    move v7, v4

    :goto_4
    if-ge v7, v1, :cond_d

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_5

    :cond_9
    sget-object v9, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->ZERO_MARGIN_LAYOUT_PARAMS:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_5
    aget-object v11, v6, v7

    if-eqz v3, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6

    :cond_a
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_6
    sub-int/2addr v12, v13

    aput v12, v11, v4

    aget-object v11, v6, v7

    if-eqz v3, :cond_b

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_7

    :cond_b
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_7
    add-int/2addr v8, v9

    aput v8, v11, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "null view contained in the view hierarchy"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance v3, Lcom/airbnb/lottie/PerformanceTracker$1;

    invoke-direct {v3, p0, v5}, Lcom/airbnb/lottie/PerformanceTracker$1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v6, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move p0, v10

    :goto_8
    if-ge p0, v1, :cond_f

    add-int/lit8 v3, p0, -0x1

    aget-object v3, v6, v3

    aget v3, v3, v10

    aget-object v5, v6, p0

    aget v5, v5, v4

    if-eq v3, v5, :cond_e

    goto :goto_a

    :cond_e
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_f
    aget-object p0, v6, v4

    aget v3, p0, v10

    aget p0, p0, v4

    sub-int/2addr v3, p0

    if-gtz p0, :cond_11

    sub-int/2addr v1, v10

    aget-object p0, v6, v1

    aget p0, p0, v10

    if-ge p0, v3, :cond_10

    goto :goto_a

    :cond_10
    :goto_9
    move p0, v10

    goto :goto_b

    :cond_11
    :goto_a
    move p0, v4

    :goto_b
    if-eqz p0, :cond_12

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    if-gt p0, v10, :cond_15

    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    move v1, v4

    :goto_c
    if-ge v1, p0, :cond_14

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->hasRunningChangingLayoutTransition(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_13

    move p0, v10

    goto :goto_d

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_14
    move p0, v4

    :goto_d
    if-eqz p0, :cond_15

    move v4, v10

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    if-eqz v4, :cond_16

    const-string v0, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Page can only be offset by a positive amount, not by %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    if-nez v9, :cond_18

    goto :goto_e

    :cond_18
    int-to-float p0, p0

    int-to-float v0, v9

    div-float v3, p0, v0

    :goto_e
    iput v3, v2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    return-void
.end method
