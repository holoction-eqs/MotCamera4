.class public final Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v0, 0x0

    const v1, 0x7f040021

    invoke-direct {p0, p2, v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/appcompat/widget/TooltipCompat$Api26Impl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$1;

    invoke-direct {v0, p2, p0, p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$1;-><init>(ILandroid/view/View;Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final needsDividerAfter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final needsDividerBefore()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1
.end method

.method public final setFrame(IIII)Z
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    add-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, v2

    div-int/lit8 p4, p4, 0x2

    sub-int p0, p2, v0

    sub-int v1, p4, v0

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    invoke-static {p3, p0, v1, p2, p4}, Landroidx/core/graphics/drawable/DrawableCompat$Api21Impl;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return p1
.end method