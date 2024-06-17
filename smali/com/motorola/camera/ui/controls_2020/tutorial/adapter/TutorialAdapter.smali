.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public screenList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialAdapter;->screenList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mBackgroudRes:I

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;->contentBackground:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mIsAnimation:Z

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mContentRes:I

    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;->contentImage:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;->contentHeader:Landroid/widget/TextView;

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHeaderRes:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;->contentText:Landroid/widget/TextView;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mDescriptionRes:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0110

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;

    const-string p2, "layout"

    invoke-static {p0, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/adapter/TutorialViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
