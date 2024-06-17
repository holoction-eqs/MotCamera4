.class public final synthetic Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "codec.outputFormat"

    iget v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const-string v0, "this$0"

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    if-nez v0, :cond_8

    const-string v2, "mime"

    iget-object v4, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    :try_start_1
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v0, v8, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v7, v5}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v0

    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_4
    invoke-static {v7, v8}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v9

    :cond_0
    move-object v0, v5

    :goto_0
    iput-object v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget-object v7, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v0, v9

    invoke-virtual {v7, v8, v0}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v7, "setupTranscoder: failed to create MediaMuxer"

    invoke-virtual {v3, v7, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    :try_start_5
    iget-object v9, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v9, :cond_7

    iget v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    invoke-virtual {v9, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v7, 0x0

    invoke-virtual {v9, v7, v8, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    invoke-virtual {v9, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v7, "extractor.getTrackFormat(videoTrack)"

    invoke-static {v0, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    iget v8, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    div-int v11, v7, v8

    new-instance v7, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;

    iget v10, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    iget v12, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    new-instance v13, Lkotlin/ranges/LongRange;

    iget-wide v14, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionStart:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    iget-wide v5, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->superSlowMotionEnd:J

    invoke-direct {v13, v14, v15, v5, v6}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    new-instance v14, Lkotlin/ranges/LongRange;

    iget-wide v5, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimStart:J

    move-object/from16 v18, v0

    move-object/from16 v17, v1

    iget-wide v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->trimEnd:J

    invoke-direct {v14, v5, v6, v0, v1}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    iget-object v15, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->decoderCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;

    iget-object v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    move-object v8, v7

    move-object/from16 v16, v0

    invoke-direct/range {v8 .. v16}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;-><init>(Landroid/media/MediaExtractor;IIILkotlin/ranges/LongRange;Lkotlin/ranges/LongRange;Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$decoderCallback$1;Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;)V

    new-instance v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    move-object/from16 v1, v18

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const-string v6, "video/avc"

    if-nez v5, :cond_2

    move-object v5, v6

    :cond_2
    :try_start_7
    invoke-static {v5}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    const-string v8, "createDecoderByType(mime)"

    invoke-static {v5, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_8
    invoke-virtual {v5, v1, v8, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const/4 v8, 0x1

    invoke-direct {v0, v5, v7, v8}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V

    iget-object v5, v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    iput-object v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoDecoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v10

    move-object/from16 v11, v17

    invoke-static {v10, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "height"

    invoke-virtual {v10, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "width"

    invoke-virtual {v12, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    iput v10, v7, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->encoderHeight:I

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "stride"

    invoke-virtual {v5, v11, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v5

    iget v11, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    iget v4, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->slowDownRate:I

    invoke-static {v12, v10, v5, v11, v4}, Lcom/motorola/camera/arcsoft/ArcsoftSuperSlowMotion;->initFrc(IIIII)Z

    move-result v4

    iget-object v5, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    check-cast v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object v5, v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v10, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v5, v10}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-eqz v4, :cond_6

    new-instance v4, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v1

    :goto_2
    :try_start_9
    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-static {v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->configureEncoderOutputFormat(Lcom/motorola/camera/mediacodec/MediaCodecHelper;)Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;

    invoke-direct {v2, v3, v7}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;)V

    invoke-direct {v4, v1, v2, v8}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V

    iput-object v4, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    iget-object v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->start()V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    if-eqz v5, :cond_5

    const/4 v0, 0x3

    iput v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    move v6, v8

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not able to start video encoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "setupVideoEncoder: unable to create encoder"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not able to init lib"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :catch_3
    move-exception v0

    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    move v9, v6

    goto :goto_4

    :catch_4
    move-exception v0

    move v9, v6

    :goto_3
    const-string v1, "setupTranscoder failed"

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    move v6, v9

    :goto_4
    iput v6, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->activeTracks:I

    :cond_8
    return-void

    :goto_5
    invoke-virtual {v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->stop()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
