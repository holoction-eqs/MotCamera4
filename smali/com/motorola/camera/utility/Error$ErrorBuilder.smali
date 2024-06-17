.class public final Lcom/motorola/camera/utility/Error$ErrorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public display:I

.field public errorDescription:I

.field public sensor:I

.field public storage:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->sensor:I

    iput p2, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->storage:I

    iput p3, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->display:I

    iput p4, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->errorDescription:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->sensor:I

    iput p1, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->storage:I

    iput p1, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->display:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->errorDescription:I

    return-void
.end method


# virtual methods
.method public final setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->sensor:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->storage:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->display:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/utility/Error$ErrorBuilder;->errorDescription:I

    return-void
.end method
