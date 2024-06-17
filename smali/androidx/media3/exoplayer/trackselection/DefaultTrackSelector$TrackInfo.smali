.class public abstract Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final format:Landroidx/media3/common/Format;

.field public final rendererIndex:I

.field public final trackGroup:Landroidx/media3/common/TrackGroup;

.field public final trackIndex:I


# direct methods
.method public constructor <init>(IILandroidx/media3/common/TrackGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->rendererIndex:I

    iput-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->trackGroup:Landroidx/media3/common/TrackGroup;

    iput p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->trackIndex:I

    iget-object p1, p3, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object p1, p1, p2

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;->format:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public abstract getSelectionEligibility()I
.end method

.method public abstract isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
.end method
