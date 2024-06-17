.class public final Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final playbackSpeedTexts:[Ljava/lang/String;

.field public final playbackSpeeds:[F

.field public selectedIndex:I

.field public final synthetic this$0:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[F)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeedTexts:[Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeeds:[F

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeedTexts:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    check-cast p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeedTexts:[Ljava/lang/String;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    iget-object v1, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->selectedIndex:I

    iget-object v1, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, v2}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda1;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0068

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-direct {p1, p0}, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
