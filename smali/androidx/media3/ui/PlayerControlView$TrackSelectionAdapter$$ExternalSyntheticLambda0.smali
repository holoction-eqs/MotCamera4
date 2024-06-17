.class public final synthetic Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/ListAdapter;

.field public final synthetic f$1:Landroidx/media3/common/Player;

.field public final synthetic f$2:Landroidx/media3/common/TrackGroup;

.field public final synthetic f$3:Landroidx/media3/ui/PlayerControlView$TrackInformation;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/ListAdapter;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Landroidx/media3/ui/PlayerControlView$TrackInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/ListAdapter;

    iput-object p2, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/common/Player;

    iput-object p3, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$2:Landroidx/media3/common/TrackGroup;

    iput-object p4, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$3:Landroidx/media3/ui/PlayerControlView$TrackInformation;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/ListAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/common/Player;

    check-cast v0, Landroidx/media3/common/BasePlayer;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    new-instance v1, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$3:Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget v4, v3, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v4

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$2:Landroidx/media3/common/TrackGroup;

    invoke-direct {v1, p0, v4}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)V

    iget-object p0, v3, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object p0, p0, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget p0, p0, Landroidx/media3/common/TrackGroup;->type:I

    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setTrackTypeDisabled(I)V

    new-instance p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object p0, v3, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ListAdapter;->onTrackSelection(Ljava/lang/String;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/ListAdapter;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/ui/PlayerControlView;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method
