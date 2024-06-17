.class public final Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final binding:Landroidx/databinding/ViewDataBinding;

.field public item:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .locals 1

    iget-object v0, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/DataBindingViewHolder;->binding:Landroidx/databinding/ViewDataBinding;

    return-void
.end method
