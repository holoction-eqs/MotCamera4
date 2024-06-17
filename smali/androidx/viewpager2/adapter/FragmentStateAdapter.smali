.class public abstract Landroidx/viewpager2/adapter/FragmentStateAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/adapter/StatefulAdapter;


# instance fields
.field public final mFragmentEventDispatcher:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

.field public final mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

.field public mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

.field public final mFragments:Landroidx/collection/LongSparseArray;

.field public mHasStaleFragments:Z

.field public mIsInGracePeriod:Z

.field public final mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

.field public final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field public final mSavedStates:Landroidx/collection/LongSparseArray;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    iput-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    iput-boolean v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    iput-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object p1, p1, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method public static addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final containsItem(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final gcFragments()V
    .locals 9

    iget-boolean v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    iget-object v5, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3, v4}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    if-nez v2, :cond_a

    iput-boolean v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    move v2, v1

    :goto_1
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    iget-boolean v4, v5, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_3
    iget-object v4, v5, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v8, v5, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v4, v8, v6, v7}, Landroidx/core/util/DebugUtils;->binarySearch([JIJ)I

    move-result v4

    const/4 v8, 0x1

    if-ltz v4, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v3, v6, v7, v4}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move v8, v1

    :goto_4
    if-nez v8, :cond_9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    goto :goto_5

    :cond_b
    :goto_6
    return-void
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final itemForViewHolder(I)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-direct {v0, p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V

    iput-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-static {p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iput-object p1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object v1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPageChangeCallback:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p1, p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;

    invoke-direct {p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object p1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mDataObserver:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    new-instance p1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-direct {p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object p1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mLifecycleObserver:Landroidx/lifecycle/LifecycleEventObserver;

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    iget-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v0, v1, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    int-to-long v0, p2

    iget-object v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    iget-boolean v4, v3, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_1
    iget-object v4, v3, Landroidx/collection/LongSparseArray;->mKeys:[J

    iget v5, v3, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v4, v5, v0, v1}, Landroidx/core/util/DebugUtils;->binarySearch([JIJ)I

    move-result v4

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_5

    move-object v4, p0

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->fragmentList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    iget-object v4, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment$SavedState;

    iget-object v6, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez v6, :cond_4

    if-eqz v4, :cond_3

    iget-object v4, v4, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    move-object v5, v4

    :cond_3
    iput-object v5, p2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v1, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    :cond_6
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    return-void
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    sget p0, Landroidx/viewpager2/adapter/FragmentViewHolder;->$r8$clinit:I

    new-instance p0, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {}, Landroidx/core/view/ViewCompat$Api17Impl;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveEnabled(Z)V

    new-instance p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-direct {p1, p0}, Landroidx/viewpager2/adapter/FragmentViewHolder;-><init>(Landroid/widget/FrameLayout;)V

    return-object p1
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget-object v1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPageChangeCallback:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p1, p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mDataObserver:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;

    iget-object v1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v2, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    iget-object p1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mLifecycleObserver:Landroidx/lifecycle/LifecycleEventObserver;

    iget-object v1, v1, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    return-void
.end method

.method public final bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    const/4 p0, 0x1

    return p0
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    check-cast p1, Landroidx/viewpager2/adapter/FragmentViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_0
    return-void
.end method

.method public final placeFragmentInViewHolder(Landroidx/viewpager2/adapter/FragmentViewHolder;)V
    .locals 8

    const-string v0, "f"

    iget-wide v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    iget-object v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v2, "Design assumption violated."

    if-eqz v1, :cond_a

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v5, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    iget-object v6, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v2, :cond_2

    if-nez v5, :cond_2

    new-instance p1, Landroidx/core/view/MenuHostHelper;

    invoke-direct {p1, p0, v1, v3}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    iget-object p0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;-><init>(Landroidx/core/view/MenuHostHelper;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, v3, :cond_3

    invoke-static {v5, v3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5, v3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    :cond_5
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v2, p0, v1, v3}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    iget-object v3, v6, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    iget-object v3, v3, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    invoke-direct {v5, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;-><init>(Landroidx/core/view/MenuHostHelper;)V

    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    :try_start_0
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    iput-boolean v4, v1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v2, v6}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {v2, v4, v1, p1, v0}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1, p1}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->commitNow()V

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {p0, v4}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->dispatchPostEvents(Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v3}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->dispatchPostEvents(Ljava/util/List;)V

    throw p0

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v4

    :cond_8
    iget-boolean v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroidx/viewpager2/adapter/FragmentStateAdapter$1;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$1;-><init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;Landroidx/viewpager2/adapter/FragmentViewHolder;)V

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :goto_1
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeFragment(J)V
    .locals 9

    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v3

    iget-object v4, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    if-nez v3, :cond_2

    invoke-virtual {v4, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    return-void

    :cond_3
    iget-object v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    return-void

    :cond_4
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    iget-object v6, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    if-eqz v5, :cond_8

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v6, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v7, v3, Landroidx/fragment/app/FragmentManagerImpl;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v7, v7, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentStateManager;

    if-eqz v5, :cond_6

    iget-object v7, v5, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v7, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v7, v7, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v8, -0x1

    if-le v7, v8, :cond_5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentStateManager;->saveBasicState()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v7, Landroidx/fragment/app/Fragment$SavedState;

    invoke-direct {v7, v5}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    move-object v7, v1

    :goto_0
    invoke-static {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->dispatchPostEvents(Ljava/util/List;)V

    invoke-virtual {v4, p1, p2, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment "

    const-string p2, " is not currently in the FragmentManager"

    invoke-static {p1, v2, p2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/IllegalStateException;)V

    throw v1

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v1

    :cond_8
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v6, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->keyframes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v1, v3}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commitNow()V

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->dispatchPostEvents(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->dispatchPostEvents(Ljava/util/List;)V

    throw p1

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v1
.end method

.method public final restoreState(Landroid/os/Parcelable;)V
    .locals 12

    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_d

    iget-object v1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_d

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "f#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    if-eqz v6, :cond_7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v8, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v8, v9}, Landroidx/fragment/app/FragmentManagerImpl;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v11

    if-eqz v11, :cond_6

    move-object v10, v11

    :goto_4
    invoke-virtual {v1, v6, v7, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fragment no longer exists for key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": unique id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/IllegalStateException;)V

    throw v10

    :cond_7
    const-string v6, "s#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_8

    move v6, v3

    goto :goto_5

    :cond_8
    move v6, v2

    :goto_5
    if-eqz v6, :cond_9

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {p0, v6, v7}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0, v6, v7, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected key in savedState: "

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-nez p1, :cond_b

    move v2, v3

    :cond_b
    if-nez v2, :cond_c

    iput-boolean v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    iput-boolean v3, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    invoke-virtual {p0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroidx/work/Worker$1;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;

    invoke-direct {v1, p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;-><init>(Landroid/os/Handler;Landroidx/work/Worker$1;)V

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected the adapter to be \'fresh\' while restoring state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
