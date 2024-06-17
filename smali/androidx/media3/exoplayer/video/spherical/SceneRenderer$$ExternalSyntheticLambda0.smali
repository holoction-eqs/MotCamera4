.class public final synthetic Landroidx/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/spherical/SceneRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
