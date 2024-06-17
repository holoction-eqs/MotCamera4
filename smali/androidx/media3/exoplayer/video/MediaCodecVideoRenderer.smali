.class public final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "SourceFile"


# static fields
.field public static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field public static deviceNeedsSetOutputSurfaceWorkaround:Z

.field public static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field public final allowedJoiningTimeMs:J

.field public buffersInCodecCount:I

.field public codecHandlesHdr10PlusOutOfBandMetadata:Z

.field public codecMaxValues:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

.field public codecNeedsSetOutputSurfaceWorkaround:Z

.field public consecutiveDroppedFrameCount:I

.field public final context:Landroid/content/Context;

.field public decodedVideoSize:Landroidx/media3/common/VideoSize;

.field public final deviceNeedsNoPostProcessWorkaround:Z

.field public displaySurface:Landroid/view/Surface;

.field public droppedFrameAccumulationStartTimeMs:J

.field public droppedFrames:I

.field public final eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field public final frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field public haveReportedFirstFrameRenderedForCurrentSurface:Z

.field public initialPositionUs:J

.field public joiningDeadlineMs:J

.field public lastBufferPresentationTimeUs:J

.field public lastFrameReleaseTimeNs:J

.field public lastRenderRealtimeUs:J

.field public final maxDroppedFramesToNotify:I

.field public mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field public placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

.field public renderedFirstFrameAfterEnable:Z

.field public renderedFirstFrameAfterReset:Z

.field public reportedVideoSize:Landroidx/media3/common/VideoSize;

.field public scalingMode:I

.field public totalVideoFrameProcessingOffsetUs:J

.field public tunneling:Z

.field public tunnelingAudioSessionId:I

.field public tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

.field public videoFrameProcessingOffsetCount:I

.field public final videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/core/graphics/PathParser$ExtractFloatResult;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V
    .locals 2

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(Landroidx/core/graphics/PathParser$ExtractFloatResult;)V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const/16 p2, 0x32

    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    new-instance p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    new-instance p1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p3, p4}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    new-instance p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-direct {p1, p2, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    const-string p1, "NVIDIA"

    sget-object p2, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    sget-object p1, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    return-void
.end method

.method public static codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-class p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z

    move-result v0

    sput-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z
    .locals 16

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x1c

    if-gt v0, v10, :cond_8

    sget-object v11, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :goto_0
    move v11, v7

    goto/16 :goto_1

    :sswitch_0
    const-string v12, "machuca"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    move v11, v1

    goto :goto_1

    :sswitch_1
    const-string v12, "once"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_0

    :cond_1
    move v11, v2

    goto :goto_1

    :sswitch_2
    const-string v12, "magnolia"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_0

    :cond_2
    move v11, v3

    goto :goto_1

    :sswitch_3
    const-string v12, "aquaman"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_0

    :cond_3
    move v11, v4

    goto :goto_1

    :sswitch_4
    const-string v12, "oneday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_0

    :cond_4
    move v11, v5

    goto :goto_1

    :sswitch_5
    const-string v12, "dangalUHD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_0

    :cond_5
    move v11, v6

    goto :goto_1

    :sswitch_6
    const-string v12, "dangalFHD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_0

    :cond_6
    move v11, v9

    goto :goto_1

    :sswitch_7
    const-string v12, "dangal"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_0

    :cond_7
    move v11, v8

    :goto_1
    packed-switch v11, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return v9

    :cond_8
    :goto_2
    const/16 v11, 0x1b

    if-gt v0, v11, :cond_9

    const-string v12, "HWEML"

    sget-object v13, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    return v9

    :cond_9
    sget-object v12, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x8

    sparse-switch v13, :sswitch_data_1

    :goto_3
    move v13, v7

    goto/16 :goto_4

    :sswitch_8
    const-string v13, "AFTEUFF014"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    goto :goto_3

    :cond_a
    move v13, v14

    goto/16 :goto_4

    :sswitch_9
    const-string v13, "AFTSO001"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_3

    :cond_b
    move v13, v1

    goto :goto_4

    :sswitch_a
    const-string v13, "AFTEU014"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto :goto_3

    :cond_c
    move v13, v2

    goto :goto_4

    :sswitch_b
    const-string v13, "AFTEU011"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    goto :goto_3

    :cond_d
    move v13, v3

    goto :goto_4

    :sswitch_c
    const-string v13, "AFTR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    goto :goto_3

    :cond_e
    move v13, v4

    goto :goto_4

    :sswitch_d
    const-string v13, "AFTN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    goto :goto_3

    :cond_f
    move v13, v5

    goto :goto_4

    :sswitch_e
    const-string v13, "AFTA"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    goto :goto_3

    :cond_10
    move v13, v6

    goto :goto_4

    :sswitch_f
    const-string v13, "AFTKMST12"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    goto :goto_3

    :cond_11
    move v13, v9

    goto :goto_4

    :sswitch_10
    const-string v13, "AFTJMST12"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_3

    :cond_12
    move v13, v8

    :goto_4
    packed-switch v13, :pswitch_data_1

    const/16 v13, 0x1a

    if-gt v0, v13, :cond_a0

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_2

    :goto_5
    move v1, v7

    goto/16 :goto_6

    :sswitch_11
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_5

    :cond_13
    const/16 v1, 0x8b

    goto/16 :goto_6

    :sswitch_12
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_5

    :cond_14
    const/16 v1, 0x8a

    goto/16 :goto_6

    :sswitch_13
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_5

    :cond_15
    const/16 v1, 0x89

    goto/16 :goto_6

    :sswitch_14
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_5

    :cond_16
    const/16 v1, 0x88

    goto/16 :goto_6

    :sswitch_15
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_5

    :cond_17
    const/16 v1, 0x87

    goto/16 :goto_6

    :sswitch_16
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_5

    :cond_18
    const/16 v1, 0x86

    goto/16 :goto_6

    :sswitch_17
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_5

    :cond_19
    const/16 v1, 0x85

    goto/16 :goto_6

    :sswitch_18
    const-string v1, "DM-01K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_5

    :cond_1a
    const/16 v1, 0x84

    goto/16 :goto_6

    :sswitch_19
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_5

    :cond_1b
    const/16 v1, 0x83

    goto/16 :goto_6

    :sswitch_1a
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_5

    :cond_1c
    const/16 v1, 0x82

    goto/16 :goto_6

    :sswitch_1b
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_5

    :cond_1d
    const/16 v1, 0x81

    goto/16 :goto_6

    :sswitch_1c
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_5

    :cond_1e
    const/16 v1, 0x80

    goto/16 :goto_6

    :sswitch_1d
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_5

    :cond_1f
    const/16 v1, 0x7f

    goto/16 :goto_6

    :sswitch_1e
    const-string v1, "CPH1715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_5

    :cond_20
    const/16 v1, 0x7e

    goto/16 :goto_6

    :sswitch_1f
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_5

    :cond_21
    const/16 v1, 0x7d

    goto/16 :goto_6

    :sswitch_20
    const-string v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_5

    :cond_22
    const/16 v1, 0x7c

    goto/16 :goto_6

    :sswitch_21
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_5

    :cond_23
    const/16 v1, 0x7b

    goto/16 :goto_6

    :sswitch_22
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_5

    :cond_24
    const/16 v1, 0x7a

    goto/16 :goto_6

    :sswitch_23
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_5

    :cond_25
    const/16 v1, 0x79

    goto/16 :goto_6

    :sswitch_24
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_5

    :cond_26
    const/16 v1, 0x78

    goto/16 :goto_6

    :sswitch_25
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_5

    :cond_27
    const/16 v1, 0x77

    goto/16 :goto_6

    :sswitch_26
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_5

    :cond_28
    const/16 v1, 0x76

    goto/16 :goto_6

    :sswitch_27
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_5

    :cond_29
    const/16 v1, 0x75

    goto/16 :goto_6

    :sswitch_28
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_5

    :cond_2a
    const/16 v1, 0x74

    goto/16 :goto_6

    :sswitch_29
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_5

    :cond_2b
    const/16 v1, 0x73

    goto/16 :goto_6

    :sswitch_2a
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_5

    :cond_2c
    const/16 v1, 0x72

    goto/16 :goto_6

    :sswitch_2b
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_5

    :cond_2d
    const/16 v1, 0x71

    goto/16 :goto_6

    :sswitch_2c
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_5

    :cond_2e
    const/16 v1, 0x70

    goto/16 :goto_6

    :sswitch_2d
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_5

    :cond_2f
    const/16 v1, 0x6f

    goto/16 :goto_6

    :sswitch_2e
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_5

    :cond_30
    const/16 v1, 0x6e

    goto/16 :goto_6

    :sswitch_2f
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_5

    :cond_31
    const/16 v1, 0x6d

    goto/16 :goto_6

    :sswitch_30
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_5

    :cond_32
    const/16 v1, 0x6c

    goto/16 :goto_6

    :sswitch_31
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_5

    :cond_33
    const/16 v1, 0x6b

    goto/16 :goto_6

    :sswitch_32
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_5

    :cond_34
    const/16 v1, 0x6a

    goto/16 :goto_6

    :sswitch_33
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_5

    :cond_35
    const/16 v1, 0x69

    goto/16 :goto_6

    :sswitch_34
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_5

    :cond_36
    const/16 v1, 0x68

    goto/16 :goto_6

    :sswitch_35
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_5

    :cond_37
    const/16 v1, 0x67

    goto/16 :goto_6

    :sswitch_36
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_5

    :cond_38
    const/16 v1, 0x66

    goto/16 :goto_6

    :sswitch_37
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_5

    :cond_39
    const/16 v1, 0x65

    goto/16 :goto_6

    :sswitch_38
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_5

    :cond_3a
    const/16 v1, 0x64

    goto/16 :goto_6

    :sswitch_39
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_5

    :cond_3b
    const/16 v1, 0x63

    goto/16 :goto_6

    :sswitch_3a
    const-string v1, "l5460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_5

    :cond_3c
    const/16 v1, 0x62

    goto/16 :goto_6

    :sswitch_3b
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_5

    :cond_3d
    const/16 v1, 0x61

    goto/16 :goto_6

    :sswitch_3c
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_5

    :cond_3e
    const/16 v1, 0x60

    goto/16 :goto_6

    :sswitch_3d
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_5

    :cond_3f
    const/16 v1, 0x5f

    goto/16 :goto_6

    :sswitch_3e
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_5

    :cond_40
    const/16 v1, 0x5e

    goto/16 :goto_6

    :sswitch_3f
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_5

    :cond_41
    const/16 v1, 0x5d

    goto/16 :goto_6

    :sswitch_40
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_5

    :cond_42
    const/16 v1, 0x5c

    goto/16 :goto_6

    :sswitch_41
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_5

    :cond_43
    const/16 v1, 0x5b

    goto/16 :goto_6

    :sswitch_42
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_5

    :cond_44
    const/16 v1, 0x5a

    goto/16 :goto_6

    :sswitch_43
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_5

    :cond_45
    const/16 v1, 0x59

    goto/16 :goto_6

    :sswitch_44
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_5

    :cond_46
    const/16 v1, 0x58

    goto/16 :goto_6

    :sswitch_45
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_5

    :cond_47
    const/16 v1, 0x57

    goto/16 :goto_6

    :sswitch_46
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_5

    :cond_48
    const/16 v1, 0x56

    goto/16 :goto_6

    :sswitch_47
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_5

    :cond_49
    const/16 v1, 0x55

    goto/16 :goto_6

    :sswitch_48
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_5

    :cond_4a
    const/16 v1, 0x54

    goto/16 :goto_6

    :sswitch_49
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_5

    :cond_4b
    const/16 v1, 0x53

    goto/16 :goto_6

    :sswitch_4a
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_5

    :cond_4c
    const/16 v1, 0x52

    goto/16 :goto_6

    :sswitch_4b
    const-string v1, "602LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_5

    :cond_4d
    const/16 v1, 0x51

    goto/16 :goto_6

    :sswitch_4c
    const-string v1, "601LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_5

    :cond_4e
    const/16 v1, 0x50

    goto/16 :goto_6

    :sswitch_4d
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_5

    :cond_4f
    const/16 v1, 0x4f

    goto/16 :goto_6

    :sswitch_4e
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_5

    :cond_50
    const/16 v1, 0x4e

    goto/16 :goto_6

    :sswitch_4f
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_5

    :cond_51
    const/16 v1, 0x4d

    goto/16 :goto_6

    :sswitch_50
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_5

    :cond_52
    const/16 v1, 0x4c

    goto/16 :goto_6

    :sswitch_51
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_5

    :cond_53
    const/16 v1, 0x4b

    goto/16 :goto_6

    :sswitch_52
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_5

    :cond_54
    const/16 v1, 0x4a

    goto/16 :goto_6

    :sswitch_53
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_5

    :cond_55
    const/16 v1, 0x49

    goto/16 :goto_6

    :sswitch_54
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_5

    :cond_56
    const/16 v1, 0x48

    goto/16 :goto_6

    :sswitch_55
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_5

    :cond_57
    const/16 v1, 0x47

    goto/16 :goto_6

    :sswitch_56
    const-string v1, "F04J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_5

    :cond_58
    const/16 v1, 0x46

    goto/16 :goto_6

    :sswitch_57
    const-string v1, "F04H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_5

    :cond_59
    const/16 v1, 0x45

    goto/16 :goto_6

    :sswitch_58
    const-string v1, "F03H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_5

    :cond_5a
    const/16 v1, 0x44

    goto/16 :goto_6

    :sswitch_59
    const-string v1, "F02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_5

    :cond_5b
    const/16 v1, 0x43

    goto/16 :goto_6

    :sswitch_5a
    const-string v1, "F01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_5

    :cond_5c
    const/16 v1, 0x42

    goto/16 :goto_6

    :sswitch_5b
    const-string v1, "F01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_5

    :cond_5d
    const/16 v1, 0x41

    goto/16 :goto_6

    :sswitch_5c
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_5

    :cond_5e
    const/16 v1, 0x40

    goto/16 :goto_6

    :sswitch_5d
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_5

    :cond_5f
    const/16 v1, 0x3f

    goto/16 :goto_6

    :sswitch_5e
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_5

    :cond_60
    const/16 v1, 0x3e

    goto/16 :goto_6

    :sswitch_5f
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_5

    :cond_61
    const/16 v1, 0x3d

    goto/16 :goto_6

    :sswitch_60
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_5

    :cond_62
    const/16 v1, 0x3c

    goto/16 :goto_6

    :sswitch_61
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_5

    :cond_63
    const/16 v1, 0x3b

    goto/16 :goto_6

    :sswitch_62
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_5

    :cond_64
    const/16 v1, 0x3a

    goto/16 :goto_6

    :sswitch_63
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_5

    :cond_65
    const/16 v1, 0x39

    goto/16 :goto_6

    :sswitch_64
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_5

    :cond_66
    const/16 v1, 0x38

    goto/16 :goto_6

    :sswitch_65
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_5

    :cond_67
    const/16 v1, 0x37

    goto/16 :goto_6

    :sswitch_66
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_5

    :cond_68
    const/16 v1, 0x36

    goto/16 :goto_6

    :sswitch_67
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_5

    :cond_69
    const/16 v1, 0x35

    goto/16 :goto_6

    :sswitch_68
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_5

    :cond_6a
    const/16 v1, 0x34

    goto/16 :goto_6

    :sswitch_69
    const-string v1, "M04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_5

    :cond_6b
    const/16 v1, 0x33

    goto/16 :goto_6

    :sswitch_6a
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_5

    :cond_6c
    const/16 v1, 0x32

    goto/16 :goto_6

    :sswitch_6b
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_5

    :cond_6d
    const/16 v1, 0x31

    goto/16 :goto_6

    :sswitch_6c
    const-string v1, "b5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_5

    :cond_6e
    const/16 v1, 0x30

    goto/16 :goto_6

    :sswitch_6d
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_5

    :cond_6f
    const/16 v1, 0x2f

    goto/16 :goto_6

    :sswitch_6e
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_5

    :cond_70
    const/16 v1, 0x2e

    goto/16 :goto_6

    :sswitch_6f
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_5

    :cond_71
    const/16 v1, 0x2d

    goto/16 :goto_6

    :sswitch_70
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_5

    :cond_72
    const/16 v1, 0x2c

    goto/16 :goto_6

    :sswitch_71
    const-string v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_5

    :cond_73
    const/16 v1, 0x2b

    goto/16 :goto_6

    :sswitch_72
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_5

    :cond_74
    const/16 v1, 0x2a

    goto/16 :goto_6

    :sswitch_73
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_5

    :cond_75
    const/16 v1, 0x29

    goto/16 :goto_6

    :sswitch_74
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_5

    :cond_76
    const/16 v1, 0x28

    goto/16 :goto_6

    :sswitch_75
    const-string v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_5

    :cond_77
    const/16 v1, 0x27

    goto/16 :goto_6

    :sswitch_76
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_5

    :cond_78
    const/16 v1, 0x26

    goto/16 :goto_6

    :sswitch_77
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_5

    :cond_79
    const/16 v1, 0x25

    goto/16 :goto_6

    :sswitch_78
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_5

    :cond_7a
    const/16 v1, 0x24

    goto/16 :goto_6

    :sswitch_79
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_5

    :cond_7b
    const/16 v1, 0x23

    goto/16 :goto_6

    :sswitch_7a
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_5

    :cond_7c
    const/16 v1, 0x22

    goto/16 :goto_6

    :sswitch_7b
    const-string v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_5

    :cond_7d
    const/16 v1, 0x21

    goto/16 :goto_6

    :sswitch_7c
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_5

    :cond_7e
    const/16 v1, 0x20

    goto/16 :goto_6

    :sswitch_7d
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_5

    :cond_7f
    const/16 v1, 0x1f

    goto/16 :goto_6

    :sswitch_7e
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_5

    :cond_80
    const/16 v1, 0x1e

    goto/16 :goto_6

    :sswitch_7f
    const-string v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_5

    :cond_81
    const/16 v1, 0x1d

    goto/16 :goto_6

    :sswitch_80
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_5

    :cond_82
    move v1, v10

    goto/16 :goto_6

    :sswitch_81
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_5

    :cond_83
    move v1, v11

    goto/16 :goto_6

    :sswitch_82
    const-string v1, "A10-70L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_5

    :cond_84
    move v1, v13

    goto/16 :goto_6

    :sswitch_83
    const-string v1, "A10-70F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_5

    :cond_85
    const/16 v1, 0x19

    goto/16 :goto_6

    :sswitch_84
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_5

    :cond_86
    const/16 v1, 0x18

    goto/16 :goto_6

    :sswitch_85
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_5

    :cond_87
    const/16 v1, 0x17

    goto/16 :goto_6

    :sswitch_86
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_5

    :cond_88
    const/16 v1, 0x16

    goto/16 :goto_6

    :sswitch_87
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_5

    :cond_89
    const/16 v1, 0x15

    goto/16 :goto_6

    :sswitch_88
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_5

    :cond_8a
    const/16 v1, 0x14

    goto/16 :goto_6

    :sswitch_89
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_5

    :cond_8b
    const/16 v1, 0x13

    goto/16 :goto_6

    :sswitch_8a
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_5

    :cond_8c
    const/16 v1, 0x12

    goto/16 :goto_6

    :sswitch_8b
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_5

    :cond_8d
    const/16 v1, 0x11

    goto/16 :goto_6

    :sswitch_8c
    const-string v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_5

    :cond_8e
    const/16 v1, 0x10

    goto/16 :goto_6

    :sswitch_8d
    const-string v1, "pacificrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_5

    :cond_8f
    const/16 v1, 0xf

    goto/16 :goto_6

    :sswitch_8e
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_5

    :cond_90
    const/16 v1, 0xe

    goto/16 :goto_6

    :sswitch_8f
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_5

    :cond_91
    const/16 v1, 0xd

    goto/16 :goto_6

    :sswitch_90
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_5

    :cond_92
    const/16 v1, 0xc

    goto/16 :goto_6

    :sswitch_91
    const-string v1, "RAIJIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_5

    :cond_93
    const/16 v1, 0xb

    goto/16 :goto_6

    :sswitch_92
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_5

    :cond_94
    const/16 v1, 0xa

    goto/16 :goto_6

    :sswitch_93
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_5

    :cond_95
    const/16 v1, 0x9

    goto/16 :goto_6

    :sswitch_94
    const-string v1, "PGN610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_5

    :cond_96
    move v1, v14

    goto/16 :goto_6

    :sswitch_95
    const-string v2, "PGN528"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_5

    :sswitch_96
    const-string v1, "NX573J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto/16 :goto_5

    :cond_97
    move v1, v2

    goto :goto_6

    :sswitch_97
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto/16 :goto_5

    :cond_98
    move v1, v3

    goto :goto_6

    :sswitch_98
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_5

    :cond_99
    move v1, v4

    goto :goto_6

    :sswitch_99
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_5

    :cond_9a
    move v1, v5

    goto :goto_6

    :sswitch_9a
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto/16 :goto_5

    :cond_9b
    move v1, v6

    goto :goto_6

    :sswitch_9b
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_5

    :cond_9c
    move v1, v9

    goto :goto_6

    :sswitch_9c
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_5

    :cond_9d
    move v1, v8

    :cond_9e
    :goto_6
    packed-switch v1, :pswitch_data_2

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "JSN-L21"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_7

    :cond_9f
    :pswitch_1
    return v9

    :cond_a0
    :goto_7
    return v8

    :pswitch_2
    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getCodecMaxInputSize(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 10

    iget v0, p0, Landroidx/media3/common/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    if-ne v2, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v3, "video/dolby-vision"

    iget-object v4, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const-string v6, "video/hevc"

    const/4 v7, 0x2

    const-string v8, "video/avc"

    if-eqz v3, :cond_3

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v3, 0x200

    if-eq p0, v3, :cond_1

    if-eq p0, v5, :cond_1

    if-ne p0, v7, :cond_2

    :cond_1
    move-object v4, v8

    goto :goto_0

    :cond_2
    move-object v4, v6

    :cond_3
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v3, 0x3

    const/4 v9, 0x4

    sparse-switch p0, :sswitch_data_0

    :goto_1
    move v5, v1

    goto :goto_2

    :sswitch_0
    const-string p0, "video/x-vnd.on2.vp9"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x6

    goto :goto_2

    :sswitch_1
    const-string p0, "video/x-vnd.on2.vp8"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x5

    goto :goto_2

    :sswitch_2
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    move v5, v9

    goto :goto_2

    :sswitch_3
    const-string p0, "video/mp4v-es"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    move v5, v3

    goto :goto_2

    :sswitch_4
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    move v5, v7

    goto :goto_2

    :sswitch_5
    const-string p0, "video/av01"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :sswitch_6
    const-string p0, "video/3gpp"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    :cond_a
    :goto_2
    packed-switch v5, :pswitch_data_0

    return v1

    :pswitch_0
    mul-int/2addr v0, v2

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x8

    return v0

    :pswitch_1
    sget-object p0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    const-string v4, "BRAVIA 4K 2015"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "Amazon"

    sget-object v5, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "KFSOWI"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "AFTS"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    iget-boolean p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x10

    add-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x10

    mul-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x10

    mul-int/lit8 v2, v2, 0x10

    mul-int/2addr v2, v3

    div-int/2addr v2, v9

    return v2

    :cond_c
    :goto_3
    return v1

    :pswitch_2
    mul-int/2addr v0, v2

    mul-int/2addr v0, v3

    div-int/2addr v0, v9

    const/high16 p0, 0x200000

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_3
    mul-int/2addr v0, v2

    mul-int/2addr v0, v3

    div-int/2addr v0, v9

    return v0

    :cond_d
    :goto_4
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 3

    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    return-object p0

    :cond_0
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->doesDisplaySupportDolbyVision(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    check-cast p1, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    sget-object p1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    :goto_1
    sget-object p2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    new-instance p2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {p2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-virtual {p2, p0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/util/List;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/util/List;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxInputSize(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Landroidx/media3/common/Format;->maxInputSize:I

    if-eq v1, v0, :cond_1

    iget-object p0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v2

    return v1

    :cond_1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final clearRenderedFirstFrame()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_0
    return-void
.end method

.method public final getCodecOperatingRateV23(F[Landroidx/media3/common/Format;)F
    .locals 5

    array-length p0, p2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v3, p2, v1

    iget v3, v3, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p0, v2, v0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    mul-float v0, v2, p1

    :goto_1
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecVideoRenderer"

    return-object p0
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    const/4 v3, 0x7

    if-eq p1, v3, :cond_8

    const/16 v3, 0xa

    if-eq p1, v3, :cond_7

    const/4 v3, 0x4

    if-eq p1, v3, :cond_6

    const/4 v3, 0x5

    if-eq p1, v3, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/media3/common/util/Size;

    iget p1, p2, Landroidx/media3/common/util/Size;->width:I

    if-eqz p1, :cond_17

    iget p1, p2, Landroidx/media3/common/util/Size;->height:I

    if-eqz p1, :cond_17

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz p0, :cond_17

    iget-object p1, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/util/Size;

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-static {p0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    iput-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->currentSurfaceAndSize:Landroid/util/Pair;

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/List;

    iget-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_3

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto/16 :goto_7

    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->videoEffects:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    :cond_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget p1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    if-ne p1, p0, :cond_5

    goto/16 :goto_7

    :cond_5
    iput p0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    goto/16 :goto_7

    :cond_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz p0, :cond_17

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    goto/16 :goto_7

    :cond_7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq p2, p1, :cond_17

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    goto/16 :goto_7

    :cond_8
    check-cast p2, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    goto/16 :goto_7

    :cond_9
    instance-of p1, p2, Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz p1, :cond_a

    check-cast p2, Landroid/view/Surface;

    goto :goto_0

    :cond_a
    move-object p2, v3

    :goto_0
    if-nez p2, :cond_c

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz p1, :cond_b

    move-object p2, p1

    goto :goto_1

    :cond_b
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p2, p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_c
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    if-eq p1, p2, :cond_15

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p2, Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz p1, :cond_d

    move-object p1, v3

    goto :goto_2

    :cond_d
    move-object p1, p2

    :goto_2
    iget-object v4, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-ne v4, p1, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    iput-object p1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    :goto_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    iget p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_f

    if-eqz p2, :cond_f

    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v2, :cond_f

    invoke-interface {v0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setOutputSurface(Landroid/view/Surface;)V

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_10
    :goto_4
    if-eqz p2, :cond_13

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eq p2, v0, :cond_13

    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    if-eqz p2, :cond_11

    invoke-virtual {v5, p2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    :cond_11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_14

    iget-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    goto :goto_5

    :cond_12
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    goto :goto_6

    :cond_13
    iput-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    :cond_14
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_15
    if-eqz p2, :cond_17

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eq p2, p1, :cond_17

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    if-eqz p1, :cond_16

    invoke-virtual {v5, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    :cond_16
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    if-eqz p1, :cond_17

    iget-object v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object p0, v5, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;

    const/4 v9, 0x1

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    :goto_7
    return-void
.end method

.method public final isEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0
.end method

.method public final isReady()Z
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    iget-wide v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_4

    iget-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eq v5, v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_6

    :cond_5
    iput-wide v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v1

    :cond_6
    iget-wide v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_7

    return v2

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_8

    return v1

    :cond_8
    iput-wide v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v2
.end method

.method public final maybeNotifyDroppedFrames()V
    .locals 10

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v7, v0, v2

    iget v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    iget-object v9, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, v9, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda2;

    const/4 v6, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda2;-><init>(IIJLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_1
    return-void
.end method

.method public final maybeNotifyRenderedFirstFrame()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, v3, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v8, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    :cond_1
    return-void
.end method

.method public final maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 1

    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    :cond_0
    return-void
.end method

.method public final notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    iget-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method public final onCodecError(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDisabled()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 v2, 0x1

    :try_start_0
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    sget-object v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    monitor-exit p0

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v3, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p0, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    monitor-exit p0

    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_1

    new-instance v4, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p0, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-object p0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    throw v1
.end method

.method public final onEnabled(Z)V
    .locals 5

    new-instance v0, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {v0}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    if-eqz v0, :cond_1

    iget v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eq v2, v0, :cond_2

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v3, v2, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_3

    new-instance v4, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    return-void
.end method

.method public final onInputFormatChanged(Lcom/airbnb/lottie/model/MutablePair;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    iget-object v3, v1, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/Format;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v4, :cond_28

    iget-object v5, v1, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v6, v5}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    iput-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget-boolean v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    goto/16 :goto_12

    :cond_0
    iget-object v11, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v11, :cond_1

    iput-object v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    goto/16 :goto_12

    :cond_1
    iget-object v12, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v13, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    const/16 v7, 0x17

    if-ne v6, v5, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz v5, :cond_c

    if-nez v6, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-interface {v5}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    instance-of v9, v8, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    check-cast v8, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    invoke-interface {v5}, Landroidx/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v6}, Landroidx/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    sget v9, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-ge v9, v7, :cond_8

    goto :goto_2

    :cond_8
    sget-object v9, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-interface {v6}, Landroidx/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-interface {v5}, Landroidx/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    iget-boolean v6, v8, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->forceAllowInsecureDecoderComponents:Z

    if-eqz v6, :cond_a

    const/4 v4, 0x0

    goto :goto_0

    :cond_a
    invoke-interface {v5, v4}, Landroidx/media3/exoplayer/drm/DrmSession;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result v4

    :goto_0
    iget-boolean v5, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-nez v5, :cond_b

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    :goto_1
    const/4 v4, 0x0

    goto :goto_3

    :cond_c
    :goto_2
    move v4, v2

    :goto_3
    const/4 v14, 0x3

    if-eqz v4, :cond_e

    iget-boolean v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v4, :cond_d

    iput v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v14, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_4

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :goto_4
    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v5, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x80

    move-object v4, v2

    move-object v6, v13

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    :goto_5
    move-object v7, v2

    goto/16 :goto_12

    :cond_e
    iget-object v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eq v4, v5, :cond_f

    move v15, v2

    goto :goto_6

    :cond_f
    const/4 v15, 0x0

    :goto_6
    if-eqz v15, :cond_11

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v4, v7, :cond_10

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    goto :goto_8

    :cond_11
    :goto_7
    move v4, v2

    :goto_8
    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    invoke-virtual {v12, v13, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->canReuseCodec(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v4

    iget-object v5, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v6, v5, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    iget v9, v3, Landroidx/media3/common/Format;->height:I

    iget v8, v3, Landroidx/media3/common/Format;->width:I

    iget v7, v4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    if-gt v8, v6, :cond_12

    iget v5, v5, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    if-le v9, v5, :cond_13

    :cond_12
    or-int/lit16 v7, v7, 0x100

    :cond_13
    invoke-static {v3, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result v5

    iget-object v6, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v6, v6, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    if-le v5, v6, :cond_14

    or-int/lit8 v5, v7, 0x40

    move/from16 v16, v5

    goto :goto_9

    :cond_14
    move/from16 v16, v7

    :goto_9
    new-instance v7, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v5, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v16, :cond_15

    const/16 v17, 0x0

    goto :goto_a

    :cond_15
    iget v4, v4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    move/from16 v17, v4

    :goto_a
    move-object v4, v7

    move-object v6, v13

    move-object v10, v7

    move-object v7, v3

    move/from16 v18, v8

    move/from16 v8, v17

    move/from16 v19, v9

    move/from16 v9, v16

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    iget v4, v10, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v4, :cond_22

    const/4 v5, 0x2

    if-eq v4, v2, :cond_1c

    if-eq v4, v5, :cond_18

    if-ne v4, v14, :cond_17

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_c

    :cond_16
    iput-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    if-eqz v15, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_f

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_18
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_c

    :cond_19
    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iget v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eq v6, v5, :cond_1b

    if-ne v6, v2, :cond_1a

    iget v6, v13, Landroidx/media3/common/Format;->width:I

    move/from16 v7, v18

    if-ne v7, v6, :cond_1a

    iget v6, v13, Landroidx/media3/common/Format;->height:I

    move/from16 v7, v19

    if-ne v7, v6, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v2, 0x0

    :cond_1b
    :goto_b
    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iput-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    if-eqz v15, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_f

    :cond_1c
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    move-result v6

    if-nez v6, :cond_1d

    :goto_c
    const/16 v2, 0x10

    move v9, v2

    goto :goto_11

    :cond_1d
    iput-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    if-eqz v15, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_f

    :cond_1e
    iget-boolean v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v6, :cond_21

    iput v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iget-boolean v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v6, :cond_20

    iget-boolean v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v6, :cond_1f

    goto :goto_d

    :cond_1f
    iput v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_e

    :cond_20
    :goto_d
    iput v14, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x0

    :cond_21
    :goto_e
    if-nez v2, :cond_24

    :goto_f
    move v9, v5

    goto :goto_11

    :cond_22
    iget-boolean v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v5, :cond_23

    iput v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v14, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_10

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_24
    :goto_10
    const/4 v9, 0x0

    :goto_11
    if-eqz v4, :cond_26

    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-ne v2, v11, :cond_25

    iget v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    if-ne v2, v14, :cond_26

    :cond_25
    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v5, v12, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, v2

    move-object v6, v13

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    goto/16 :goto_5

    :cond_26
    move-object v7, v10

    :goto_12
    iget-object v1, v1, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_27

    new-instance v3, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v0, v1, v7}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    return-object v7

    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v2, 0xfa5

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(ILandroidx/media3/common/Format;Ljava/lang/Exception;Z)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public final onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget p2, p1, Landroidx/media3/common/Format;->width:I

    iget v0, p1, Landroidx/media3/common/Format;->height:I

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "crop-top"

    const-string v5, "crop-bottom"

    const-string v6, "crop-left"

    if-eqz v3, :cond_2

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v0, v6

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v3, p2

    add-int/2addr v3, v1

    move p2, v3

    goto :goto_2

    :cond_4
    const-string v3, "height"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_2
    move v7, v0

    move v0, p2

    move p2, v7

    :goto_3
    iget v3, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    iget v5, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    if-eqz v1, :cond_8

    const/16 v1, 0x5a

    if-eq v5, v1, :cond_7

    const/16 v1, 0x10e

    if-ne v5, v1, :cond_6

    goto :goto_5

    :cond_6
    move v5, v2

    goto :goto_6

    :cond_7
    :goto_5
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v3, v1, v3

    move v5, v2

    move v7, v0

    move v0, p2

    move p2, v7

    goto :goto_6

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    new-instance v1, Landroidx/media3/common/VideoSize;

    invoke-direct {v1, v3, p2, v0, v5}, Landroidx/media3/common/VideoSize;-><init>(FIII)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    iget p1, p1, Landroidx/media3/common/Format;->frameRate:F

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    iget-object p2, p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->currentMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->reset()V

    iget-object p2, p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcher:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->reset()V

    iput-boolean v2, p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->candidateMatcherActive:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->lastFramePresentationTimeNs:J

    iput v2, p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->framesWithoutSyncCount:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 4

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p2, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    iput p1, p2, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    const/4 v0, 0x2

    iput v0, p2, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object p2, p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    monitor-enter p2

    :try_start_0
    iget v0, p2, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    if-lez v0, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object p2, p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-virtual {p2}, Lcom/motorola/camera/saving/XmpData$GDepth;->clear()V

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->clear()V

    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v2, -0x1

    iput-wide v2, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iput-wide v2, p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    if-eqz p3, :cond_4

    iget-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, p1

    :cond_3
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    goto :goto_1

    :cond_4
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final onProcessedOutputBuffer(J)V
    .locals 3

    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    :cond_1
    return-void
.end method

.method public final onReset()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v4, v3, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    iput v2, v3, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    const/4 v2, 0x2

    iput v2, v3, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v2, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-ne v2, v0, :cond_0

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_2
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v3, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-ne v3, v0, :cond_2

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_3
    throw v2
.end method

.method public final onStarted()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v2, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v3, 0xc

    invoke-direct {v2, p0, v3}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->register(Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public final onStopped()V
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v5, v4, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Ljava/lang/Object;

    check-cast v5, Landroid/os/Handler;

    if-eqz v5, :cond_0

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda2;-><init>(IJLandroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    iput v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->unregister()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    return-void
.end method

.method public final processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJZZLandroidx/media3/common/Format;)Z
    .locals 22

    move-object/from16 v6, p0

    move-wide/from16 v0, p1

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v2, p7

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v9

    if-nez v4, :cond_0

    iput-wide v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    :cond_0
    iget-wide v4, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    cmp-long v4, v2, v4

    iget-object v5, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    iget-object v11, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v2, v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    iput-wide v2, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    :cond_1
    iget-object v4, v6, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v12, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    sub-long v12, v2, v12

    const/4 v14, 0x1

    if-eqz p9, :cond_2

    if-nez p10, :cond_2

    invoke-virtual {v6, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    return v14

    :cond_2
    iget v4, v6, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v15, 0x2

    if-ne v4, v15, :cond_3

    move v4, v14

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    iget v10, v6, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    float-to-double v9, v10

    sub-long/2addr v2, v0

    long-to-double v2, v2

    div-double/2addr v2, v9

    double-to-long v2, v2

    if-eqz v4, :cond_4

    sub-long v18, v18, p3

    sub-long v2, v2, v18

    :cond_4
    move-wide v9, v2

    iget-object v2, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v3, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    const-wide/16 v18, -0x7530

    if-ne v2, v3, :cond_7

    cmp-long v0, v9, v18

    if-gez v0, :cond_5

    move v0, v14

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v6, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    invoke-virtual {v6, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v14

    :cond_6
    const/4 v0, 0x0

    return v0

    :cond_7
    invoke-virtual {v6, v0, v1, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldForceRender(JJ)Z

    move-result v2

    const/16 v15, 0x15

    if-eqz v2, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v11, v3

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v0, v15, :cond_8

    invoke-virtual {v6, v7, v8, v11, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_2

    :cond_8
    invoke-virtual {v6, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    :goto_2
    invoke-virtual {v6, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v14

    :cond_9
    if-eqz v4, :cond_1a

    iget-wide v2, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    goto/16 :goto_d

    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    mul-long v9, v9, v20

    add-long/2addr v9, v2

    invoke-virtual {v11, v9, v10}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-long v2, v9, v2

    div-long v3, v2, v20

    iget-wide v14, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v14, v16

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    :goto_3
    const-wide/32 v14, -0x7a120

    cmp-long v5, v3, v14

    if-gez v5, :cond_c

    const/4 v5, 0x1

    goto :goto_4

    :cond_c
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_d

    if-nez p10, :cond_d

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_11

    iget-object v5, v6, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v14, v6, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    sub-long/2addr v0, v14

    invoke-interface {v5, v0, v1}, Landroidx/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    iget-object v1, v6, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    if-eqz v2, :cond_f

    iget v5, v1, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v5, v0

    iput v5, v1, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    iget v0, v1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v5, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr v0, v5

    iput v0, v1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    goto :goto_6

    :cond_f
    iget v5, v1, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    const/4 v11, 0x1

    add-int/2addr v5, v11

    iput v5, v1, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    iget v1, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    invoke-virtual {v6, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_10
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_11

    const/4 v0, 0x0

    return v0

    :cond_11
    cmp-long v0, v3, v18

    if-gez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_13

    if-nez p10, :cond_13

    const/4 v0, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_15

    if-eqz v2, :cond_14

    invoke-virtual {v6, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    const/4 v1, 0x1

    goto :goto_a

    :cond_14
    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v7, v8, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    :goto_a
    invoke-virtual {v6, v3, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v1

    :cond_15
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_17

    const-wide/32 v0, 0xc350

    cmp-long v0, v3, v0

    if-gez v0, :cond_19

    iget-wide v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    cmp-long v0, v9, v0

    if-nez v0, :cond_16

    invoke-virtual {v6, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    move-wide v14, v3

    goto :goto_b

    :cond_16
    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v14, v3

    move-wide v3, v9

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V

    invoke-virtual {v6, v7, v8, v9, v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    :goto_b
    invoke-virtual {v6, v14, v15}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    iput-wide v9, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    const/4 v0, 0x1

    return v0

    :cond_17
    move-wide v14, v3

    const-wide/16 v0, 0x7530

    cmp-long v0, v14, v0

    if-gez v0, :cond_19

    const-wide/16 v0, 0x2af8

    cmp-long v0, v14, v0

    if-lez v0, :cond_18

    const-wide/16 v0, 0x2710

    sub-long v3, v14, v0

    :try_start_0
    div-long v3, v3, v20

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    return v0

    :cond_18
    :goto_c
    move-object/from16 v0, p0

    move-wide v1, v12

    move-wide v3, v9

    move-object/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V

    invoke-virtual {v6, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V

    invoke-virtual {v6, v14, v15}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    const/4 v0, 0x1

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0

    :cond_1a
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public final render(JJ)V
    .locals 11

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v2, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v2, :cond_3

    const-string v2, "bypassRender"

    invoke-static {v2}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassRender(JJ)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v2, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    invoke-static {v4}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_6

    iget-wide v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long v4, v7, v5

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v2

    cmp-long v4, v9, v7

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v0

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long p3, p1, v5

    if-eqz p3, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p3, v2

    cmp-long p1, p3, p1

    if-gez p1, :cond_7

    goto :goto_5

    :cond_7
    move p1, v1

    goto :goto_6

    :cond_8
    :goto_5
    move p1, v0

    :goto_6
    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    goto :goto_7

    :cond_a
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    iget-object v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Landroidx/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    :goto_7
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    monitor-enter p1

    monitor-exit p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catch_0
    move-exception p1

    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_b

    instance-of p4, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p4, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p4

    array-length v2, p4

    if-lez v2, :cond_c

    aget-object p4, p4, v1

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p4

    const-string v2, "android.media.MediaCodec"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    :goto_9
    move p4, v0

    goto :goto_a

    :cond_c
    move p4, v1

    :goto_a
    if-eqz p4, :cond_10

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onCodecError(Ljava/lang/Exception;)V

    if-lt p2, p3, :cond_e

    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_d

    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p2

    goto :goto_b

    :cond_d
    move p2, v1

    :goto_b
    if-eqz p2, :cond_e

    move v1, v0

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_f
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    new-instance p3, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    iget-object p4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-direct {p3, p1, p2, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 p2, 0xfa3

    invoke-virtual {p0, p2, p1, p3, v1}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(ILandroidx/media3/common/Format;Ljava/lang/Exception;Z)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_10
    throw p1

    :cond_11
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    throw v0
.end method

.method public final renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V
    .locals 2

    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, v0

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method public final renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 1

    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IJ)V

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method public final resetCodecStateForFlush()V
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->anchorTimestampUs:J

    iput-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->processedFrames:J

    iput-boolean v2, v0, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->seenInvalidMpegAudioHeader:Z

    :cond_0
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    iput v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method public final setPlaybackSpeed(FF)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public final shouldForceRender(JJ)Z
    .locals 10

    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iget-wide v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    cmp-long p0, p1, v6

    if-ltz p0, :cond_6

    if-nez v1, :cond_7

    if-eqz v0, :cond_6

    const-wide/16 p0, -0x7530

    cmp-long p0, p3, p0

    if-gez p0, :cond_4

    move p0, v2

    goto :goto_3

    :cond_4
    move p0, v3

    :goto_3
    if-eqz p0, :cond_5

    const-wide/32 p0, 0x186a0

    cmp-long p0, v4, p0

    if-lez p0, :cond_5

    move p0, v2

    goto :goto_4

    :cond_5
    move p0, v3

    :goto_4
    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :cond_7
    :goto_5
    return v2
.end method

.method public final shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    sget p1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I

    const-class p1, Landroidx/media3/exoplayer/video/PlaceholderSurface;

    monitor-enter p1

    :try_start_0
    sget-boolean v1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureModeInitialized:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->getSecureMode(Landroid/content/Context;)I

    move-result p0

    sput p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I

    sput-boolean v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureModeInitialized:Z

    :cond_0
    sget p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    monitor-exit p1

    if-eqz p0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    :goto_1
    move v2, v0

    :cond_3
    return v2
.end method

.method public final skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;I)V
    .locals 1

    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method public final supportsFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I
    .locals 10

    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p2, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    invoke-static {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1, p2, v1, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    :cond_3
    const/4 v4, 0x2

    iget v5, p2, Landroidx/media3/common/Format;->cryptoType:I

    if-eqz v5, :cond_5

    if-ne v5, v4, :cond_4

    goto :goto_1

    :cond_4
    move v5, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v2

    :goto_2
    if-nez v5, :cond_6

    invoke-static {v4}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    :cond_6
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v5

    if-nez v5, :cond_8

    move v6, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v7, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v3, v1

    move v5, v2

    move-object v4, v7

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_4
    if-eqz v5, :cond_9

    const/4 v6, 0x4

    goto :goto_5

    :cond_9
    const/4 v6, 0x3

    :goto_5
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x10

    goto :goto_6

    :cond_a
    const/16 v7, 0x8

    :goto_6
    iget-boolean v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    if-eqz v4, :cond_b

    const/16 v4, 0x40

    goto :goto_7

    :cond_b
    move v4, v1

    :goto_7
    if-eqz v3, :cond_c

    const/16 v3, 0x80

    goto :goto_8

    :cond_c
    move v3, v1

    :goto_8
    sget v8, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_d

    const-string v8, "video/dolby-vision"

    iget-object v9, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->doesDisplaySupportDolbyVision(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_d

    const/16 v3, 0x100

    :cond_d
    if-eqz v5, :cond_e

    invoke-static {p0, p1, p2, v0, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v0, 0xa

    invoke-direct {p0, p2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/16 v1, 0x20

    :cond_e
    or-int p0, v6, v7

    or-int/2addr p0, v1

    or-int/2addr p0, v4

    or-int/2addr p0, v3

    return p0
.end method

.method public final updateDroppedBufferCounters(II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr p1, p2

    iget p2, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr p2, p1

    iput p2, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget p1, v0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method

.method public final updateVideoFrameProcessingOffsetCounters(J)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget-wide v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    return-void
.end method
