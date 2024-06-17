.class public final Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
.super Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
.source "SourceFile"


# instance fields
.field public cellsUsed:I

.field public expandable:Z

.field public expanded:Z

.field public extraPixels:I

.field public isOverflowButton:Z

.field public preventEdgeOffset:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method
