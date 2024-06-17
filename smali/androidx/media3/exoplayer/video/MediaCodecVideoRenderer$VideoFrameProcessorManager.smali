.class public final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public canEnableFrameProcessing:Z

.field public currentSurfaceAndSize:Landroid/util/Pair;

.field public handler:Landroid/os/Handler;

.field public final renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

.field public videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->renderer:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->canEnableFrameProcessing:Z

    sget-object p0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    return-void
.end method
