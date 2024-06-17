.class public final Lcom/motorola/camera/mediacodec/MediaCodecEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mTrackLock:Ljava/lang/Object;


# instance fields
.field public mAudioBufferSize:I

.field public mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

.field public mAudioLensSwitchMode:Z

.field public mAudioRecord:Landroid/media/AudioRecord;

.field public mCamcorderProfile:Landroid/media/CamcorderProfile;

.field public mCodecSurface:Landroid/view/Surface;

.field public mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field public mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public final mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final mIsUsingVideoSurface:Z

.field public mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

.field public mMediaMuxer:Landroid/media/MediaMuxer;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mTrackLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iput-boolean v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    return-void
.end method


# virtual methods
.method public final createMediaCodec(Lcom/motorola/camera/PreviewSize;)Landroid/media/MediaCodec;
    .locals 10

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsHelper;->getCodecVideoFps(Landroid/util/Size;Z)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    if-nez v1, :cond_0

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, p1, Lcom/motorola/camera/PreviewSize;->height:I

    mul-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->HEVC:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->HEVC_CODEC_VIDEO_DISABLE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v4

    :goto_2
    if-nez v2, :cond_6

    iget v2, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v5, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/VideoFormat;

    iget-object v8, v7, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-ne v8, v2, :cond_3

    iget-object v8, v7, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-ne v8, v5, :cond_3

    iget-object v8, v7, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v0, :cond_3

    iget-boolean v6, v7, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    move v7, v4

    goto :goto_3

    :cond_4
    move v6, v3

    move v7, v6

    :goto_3
    if-nez v7, :cond_5

    new-instance v7, Landroid/media/MediaCodecList;

    invoke-direct {v7, v4}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v7}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->getVideoCapability([Landroid/media/MediaCodecInfo;)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v7

    if-eqz v7, :cond_5

    int-to-double v8, v0

    invoke-virtual {v7, v2, v5, v8, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v6

    :cond_5
    if-eqz v6, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/motorola/camera/VideoHelper;->getBitrateOfSize(ZLandroid/util/Size;I)I

    move-result v1

    if-eqz v3, :cond_7

    const-string v2, "video/hevc"

    goto :goto_4

    :cond_7
    const-string v2, "video/avc"

    :goto_4
    iget-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-boolean p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz p0, :cond_8

    move-object v6, v5

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    goto :goto_5

    :cond_8
    iget v6, p1, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_5
    if-eqz p0, :cond_9

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p1

    goto :goto_6

    :cond_9
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_6
    invoke-static {v2, v6, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    invoke-static {v2}, Lcom/motorola/camera/mediacodec/CodecUtil;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v5

    const-string v6, "bitrate"

    invoke-virtual {p1, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-eqz p0, :cond_a

    const p0, 0x7f000789

    goto :goto_7

    :cond_a
    const/16 p0, 0x15

    :goto_7
    const-string v0, "color-format"

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "color-range"

    invoke-virtual {p1, p0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "color-standard"

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "i-frame-interval"

    invoke-virtual {p1, p0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "bitrate-mode"

    invoke-virtual {p1, p0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-eqz v3, :cond_b

    move p0, v4

    goto :goto_8

    :cond_b
    const/16 p0, 0x8

    :goto_8
    const-string v0, "profile"

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "level"

    invoke-static {v5, v2}, Lcom/motorola/camera/mediacodec/CodecUtil;->getProfileLevel(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object p0
.end method

.method public final initAudioCodecHelper()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initAudioCodecHelper:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    const-string v3, "audio/mp4a-latm"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "aac-profile"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioSampleRate:I

    const-string v4, "sample-rate"

    invoke-virtual {v1, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioChannels:I

    const-string v4, "channel-count"

    invoke-virtual {v1, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->audioBitRate:I

    const-string v4, "bitrate"

    invoke-virtual {v1, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;

    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;-><init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;Landroid/media/AudioRecord;)V

    invoke-direct {v0, v2, v1}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;)V

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    :cond_0
    return-void
.end method

.method public final initAudioRecord()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    move v3, v1

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v1, 0xc

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    move v5, v1

    iget v0, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-static {v0, v5, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioBufferSize:I

    new-instance v0, Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v4, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    const/4 v6, 0x2

    iget v7, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioBufferSize:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_2
    return-void
.end method

.method public final processForAnalytics(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-direct {v3, v1, v2}, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;-><init>(ILandroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, p1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    const-string v4, "SEQ_ID"

    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "CAPTURE_TRIGGER"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "KEY_CODE"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    iget-object v1, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v4, "SEQID"

    invoke-virtual {v0, v4}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "ANALYTICS_SEQID"

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    new-instance v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v1, v0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>(Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    iget-wide v4, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    sget-object v6, Lcom/motorola/camera/capturedmediadata/RecordingTime;->NANO_TO_MILLI:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v4, v7

    iput-wide v4, v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    iget-wide v4, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v4, v7

    iput-wide v4, v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mEndTime:J

    iget-wide v4, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v4, v6

    iput-wide v4, v1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getMediaRecorderDataForCurrentMode()Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    new-instance v3, Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    iput-object v3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    iput-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    return-void
.end method

.method public final declared-synchronized startEngine()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stop(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->stopEngine(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized stopEngine(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->ERROR:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->ERROR:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1}, Lcom/motorola/camera/utility/Flags;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v1, 0x1

    const/4 v2, 0x4

    const v3, 0x7f120158

    :try_start_2
    iget-boolean v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-nez v4, :cond_2

    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/util/Pair;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v5, Landroidx/core/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :catch_1
    move-exception v4

    goto :goto_1

    :cond_1
    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_3
    const-string v5, "MediaCodecEngine"

    const-string v6, "Failed to notify EOS:%s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v5, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v6, 0xc

    invoke-direct {v5, p0, v6}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    iput-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    :cond_3
    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    iput-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_4
    iget-boolean v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iput-boolean v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    iput-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    if-nez v1, :cond_5

    iget v1, v4, Lcom/motorola/camera/PreviewSize;->width:I

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v1, v4}, Lcom/motorola/camera/ProfileSelector;->selectProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->initAudioRecord()V

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :try_start_6
    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_7
    :goto_3
    :try_start_7
    monitor-exit p0

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    if-eqz v1, :cond_8

    iput-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    :cond_8
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    iput-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    :cond_9
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    if-eqz v1, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setEndTime(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->getVideoDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_4

    :cond_a
    const-wide/16 v6, 0x0

    :goto_4
    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_STOPPED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const-wide/16 v8, 0x3e8

    cmp-long v1, v6, v8

    if-gez v1, :cond_d

    if-nez v0, :cond_b

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v4, 0x7f120539

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    if-nez p1, :cond_c

    goto :goto_5

    :cond_c
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :goto_5
    iput-object v5, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    goto :goto_6

    :cond_d
    invoke-virtual {p0, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->processForAnalytics(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v4, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v5, 0x11

    invoke-direct {v4, p1, v5}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    if-eqz v0, :cond_f

    :try_start_8
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_a

    :catchall_2
    move-exception p1

    :try_start_9
    monitor-exit p0

    throw p1
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_8
    :try_start_a
    const-string v1, "MediaCodecEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaMuxer stop failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    if-nez p1, :cond_e

    goto :goto_9

    :cond_e
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :goto_9
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_f

    :try_start_b
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    goto :goto_7

    :goto_a
    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_f
    monitor-exit p0

    return-void

    :goto_b
    if-eqz v0, :cond_10

    :try_start_c
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v4, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v2, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_10
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
