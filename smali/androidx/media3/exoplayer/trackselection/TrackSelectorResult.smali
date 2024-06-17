.class public final Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final info:Ljava/lang/Object;

.field public final length:I

.field public final rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

.field public final selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

.field public final tracks:Landroidx/media3/common/Tracks;


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {p2}, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iput-object p3, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    return-void
.end method


# virtual methods
.method public final isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object p0, p0, p2

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object p1, p1, p2

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isRendererEnabled(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
