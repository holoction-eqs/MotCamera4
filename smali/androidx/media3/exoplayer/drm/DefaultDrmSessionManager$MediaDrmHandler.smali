.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    iget-object v2, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    goto :goto_0

    :cond_2
    iget p0, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    if-nez p0, :cond_3

    iget p0, v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_3

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_3
    :goto_0
    return-void
.end method
