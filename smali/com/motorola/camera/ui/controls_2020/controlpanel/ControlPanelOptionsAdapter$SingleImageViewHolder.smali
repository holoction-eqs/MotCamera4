.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final imageView$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance p1, Landroidx/window/core/Version$bigInteger$2;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelOptionsAdapter$SingleImageViewHolder;->imageView$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method
