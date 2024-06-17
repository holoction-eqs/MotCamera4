.class public final synthetic Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;ILcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;

    const-string v1, "$holder"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput v2, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->selectedMode:I

    iget-object v3, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(Ljava/lang/Object;II)V

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->items:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v4, v1, v5}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(Ljava/lang/Object;II)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuAdapter$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
