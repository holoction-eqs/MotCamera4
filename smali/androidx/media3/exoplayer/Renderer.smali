.class public interface abstract Landroidx/media3/exoplayer/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/PlayerMessage$Target;


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJ)V
.end method

.method public abstract getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;
.end method

.method public abstract getMediaClock()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getReadingPositionUs()J
.end method

.method public abstract getState()I
.end method

.method public abstract getStream()Landroidx/media3/exoplayer/source/SampleStream;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract hasReadStreamToEnd()Z
.end method

.method public abstract init(ILandroidx/media3/exoplayer/analytics/PlayerId;)V
.end method

.method public abstract isCurrentStreamFinal()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract maybeThrowStreamError()V
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public abstract render(JJ)V
.end method

.method public abstract replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJ)V
.end method

.method public abstract reset()V
.end method

.method public abstract resetPosition(J)V
.end method

.method public abstract setCurrentStreamFinal()V
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
