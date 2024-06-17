.class public final Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final handler:Ljava/lang/Object;

.field public final listener:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final videoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
