.class public final Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lcom/motorola/camera/device/CameraService;

.field public final mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MaskingMediaSource;Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;Lcom/motorola/camera/device/CameraService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/motorola/camera/device/CameraService;

    return-void
.end method
