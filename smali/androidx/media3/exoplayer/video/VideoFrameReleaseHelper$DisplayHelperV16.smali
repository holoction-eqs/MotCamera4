.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;


# instance fields
.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;->windowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final register(Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;->windowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;->onDefaultDisplayChanged(Landroid/view/Display;)V

    return-void
.end method

.method public final unregister()V
    .locals 0

    return-void
.end method
