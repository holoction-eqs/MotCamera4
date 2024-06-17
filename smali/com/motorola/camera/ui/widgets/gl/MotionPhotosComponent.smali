.class public final Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MuxerRunnable$VideoSaveListener;
.implements Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBufferLock:Ljava/lang/Object;

.field public final mCodecCallback:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;

.field public final mEncoderLock:Ljava/lang/Object;

.field public mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mFrameCount:I

.field public mFrameRate:I

.field public final mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

.field public mImageTimeStamp:J

.field public mInputSliceHeight:I

.field public mInputStride:I

.field public volatile mIsEnterSetupState:Z

.field public final mKeyFrameBuffers:Ljava/util/ArrayList;

.field public final mMcfStateAdapter:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

.field public final mMotionPhotosJobs:Ljava/util/Set;

.field public final mMuxerMap:Ljava/util/Map;

.field public final mOutputFormatAvailable:Landroid/os/ConditionVariable;

.field public mPreviousSettingValue:Ljava/lang/Integer;

.field public final mSavedMap:Ljava/util/Map;

.field public final mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final mStopCheckingTSRunnable:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;

.field public final mVideoBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mVideoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

.field public volatile mVideoFormat:Landroid/media/MediaFormat;

.field public final mVideoListeners:Ljava/util/Map;


# direct methods
.method public static -$$Nest$mpruneEncodeBuffers(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;J)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS_DURATIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->findNearestKeyFrame(J)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/mediacodec/BufferChunk;

    if-eqz v2, :cond_3

    if-ne v5, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, v5, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v6, p1, v6

    cmp-long v6, v6, v0

    if-lez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, v5, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_0

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mKeyFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mInputStride:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mInputSliceHeight:I

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mEncoderLock:Ljava/lang/Object;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mBufferLock:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mIsEnterSetupState:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mPreviousSettingValue:Ljava/lang/Integer;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mStopCheckingTSRunnable:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMcfStateAdapter:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 p2, 0x17

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mCodecCallback:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;

    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mOutputFormatAvailable:Landroid/os/ConditionVariable;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mKeyFrameBuffers:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class p2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-direct {p1, p2}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoListeners:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMotionPhotosJobs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addMotionVideoImageData(I)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_JPEG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_VIDEO"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_VIDEO_START_TIMESTAMP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMotionPhotoDataManager:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    iget-object v1, v1, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;->map:Ljava/util/AbstractMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-eqz v1, :cond_2

    iget-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget-wide v4, v4, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setMotionVideoFile(Ljava/io/File;)V

    :cond_2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mMotionPhotoDataManager:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v2, v2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    iget-object v1, v1, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;->map:Ljava/util/AbstractMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ANALYTICS_MOTION_SAVED"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v4, "ANALYTICS_MOTION_VIDDUR"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMotionPhotosJobs:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public final addMotionVideoToMedia(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 3

    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v0, v0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->addMotionVideoImageData(I)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    return-void
.end method

.method public final createEncoder()Landroid/media/MediaCodec;
    .locals 7

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFrameRate:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFrameCount:I

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, v0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v1, v2}, Lcom/motorola/camera/ProfileSelector;->selectProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, v0, Lcom/motorola/camera/PreviewSize;->height:I

    mul-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_0
    iget v2, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v3, v0, Lcom/motorola/camera/PreviewSize;->height:I

    const-string v4, "video/avc"

    invoke-static {v4, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-static {v4}, Lcom/motorola/camera/mediacodec/CodecUtil;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    const-string v5, "bitrate"

    invoke-virtual {v2, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFrameRate:I

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "color-format"

    const/16 v5, 0x15

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "color-range"

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "color-standard"

    const/4 v6, 0x4

    invoke-virtual {v2, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate-mode"

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "profile"

    const/16 v6, 0x8

    invoke-virtual {v2, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "level"

    invoke-static {v3, v4}, Lcom/motorola/camera/mediacodec/CodecUtil;->getProfileLevel(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "stride"

    iget v4, v0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mInputStride:I

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "slice-height"

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mInputSliceHeight:I

    return-object v1
.end method

.method public final findNearestKeyFrame(J)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mKeyFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "MotionPhotosComponent"

    const-string p1, "No keyframe exists"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v0}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-wide p1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-object v1, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/BufferChunk;

    return-object p0

    :cond_1
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/BufferChunk;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/BufferChunk;

    return-object p0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v1, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v1, p1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v4, v4, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr p1, v4

    cmp-long p1, v1, p1

    if-lez p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/BufferChunk;

    return-object p0

    :cond_4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/BufferChunk;

    return-object p0
.end method

.method public final finishEncoding()V
    .locals 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    new-instance p0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to queue EOS signal for encoder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MotionPhotosComponent"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final generateMotionPhoto(I)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->addMotionVideoImageData(I)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MotionPhotosComponent"

    return-object p0
.end method

.method public final motionPhotosNotEnabledForZoomValue(I)Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mCurrentRatio:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    int-to-float v0, p0

    const/high16 v1, 0x44480000    # 800.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    div-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Don\'t trigger active photo capture,zoomValue is %s, jobId is %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MotionPhotosComponent"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onRotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final processFrame(Landroid/media/Image;Z)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->PROCESS_FRAME:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mEncoderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-nez v1, :cond_2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->CHECKING_TIMESTAMP:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mImageTimeStamp:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_4

    const-string p0, "MotionPhotosComponent"

    const-string v1, "Image timestamp is invalid, skipping frame"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v4, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mImageTimeStamp:J

    goto :goto_1

    :cond_5
    const-string p0, "MotionPhotosComponent"

    const-string v1, "Input queue already full, skipping frame"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    :goto_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSettingListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mPreviousSettingValue:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized setupMotionPhotos()V
    .locals 6

    const-string v0, "Unable to create encoder: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mEncoderLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_0

    :try_start_2
    new-instance v2, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->createEncoder()Landroid/media/MediaCodec;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mCodecCallback:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$2;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "MotionPhotosComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-object p0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->PROCESS_FRAME:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_2
    const-string v3, "MotionPhotosComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Left over save map item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMotionPhotosJobs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startEngine()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(I)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMcfStateAdapter:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->setEnable(Z)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMcfStateAdapter:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mIsEnterSetupState:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->stopEngine()V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->setEnable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mIsEnterSetupState:Z

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mIsEnterSetupState:Z

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->setEnable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionPhotoEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->startEngine()V

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const-wide/16 v3, 0x7d0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionPhotoEnabled(Z)Z

    move-result v0

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->PROCESS_FRAME:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v0, p1, Lcom/motorola/camera/CameraApp;->mTrimMemoryLevel:I

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mIsMemPressureExpected:Z

    if-nez p1, :cond_4

    const/16 p1, 0xf

    if-eq v0, p1, :cond_4

    const/16 p1, 0xa

    if-ne v0, p1, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;I)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v5}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_a
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mStopCheckingTSRunnable:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mStopCheckingTSRunnable:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :goto_1
    return-void
.end method

.method public final stopEngine()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mEncoderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->finishEncoding()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mediacodec/MuxerRunnable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/mediacodec/MuxerRunnable;->requestStop()V

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    monitor-exit p0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :try_start_5
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-interface {v0, v1, v2, p0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "MotionPhotosComponent"

    const-string v1, "Unable to gracefully shutdown executor"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0
.end method

.method public final declared-synchronized teardownMotionPhotos()V
    .locals 4

    const-string v0, "Muxer map jobs remaining: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mEncoderLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->finishEncoding()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mImageInputQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoFormat:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mOutputFormatAvailable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoBuffer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mKeyFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MotionPhotosComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMuxerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMotionPhotosJobs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final unloadTextures()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mIsEnterSetupState:Z

    return-void
.end method
