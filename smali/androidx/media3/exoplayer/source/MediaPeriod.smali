.class public interface abstract Landroidx/media3/exoplayer/source/MediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SequenceableLoader;


# virtual methods
.method public abstract discardBuffer(J)V
.end method

.method public abstract getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
.end method

.method public abstract getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
.end method

.method public abstract maybeThrowPrepareError()V
.end method

.method public abstract prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
.end method

.method public abstract readDiscontinuity()J
.end method

.method public abstract seekToUs(J)J
.end method

.method public abstract selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
.end method
