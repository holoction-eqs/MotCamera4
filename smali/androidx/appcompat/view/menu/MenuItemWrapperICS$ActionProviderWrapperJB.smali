.class public final Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;
.super Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public mListener:Lcom/google/common/base/Splitter$1;


# virtual methods
.method public final isVisible()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;->mListener:Lcom/google/common/base/Splitter$1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_0
    return-void
.end method

.method public final onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {p0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final overridesItemVisibility()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {p0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result p0

    return p0
.end method

.method public final setVisibilityListener(Lcom/google/common/base/Splitter$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapperJB;->mListener:Lcom/google/common/base/Splitter$1;

    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuItemWrapperICS$ActionProviderWrapper;->mInner:Landroid/view/ActionProvider;

    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method
