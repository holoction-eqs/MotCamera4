.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;
.implements Landroidx/media3/exoplayer/RendererCapabilities;


# instance fields
.field public state:I

.field public stream:Landroidx/media3/exoplayer/source/SampleStream;

.field public streamIsFinal:Z

.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    iput-boolean v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->streamIsFinal:Z

    return-void
.end method

.method public final enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJ)V
    .locals 7

    move-object v0, p0

    iget v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->state:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->state:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p8

    move-wide/from16 v5, p10

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJ)V

    return-void
.end method

.method public final getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic getMediaClock()V
    .locals 0

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Playback listener renderer"

    return-object p0
.end method

.method public final bridge synthetic getReadingPositionUs()J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->state:I

    return p0
.end method

.method public final getStream()Landroidx/media3/exoplayer/source/SampleStream;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    return-object p0
.end method

.method public final bridge synthetic getTrackType()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final bridge synthetic handleMessage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic hasReadStreamToEnd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic init(ILandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->streamIsFinal:Z

    return p0
.end method

.method public final bridge synthetic isEnded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic maybeThrowStreamError()V
    .locals 0

    return-void
.end method

.method public final render(JJ)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;

    iget-wide p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->offset:J

    sub-long/2addr p1, p3

    const/16 p3, 0x3e8

    int-to-long p3, p3

    div-long/2addr p1, p3

    iget-object p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget p4, p3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v0, p4

    div-long/2addr p1, v0

    iget-object p4, p3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    const/4 v0, 0x1

    aget p4, p4, v0

    int-to-long v1, p4

    cmp-long p4, p1, v1

    if-lez p4, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->reset:Z

    if-nez p1, :cond_5

    iput-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->reset:Z

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    check-cast p3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object v0, p3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrame:Landroidx/lifecycle/MutableLiveData;

    long-to-int p1, p1

    if-gez p1, :cond_1

    move p1, p4

    :cond_1
    iget-object p2, p3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-le p1, p2, :cond_3

    move p1, p2

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_4
    iput-boolean p4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->reset:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public final replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJ)V
    .locals 0

    iget-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->streamIsFinal:Z

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    invoke-static {p1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;->listener:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object p2, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    const/4 p4, 0x0

    aget p2, p2, p4

    if-lez p2, :cond_0

    iget-boolean p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->reset:Z

    if-nez p2, :cond_0

    iput-boolean p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->reset:Z

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance p3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;I)V

    invoke-virtual {p2, p3}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    iput-wide p5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$1;->offset:J

    return-void
.end method

.method public final reset()V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->state:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    return-void
.end method

.method public final resetPosition(J)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->streamIsFinal:Z

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->streamIsFinal:Z

    return-void
.end method

.method public final start()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->state:I

    return-void
.end method

.method public final stop()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;->state:I

    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic supportsMixedMimeTypeAdaptation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
