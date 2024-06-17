.class public abstract Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

.field public static final LAYOUT_ATTRS:[I

.field public static final sInterpolator:Landroidx/viewpager/widget/ViewPager$2;


# instance fields
.field public mActivePointerId:I

.field public mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field public mAdapterChangeListeners:Ljava/util/ArrayList;

.field public mBottomPageBounds:I

.field public mCalledSuper:Z

.field public mChildHeightMeasureSpec:I

.field public mCloseEnough:I

.field public mCurItem:I

.field public mDecorChildCount:I

.field public mDefaultGutterSize:I

.field public final mEndScrollRunnable:Landroidx/work/Worker$1;

.field public mExpectedAdapterCount:I

.field public mFirstLayout:Z

.field public mFirstOffset:F

.field public mFlingDistance:I

.field public mGutterSize:I

.field public mInLayout:Z

.field public mInitialMotionX:F

.field public mInitialMotionY:F

.field public mIsBeingDragged:Z

.field public mIsScrollStarted:Z

.field public mIsUnableToDrag:Z

.field public final mItems:Ljava/util/ArrayList;

.field public mLastMotionX:F

.field public mLastMotionY:F

.field public mLastOffset:F

.field public mLeftEdge:Landroid/widget/EdgeEffect;

.field public mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field public mMaximumVelocity:I

.field public mMinimumVelocity:I

.field public mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

.field public mOffscreenPageLimit:I

.field public mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public mOnPageChangeListeners:Ljava/util/ArrayList;

.field public mPageMargin:I

.field public mPopulatePending:Z

.field public mRestoredAdapterState:Landroid/os/Parcelable;

.field public mRestoredCurItem:I

.field public mRightEdge:Landroid/widget/EdgeEffect;

.field public mScrollState:I

.field public mScroller:Landroid/widget/Scroller;

.field public mScrollingCacheEnabled:Z

.field public final mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mTopPageBounds:I

.field public mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->LAYOUT_ATTRS:[I

    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    new-instance v0, Landroidx/viewpager/widget/ViewPager$2;

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$2;-><init>(I)V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroidx/viewpager/widget/ViewPager$2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    new-instance p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-direct {p1}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    const p2, -0x800001

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    const/4 p2, 0x1

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    iput-boolean p2, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    new-instance p1, Landroidx/work/Worker$1;

    const/16 v0, 0x10

    invoke-direct {p1, p0, v0}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Landroidx/work/Worker$1;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroidx/viewpager/widget/ViewPager$2;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    new-instance v0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    new-instance p1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {p1, p0}, Lcom/motorola/camera/CameraKpi;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static canScroll(IIILandroid/view/View;Z)Z
    .locals 9

    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v6, p1, v2

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v6, v7, :cond_0

    add-int v7, p2, v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {p0, v6, v7, v5, v1}, Landroidx/viewpager/widget/ViewPager;->canScroll(IIILandroid/view/View;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    neg-int p0, p0

    invoke-virtual {p3, p0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 9

    new-instance v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    iput p1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    check-cast v1, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0039

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v1, v1, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;->onboardList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/cli/onboard/model/Onboard;

    const v1, 0x7f0a00f4

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a00f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p1, Lcom/motorola/camera/cli/onboard/model/Onboard;->text:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSelected(Z)V

    const/high16 v7, 0x3fa00000    # 1.25f

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_1

    const/16 v5, 0x12c

    if-ge v6, v5, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/16 p1, 0x32

    invoke-virtual {v1, v4, p1, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    iget p1, p1, Lcom/motorola/camera/cli/onboard/model/Onboard;->image:I

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v4, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_2
    instance-of v1, v3, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const-string p1, "images/"

    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v2, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Landroid/view/View;

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    if-ltz p2, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-object v0
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/viewpager/widget/ViewPager$DecorView;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    iput-boolean v3, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add pager decor view during layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public final arrowScroll(I)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    if-ne v3, p0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ViewPager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x0

    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_7

    if-eq v3, v0, :cond_7

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    if-ne p1, v5, :cond_5

    invoke-virtual {p0, v3, v6}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0, v6}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_6

    if-lt v4, v5, :cond_6

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lez v0, :cond_b

    goto :goto_6

    :cond_5
    if-ne p1, v4, :cond_c

    invoke-virtual {p0, v3, v6}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0, v6}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_6

    if-gt v1, v2, :cond_6

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_8

    :cond_7
    if-eq p1, v5, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_5

    :cond_8
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    :cond_9
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_8

    :cond_a
    :goto_5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lez v0, :cond_b

    :goto_6
    sub-int/2addr v0, v1

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0, v0, v2, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    goto :goto_7

    :cond_b
    move v1, v2

    :goto_7
    move v2, v1

    :cond_c
    :goto_8
    if-eqz v2, :cond_d

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-le v2, p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-ge v2, p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final completeScroll(Z)V
    .locals 7

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    if-eq v5, v1, :cond_2

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    :cond_2
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    move v1, v3

    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-boolean v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_3

    iput-boolean v3, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    move v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Landroidx/work/Worker$1;

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroidx/work/Worker$1;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final computeScroll()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    return-void
.end method

.method public final dataSetChanged()V
    .locals 8

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move v3, v5

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v6, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Landroidx/viewpager/widget/ViewPager$1;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v5

    :goto_2
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v6, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_2

    const/4 v6, 0x0

    iput v6, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2, v5, v5, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    const/4 v4, 0x2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result p0

    goto :goto_2

    :cond_3
    const/16 p1, 0x42

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lez p1, :cond_6

    sub-int/2addr p1, v1

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0, p1, v2, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    move p0, v1

    goto :goto_2

    :cond_5
    const/16 p1, 0x11

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_2

    :cond_6
    :goto_1
    move p0, v2

    :goto_2
    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :cond_8
    :goto_3
    return v1
.end method

.method public final dispatchOnPageSelected(I)V
    .locals 3

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object p0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getChildRectInPagerCoordinates(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p1, p0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getCurrentItem()I
    .locals 0

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    return p0
.end method

.method public getPageMargin()I
    .locals 0

    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    return p0
.end method

.method public final infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Landroid/view/View;

    check-cast v2, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "view"

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "obj"

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 14

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v8, v0

    move v9, v5

    move-object v7, v6

    move v6, v4

    move v4, v1

    :goto_2
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_7

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    if-nez v9, :cond_2

    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/2addr v6, v5

    if-eq v12, v6, :cond_2

    add-float/2addr v1, v4

    add-float/2addr v1, v3

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iput v1, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iput v6, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, -0x1

    move-object v6, v4

    goto :goto_3

    :cond_2
    move-object v6, v11

    :goto_3
    iget v1, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v4, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v1

    add-float/2addr v4, v3

    if-nez v9, :cond_4

    cmpl-float v9, v2, v1

    if-ltz v9, :cond_3

    goto :goto_4

    :cond_3
    return-object v7

    :cond_4
    :goto_4
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v8, v4, :cond_5

    goto :goto_5

    :cond_5
    iget v4, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v7, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, 0x1

    move v9, v0

    move-object v13, v6

    move v6, v4

    move v4, v7

    move-object v7, v13

    goto :goto_2

    :cond_6
    :goto_5
    return-object v6

    :cond_7
    return-object v7
.end method

.method public final infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v2, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Landroidx/work/Worker$1;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    if-lez v1, :cond_4

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v4, v4

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v11, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    :goto_0
    if-ge v10, v11, :cond_4

    :goto_1
    iget v12, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v10, v12, :cond_0

    if-ge v6, v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_1

    :cond_0
    if-ne v10, v12, :cond_1

    iget v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v12, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float v13, v8, v12

    mul-float/2addr v13, v5

    add-float/2addr v8, v12

    add-float/2addr v8, v4

    goto :goto_2

    :cond_1
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v12, 0x3f800000    # 1.0f

    add-float v13, v8, v12

    mul-float/2addr v13, v5

    add-float/2addr v12, v4

    add-float/2addr v12, v8

    move v8, v12

    :goto_2
    iget v12, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    add-float/2addr v12, v13

    int-to-float v14, v2

    cmpl-float v12, v12, v14

    if-lez v12, :cond_2

    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    move-object/from16 v16, v1

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    add-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move/from16 v17, v4

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v12, v14, v15, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v16, v1

    move/from16 v17, v4

    move-object/from16 v4, p1

    :goto_3
    add-int v1, v2, v3

    int-to-float v1, v1

    cmpl-float v1, v13, v1

    if-lez v1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move/from16 v4, v17

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v3, :cond_1

    return v1

    :cond_1
    iget-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x2

    if-eqz v0, :cond_e

    if-eq v0, v3, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_4
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-eqz v8, :cond_9

    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iget v10, p0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gez v10, :cond_6

    if-gtz v8, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    iget v11, p0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    cmpg-float v7, v4, v7

    if-gez v7, :cond_8

    :cond_7
    move v7, v1

    goto :goto_0

    :cond_8
    move v7, v2

    :goto_0
    if-nez v7, :cond_9

    float-to-int v4, v4

    float-to-int v7, v3

    float-to-int v9, v0

    invoke-static {v4, v7, v9, p0, v2}, Landroidx/viewpager/widget/ViewPager;->canScroll(IIILandroid/view/View;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    return v2

    :cond_9
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v4, v5, v2

    if-lez v4, :cond_c

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v5, v4

    cmpl-float v4, v5, v6

    if-lez v4, :cond_c

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v4, v4

    if-lez v8, :cond_b

    add-float/2addr v2, v4

    goto :goto_1

    :cond_b
    sub-float/2addr v2, v4

    :goto_1
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    :cond_c
    cmpl-float v0, v6, v2

    if-lez v0, :cond_d

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    :cond_d
    :goto_2
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_3

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    if-le v0, v3, :cond_10

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_f
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto :goto_3

    :cond_10
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    :cond_11
    :goto_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_12

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_12
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    return p0

    :cond_13
    :goto_4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v14, v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_6

    iget v12, v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v16, v5

    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v10, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_9

    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    iget-boolean v14, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    iput-boolean v14, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    iget v9, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iput v5, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    sub-int/2addr v3, v7

    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IIZZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v3, :cond_b

    iget-boolean v7, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_b

    iget v7, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v4

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    move v9, v8

    move v8, v5

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v8

    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_5

    :cond_6
    move v10, p1

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_7
    move v10, p1

    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p2

    goto :goto_7

    :cond_9
    move v3, p2

    move v5, v9

    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_9
    if-ge v0, p2, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v2, :cond_d

    iget-boolean v4, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_e

    :cond_d
    int-to-float v4, p1

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 11

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_5

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v9, v8, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_0

    goto :goto_3

    :cond_0
    iget v8, v8, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v1, :cond_3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    sub-int v8, v4, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_1
    move v10, v8

    move v8, v2

    move v2, v10

    :goto_2
    add-int/2addr v2, p3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    if-eqz v2, :cond_4

    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v2, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p3, :cond_6

    invoke-interface {p3, p1, p2}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IF)V

    :cond_6
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_4
    if-ge v0, p3, :cond_8

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_7

    invoke-interface {v2, p1, p2}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IF)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v0

    move v0, v2

    move v4, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v4, v1

    :goto_0
    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    :goto_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/viewpager/widget/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iput v0, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    iput-object p0, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method public final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    invoke-virtual {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v3, -0x1

    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    goto/16 :goto_4

    :cond_5
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_11

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IIZZ)V

    goto/16 :goto_3

    :cond_6
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_a

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_9
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    move-result p1

    or-int/2addr v1, p1

    goto/16 :goto_5

    :cond_b
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v6

    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v7, v7

    int-to-float v4, v4

    div-float/2addr v7, v4

    iget v8, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v4, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v5, v4

    iget v4, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v7

    div-float/2addr v5, v4

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v4

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    if-le p1, v4, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    if-le p1, v4, :cond_d

    if-lez v0, :cond_c

    goto :goto_2

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_d
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lt v8, p1, :cond_e

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_e
    const p1, 0x3f19999a    # 0.6f

    :goto_1
    add-float/2addr v5, p1

    float-to-int p1, v5

    add-int/2addr v8, p1

    :goto_2
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget p1, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_f
    invoke-virtual {p0, v8, v0, v2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    :goto_3
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v1

    goto :goto_5

    :cond_10
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    :goto_4
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    :cond_11
    :goto_5
    if-eqz v1, :cond_12

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_12
    return v2

    :cond_13
    :goto_6
    return v1
.end method

.method public final pageRight()Z
    .locals 4

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ge v2, v0, :cond_0

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr v0, v3

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0, v0, v1, v3, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    return v3

    :cond_0
    return v1
.end method

.method public final pageScrolled(I)Z
    .locals 7

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_1

    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget v6, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v3

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    invoke-virtual {p0, v6, p1, v0}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final performDrag(F)Z
    .locals 9

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v1, v0

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_0

    iget v1, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, v0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    iget v6, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    iget v2, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v0

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v5, :cond_2

    sub-float p1, v1, p1

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v3, :cond_4

    sub-float/2addr p1, v2

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_4
    move p1, v2

    :cond_5
    :goto_2
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr p1, v0

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    return v4
.end method

.method public final populate()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    return-void
.end method

.method public final populate(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    if-ne v6, v7, :cond_30

    move v7, v5

    :goto_1
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lt v10, v11, :cond_4

    if-ne v10, v11, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_6

    if-lez v6, :cond_6

    iget v9, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v0, v9, v7}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v9

    :cond_6
    if-eqz v9, :cond_26

    add-int/lit8 v11, v7, -0x1

    if-ltz v11, :cond_7

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_8

    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    iget v15, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v13

    div-float/2addr v3, v5

    add-float/2addr v3, v15

    :goto_4
    iget v5, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v5, v5, -0x1

    const/4 v15, 0x0

    :goto_5
    const-string v10, "object"

    if-ltz v5, :cond_e

    cmpl-float v16, v15, v3

    if-ltz v16, :cond_a

    if-ge v5, v4, :cond_a

    if-nez v12, :cond_9

    goto :goto_8

    :cond_9
    iget v14, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v5, v14, :cond_d

    iget-boolean v14, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v14, :cond_d

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v14, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v12, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Landroid/view/View;

    check-cast v14, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {v12, v10}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v11, :cond_c

    goto :goto_6

    :cond_a
    if-eqz v12, :cond_b

    .line 3
    iget v10, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v5, v10, :cond_b

    iget v10, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v10

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_c

    goto :goto_6

    :cond_b
    add-int/lit8 v10, v11, 0x1

    invoke-virtual {v0, v5, v10}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v10

    iget v10, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v10

    add-int/lit8 v7, v7, 0x1

    if-ltz v11, :cond_c

    :goto_6
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_7

    :cond_c
    const/4 v10, 0x0

    :goto_7
    move-object v12, v10

    :cond_d
    add-int/lit8 v5, v5, -0x1

    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_5

    :cond_e
    :goto_8
    iget v3, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v4, v7, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v11, v3, v5

    if-gez v11, :cond_16

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    if-gtz v13, :cond_10

    const/4 v11, 0x0

    goto :goto_a

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v13

    div-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    add-float/2addr v11, v12

    :goto_a
    iget v12, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v12, v12, 0x1

    move v13, v4

    :goto_b
    if-ge v12, v6, :cond_16

    cmpl-float v14, v3, v11

    if-ltz v14, :cond_12

    if-le v12, v1, :cond_12

    if-nez v5, :cond_11

    goto :goto_e

    :cond_11
    iget v14, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v12, v14, :cond_15

    iget-boolean v14, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v14, :cond_15

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v14, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Landroid/view/View;

    check-cast v14, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {v5, v10}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_14

    goto :goto_c

    :cond_12
    if-eqz v5, :cond_13

    iget v14, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v12, v14, :cond_13

    iget v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_14

    goto :goto_c

    :cond_13
    invoke-virtual {v0, v12, v13}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v5

    add-int/lit8 v13, v13, 0x1

    iget v5, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_14

    :goto_c
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_d

    :cond_14
    const/4 v5, 0x0

    :cond_15
    :goto_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 6
    :cond_16
    :goto_e
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    if-lez v3, :cond_17

    iget v5, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    goto :goto_f

    :cond_17
    const/4 v5, 0x0

    :goto_f
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1d

    iget v6, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v10, :cond_1a

    iget v10, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v2

    add-float/2addr v10, v5

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    :goto_10
    iget v11, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-gt v6, v11, :cond_1d

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_1d

    :goto_11
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v6, v12, :cond_18

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v2, v12, :cond_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_18
    :goto_12
    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v12, :cond_19

    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v12, v3, v5

    add-float/2addr v10, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_19
    iput v10, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v11, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v5

    add-float/2addr v10, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1a
    if-le v6, v10, :cond_1d

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    :goto_13
    add-int/lit8 v6, v6, -0x1

    iget v11, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-lt v6, v11, :cond_1d

    if-ltz v10, :cond_1d

    :goto_14
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v12, :cond_1b

    if-lez v10, :cond_1b

    add-int/lit8 v10, v10, -0x1

    goto :goto_14

    :cond_1b
    :goto_15
    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v6, v12, :cond_1c

    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v12, v3, v5

    sub-float/2addr v2, v12

    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    :cond_1c
    iget v12, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v5

    sub-float/2addr v2, v12

    iput v2, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    goto :goto_13

    :cond_1d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v6, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v11, v10, -0x1

    if-nez v10, :cond_1e

    move v12, v6

    goto :goto_16

    :cond_1e
    const v12, -0x800001

    :goto_16
    iput v12, v0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    add-int/lit8 v1, v1, -0x1

    if-ne v10, v1, :cond_1f

    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v6

    sub-float/2addr v10, v3

    goto :goto_17

    :cond_1f
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    :goto_17
    iput v10, v0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    add-int/lit8 v7, v7, -0x1

    :goto_18
    if-ltz v7, :cond_22

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_19
    iget v12, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v11, v12, :cond_20

    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v12, v3, v5

    sub-float/2addr v6, v12

    goto :goto_19

    :cond_20
    iget v13, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v5

    sub-float/2addr v6, v13

    iput v6, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    if-nez v12, :cond_21

    iput v6, v0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    :cond_21
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_18

    :cond_22
    iget v6, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v7, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v5

    iget v7, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    :goto_1a
    add-int/lit8 v7, v7, 0x1

    if-ge v4, v2, :cond_25

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    :goto_1b
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_23

    iget-object v10, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v10, v3, v5

    add-float/2addr v6, v10

    goto :goto_1b

    :cond_23
    if-ne v10, v1, :cond_24

    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v6

    sub-float/2addr v10, v3

    iput v10, v0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    :cond_24
    iput v6, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v9, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v5

    add-float/2addr v6, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 7
    :cond_25
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_26
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_29

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_27

    iget v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_28

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_28

    iget v5, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    iput v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    iget v3, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iput v3, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    goto :goto_1d

    :cond_27
    const/4 v6, 0x0

    :cond_28
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 8
    :goto_1e
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, v0, :cond_2b

    if-eqz v2, :cond_2c

    instance-of v1, v2, Landroid/view/View;

    if-nez v1, :cond_2a

    goto :goto_1f

    :cond_2a
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_1e

    :cond_2b
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v3

    goto :goto_20

    :cond_2c
    :goto_1f
    const/4 v3, 0x0

    :goto_20
    if-eqz v3, :cond_2d

    .line 9
    iget v1, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v1, v2, :cond_2f

    :cond_2d
    const/4 v5, 0x0

    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_2f

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget v2, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_2e

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_22

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_2f
    :goto_22
    return-void

    :cond_30
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_23

    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_23
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final recomputeScrollPosition(IIII)V
    .locals 1

    if-lez p2, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result p0

    mul-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_2

    :cond_1
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final resetTouch()Z
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final scrollToItem(IIZZ)V
    .locals 10

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p3, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_1

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_5

    :cond_1
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/widget/Scroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_2

    move p3, v2

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    if-eqz p3, :cond_4

    iget-boolean p3, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getCurrX()I

    move-result p3

    goto :goto_2

    :cond_3
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getStartX()I

    move-result p3

    :goto_2
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    :goto_3
    move v4, p3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int v6, v0, v4

    rsub-int/lit8 v7, v5, 0x0

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto :goto_5

    :cond_5
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result p3

    div-int/lit8 v0, p3, 0x2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float p3, p3

    div-float/2addr v2, p3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v2, v8

    const v8, 0x3ef1463b

    mul-float/2addr v2, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float/2addr v2, v0

    add-float/2addr v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_6

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    goto :goto_4

    :cond_6
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-float/2addr p3, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    div-float/2addr p2, p3

    add-float/2addr p2, v3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    :goto_4
    const/16 p3, 0x258

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_5
    if-eqz p4, :cond_9

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    goto :goto_6

    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    :cond_8
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    :cond_9
    :goto_6
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 6

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v5, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v3, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Landroid/view/View;

    check-cast v4, Lcom/motorola/camera/cli/onboard/adapter/OnboardAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "object"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v0, v2

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget-boolean v3, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    if-nez v0, :cond_4

    new-instance v0, Landroidx/viewpager/widget/ViewPager$PagerObserver;

    invoke-direct {v0, p0, v2}, Landroidx/viewpager/widget/ViewPager$PagerObserver;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    :cond_4
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    monitor-enter v0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v3, :cond_5

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v0, v2, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_7
    :goto_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_9

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    iget-object v3, v1, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, v3, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v4, p0, :cond_8

    iget-boolean v1, v1, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->autoRefresh:Z

    invoke-virtual {v3, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    return-void
.end method

.method public final setCurrentItemInternal(IIZZ)V
    .locals 5

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    if-nez p4, :cond_1

    iget p4, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne p4, p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-eqz p4, :cond_1

    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p4, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_3

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p4

    :cond_3
    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int v4, v3, v2

    if-gt p1, v4, :cond_4

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_5

    :cond_4
    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iput-boolean p4, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    move v1, p4

    :cond_6
    iget-boolean p4, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz p4, :cond_8

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IIZZ)V

    :goto_2
    return-void

    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to 1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 1
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScrollState(I)V
    .locals 3

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

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
