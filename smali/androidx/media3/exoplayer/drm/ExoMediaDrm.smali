.class public interface abstract Landroidx/media3/exoplayer/drm/ExoMediaDrm;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract closeSession([B)V
.end method

.method public abstract createCryptoConfig([B)Landroidx/media3/decoder/CryptoConfig;
.end method

.method public abstract getCryptoType()I
.end method

.method public abstract getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
.end method

.method public abstract getProvisionRequest()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
.end method

.method public abstract openSession()[B
.end method

.method public abstract provideKeyResponse([B[B)[B
.end method

.method public abstract provideProvisionResponse([B)V
.end method

.method public abstract queryKeyStatus([B)Ljava/util/Map;
.end method

.method public abstract release()V
.end method

.method public abstract requiresSecureDecoder(Ljava/lang/String;[B)Z
.end method

.method public abstract restoreKeys([B[B)V
.end method

.method public abstract setOnEventListener(Landroidx/appcompat/widget/Toolbar$1;)V
.end method

.method public setPlayerIdForSession([BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    return-void
.end method
