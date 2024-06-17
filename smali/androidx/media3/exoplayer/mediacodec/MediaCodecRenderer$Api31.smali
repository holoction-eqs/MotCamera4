.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static setLogSessionIdToMediaCodecFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    invoke-virtual {p1, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    const-string v0, "log-session-id"

    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
