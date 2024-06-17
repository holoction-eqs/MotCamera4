.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public activeTracks:I

.field public baseFrameRate:I

.field public final context:Landroid/content/Context;

.field public final decoderCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

.field public final eventHandler:Landroid/os/Handler;

.field public final handlerThread:Landroid/os/HandlerThread;

.field public mediaExtractor:Landroid/media/MediaExtractor;

.field public mediaMuxer:Landroid/media/MediaMuxer;

.field public orientationHint:I

.field public final processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

.field public final slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

.field public final superSlowMotionEnd:J

.field public final superSlowMotionStart:J

.field public tempFile:Ljava/io/File;

.field public tempFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public transcodeStatus:I

.field public final trimEnd:J

.field public final trimStart:J

.field public videoDecoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

.field public videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

.field public videoTrack:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;JJJJLcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
    .locals 1

    const-string v0, "slowMotionData"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    iput-wide p3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimStart:J

    iput-wide p5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimEnd:J

    iput-wide p7, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionStart:J

    iput-wide p9, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionEnd:J

    iput-object p11, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    new-instance p1, Landroid/os/HandlerThread;

    sget-object p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->handlerThread:Landroid/os/HandlerThread;

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;)V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->decoderCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

    return-void
.end method

.method public static configureEncoderOutputFormat(Lcom/motorola/camera/mediacodec/MediaCodecHelper;)Landroid/media/MediaFormat;
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    const-string v0, "codec.outputFormat"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    const-string v1, "video/avc"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bitrate"

    const v2, 0x2625a00

    invoke-virtual {p0, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate-mode"

    invoke-virtual {p0, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/motorola/camera/mediacodec/CodecUtil;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/motorola/camera/mediacodec/CodecUtil;->getProfileLevel(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v0

    const-string v1, "level"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "slice-height"

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "max-bframes"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p0
.end method


# virtual methods
.method public final abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    const-string p2, "abortProcess: "

    invoke-static {p2, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFile:Ljava/io/File;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    iput v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->onProcessingError()V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoDecoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    :cond_1
    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoDecoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    :cond_3
    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    :cond_4
    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->deinitFrc()V

    return-void
.end method
