.class public final synthetic Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;

.field public final synthetic f$1:Landroidx/appcompat/widget/Toolbar$1;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;Landroidx/appcompat/widget/Toolbar$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$1:Landroidx/appcompat/widget/Toolbar$1;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/drm/FrameworkMediaDrm;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$1:Landroidx/appcompat/widget/Toolbar$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->mediaDrmHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
