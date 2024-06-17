.class public final Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fromX:I

.field public final fromY:I

.field public final holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final toX:I

.field public final toY:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method
