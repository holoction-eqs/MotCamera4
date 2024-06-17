.class public abstract Landroidx/recyclerview/widget/ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mDiffer:Ljava/lang/Object;

.field public final mListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/ListAdapter;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/ListAdapter;->mListener:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/ListAdapter;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/ListAdapter$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ListAdapter$1;-><init>(Landroidx/recyclerview/widget/ListAdapter;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mListener:Ljava/lang/Object;

    new-instance v1, Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v2, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Ljava/lang/Object;)V

    new-instance v3, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {v3, p1}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;)V

    .line 3
    iget-object v4, v3, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    if-nez v4, :cond_1

    sget-object v4, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v5, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v5, :cond_0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    sput-object v5, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object v4, v3, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_2
    new-instance v4, Landroidx/recyclerview/widget/ChildHelper;

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v4, v3, p1}, Landroidx/recyclerview/widget/ChildHelper;-><init>(Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 4
    invoke-direct {v1, v2, v4}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/OpReorderer;Landroidx/recyclerview/widget/ChildHelper;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    .line 5
    iget-object p0, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getCurrentList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    return-object p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/ListAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBindViewHolder(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/ui/PlayerControlView;

    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->onBindViewHolderAtZeroPosition(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v1, p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v1, v1, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    move-object v3, v0

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v3, v3, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    iget v5, p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iget-object v3, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    iget-object v5, p2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    :goto_1
    iget-object v2, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1, p2}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/ListAdapter;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method public abstract onBindViewHolderAtZeroPosition(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;)V
.end method

.method public onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/ui/PlayerControlView;

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

.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public abstract onTrackSelection(Ljava/lang/String;)V
.end method
