.class public final Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final rendererCount:I

.field public final rendererFormatSupports:[[[I

.field public final rendererMixedMimeTypeAdaptiveSupports:[I

.field public final rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public final rendererTrackTypes:[I

.field public final unmappedTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;


# direct methods
.method public constructor <init>([I[Landroidx/media3/exoplayer/source/TrackGroupArray;[I[[[ILandroidx/media3/exoplayer/source/TrackGroupArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    iput-object p3, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    iput-object p5, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    array-length p1, p1

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    return-void
.end method
