.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/flexbox/FlexContainer;
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# static fields
.field public static final TEMP_RECT:Landroid/graphics/Rect;


# instance fields
.field public mAlignItems:I

.field public final mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

.field public final mContext:Landroid/content/Context;

.field public mDirtyPosition:I

.field public mFlexDirection:I

.field public mFlexLines:Ljava/util/List;

.field public final mFlexLinesResult:Lcom/adobe/xmp/impl/ParseState;

.field public mFlexWrap:I

.field public final mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

.field public mFromBottomToTop:Z

.field public mIsRtl:Z

.field public mJustifyContent:I

.field public mLastHeight:I

.field public mLastWidth:I

.field public mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

.field public final mMaxLine:I

.field public mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

.field public mParent:Landroid/view/View;

.field public mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

.field public mPendingScrollPosition:I

.field public mPendingScrollPositionOffset:I

.field public mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field public mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field public mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

.field public final mViewCache:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/adobe/xmp/impl/ParseState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/adobe/xmp/impl/ParseState;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p2

    iget p3, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    if-eq p3, p4, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap()V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isMeasurementUpToDate(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private shouldMeasureChild(Landroid/view/View;IILcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final canScrollHorizontally()Z
    .locals 2

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-le v0, p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final canScrollVertically()Z
    .locals 3

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-le v0, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    return p0
.end method

.method public final computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getTotalSpace()I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public final computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v4, v4, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget p1, v4, p1

    if-eqz p1, :cond_3

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    goto :goto_0

    :cond_2
    aget v1, v4, v3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(II)Landroid/view/View;

    move-result-object v1

    const/4 v3, -0x1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(II)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_1
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    int-to-float p0, p0

    int-to-float v0, v3

    div-float/2addr p0, v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_4
    :goto_2
    return v1
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public final ensureOrientationHelper()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_3

    :cond_2
    invoke-static {p0}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-static {p0}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p0}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-static {p0}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    return-void
.end method

.method public final fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    iget v5, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    if-gez v5, :cond_0

    add-int/2addr v3, v5

    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    :cond_1
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v5

    move v7, v3

    const/4 v8, 0x0

    :goto_0
    if-gtz v7, :cond_3

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-boolean v9, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v24, v3

    move/from16 v25, v8

    goto/16 :goto_28

    :cond_3
    :goto_1
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    if-ltz v10, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    if-ge v10, v12, :cond_4

    iget v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-ltz v10, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v10, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexLine;

    iget v10, v9, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    iput v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v10

    const/high16 v16, 0x40000000    # 2.0f

    const/4 v4, -0x1

    const/16 v18, 0x20

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    sget-object v12, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    const-string v14, "Invalid justifyContent is set: "

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    if-eqz v10, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v23

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v11, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    move/from16 v24, v3

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v4, :cond_5

    iget v3, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int/2addr v11, v3

    :cond_5
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eqz v4, :cond_e

    const/4 v1, 0x1

    if-eq v4, v1, :cond_d

    const/4 v1, 0x2

    if-eq v4, v1, :cond_c

    const/4 v1, 0x3

    if-eq v4, v1, :cond_a

    const/4 v1, 0x4

    if-eq v4, v1, :cond_8

    const/4 v1, 0x5

    if-ne v4, v1, :cond_7

    iget v1, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v1, :cond_6

    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v6, v4

    int-to-float v4, v4

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v4, v1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    int-to-float v1, v10

    add-float/2addr v1, v4

    sub-int v6, v6, v23

    int-to-float v6, v6

    sub-float/2addr v6, v4

    goto :goto_7

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    iget v1, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v1, :cond_9

    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v6, v4

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    int-to-float v1, v10

    div-float v10, v4, v16

    add-float/2addr v1, v10

    sub-int v6, v6, v23

    int-to-float v6, v6

    sub-float/2addr v6, v10

    goto :goto_7

    :cond_a
    int-to-float v1, v10

    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v10, 0x1

    if-eq v4, v10, :cond_b

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    move/from16 v17, v4

    goto :goto_5

    :cond_b
    const/high16 v17, 0x3f800000    # 1.0f

    :goto_5
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v6, v4

    int-to-float v4, v4

    div-float v4, v4, v17

    sub-int v6, v6, v23

    int-to-float v6, v6

    goto :goto_7

    :cond_c
    int-to-float v1, v10

    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v4, v6, v4

    int-to-float v4, v4

    div-float v4, v4, v16

    add-float/2addr v1, v4

    sub-int v6, v6, v23

    int-to-float v6, v6

    sub-float/2addr v6, v4

    goto :goto_6

    :cond_d
    iget v1, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v6, v1

    add-int v6, v6, v23

    int-to-float v4, v6

    sub-int/2addr v1, v10

    int-to-float v1, v1

    move v6, v1

    move v1, v4

    goto :goto_6

    :cond_e
    int-to-float v1, v10

    sub-int v6, v6, v23

    int-to-float v4, v6

    move v6, v4

    :goto_6
    const/4 v4, 0x0

    :goto_7
    iget v10, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    int-to-float v10, v10

    sub-float/2addr v1, v10

    sub-float/2addr v6, v10

    const/4 v10, 0x0

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v10, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move v14, v3

    move/from16 v23, v7

    const/4 v15, 0x0

    :goto_8
    add-int v7, v3, v10

    if-ge v14, v7, :cond_1c

    invoke-virtual {v0, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_f

    move/from16 v19, v3

    move/from16 v27, v5

    move/from16 v25, v8

    move/from16 v16, v10

    move/from16 v20, v11

    move-object/from16 v29, v12

    move-object/from16 v28, v13

    goto/16 :goto_13

    :cond_f
    move/from16 v19, v3

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v0, v7, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    move/from16 v16, v10

    const/4 v10, 0x1

    if-ne v3, v10, :cond_10

    const/4 v3, -0x1

    invoke-virtual {v0, v7, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_9

    :cond_10
    invoke-virtual {v0, v7, v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    add-int/lit8 v15, v15, 0x1

    :goto_9
    iget-object v3, v13, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    aget-wide v2, v3, v14

    long-to-int v10, v2

    shr-long v2, v2, v18

    long-to-int v2, v2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {v0, v7, v10, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;)Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-virtual {v7, v10, v2}, Landroid/view/View;->measure(II)V

    :cond_11
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v2

    int-to-float v2, v10

    add-float/2addr v1, v2

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v2

    int-to-float v2, v10

    sub-float/2addr v6, v2

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v11

    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v10, :cond_12

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v10, v10, v17

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v17

    goto :goto_a

    :cond_12
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v17

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v17, v20, v17

    :goto_a
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v20, v20, v2

    move/from16 v32, v20

    move/from16 v20, v11

    move/from16 v11, v17

    move/from16 v17, v32

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/google/android/flexbox/FlexItem;

    move/from16 v26, v15

    iget-object v15, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v15, Lcom/google/android/flexbox/FlexboxLayoutManager;

    move/from16 v27, v5

    iget v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    move/from16 v28, v5

    move-object/from16 v5, v25

    check-cast v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    move/from16 v25, v8

    iget v8, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    move-object/from16 v29, v12

    const/4 v12, -0x1

    if-eq v8, v12, :cond_13

    goto :goto_b

    :cond_13
    move/from16 v8, v28

    :goto_b
    iget v12, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move-object/from16 v28, v13

    if-eqz v8, :cond_1a

    const/4 v13, 0x1

    if-eq v8, v13, :cond_18

    const/4 v13, 0x2

    if-eq v8, v13, :cond_16

    const/4 v13, 0x3

    if-eq v8, v13, :cond_14

    const/4 v12, 0x4

    if-eq v8, v12, :cond_1a

    goto/16 :goto_12

    :cond_14
    iget v8, v15, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v12, 0x2

    if-eq v8, v12, :cond_15

    iget v8, v9, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v12

    sub-int/2addr v8, v12

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_e

    :cond_15
    iget v8, v9, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v8, v12

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v12

    add-int/2addr v12, v8

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_f

    :cond_16
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v12, v8

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v8

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v5

    const/4 v8, 0x2

    div-int/2addr v12, v8

    iget v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq v5, v8, :cond_17

    add-int/2addr v2, v12

    goto :goto_c

    :cond_17
    sub-int/2addr v2, v12

    :goto_c
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    goto :goto_11

    :cond_18
    const/4 v8, 0x2

    iget v13, v15, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq v13, v8, :cond_19

    add-int/2addr v2, v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v2, v8

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v8, v5

    sub-int/2addr v2, v5

    goto :goto_d

    :cond_19
    sub-int/2addr v2, v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v2

    sub-int v17, v17, v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v2, v17

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v5

    :goto_d
    invoke-virtual {v7, v10, v8, v11, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_12

    :cond_1a
    iget v8, v15, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v12, 0x2

    if-eq v8, v12, :cond_1b

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_e
    add-int/2addr v2, v5

    add-int v17, v17, v5

    goto :goto_10

    :cond_1b
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_f
    sub-int/2addr v2, v5

    sub-int v17, v17, v5

    :goto_10
    move/from16 v5, v17

    :goto_11
    invoke-virtual {v7, v10, v2, v11, v5}, Landroid/view/View;->layout(IIII)V

    :goto_12
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v2, v5

    add-float/2addr v2, v4

    add-float/2addr v2, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    add-float/2addr v1, v4

    sub-float/2addr v6, v1

    move v1, v2

    move/from16 v15, v26

    :goto_13
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p3

    move/from16 v10, v16

    move/from16 v3, v19

    move/from16 v11, v20

    move/from16 v8, v25

    move/from16 v5, v27

    move-object/from16 v13, v28

    move-object/from16 v12, v29

    goto/16 :goto_8

    :cond_1c
    move/from16 v27, v5

    move/from16 v25, v8

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v1, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    move-object/from16 v2, p3

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    iget v1, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto/16 :goto_26

    :cond_1d
    move/from16 v24, v3

    move/from16 v27, v5

    move/from16 v23, v7

    move/from16 v25, v8

    move-object/from16 v29, v12

    move-object/from16 v28, v13

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v3

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v5, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iget v6, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1e

    iget v6, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int v7, v5, v6

    add-int/2addr v5, v6

    move v6, v5

    move v5, v7

    goto :goto_14

    :cond_1e
    move v6, v5

    :goto_14
    iget v7, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eqz v8, :cond_27

    const/4 v10, 0x1

    if-eq v8, v10, :cond_26

    const/4 v10, 0x2

    if-eq v8, v10, :cond_25

    const/4 v10, 0x3

    if-eq v8, v10, :cond_23

    const/4 v10, 0x4

    if-eq v8, v10, :cond_21

    const/4 v10, 0x5

    if-ne v8, v10, :cond_20

    iget v8, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v8, :cond_1f

    iget v10, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v10, v4, v10

    int-to-float v10, v10

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float/2addr v10, v8

    goto :goto_15

    :cond_1f
    const/4 v10, 0x0

    :goto_15
    int-to-float v1, v1

    add-float/2addr v1, v10

    sub-int/2addr v4, v3

    int-to-float v3, v4

    sub-float/2addr v3, v10

    goto :goto_19

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    iget v8, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-eqz v8, :cond_22

    iget v10, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v10, v4, v10

    int-to-float v10, v10

    int-to-float v8, v8

    div-float/2addr v10, v8

    goto :goto_16

    :cond_22
    const/4 v10, 0x0

    :goto_16
    int-to-float v1, v1

    div-float v8, v10, v16

    add-float/2addr v1, v8

    sub-int/2addr v4, v3

    int-to-float v3, v4

    sub-float/2addr v3, v8

    goto :goto_19

    :cond_23
    int-to-float v1, v1

    iget v8, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v10, 0x1

    if-eq v8, v10, :cond_24

    add-int/lit8 v8, v8, -0x1

    int-to-float v13, v8

    goto :goto_17

    :cond_24
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_17
    iget v8, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v8, v4, v8

    int-to-float v8, v8

    div-float v10, v8, v13

    sub-int/2addr v4, v3

    int-to-float v3, v4

    goto :goto_19

    :cond_25
    int-to-float v1, v1

    iget v8, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v8, v4, v8

    int-to-float v8, v8

    div-float v8, v8, v16

    add-float/2addr v1, v8

    sub-int/2addr v4, v3

    int-to-float v3, v4

    sub-float/2addr v3, v8

    goto :goto_18

    :cond_26
    iget v8, v9, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v4, v8

    add-int/2addr v4, v3

    int-to-float v3, v4

    sub-int/2addr v8, v1

    int-to-float v1, v8

    move/from16 v32, v3

    move v3, v1

    move/from16 v1, v32

    goto :goto_18

    :cond_27
    int-to-float v1, v1

    sub-int/2addr v4, v3

    int-to-float v3, v4

    :goto_18
    const/4 v10, 0x0

    :goto_19
    iget v4, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v8, v9, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move v10, v7

    const/4 v11, 0x0

    :goto_1a
    add-int v12, v7, v8

    if-ge v10, v12, :cond_37

    invoke-virtual {v0, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_28

    move/from16 v19, v5

    move/from16 v17, v6

    move/from16 v16, v7

    move-object/from16 v30, v9

    move/from16 v26, v11

    move-object/from16 v31, v28

    const/4 v9, 0x3

    const/4 v11, 0x4

    const/16 v22, 0x2

    move/from16 v28, v8

    goto/16 :goto_25

    :cond_28
    move-object/from16 v13, v28

    iget-object v14, v13, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    aget-wide v14, v14, v10

    move/from16 v16, v7

    long-to-int v7, v14

    shr-long v14, v14, v18

    long-to-int v14, v14

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {v0, v12, v7, v14, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;)Z

    move-result v17

    if-eqz v17, :cond_29

    invoke-virtual {v12, v7, v14}, Landroid/view/View;->measure(II)V

    :cond_29
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v14

    add-int/2addr v14, v7

    int-to-float v7, v14

    add-float/2addr v1, v7

    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v14

    add-int/2addr v14, v7

    int-to-float v7, v14

    sub-float/2addr v3, v7

    iget v7, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v14, 0x1

    if-ne v7, v14, :cond_2a

    move-object/from16 v7, v29

    invoke-virtual {v0, v12, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v14, -0x1

    invoke-virtual {v0, v12, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_1b

    :cond_2a
    move-object/from16 v7, v29

    invoke-virtual {v0, v12, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v12, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    add-int/lit8 v11, v11, 0x1

    :goto_1b
    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v14

    add-int/2addr v14, v5

    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v17

    sub-int v17, v6, v17

    move/from16 v19, v5

    iget-boolean v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v5, :cond_2c

    iget-boolean v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v14, :cond_2b

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v17, v14

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v20, v20, v26

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v26

    goto :goto_1c

    :cond_2b
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v17, v14

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v26, v28, v26

    :goto_1c
    move-object/from16 v29, v7

    move/from16 v7, v26

    move/from16 v32, v17

    move/from16 v17, v6

    move/from16 v6, v20

    move/from16 v20, v32

    goto :goto_1e

    :cond_2c
    move/from16 v17, v6

    iget-boolean v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    if-eqz v6, :cond_2d

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    sub-int v6, v6, v20

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v20, v20, v14

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v26

    goto :goto_1d

    :cond_2d
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int v20, v20, v14

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v26

    move/from16 v26, v28

    :goto_1d
    move-object/from16 v29, v7

    move/from16 v7, v26

    :goto_1e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Lcom/google/android/flexbox/FlexItem;

    move/from16 v28, v8

    iget-object v8, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v8, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget v8, v8, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    move/from16 v30, v8

    move-object/from16 v8, v26

    check-cast v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    move/from16 v26, v11

    iget v11, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    move-object/from16 v31, v13

    const/4 v13, -0x1

    if-eq v11, v13, :cond_2e

    goto :goto_1f

    :cond_2e
    move/from16 v11, v30

    :goto_1f
    iget v13, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move-object/from16 v30, v9

    if-eqz v11, :cond_34

    const/4 v9, 0x1

    if-eq v11, v9, :cond_32

    const/4 v9, 0x2

    if-eq v11, v9, :cond_30

    const/4 v9, 0x3

    if-eq v11, v9, :cond_35

    const/4 v13, 0x4

    if-eq v11, v13, :cond_2f

    move v11, v13

    const/16 v22, 0x2

    goto/16 :goto_24

    :cond_2f
    move v11, v13

    goto :goto_20

    :cond_30
    const/4 v9, 0x3

    const/4 v11, 0x4

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v13, v13, v21

    invoke-static {v8}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v21

    add-int v21, v21, v13

    invoke-static {v8}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v8

    sub-int v21, v21, v8

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    if-nez v5, :cond_31

    add-int v14, v14, v21

    add-int v20, v20, v21

    goto :goto_21

    :cond_31
    sub-int v14, v14, v21

    sub-int v20, v20, v21

    goto :goto_21

    :cond_32
    const/4 v9, 0x3

    const/4 v11, 0x4

    const/16 v22, 0x2

    if-nez v5, :cond_33

    add-int/2addr v14, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v14, v5

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v14, v5

    add-int v20, v20, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v20, v20, v5

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_22

    :cond_33
    sub-int/2addr v14, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v14

    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v14

    sub-int v20, v20, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v13, v13, v20

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v8

    invoke-virtual {v12, v5, v6, v13, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_24

    :cond_34
    const/4 v9, 0x3

    :cond_35
    const/4 v11, 0x4

    :goto_20
    const/16 v22, 0x2

    if-nez v5, :cond_36

    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v5

    add-int v20, v20, v5

    :goto_21
    move/from16 v5, v20

    goto :goto_23

    :cond_36
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v14, v5

    :goto_22
    sub-int v20, v20, v5

    goto :goto_21

    :goto_23
    invoke-virtual {v12, v14, v6, v5, v7}, Landroid/view/View;->layout(IIII)V

    :goto_24
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v5

    int-to-float v5, v6

    add-float/2addr v5, v4

    add-float/2addr v5, v1

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v6, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v1, v6

    add-float/2addr v1, v4

    sub-float/2addr v3, v1

    move v1, v5

    :goto_25
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v16

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v11, v26

    move/from16 v8, v28

    move-object/from16 v9, v30

    move-object/from16 v28, v31

    goto/16 :goto_1a

    :cond_37
    move-object/from16 v30, v9

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v1, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    iget v1, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :goto_26
    add-int v8, v25, v1

    if-nez v27, :cond_38

    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_38

    iget v1, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v1, v3

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    goto :goto_27

    :cond_38
    iget v1, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v1, v3

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    :goto_27
    iget v1, v9, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-int v7, v23, v1

    move-object/from16 v1, p1

    move/from16 v3, v24

    move/from16 v5, v27

    const/high16 v4, -0x80000000

    goto/16 :goto_0

    :goto_28
    iget v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    sub-int v1, v1, v25

    iput v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_3a

    add-int v3, v3, v25

    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-gez v1, :cond_39

    add-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_39
    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    :cond_3a
    iget v0, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    sub-int v3, v24, v0

    return v3
.end method

.method public final findFirstReferenceChild(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v2, v2, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v1, v2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    :goto_1
    move-object p1, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final findLastReferenceChild(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findReferenceChild(III)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v1, v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-le v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    move-object p1, p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final findOneVisibleChild(II)Landroid/view/View;
    .locals 13

    const/4 v0, 0x1

    if-le p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-eq p1, p2, :cond_7

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v8, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v9, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v11

    add-int/2addr v11, v10

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v7

    const/4 v7, 0x0

    if-ge v8, v5, :cond_2

    if-lt v11, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v0

    :goto_2
    if-ge v9, v6, :cond_4

    if-lt v12, v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v7

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v0

    :goto_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    move v7, v0

    :cond_5
    if-eqz v7, :cond_6

    return-object v2

    :cond_6
    add-int/2addr p1, v1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findReferenceChild(III)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    move-result v1

    if-le p2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p1, p2, :cond_7

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_6

    if-ge v6, p3, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v4, :cond_6

    move-object v4, v5

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-lt v6, v0, :cond_5

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v1, :cond_4

    goto :goto_2

    :cond_4
    return-object v5

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    move-object v3, v5

    :cond_6
    :goto_3
    add-int/2addr p1, v2

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public final fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_4

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    :goto_1
    add-int/2addr p1, p2

    if-eqz p4, :cond_3

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_3

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/OrientationHelper$1;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method public final fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/OrientationHelper$1;->offsetChildren(I)V

    sub-int/2addr p2, p1

    :cond_2
    return p2

    :cond_3
    return v1
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public final getChildHeightMeasureSpec(II)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result p0

    invoke-static {v0, v1, p1, p2, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p0

    return p0
.end method

.method public final getChildWidthMeasureSpec(II)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result p0

    invoke-static {v0, v1, p1, p2, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p0

    return p0
.end method

.method public final getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p0

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p0

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1
.end method

.method public final getFlexItemAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getFlexItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    return p0
.end method

.method public final getLargestMainSize()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v2, -0x80000000

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    iget v3, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    if-nez p1, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v4, -0x1

    if-eqz v1, :cond_2

    if-gez p1, :cond_3

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput v5, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v7

    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v10, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    if-nez v7, :cond_4

    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v10, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v2

    :goto_3
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    if-ne v5, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v13

    iput v13, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    invoke-static {v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v12

    iget-object v13, v15, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v13, v13, v12

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {v0, v11, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object v11

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput v3, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v12, v3

    iput v12, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget-object v14, v15, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v3, v14

    if-gt v3, v12, :cond_6

    iput v4, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    goto :goto_4

    :cond_6
    aget v3, v14, v12

    iput v3, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    :goto_4
    if-eqz v10, :cond_7

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    neg-int v10, v10

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v11

    add-int/2addr v11, v10

    iput v11, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v10, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_5

    :cond_7
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    move-result v11

    sub-int/2addr v10, v11

    :goto_5
    iput v10, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eq v3, v4, :cond_8

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    if-le v3, v4, :cond_10

    :cond_8
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v4

    if-gt v3, v4, :cond_10

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    sub-int v14, v6, v4

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/adobe/xmp/impl/ParseState;

    const/4 v4, 0x0

    iput-object v4, v11, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    iput v2, v11, Lcom/adobe/xmp/impl/ParseState;->pos:I

    if-lez v14, :cond_10

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    if-eqz v7, :cond_9

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v16, -0x1

    move v12, v8

    move v13, v9

    move-object v7, v15

    move v15, v3

    move-object/from16 v17, v4

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/adobe/xmp/impl/ParseState;IIIIILjava/util/List;)V

    goto :goto_6

    :cond_9
    move-object v7, v15

    iget v15, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v16, -0x1

    move v12, v9

    move v13, v8

    move-object/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/adobe/xmp/impl/ParseState;IIIIILjava/util/List;)V

    :goto_6
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    invoke-virtual {v7, v8, v9, v3}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    invoke-virtual {v7, v3}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    goto/16 :goto_9

    :cond_a
    move-object v7, v15

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_b

    goto/16 :goto_a

    :cond_b
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    iput v9, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    iget-object v9, v7, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v9, v9, v8

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/flexbox/FlexLine;

    invoke-virtual {v0, v3, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceViewInLine(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object v3

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v11, 0x1

    iput v11, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    iget-object v7, v7, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v7, v7, v8

    if-ne v7, v4, :cond_c

    move v7, v2

    :cond_c
    if-lez v7, :cond_d

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    add-int/lit8 v9, v7, -0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v4, v4, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    sub-int/2addr v8, v4

    iput v8, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    goto :goto_7

    :cond_d
    iput v4, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    :goto_7
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-lez v7, :cond_e

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    goto :goto_8

    :cond_e
    move v7, v2

    :goto_8
    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    if-eqz v10, :cond_f

    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    move-result v7

    sub-int/2addr v3, v7

    iput v3, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    goto :goto_9

    :cond_f
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    neg-int v3, v3

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v7

    add-int/2addr v7, v3

    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    :cond_10
    :goto_9
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    sub-int v4, v6, v4

    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    :goto_a
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual {v0, v7, v8, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v3

    add-int/2addr v3, v4

    if-gez v3, :cond_11

    return v2

    :cond_11
    if-eqz v1, :cond_12

    if-le v6, v3, :cond_13

    neg-int v1, v5

    mul-int/2addr v1, v3

    goto :goto_b

    :cond_12
    if-le v6, v3, :cond_13

    mul-int v1, v5, v3

    goto :goto_b

    :cond_13
    move/from16 v1, p1

    :goto_b
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->offsetChildren(I)V

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLastScrollDelta:I

    return v1

    :cond_14
    :goto_c
    return v2
.end method

.method public final handleScrollingSubOrientation(I)I
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move v1, v4

    :cond_3
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    if-eqz v1, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez p1, :cond_4

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int/2addr v0, p0

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    neg-int p0, p0

    goto :goto_4

    :cond_4
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int v0, p0, p1

    if-lez v0, :cond_8

    goto :goto_2

    :cond_5
    if-lez p1, :cond_6

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    sub-int/2addr v0, p0

    sub-int/2addr v0, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_4

    :cond_6
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int v0, p0, p1

    if-ltz v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    neg-int p1, p0

    :cond_8
    :goto_3
    move p0, p1

    :goto_4
    return p0

    :cond_9
    :goto_5
    return v1
.end method

.method public final isAutoMeasureEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isMainAxisDirectionHorizontal()Z
    .locals 1

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final onAdapterChanged()V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    return-void
.end method

.method public final onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    return-void
.end method

.method public final onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final onItemsAdded(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public final onItemsMoved(II)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public final onItemsRemoved(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public final onItemsUpdated(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public final onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateDirtyPosition(I)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iput-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v4

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v5, :cond_8

    if-eq v5, v6, :cond_6

    if-eq v5, v8, :cond_4

    const/4 v9, 0x3

    if-eq v5, v9, :cond_1

    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    goto :goto_5

    :cond_1
    if-ne v4, v6, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v7

    :goto_0
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v5, v8, :cond_3

    xor-int/2addr v4, v6

    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    :cond_3
    iput-boolean v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    goto :goto_7

    :cond_4
    if-ne v4, v6, :cond_5

    move v4, v6

    goto :goto_1

    :cond_5
    move v4, v7

    :goto_1
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v5, v8, :cond_a

    xor-int/2addr v4, v6

    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    goto :goto_5

    :cond_6
    if-eq v4, v6, :cond_7

    move v4, v6

    goto :goto_2

    :cond_7
    move v4, v7

    :goto_2
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v4, v8, :cond_a

    goto :goto_4

    :cond_8
    if-ne v4, v6, :cond_9

    move v4, v6

    goto :goto_3

    :cond_9
    move v4, v7

    :goto_3
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v4, v8, :cond_a

    :goto_4
    move v4, v6

    goto :goto_6

    :cond_a
    :goto_5
    move v4, v7

    :goto_6
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFromBottomToTop:Z

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureOrientationHelper()V

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-nez v4, :cond_b

    new-instance v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;-><init>()V

    iput-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    :cond_b
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasureSpecCache(I)V

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasuredSizeCache(I)V

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput-boolean v7, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v5, :cond_d

    iget v8, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v8, :cond_c

    if-ge v8, v3, :cond_c

    move v9, v6

    goto :goto_8

    :cond_c
    move v9, v7

    :goto_8
    if-eqz v9, :cond_d

    iput v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    :cond_d
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iget-boolean v8, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mValid:Z

    const/high16 v9, -0x80000000

    const/4 v10, -0x1

    if-eqz v8, :cond_e

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v8, v10, :cond_e

    if-eqz v5, :cond_2a

    :cond_e
    invoke-static {v15}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iget-boolean v8, v2, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v8, :cond_1d

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v8, v10, :cond_f

    goto/16 :goto_10

    :cond_f
    if-ltz v8, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    if-lt v8, v11, :cond_10

    goto/16 :goto_f

    :cond_10
    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    iput v8, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iget-object v11, v4, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v8, v11, v8

    iput v8, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v8, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    iget v8, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v8, :cond_11

    if-ge v8, v11, :cond_11

    move v8, v6

    goto :goto_9

    :cond_11
    move v8, v7

    :goto_9
    if-eqz v8, :cond_12

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v8

    iget v5, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr v8, v5

    iput v8, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v6, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mAssignedFromSavedState:Z

    iput v10, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    goto/16 :goto_e

    :cond_12
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v5, v9, :cond_1a

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_17

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper$1;->getTotalSpace()I

    move-result v11

    if-le v8, v11, :cond_13

    goto :goto_c

    :cond_13
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_14

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v5

    iput v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v7, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto/16 :goto_e

    :cond_14
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    move-result v8

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v8, v11

    if-gez v8, :cond_15

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    move-result v5

    iput v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iput-boolean v6, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_e

    :cond_15
    iget-boolean v8, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v8, :cond_16

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v8

    add-int/2addr v8, v5

    goto :goto_a

    :cond_16
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    :goto_a
    iput v8, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_e

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_19

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ge v8, v5, :cond_18

    move v5, v6

    goto :goto_b

    :cond_18
    move v5, v7

    :goto_b
    iput-boolean v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :cond_19
    :goto_c
    invoke-static {v15}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    goto :goto_e

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v5

    if-nez v5, :cond_1b

    iget-boolean v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v5, :cond_1b

    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndPadding()I

    move-result v8

    sub-int/2addr v5, v8

    goto :goto_d

    :cond_1b
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v5

    iget v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v5, v8

    :goto_d
    iput v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_e
    move v5, v6

    goto :goto_11

    :cond_1c
    :goto_f
    iput v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    iput v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    :cond_1d
    :goto_10
    move v5, v7

    :goto_11
    if-eqz v5, :cond_1e

    goto/16 :goto_1a

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1f

    goto/16 :goto_18

    :cond_1f
    iget-boolean v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastReferenceChild(I)Landroid/view/View;

    move-result-object v5

    goto :goto_12

    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstReferenceChild(I)Landroid/view/View;

    move-result-object v5

    :goto_12
    if-eqz v5, :cond_28

    iget-object v8, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->this$0:Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget v11, v8, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v11, :cond_21

    iget-object v11, v8, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    goto :goto_13

    :cond_21
    iget-object v11, v8, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    :goto_13
    invoke-virtual {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v12

    if-nez v12, :cond_23

    iget-boolean v12, v8, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v12, :cond_23

    iget-boolean v12, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v12, :cond_22

    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    goto :goto_14

    :cond_22
    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    goto :goto_15

    :cond_23
    iget-boolean v12, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v12, :cond_24

    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    :goto_14
    invoke-virtual {v11}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result v11

    add-int/2addr v11, v12

    goto :goto_15

    :cond_24
    invoke-virtual {v11, v5}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    :goto_15
    iput v11, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    iput v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iput-boolean v7, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mAssignedFromSavedState:Z

    iget-object v11, v8, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v11, v11, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eq v5, v10, :cond_25

    goto :goto_16

    :cond_25
    move v5, v7

    :goto_16
    aget v5, v11, v5

    if-eq v5, v10, :cond_26

    goto :goto_17

    :cond_26
    move v5, v7

    :goto_17
    iput v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    iget-object v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v11, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    if-le v5, v11, :cond_27

    iget-object v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    iget v5, v5, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    iput v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    :cond_27
    move v5, v6

    goto :goto_19

    :cond_28
    :goto_18
    move v5, v7

    :goto_19
    if-eqz v5, :cond_29

    goto :goto_1a

    :cond_29
    invoke-static {v15}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$1600(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    iput v7, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iput v7, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    :goto_1a
    iput-boolean v6, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mValid:Z

    :cond_2a
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-boolean v5, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_2b

    invoke-virtual {v0, v15, v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    goto :goto_1b

    :cond_2b
    invoke-virtual {v0, v15, v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    :goto_1b
    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    iget v11, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    iget v8, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v11, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v12

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_2d

    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    if-eq v12, v9, :cond_2c

    if-eq v12, v8, :cond_2c

    move v9, v6

    goto :goto_1c

    :cond_2c
    move v9, v7

    :goto_1c
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-boolean v6, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v6, :cond_2f

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1e

    :cond_2d
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    if-eq v6, v9, :cond_2e

    if-eq v6, v11, :cond_2e

    const/4 v9, 0x1

    goto :goto_1d

    :cond_2e
    move v9, v7

    :goto_1d
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-boolean v6, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v6, :cond_2f

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1e

    :cond_2f
    iget v6, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    :goto_1e
    move/from16 v20, v6

    iput v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastWidth:I

    iput v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLastHeight:I

    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    const/4 v8, 0x0

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/adobe/xmp/impl/ParseState;

    if-ne v6, v10, :cond_33

    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v11, v10, :cond_30

    if-eqz v9, :cond_33

    :cond_30
    iget-boolean v3, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_31

    :goto_1f
    move-object v8, v15

    goto/16 :goto_24

    :cond_31
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-object v8, v13, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    iput v7, v13, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v3

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/adobe/xmp/impl/ParseState;

    if-eqz v3, :cond_32

    iget v3, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    move/from16 v18, v5

    move/from16 v19, v14

    move/from16 v22, v3

    move-object/from16 v23, v9

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/adobe/xmp/impl/ParseState;IIIIILjava/util/List;)V

    goto :goto_20

    :cond_32
    iget v3, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    move/from16 v18, v14

    move/from16 v19, v5

    move/from16 v22, v3

    move-object/from16 v23, v9

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/adobe/xmp/impl/ParseState;IIIIILjava/util/List;)V

    :goto_20
    iget-object v3, v13, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v4, v5, v14, v7}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    invoke-virtual {v4, v7}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    iget-object v3, v4, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    iget v4, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    aget v3, v3, v4

    iput v3, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput v3, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    goto :goto_1f

    :cond_33
    if-eq v6, v10, :cond_34

    iget v9, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_21

    :cond_34
    iget v6, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    :goto_21
    iput-object v8, v13, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    iput v7, v13, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v8

    if-eqz v8, :cond_36

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_35

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v4, v6, v3}, Lcom/google/android/flexbox/FlexboxHelper;->clearFlexLines(ILjava/util/List;)V

    iget v3, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v10, v5

    move-object/from16 v16, v8

    move v11, v14

    goto :goto_22

    :cond_35
    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/adobe/xmp/impl/ParseState;

    const/16 v21, 0x0

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v22, -0x1

    move-object/from16 v16, v3

    move-object/from16 v17, v8

    move/from16 v18, v5

    move/from16 v19, v14

    move-object/from16 v23, v9

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/adobe/xmp/impl/ParseState;IIIIILjava/util/List;)V

    move-object v7, v13

    move/from16 v24, v14

    move-object v8, v15

    goto :goto_23

    :cond_36
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_37

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {v4, v6, v3}, Lcom/google/android/flexbox/FlexboxHelper;->clearFlexLines(ILjava/util/List;)V

    iget v3, v15, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move v11, v5

    move-object/from16 v16, v8

    move v10, v14

    :goto_22
    move-object v8, v4

    move-object v9, v13

    move/from16 v12, v20

    move-object v7, v13

    move v13, v6

    move/from16 v24, v14

    move v14, v3

    move-object v3, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/adobe/xmp/impl/ParseState;IIIIILjava/util/List;)V

    move-object v8, v3

    goto :goto_23

    :cond_37
    move-object v7, v13

    move/from16 v24, v14

    move-object v8, v15

    invoke-virtual {v4, v3}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/adobe/xmp/impl/ParseState;

    const/16 v21, 0x0

    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    const/16 v22, -0x1

    move-object/from16 v16, v3

    move-object/from16 v17, v9

    move/from16 v18, v24

    move/from16 v19, v5

    move-object/from16 v23, v10

    invoke-virtual/range {v16 .. v23}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/adobe/xmp/impl/ParseState;IIIIILjava/util/List;)V

    :goto_23
    iget-object v3, v7, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    move/from16 v3, v24

    invoke-virtual {v4, v5, v3, v6}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    invoke-virtual {v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    :goto_24
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    iget-boolean v3, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v3, :cond_38

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v8, v4, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    goto :goto_25

    :cond_38
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v6, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v0, v8, v4, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    :goto_25
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3a

    iget-boolean v5, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_39

    invoke-virtual {v0, v6, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v4

    add-int/2addr v4, v3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    goto :goto_26

    :cond_39
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v0, v3, v1, v2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)I

    :cond_3a
    :goto_26
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    iput p0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    :goto_0
    return-object v0
.end method

.method public final recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 11

    iget-boolean v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mShouldRecycle:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    const/4 v4, 0x0

    if-ne v0, v2, :cond_c

    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-gez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_a

    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_a

    :cond_3
    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    aget v3, v3, v6

    if-ne v3, v2, :cond_4

    goto/16 :goto_a

    :cond_4
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    move v6, v5

    :goto_0
    if-ltz v6, :cond_a

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    iget v8, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v9

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-gt v9, v8, :cond_7

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEnd()I

    move-result v10

    sub-int/2addr v10, v8

    if-lt v9, v10, :cond_7

    :goto_1
    move v8, v1

    goto :goto_2

    :cond_7
    move v8, v4

    :goto_2
    if-eqz v8, :cond_a

    iget v8, v2, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ne v8, v7, :cond_9

    if-gtz v3, :cond_8

    move v0, v6

    goto :goto_4

    :cond_8
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    move-object v2, v0

    move v0, v6

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_a
    :goto_4
    if-lt v5, v0, :cond_18

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    :cond_b
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_c
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    if-gez v0, :cond_d

    goto/16 :goto_a

    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_a

    :cond_e
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_f

    goto/16 :goto_a

    :cond_f
    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    aget v3, v3, v5

    if-ne v3, v2, :cond_10

    goto/16 :goto_a

    :cond_10
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    move v6, v4

    :goto_5
    if-ge v6, v0, :cond_16

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_11

    goto :goto_8

    :cond_11
    iget v8, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v9

    if-nez v9, :cond_12

    iget-boolean v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEnd()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    if-gt v9, v8, :cond_13

    goto :goto_6

    :cond_12
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-gt v9, v8, :cond_13

    :goto_6
    move v8, v1

    goto :goto_7

    :cond_13
    move v8, v4

    :goto_7
    if-eqz v8, :cond_16

    iget v8, v5, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ne v8, v7, :cond_15

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt v3, v2, :cond_14

    move v2, v6

    goto :goto_9

    :cond_14
    iget v2, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    move-object v5, v2

    move v2, v6

    :cond_15
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_16
    :goto_9
    if-ltz v2, :cond_18

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ChildHelper;->removeViewAt(I)V

    :cond_17
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_18
    :goto_a
    return-void
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingSubOrientation(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int/2addr p3, p1

    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->offsetChildren(I)V

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public final scrollToPosition(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingSavedState:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->mAnchorPosition:I

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingSubOrientation(I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    add-int/2addr p3, p1

    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    neg-int p2, p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->offsetChildren(I)V

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->handleScrollingMainOrientation(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public final setAlignItems(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    if-eq v0, p1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_2
    return-void
.end method

.method public final setFlexDirection(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setFlexWrap()V
    .locals 3

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAnchorInfo:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->access$800(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPerpendicularCoordinate:I

    :goto_0
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mSubOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final setJustifyContent(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput p2, v0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    return-void
.end method

.method public final updateDirtyPosition(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findOneVisibleChild(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    if-lt p1, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasureSpecCache(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureMeasuredSizeCache(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureIndexToFlexLine(I)V

    iget-object v0, v1, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mDirtyPosition:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    :goto_1
    return-void
.end method

.method public final updateLayoutStateToFillEnd(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 4

    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    goto :goto_0

    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    :goto_0
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-eqz p3, :cond_1

    if-ne p3, v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    iput-boolean v2, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput-boolean v2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v3

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    move-result v2

    iget v3, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_2
    sub-int/2addr v2, v3

    iput v2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iput v2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    iget v2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iput v2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_5

    iget p2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    if-ltz p2, :cond_5

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v1

    if-ge p2, p3, :cond_5

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    iget p1, p1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    :cond_5
    return-void
.end method

.method public final updateLayoutStateToFillStart(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 4

    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-eqz p3, :cond_0

    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    goto :goto_0

    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    :goto_0
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-eqz p3, :cond_1

    if-ne p3, v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    iput-boolean v2, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iput-boolean v2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mInfinite:Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_4

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_2
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mAvailable:I

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget v2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mPosition:I

    iput v2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mItemDirection:I

    const/4 v1, -0x1

    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mLayoutDirection:I

    iget v2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mCoordinate:I

    iput v2, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mOffset:I

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mScrollingOffset:I

    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    if-eqz p2, :cond_5

    if-lez v0, :cond_5

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->mFlexLinePosition:I

    if-le p2, p1, :cond_5

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mLayoutState:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mFlexLinePosition:I

    iget p1, p1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->mPosition:I

    :cond_5
    return-void
.end method

.method public final updateViewCache(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mViewCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
