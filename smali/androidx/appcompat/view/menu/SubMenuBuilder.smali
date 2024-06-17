.class public final Landroidx/appcompat/view/menu/SubMenuBuilder;
.super Landroidx/appcompat/view/menu/MenuBuilder;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public final mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object p3, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public final collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public final dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->dispatchMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->expandItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result p0

    return p0
.end method

.method public final getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p0, :cond_0

    iget p0, p0, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string v0, "android:menu:actionviewstates:"

    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public final getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final isGroupDividerEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    move-result p0

    return p0
.end method

.method public final isQwertyMode()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result p0

    return p0
.end method

.method public final isShortcutsVisible()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result p0

    return p0
.end method

.method public final setGroupDividerEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->setQwertyMode(Z)V

    return-void
.end method
