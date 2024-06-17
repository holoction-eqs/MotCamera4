.class public final Landroidx/appcompat/view/menu/CascadingMenuPopup;
.super Landroidx/appcompat/view/menu/MenuPopup;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public mAnchorView:Landroid/view/View;

.field public final mAttachStateChangeListener:Landroidx/appcompat/view/menu/StandardMenuPopup$2;

.field public final mContext:Landroid/content/Context;

.field public mDropDownGravity:I

.field public mForceShowIcon:Z

.field public final mGlobalLayoutListener:Landroidx/appcompat/widget/AppCompatSpinner$2;

.field public mHasXOffset:Z

.field public mHasYOffset:Z

.field public mLastPosition:I

.field public final mMenuItemHoverListener:Lcom/google/common/base/Joiner;

.field public final mMenuMaxWidth:I

.field public mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field public final mOverflowOnly:Z

.field public final mPendingMenus:Ljava/util/ArrayList;

.field public final mPopupStyleAttr:I

.field public final mPopupStyleRes:I

.field public mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public mRawDropDownGravity:I

.field public mShouldCloseImmediately:Z

.field public mShowTitle:Z

.field public final mShowingMenus:Ljava/util/ArrayList;

.field public mShownAnchorView:Landroid/view/View;

.field public final mSubMenuHoverHandler:Landroid/os/Handler;

.field public mTreeObserver:Landroid/view/ViewTreeObserver;

.field public mXOffset:I

.field public mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/view/menu/MenuPopup;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$2;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroidx/appcompat/widget/AppCompatSpinner$2;

    new-instance v0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/StandardMenuPopup$2;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    new-instance v0, Lcom/google/common/base/Joiner;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Lcom/google/common/base/Joiner;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iput p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    sget-object p3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result p2

    if-ne p2, v1, :cond_0

    move v1, v0

    :cond_0
    iput v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    const p3, 0x7f070017

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->showMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 3

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-array v1, v0, [Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget-object v1, p0, v0

    iget-object v2, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getListView()Landroid/widget/ListView;
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    :goto_0
    return-object p0
.end method

.method public final isShowing()Z
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    const/4 v4, 0x0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    if-eqz v3, :cond_4

    iget-object v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-static {v3, v4}, Landroidx/appcompat/widget/MenuPopupWindow$Api23Impl;->setExitTransition(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    iget-object v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_5

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    goto :goto_2

    :cond_5
    iget-object v5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v5}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-ne v5, v3, :cond_6

    move v5, v2

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_2
    iput v5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    if-nez v1, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, v3}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroidx/appcompat/widget/AppCompatSpinner$2;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    iput-object v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_9
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_3

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final onDismiss()V
    .locals 5

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object p0, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    iget-object p0, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public final setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    return-void
.end method

.method public final setGravity(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public final setHorizontalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mXOffset:I

    return-void
.end method

.method public final setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final setShowTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowTitle:Z

    return-void
.end method

.method public final setVerticalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mYOffset:I

    return-void
.end method

.method public final show()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->showMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroidx/appcompat/widget/AppCompatSpinner$2;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public final showMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    new-instance v4, Landroidx/appcompat/view/menu/MenuAdapter;

    iget-boolean v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    const v6, 0x7f0d000b

    invoke-direct {v4, v1, v3, v5, v6}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget-boolean v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v5, :cond_0

    iput-boolean v6, v4, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v5

    iput-boolean v5, v4, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    :cond_1
    :goto_0
    iget v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    invoke-static {v4, v2, v5}, Landroidx/appcompat/view/menu/MenuPopup;->measureIndividualMenuWidth(Landroidx/appcompat/view/menu/MenuAdapter;Landroid/content/Context;I)I

    move-result v5

    new-instance v7, Landroidx/appcompat/widget/MenuPopupWindow;

    iget v8, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v9, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    invoke-direct {v7, v2, v8, v9}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;II)V

    iget-object v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Lcom/google/common/base/Joiner;

    iput-object v2, v7, Landroidx/appcompat/widget/MenuPopupWindow;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    iput-object v0, v7, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, v7, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v8, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v8, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    iget v8, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    iput v8, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    iput-boolean v6, v7, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    iget v4, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    iput v4, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    iget-object v4, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v12, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

    invoke-virtual {v12, v14}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    if-ne v1, v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x2

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    :cond_4
    :goto_3
    const/4 v6, 0x0

    goto :goto_7

    :cond_5
    iget-object v8, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v8, v8, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    if-eqz v13, :cond_6

    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v13

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/MenuAdapter;

    goto :goto_4

    :cond_6
    check-cast v12, Landroidx/appcompat/view/menu/MenuAdapter;

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v14

    const/4 v6, 0x0

    :goto_5
    const/4 v11, -0x1

    if-ge v6, v14, :cond_8

    invoke-virtual {v12, v6}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v10

    if-ne v15, v10, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    move v6, v11

    :goto_6
    if-ne v6, v11, :cond_9

    goto :goto_3

    :cond_9
    add-int/2addr v6, v13

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v10

    sub-int/2addr v6, v10

    if-ltz v6, :cond_4

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lt v6, v10, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_7
    if-eqz v6, :cond_13

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroidx/appcompat/widget/MenuPopupWindow$Api29Impl;->setTouchModal(Landroid/widget/PopupWindow;Z)V

    const/4 v8, 0x0

    invoke-static {v2, v8}, Landroidx/appcompat/widget/MenuPopupWindow$Api23Impl;->setEnterTransition(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {v2, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v11, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v11, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v11, 0x0

    aget v8, v8, v11

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v8

    add-int/2addr v2, v5

    iget v8, v10, Landroid/graphics/Rect;->right:I

    if-le v2, v8, :cond_d

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    aget v2, v8, v11

    sub-int/2addr v2, v5

    if-gez v2, :cond_e

    :cond_d
    const/4 v2, 0x1

    :goto_8
    const/4 v8, 0x1

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v2, 0x0

    goto :goto_8

    :goto_a
    if-ne v2, v8, :cond_f

    const/4 v8, 0x1

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    :goto_b
    iput v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    iput-object v6, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    iget v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/4 v10, 0x5

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_11

    const/4 v2, 0x0

    if-eqz v8, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    if-eqz v8, :cond_12

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    :goto_c
    add-int/2addr v5, v2

    goto :goto_e

    :cond_12
    :goto_d
    rsub-int/lit8 v5, v5, 0x0

    :goto_e
    iput v5, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    const/4 v5, 0x1

    iput-boolean v5, v7, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    iput-boolean v5, v7, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    goto :goto_10

    :cond_13
    iget-boolean v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v2, :cond_14

    iget v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mXOffset:I

    iput v2, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    :cond_14
    iget-boolean v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v2, :cond_15

    iget v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    :cond_15
    iget-object v2, v0, Landroidx/appcompat/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_16

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_f

    :cond_16
    const/4 v8, 0x0

    :goto_f
    iput-object v8, v7, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    :goto_10
    new-instance v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v2, v7, v1, v5}, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/MenuBuilder;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    iget-object v2, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v9, :cond_17

    iget-boolean v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz v0, :cond_17

    iget-object v0, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    const v0, 0x7f0d0012

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v3, 0x1020016

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_17
    return-void
.end method

.method public final updateMenuView()V
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_0
    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method
