.class public final Lcom/google/android/material/chip/Chip$ChipTouchHelper;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# static fields
.field public static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field public static final NODE_ADAPTER:Landroidx/work/InputMergerFactory$1;

.field public static final SPARSE_VALUES_ADAPTER:Lcom/adobe/xmp/XMPMetaFactory$1;


# instance fields
.field public mAccessibilityFocusedVirtualViewId:I

.field public final mHost:Landroid/view/View;

.field public mHoveredVirtualViewId:I

.field public mKeyboardFocusedVirtualViewId:I

.field public final mManager:Landroid/view/accessibility/AccessibilityManager;

.field public mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

.field public final mTempGlobalRect:[I

.field public final mTempParentRect:Landroid/graphics/Rect;

.field public final mTempScreenRect:Landroid/graphics/Rect;

.field public final mTempVisibleRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/google/android/material/chip/Chip;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    new-instance v0, Landroidx/work/InputMergerFactory$1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroidx/work/InputMergerFactory$1;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->NODE_ADAPTER:Landroidx/work/InputMergerFactory$1;

    new-instance v0, Lcom/adobe/xmp/XMPMetaFactory$1;

    invoke-direct {v0, v2}, Lcom/adobe/xmp/XMPMetaFactory$1;-><init>(I)V

    sput-object v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->SPARSE_VALUES_ADAPTER:Lcom/adobe/xmp/XMPMetaFactory$1;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mTempGlobalRect:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    iput p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mKeyboardFocusedVirtualViewId:I

    iput p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mHoveredVirtualViewId:I

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Landroid/view/View;->setFocusable(Z)V

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api16Impl;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "View may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 3

    iget v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    iput-boolean v1, v2, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->sendEventForVirtualView(II)V

    move v1, v0

    :goto_0
    return v1
.end method

.method public final createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 12

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    const-string v3, "android.view.View"

    invoke-virtual {v1, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    const/4 v4, -0x1

    iput v4, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    iget-object v5, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v7

    and-int/lit8 v8, v7, 0x40

    if-nez v8, :cond_e

    const/16 v8, 0x80

    and-int/2addr v7, v8

    if-nez v7, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iput p1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    invoke-virtual {v0, v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v7, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/4 v9, 0x0

    if-ne v7, p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {v1, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :goto_1
    iget v7, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v7, p1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v9

    :goto_2
    if-eqz p1, :cond_4

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v7, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v1, v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget v8, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    if-eq v8, v4, :cond_6

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    new-instance v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v10, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v8, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    :goto_4
    if-eq v8, v4, :cond_6

    iput v4, v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    iget-object v11, v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v11, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    invoke-virtual {v11, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v8, v10}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {v10, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8, v11}, Landroid/graphics/Rect;->offset(II)V

    iget v8, v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    goto :goto_4

    :cond_6
    aget v3, p1, v9

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    aget v4, p1, v2

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    :cond_7
    iget-object p0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_c

    aget v3, p1, v9

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    aget p1, p1, v2

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0, v3, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v7, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_c

    iget-object p0, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_a

    move-object v5, p0

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-lez p0, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_5

    :cond_a
    if-eqz p0, :cond_b

    move v9, v2

    :cond_b
    :goto_5
    if-eqz v9, :cond_c

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_c
    return-object v1

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Lcom/google/common/base/Joiner;
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    invoke-direct {p1, p0}, Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Lcom/google/android/material/chip/Chip$ChipTouchHelper;)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mNodeProvider:Landroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    return-object p0
.end method

.method public final getVisibleVirtualViews(Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/google/android/material/chip/ChipDrawable;->closeIconVisible:Z

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final moveFocus(ILandroid/graphics/Rect;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getVisibleVirtualViews(Ljava/util/ArrayList;)V

    new-instance v4, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v4}, Landroidx/collection/SparseArrayCompat;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8, v7}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    if-ne v3, v7, :cond_1

    move-object v3, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v3, v6}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Integer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    :goto_1
    sget-object v8, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->SPARSE_VALUES_ADAPTER:Lcom/adobe/xmp/XMPMetaFactory$1;

    const/4 v10, 0x1

    sget-object v11, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->NODE_ADAPTER:Landroidx/work/InputMergerFactory$1;

    iget-object v12, v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mHost:Landroid/view/View;

    const/4 v13, 0x2

    if-eq v1, v10, :cond_16

    if-eq v1, v13, :cond_16

    const/16 v13, 0x82

    const/16 v14, 0x42

    const/16 v15, 0x21

    const/16 v6, 0x11

    if-eq v1, v6, :cond_3

    if-eq v1, v15, :cond_3

    if-eq v1, v14, :cond_3

    if-ne v1, v13, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget v5, v0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const-string v9, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    if-eq v5, v7, :cond_4

    invoke-virtual {v0, v5}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eq v1, v6, :cond_9

    if-eq v1, v15, :cond_8

    if-eq v1, v14, :cond_7

    if-ne v1, v13, :cond_6

    const/4 v5, 0x0

    const/4 v12, -0x1

    invoke-virtual {v10, v5, v12, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v2, 0x0

    const/4 v12, -0x1

    invoke-virtual {v10, v12, v2, v12, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v10, v12, v5, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v10, v2, v12, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eq v1, v6, :cond_d

    if-eq v1, v15, :cond_c

    if-eq v1, v14, :cond_b

    if-ne v1, v13, :cond_a

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    neg-int v5, v5

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v6, 0x1

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v6

    neg-int v5, v5

    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    const/4 v6, 0x1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v6

    :goto_4
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6

    :cond_d
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v6

    :goto_5
    invoke-virtual {v2, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    :goto_6
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move v8, v9

    const/16 v16, 0x0

    :goto_7
    if-ge v8, v5, :cond_15

    iget-object v12, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v12, v12, v8

    check-cast v12, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    if-ne v12, v3, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    invoke-static {v1, v10, v6}, Landroidx/customview/widget/FocusStrategy;->isCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {v1, v10, v2}, Landroidx/customview/widget/FocusStrategy;->isCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {v1, v10, v6, v2}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_11

    goto :goto_8

    :cond_11
    invoke-static {v1, v10, v2, v6}, Landroidx/customview/widget/FocusStrategy;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_12

    goto :goto_9

    :cond_12
    invoke-static {v1, v10, v6}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v13

    invoke-static {v1, v10, v6}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v14

    mul-int/lit8 v15, v13, 0xd

    mul-int/2addr v15, v13

    mul-int/2addr v14, v14

    add-int/2addr v14, v15

    invoke-static {v1, v10, v2}, Landroidx/customview/widget/FocusStrategy;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v13

    invoke-static {v1, v10, v2}, Landroidx/customview/widget/FocusStrategy;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v15

    mul-int/lit8 v17, v13, 0xd

    mul-int v17, v17, v13

    mul-int/2addr v15, v15

    add-int v15, v15, v17

    if-ge v14, v15, :cond_13

    :goto_8
    const/4 v13, 0x1

    goto :goto_a

    :cond_13
    :goto_9
    move v13, v9

    :goto_a
    if-eqz v13, :cond_14

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v16, v12

    :cond_14
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_15
    move-object/from16 v1, v16

    const/4 v2, -0x1

    goto/16 :goto_12

    :cond_16
    const/4 v9, 0x0

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v12}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_17

    const/4 v5, 0x1

    goto :goto_c

    :cond_17
    move v5, v9

    :goto_c
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v9

    :goto_d
    if-ge v8, v2, :cond_18

    iget-object v10, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v10, v10, v8

    check-cast v10, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_18
    new-instance v2, Landroidx/customview/widget/FocusStrategy$SequentialComparator;

    invoke-direct {v2, v5, v11}, Landroidx/customview/widget/FocusStrategy$SequentialComparator;-><init>(ZLandroidx/work/InputMergerFactory$1;)V

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1c

    if-ne v1, v13, :cond_1b

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v3, :cond_19

    const/4 v12, -0x1

    goto :goto_e

    :cond_19
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v12

    :goto_e
    add-int/2addr v12, v2

    if-ge v12, v1, :cond_1a

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    goto :goto_f

    :cond_1a
    const/4 v6, 0x0

    :goto_f
    const/4 v2, -0x1

    goto :goto_11

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v3, :cond_1d

    goto :goto_10

    :cond_1d
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_10
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-ltz v1, :cond_1e

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_11

    :cond_1e
    const/4 v6, 0x0

    :goto_11
    move-object/from16 v16, v6

    check-cast v16, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object/from16 v1, v16

    :goto_12
    if-nez v1, :cond_1f

    goto :goto_15

    :cond_1f
    move v5, v9

    :goto_13
    iget v3, v4, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-ge v5, v3, :cond_21

    iget-object v3, v4, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v3, v3, v5

    if-ne v3, v1, :cond_20

    move v9, v5

    goto :goto_14

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_21
    move v9, v2

    :goto_14
    iget-object v1, v4, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aget v7, v1, v9

    :goto_15
    invoke-virtual {v0, v7}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0
.end method

.method public final obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mHost:Landroid/view/View;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->getVisibleVirtualViews(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Views cannot have both real and virtual children"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/google/android/material/chip/ChipDrawable;->checkable:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    iget-object v0, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v1, ""

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object p0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, p1

    :cond_1
    const/4 p1, 0x0

    aput-object v1, v2, p1

    const p1, 0x7f1202cc

    invoke-virtual {v3, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/google/android/material/chip/Chip;->access$500(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    :cond_2
    if-ne p1, v1, :cond_3

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    iput p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object v1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    iput-boolean v0, v1, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->sendEventForVirtualView(II)V

    move p0, v0

    :goto_1
    return p0
.end method

.method public final sendEventForVirtualView(II)V
    .locals 4

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->obtainAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {p2, v0, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat$Api16Impl;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_1
    invoke-interface {v1, v0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_5
    :goto_2
    return-void
.end method
