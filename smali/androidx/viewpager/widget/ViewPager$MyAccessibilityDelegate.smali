.class public final Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->$r8$classId:I

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->$r8$classId:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :sswitch_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void

    :sswitch_1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    move-object p0, v1

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p0

    const/16 p1, 0x1000

    if-ne p0, p1, :cond_1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iget-object p0, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    iget p0, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget p0, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v3, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->$r8$classId:I

    const/4 v4, -0x1

    iget-object v5, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v5, p1, v2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast p0, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->checkable:Z

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void

    :pswitch_2
    invoke-virtual {v5, p1, v2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    sget v2, Lcom/google/android/material/button/MaterialButtonToggleGroup;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v5, p1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/material/button/MaterialButton;

    if-eqz v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p0

    invoke-static {v0, v1, v4, v1, p0}, Landroidx/recyclerview/widget/OpReorderer;->obtain(IIIIZ)Landroidx/recyclerview/widget/OpReorderer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/recyclerview/widget/OpReorderer;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object p0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of p2, p0, Landroidx/preference/PreferenceGroupAdapter;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    check-cast p0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    :goto_2
    return-void

    :pswitch_4
    invoke-virtual {v5, p1, v2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    move-object p1, p0

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    if-le p1, v1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_6
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x2000

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_7
    return-void

    :goto_3
    invoke-virtual {v5, p1, v2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast p0, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean p0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->checkable:Z

    invoke-virtual {v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->$r8$classId:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast v1, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object p0, v1, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    const/16 p0, 0x1000

    if-eq p2, p0, :cond_2

    const/16 p0, 0x2000

    if-eq p2, p0, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_2
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr p0, p1

    :goto_0
    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
