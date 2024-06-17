.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public listener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;->listener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;->onDefaultDisplayChanged(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public final register(Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;->listener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;->onDefaultDisplayChanged(Landroid/view/Display;)V

    return-void
.end method

.method public final unregister()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;->listener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    return-void
.end method
