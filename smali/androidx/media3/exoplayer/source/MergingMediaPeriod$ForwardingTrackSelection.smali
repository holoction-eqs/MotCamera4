.class public final Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# instance fields
.field public final trackGroup:Landroidx/media3/common/TrackGroup;

.field public final trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/TrackGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->enable()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;

    iget-object v1, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {p0, p1}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getFormat(I)Landroidx/media3/common/Format;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result p0

    return p0
.end method

.method public final getSelectedFormat()Landroidx/media3/common/Format;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public final getTrackGroup()Landroidx/media3/common/TrackGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0}, Landroidx/media3/common/TrackGroup;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final indexOf(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->indexOf(I)I

    move-result p0

    return p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result p0

    return p0
.end method

.method public final onDiscontinuity()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onDiscontinuity()V

    return-void
.end method

.method public final onPlayWhenReadyChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    return-void
.end method

.method public final onPlaybackSpeed(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    return-void
.end method

.method public final onRebuffer()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onRebuffer()V

    return-void
.end method
