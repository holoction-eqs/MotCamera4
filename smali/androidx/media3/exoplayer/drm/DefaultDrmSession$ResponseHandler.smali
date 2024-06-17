.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    const/4 v5, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    if-ne v1, p1, :cond_a

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    instance-of p1, v0, Ljava/lang/Exception;

    if-eqz p1, :cond_2

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    goto/16 :goto_2

    :cond_2
    :try_start_0
    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x3

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iget v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    if-ne v2, p1, :cond_3

    :try_start_1
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface {v1, p1, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    new-instance p1, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v1, p1, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    if-eq v2, v4, :cond_4

    if-nez v2, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v0, :cond_5

    :cond_4
    if-eqz p1, :cond_5

    array-length v0, p1

    if-eqz v0, :cond_5

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    :cond_5
    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    new-instance p1, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, v5}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;Z)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    if-ne v1, p1, :cond_a

    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    if-eq p1, v4, :cond_7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    iput-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    instance-of p1, v0, Ljava/lang/Exception;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/core/view/MenuHostHelper;

    if-eqz p1, :cond_8

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0, v2}, Landroidx/core/view/MenuHostHelper;->onProvisionError(Ljava/lang/Exception;Z)V

    goto :goto_2

    :cond_8
    :try_start_2
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    check-cast v0, [B

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    iput-object v3, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iget-object p0, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    iget-object p1, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/ImmutableList$Itr;

    move-result-object p0

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->openInternal()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, v5}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v1, p0, v5}, Landroidx/core/view/MenuHostHelper;->onProvisionError(Ljava/lang/Exception;Z)V

    :cond_a
    :goto_2
    return-void
.end method
