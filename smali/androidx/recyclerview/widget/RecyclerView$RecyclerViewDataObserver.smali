.class public final Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void

    :goto_0
    check-cast p0, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeChanged()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeChanged(Ljava/lang/Object;II)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 2
    :pswitch_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, v0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    .line 4
    invoke-virtual {v0, p1, v3, p2, p3}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_2
    return-void

    .line 6
    :goto_2
    check-cast v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeInserted(II)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v3, v1, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v1, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v2

    iput p1, v1, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_2
    return-void

    :goto_2
    check-cast v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeMoved(II)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v3, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v1, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, v1, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_2
    return-void

    :goto_2
    check-cast v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemRangeRemoved(II)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->$r8$classId:I

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    const/4 v2, 0x1

    if-ge p2, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v3, v1, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v4, p1, p2}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(Ljava/lang/Object;III)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v1, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v4

    iput p1, v1, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_2
    return-void

    :goto_2
    check-cast v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final triggerUpdateProcessor()V
    .locals 2

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v1, :cond_0

    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Landroidx/recyclerview/widget/RecyclerView$1;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :goto_0
    return-void
.end method
