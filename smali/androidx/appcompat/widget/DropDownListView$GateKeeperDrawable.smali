.class public final Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iget-object v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->draw$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final draw$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final bridge synthetic getChangingConfigurations()I
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->getChangingConfigurations$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I

    move-result p0

    return p0
.end method

.method public final getChangingConfigurations$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->getCurrent$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrent$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic getIntrinsicHeight()I
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->getIntrinsicHeight$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I

    move-result p0

    return p0
.end method

.method public final getIntrinsicHeight$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getIntrinsicWidth()I
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->getIntrinsicWidth$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I

    move-result p0

    return p0
.end method

.method public final getIntrinsicWidth$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getMinimumHeight()I
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->getMinimumHeight$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I

    move-result p0

    return p0
.end method

.method public final getMinimumHeight$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getMinimumWidth()I
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->getMinimumWidth$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I

    move-result p0

    return p0
.end method

.method public final getMinimumWidth$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getOpacity()I
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->getOpacity$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I

    move-result p0

    return p0
.end method

.method public final getOpacity$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->getPadding$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final getPadding$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/graphics/Rect;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic getState()[I
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->getState$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()[I

    move-result-object p0

    return-object p0
.end method

.method public final getState$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()[I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->getTransparentRegion$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public final getTransparentRegion$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()Landroid/graphics/Region;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final bridge synthetic isAutoMirrored()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->isAutoMirrored$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()Z

    move-result p0

    return p0
.end method

.method public final isAutoMirrored$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat$Api19Impl;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic isStateful()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->isStateful$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()Z

    move-result p0

    return p0
.end method

.method public final isStateful$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic jumpToCurrentState()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->jumpToCurrentState$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()V

    return-void
.end method

.method public final jumpToCurrentState$androidx$appcompat$graphics$drawable$DrawableWrapperCompat()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public final bridge synthetic onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->onBoundsChange$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onBoundsChange$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final bridge synthetic onLevelChange(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->onLevelChange$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(I)Z

    move-result p0

    return p0
.end method

.method public final onLevelChange$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final bridge synthetic setAlpha(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setAlpha$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(I)V

    return-void
.end method

.method public final setAlpha$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final bridge synthetic setAutoMirrored(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setAutoMirrored$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Z)V

    return-void
.end method

.method public final setAutoMirrored$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat$Api19Impl;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public final bridge synthetic setChangingConfigurations(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setChangingConfigurations$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(I)V

    return-void
.end method

.method public final setChangingConfigurations$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setColorFilter$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final setColorFilter$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final bridge synthetic setDither(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setDither$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Z)V

    return-void
.end method

.method public final setDither$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method

.method public final bridge synthetic setFilterBitmap(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setFilterBitmap$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Z)V

    return-void
.end method

.method public final setFilterBitmap$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method

.method public final setHotspot(FF)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setHotspot$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(FF)V

    :cond_0
    return-void
.end method

.method public final setHotspot$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(FF)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setHotspotBounds$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(IIII)V

    :cond_0
    return-void
.end method

.method public final setHotspotBounds$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(IIII)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public final setState([I)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setState$androidx$appcompat$graphics$drawable$DrawableWrapperCompat([I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setState$androidx$appcompat$graphics$drawable$DrawableWrapperCompat([I)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic setTint(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setTint$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(I)V

    return-void
.end method

.method public final setTint$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public final bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setTintList$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setTintMode$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setTintMode$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setVisible$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(ZZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setVisible$androidx$appcompat$graphics$drawable$DrawableWrapperCompat(ZZ)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

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

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
