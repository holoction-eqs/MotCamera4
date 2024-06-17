.class public Lcom/motorola/camera/cinemagraph/CinemagraphEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;
    }
.end annotation


# static fields
.field private static final ALIGN_BEHAVIOR:I = 0x1

.field private static final BITRATE_QUALITY_FACTOR:I = 0x3

.field private static final BLUR_FILTER_SIZE:I = 0x0

.field private static final BOUNCE_LOOP:I = 0x1

.field public static final CINEMAGRAPH_MAX_IMAGES:I

.field public static final CINEMAGRAPH_PREROTATION_ANGLE:F = 90.0f

.field private static final COLOR_CORRECTION:I = 0x0

.field private static final DEGREE_360:I = 0x168

.field private static final DEGREE_90:I = 0x5a

.field private static final DIV_NUM:I = 0x10

.field public static final FRAME_COUNT_EXTRA:Ljava/lang/String; = "com.motorola.cinemagraph.intent.frameCount"

.field public static final HEIGHT_EXTRA:Ljava/lang/String; = "com.motorola.cinemagraph.intent.height"

.field public static final INTERVAL_EXTRA:Ljava/lang/String; = "com.motorola.cinemagraph.intent.interval"

.field public static final INVALID_IMAGE_COUNT:I = -0x1

.field private static final MARGIN:I = 0x5

.field private static final MASK_JUDGMENT:I = 0x28

.field public static final MORPHO_ERROR_STATE:I = -0x7ffffffe

.field private static final MORPHO_IMAGE_TYPE_RAW_MEMORY:I = 0x1

.field public static final MORPHO_OK:I = 0x0

.field private static final ONE_SECOND_IN_MILLIS:I = 0x3e8

.field private static final REGULAR_LOOP:I = 0x0

.field private static final SAVE_RAW_IMAGES:Z = true

.field private static final SMALL_BLOCK_EXCLUSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CinemagraphEngine"

.field public static final WIDTH_EXTRA:Ljava/lang/String; = "com.motorola.cinemagraph.intent.width"

.field private static sCinemaEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;


# instance fields
.field private mFrameCount:I

.field private mInputCallback:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$InputCallback;

.field private mInterval:I

.field private mMask:Landroid/graphics/Bitmap;

.field private mNativeObject:J

.field private mOrientation:I

.field private mRotateAngle:I

.field private mSaveName:Lcom/motorola/camera/saving/FileName;

.field private mSize:Landroid/util/Size;

.field private mStartTime:J


# direct methods
.method public static synthetic $r8$lambda$WUbzSknC2dRv62j2YmCUhW_SMqs(Lcom/motorola/camera/cinemagraph/CinemagraphEngine;Ljava/io/File;[ILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->lambda$createFinalCinemagraph$0(Ljava/io/File;[ILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDebugPrefix(Lcom/motorola/camera/cinemagraph/CinemagraphEngine;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getDebugPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetYUV420BufferSize(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getYUV420BufferSize(II)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->CINEMAGRAPH_MAX_IMAGES:I

    :try_start_0
    const-string v0, "mot-cinemagraph-engine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->TAG:Ljava/lang/String;

    const-string v2, "error loading mot-cinemagraph-engine.so"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I

    return-void
.end method

.method private native addImage(JI[BI)I
.end method

.method private native addImages(JII)I
.end method

.method private native create(JIIIIILjava/lang/String;)I
.end method

.method private native createNativeObject()J
.end method

.method private native createOneShot(JLandroid/graphics/Bitmap;II)I
.end method

.method private native createOneShotYUV(JLjava/nio/ByteBuffer;IILjava/lang/String;)I
.end method

.method private createVideo(Landroid/os/ParcelFileDescriptor;IIZLcom/motorola/camera/cinemagraph/CinemagraphEngine$CinemagraphVideoCallback;)Z
    .locals 14

    move-object v0, p0

    invoke-direct {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getImageCount()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I

    :goto_0
    move v5, v1

    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mInterval:I

    mul-int v2, v5, v1

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_1

    move v11, v5

    goto :goto_1

    :cond_1
    div-int/2addr v3, v1

    move v11, v3

    :goto_1
    mul-int v1, p2, p3

    mul-int/lit8 v10, v1, 0x3

    new-instance v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mOrientation:I

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v9, v1, 0x168

    move-object v6, v13

    move/from16 v7, p2

    move/from16 v8, p3

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;-><init>(IIIIILandroid/os/ParcelFileDescriptor;)V

    new-instance v8, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;

    move-object v1, v8

    move-object v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphEngine;IIIZLcom/motorola/camera/cinemagraph/CinemagraphEngine$CinemagraphVideoCallback;)V

    const-string v1, "CinemagraphVideoEncoder"

    const-string v0, "no codec found video/avc and "

    const/4 v2, 0x0

    iput v2, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameIndex:I

    iput-object v8, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mListener:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    :goto_2
    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEventHandler:Landroid/os/Handler;

    const/16 v3, 0x1f

    :try_start_0
    invoke-static {v3}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    iget v5, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mWidth:I

    iget v6, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mHeight:I

    if-eqz v3, :cond_4

    add-int/lit8 v7, v5, 0xf

    and-int/lit8 v7, v7, -0x10

    add-int/lit8 v8, v6, 0x7

    and-int/lit8 v8, v8, -0x8

    goto :goto_4

    :cond_4
    move v7, v5

    move v8, v6

    :goto_4
    :try_start_1
    const-string v9, "video/avc"

    invoke-static {v9, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->getCodec(Landroid/media/MediaFormat;)Landroid/media/MediaCodecInfo;

    move-result-object v10

    if-nez v10, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "X"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v13, v9, v10}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->configureMediaFormat(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo;)V

    if-eqz v3, :cond_6

    invoke-static {v9, v5, v6, v7, v8}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->undoMediaFormatSizeHack(Landroid/media/MediaFormat;IIII)V

    :cond_6
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v3, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mOutputFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    const-string v7, "stride"

    invoke-virtual {v3, v7, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    iput v3, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mInputStride:I

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    const-string v5, "slice-height"

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    iput v3, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mInputSliceHeight:I

    new-instance v3, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    iget-object v5, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mCodecCallback:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;

    invoke-direct {v3, v0, v5}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;)V

    iput-object v3, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v3}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    const/4 v0, -0x1

    iput v0, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mTrackIndex:I

    iput-boolean v2, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxerStarted:Z

    iget-object v0, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mOrientation:I

    invoke-virtual {v0, v3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget-object v3, v13, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v0, v6

    invoke-virtual {v3, v5, v0}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    move v2, v4

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v3, "Unable to initialize video encoder"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return v2
.end method

.method private native deleteNativeObject(J)V
.end method

.method private native finalize(J)I
.end method

.method private native freeRawImageBuffer(J)I
.end method

.method private declared-synchronized getDebugPrefix()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSaveName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getNameNoExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cinemagraph"

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/motorola/camera/storage/StorageUtils;->ensureDirectoryOrNull(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getImageCount()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getImageCount(J)I

    move-result p0

    return p0
.end method

.method private native getImageCount(J)I
.end method

.method private native getInputImage(JILandroid/graphics/Bitmap;I)I
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/cinemagraph/CinemagraphEngine;
    .locals 2

    const-class v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->sCinemaEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-direct {v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;-><init>()V

    sput-object v1, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->sCinemaEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    :cond_0
    sget-object v1, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->sCinemaEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native getMask(J[B)I
.end method

.method private native getOutputImageSize(J[I)I
.end method

.method private declared-synchronized getRawImageSize()I
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    monitor-exit p0

    const p0, -0x7ffffffe

    return p0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getRawImageSize(J)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native getRawImageSize(J)I
.end method

.method private static getYUV420BufferSize(II)I
    .locals 0

    mul-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private native initialize(JIIIIIIIII)I
.end method

.method private lambda$createFinalCinemagraph$0(Ljava/io/File;[ILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;Z)V
    .locals 10

    if-eqz p4, :cond_0

    iget-wide v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mStartTime:J

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSaveName:Lcom/motorola/camera/saving/FileName;

    const/4 p4, 0x0

    aget v1, p2, p4

    const/4 p4, 0x1

    aget v2, p2, p4

    iget v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mRotateAngle:I

    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance p2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;

    move-object v0, p2

    move-object v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;-><init>(IIIJLcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;Lcom/motorola/camera/saving/FileName;Ljava/io/File;Z)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-interface {p3}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;->onProcessingFailed()V

    :goto_0
    return-void
.end method

.method private native prepareRawImageBuffer(JIII)I
.end method

.method private native restart(J)I
.end method

.method private rotateNV21([B[BIII)V
    .locals 15

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    const/16 v3, 0x10e

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x5a

    if-eq v2, v6, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v7, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v5

    :goto_1
    const/16 v8, 0xb4

    if-eq v2, v6, :cond_2

    if-ne v2, v8, :cond_3

    :cond_2
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    if-eq v2, v3, :cond_5

    if-ne v2, v8, :cond_4

    goto :goto_3

    :cond_4
    move v2, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v2, v5

    :goto_4
    move v3, v4

    :goto_5
    if-ge v3, v0, :cond_a

    move v8, v4

    :goto_6
    if-ge v8, v1, :cond_9

    if-eqz v7, :cond_6

    mul-int v9, v0, v8

    div-int/2addr v9, v1

    mul-int v10, v1, v3

    div-int/2addr v10, v0

    goto :goto_7

    :cond_6
    move v9, v3

    move v10, v8

    :goto_7
    if-eqz v6, :cond_7

    sub-int v10, v1, v10

    sub-int/2addr v10, v5

    :cond_7
    if-eqz v2, :cond_8

    sub-int v9, v0, v9

    sub-int/2addr v9, v5

    :cond_8
    mul-int v11, v0, v8

    add-int/2addr v11, v3

    mul-int v12, v0, v10

    add-int/2addr v12, v9

    aget-byte v12, p1, v12

    aput-byte v12, p2, v11

    mul-int v11, v0, v1

    shr-int/2addr v9, v5

    shr-int/2addr v10, v5

    shr-int/lit8 v12, v3, 0x1

    shr-int/lit8 v13, v8, 0x1

    shr-int/lit8 v14, v0, 0x1

    mul-int/2addr v10, v14

    add-int/2addr v10, v9

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v11

    mul-int/2addr v14, v13

    add-int/2addr v14, v12

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v11

    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v11, v14, 0x1

    aget-byte v10, p1, v10

    aput-byte v10, p2, v14

    aget-byte v9, p1, v9

    aput-byte v9, p2, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method private saveMask()V
    .locals 7

    invoke-direct {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getDebugPrefix()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->TAG:Ljava/lang/String;

    const-string v0, "Unable to save mask, debug prefix is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mMask:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "_mask.argb8888"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_4

    move v5, v1

    :goto_1
    iget-object v6, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    goto :goto_2

    :cond_2
    const/high16 v6, -0x1000000

    :goto_2
    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v2, v5, v4, v6}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->TAG:Ljava/lang/String;

    const-string v4, "Unable to write mask"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    new-instance v1, Ljava/io/File;

    const-string v3, "_mask.png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_2
    move-exception v1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_a
    sget-object v1, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->TAG:Ljava/lang/String;

    const-string v3, "Unable to write png mask"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mMask:Landroid/graphics/Bitmap;

    return-void

    :goto_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    throw p0

    :cond_5
    :goto_8
    return-void
.end method

.method private native saveRawImages(JLjava/lang/String;)I
.end method

.method private native setBaseData(J[B)I
.end method

.method private native setBaseIndex(JI)I
.end method

.method private native setMaskBitmap(JLandroid/graphics/Bitmap;)I
.end method

.method private native setOutputRotation(JI)I
.end method


# virtual methods
.method public declared-synchronized addImage(Landroid/media/Image;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I

    sget v1, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->CINEMAGRAPH_MAX_IMAGES:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-static {p1}, Lcom/motorola/camera/utility/AndroidImageUtils;->trimYuvBuffer(Landroid/media/Image;)[B

    move-result-object v3

    iget v7, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mRotateAngle:I

    if-lez v7, :cond_2

    array-length p1, v3

    new-array p1, p1, [B

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->rotateNV21([B[BIII)V

    move-object v6, p1

    goto :goto_0

    :cond_2
    move-object v6, v3

    :goto_0
    iget p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I

    if-nez p1, :cond_3

    iget-wide v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    invoke-direct {p0, v2, v3, v6}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setBaseData(J[B)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mStartTime:J

    new-instance p1, Lcom/motorola/camera/saving/FileName;

    sget-object v0, Lcom/motorola/camera/ShotType;->CINEMA_GRAPH:Lcom/motorola/camera/ShotType;

    invoke-direct {p1, v0, v2, v3}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSaveName:Lcom/motorola/camera/saving/FileName;

    :cond_3
    iget-wide v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    iget v5, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I

    add-int/lit8 p1, v5, 0x1

    iput p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->addImage(JI[BI)I

    iget p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mInputCallback:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$InputCallback;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    iget-object p1, p1, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;

    sget v0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAST_FRAME_ADDED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addImages(II)V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-lt p1, p2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->addImages(JII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized buildMaskIntent()Landroid/content/Intent;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mStartTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mInterval:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.motorola.cinemagraph.intent.width"

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.cinemagraph.intent.height"

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.cinemagraph.intent.frameCount"

    iget v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.cinemagraph.intent.interval"

    iget v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createFinalCinemagraph(Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;ZZ)V
    .locals 23

    move-object/from16 v10, p0

    const-string v0, "Create cinemagraph failed with error "

    monitor-enter p0

    :try_start_0
    iget-wide v1, v10, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v11, 0x0

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget v3, v10, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mOrientation:I

    const/16 v4, 0x10e

    if-eqz v3, :cond_5

    const/16 v5, 0xb4

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {v10, v1, v2, v11}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setOutputRotation(JI)I

    goto :goto_1

    :cond_3
    invoke-direct {v10, v1, v2, v6}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setOutputRotation(JI)I

    goto :goto_1

    :cond_4
    invoke-direct {v10, v1, v2, v5}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setOutputRotation(JI)I

    goto :goto_1

    :cond_5
    invoke-direct {v10, v1, v2, v4}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setOutputRotation(JI)I

    :goto_1
    const/4 v1, 0x2

    new-array v12, v1, [I

    iget-wide v1, v10, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    invoke-direct {v10, v1, v2, v12}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getOutputImageSize(J[I)I

    if-eqz p3, :cond_6

    iget-object v1, v10, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSaveName:Lcom/motorola/camera/saving/FileName;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    iget-object v1, v10, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSaveName:Lcom/motorola/camera/saving/FileName;

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object v15

    const/high16 v1, 0x20000000

    invoke-static {v15, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_c

    :try_start_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->saveMask()V

    :cond_7
    const/4 v13, 0x1

    if-eqz p3, :cond_8

    new-instance v6, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;

    move-object/from16 v14, p1

    invoke-direct {v6, v10, v15, v12, v14}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphEngine;Ljava/io/File;[ILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;)V

    aget v3, v12, v11

    aget v4, v12, v13

    move-object/from16 v1, p0

    move/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->createVideo(Landroid/os/ParcelFileDescriptor;IIZLcom/motorola/camera/cinemagraph/CinemagraphEngine$CinemagraphVideoCallback;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v15}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    invoke-interface/range {p1 .. p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;->onProcessingFailed()V

    goto :goto_3

    :cond_8
    move-object/from16 v14, p1

    iget-wide v3, v10, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    iget v5, v10, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mInterval:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v8

    if-eqz v1, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getDebugPrefix()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :goto_2
    move-object v9, v1

    move-object/from16 v1, p0

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->create(JIIIIILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    iget-wide v0, v10, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mStartTime:J

    const/16 v22, 0x0

    iget-object v2, v10, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSaveName:Lcom/motorola/camera/saving/FileName;

    aget v3, v12, v11

    aget v4, v12, v13

    iget v5, v10, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mRotateAngle:I

    sget-object v6, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v7, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;

    move-object v13, v7

    move v14, v3

    move-object v3, v15

    move v15, v4

    move/from16 v16, v5

    move-wide/from16 v17, v0

    move-object/from16 v19, p1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v13 .. v22}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda1;-><init>(IIIJLcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;Lcom/motorola/camera/saving/FileName;Ljava/io/File;Z)V

    invoke-virtual {v6, v7}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    :goto_3
    monitor-exit p0

    return-void

    :cond_b
    move-object v3, v15

    :try_start_4
    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    new-instance v2, Lcom/motorola/camera/cinemagraph/CinemagraphException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    move-object v3, v15

    :try_start_5
    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphException;

    const-string v1, "Unable to open file descriptor for output"

    invoke-direct {v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception v0

    :try_start_6
    sget-object v1, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->TAG:Ljava/lang/String;

    const-string v2, "Unable to open cinemagraph output file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphException;

    const-string v1, "Unable to open cinemagraph output file"

    invoke-direct {v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createSingleFrame(Landroid/graphics/Bitmap;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->createOneShot(JLandroid/graphics/Bitmap;II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSingleFrameYUV(Ljava/nio/ByteBuffer;ILjava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->createOneShotYUV(JLjava/nio/ByteBuffer;IILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized finalizeEngine()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalize(J)I

    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->freeRawImageBuffer(J)I

    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->deleteNativeObject(J)V

    iput-wide v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mInputCallback:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$InputCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInputImage(ILandroid/graphics/Bitmap;Z)V
    .locals 6

    .line 1
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    move v5, p3

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInputImage(JILandroid/graphics/Bitmap;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMask([B)V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    array-length v0, p1

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getMask(J[B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initializeEngine(Landroid/util/Size;)V
    .locals 13

    const-string v0, "Initialization failed with error "

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I

    iget-wide v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->freeRawImageBuffer(J)I

    iget-wide v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalize(J)I

    iget-wide v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->deleteNativeObject(J)V

    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->createNativeObject()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    sget v7, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->CINEMAGRAPH_MAX_IMAGES:I

    move-object v1, p0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->prepareRawImageBuffer(JIII)I

    iget-wide v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/16 v10, 0x10

    const/4 v11, 0x1

    const/16 v12, 0x28

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->initialize(JIIIIIIIII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Lcom/motorola/camera/cinemagraph/CinemagraphException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restartEngine()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->restart(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveDebugFrames()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "Dump"

    invoke-static {v0, v1}, Lcom/motorola/camera/storage/StorageUtils;->ensureDirectoryOrNull(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getRawImageSize()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getDebugPrefix()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->saveRawImages(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveRawImages(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->saveRawImages(JLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBaseIndex(I)V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mFrameCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt p1, v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setBaseIndex(JI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setInputCallback(Lcom/motorola/camera/cinemagraph/CinemagraphEngine$InputCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mInputCallback:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$InputCallback;

    return-void
.end method

.method public declared-synchronized setMask(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v1, p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setMaskBitmap(JLandroid/graphics/Bitmap;)I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mMask:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRotation(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mOrientation:I

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x5a

    iput p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->mRotateAngle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
