.class public final Landroidx/media3/exoplayer/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final analyticsCollectorFunction:Lcom/google/common/base/Function;

.field public final audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public final bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

.field public buildCalled:Z

.field public final clock:Landroidx/media3/common/util/SystemClock;

.field public final context:Landroid/content/Context;

.field public final detachSurfaceTimeoutMs:J

.field public final livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

.field public final loadControlSupplier:Lcom/google/common/base/Supplier;

.field public final looper:Landroid/os/Looper;

.field public final mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

.field public final releaseTimeoutMs:J

.field public final renderersFactorySupplier:Lcom/google/common/base/Supplier;

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public final seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field public final trackSelectorSupplier:Lcom/google/common/base/Supplier;

.field public final useLazyPreparation:Z

.field public final usePlatformDiagnostics:Z

.field public final videoScalingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;)V
    .locals 10

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v1, p1, v5}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    new-instance v5, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    iput-object v4, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    iput-object v5, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    sget-object p1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput v3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput-boolean v3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    sget-object p1, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p1, 0x3a98

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    const-wide/16 p1, 0x14

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    const-wide/16 p1, 0x1f4

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v7

    const v9, 0x3f7fbe77    # 0.999f

    new-instance v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;-><init>(JJF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/SystemClock;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/SystemClock;

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p1, 0x7d0

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-boolean v3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-void
.end method
