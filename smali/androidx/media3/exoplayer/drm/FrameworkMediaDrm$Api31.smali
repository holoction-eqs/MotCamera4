.class public abstract Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$Api31;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1

    iget-object p2, p2, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iget-object p2, p2, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    invoke-virtual {p2, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPlaybackComponent([B)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Landroid/media/MediaDrm$PlaybackComponent;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    :cond_0
    return-void
.end method
