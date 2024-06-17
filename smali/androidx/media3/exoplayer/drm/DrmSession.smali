.class public interface abstract Landroidx/media3/exoplayer/drm/DrmSession;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/drm/DrmSession;->acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
.end method

.method public abstract getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;
.end method

.method public abstract getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
.end method

.method public abstract getSchemeUuid()Ljava/util/UUID;
.end method

.method public abstract getState()I
.end method

.method public abstract playClearSamplesWithoutKeys()Z
.end method

.method public abstract release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
.end method

.method public abstract requiresSecureDecoder(Ljava/lang/String;)Z
.end method
