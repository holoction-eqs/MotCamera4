.class public final Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJpegReprocRequest(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ILcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfMetadata;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;-><init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;ILcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/mcf/McfMetadata;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostView(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/McfAuxFrameData;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    invoke-direct {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;-><init>(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    monitor-enter v3

    :try_start_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v4, v6, v7}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v6

    move-object/from16 v7, p2

    invoke-virtual {v5, v7, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setYuvData(Lcom/motorola/camera/mcf/McfAuxFrameData;II)V

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    iput-wide v4, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mTimestamp:J

    const/4 v1, 0x2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "DOCUMENT_POINTS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x3

    new-array v4, v4, [I

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getLuma()[B

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getChroma()[B

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getStride()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getHeight()I

    move-result v12

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;

    invoke-direct {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v13

    const/16 v15, 0x5a

    const/16 v16, 0x0

    move-object v14, v4

    invoke-static/range {v9 .. v16}, Lcom/motorola/camera/mcf/DocUtil;->cropNV21([B[BII[I[IIZ)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    new-instance v2, Landroid/graphics/Point;

    const/4 v5, 0x1

    aget v5, v4, v5

    aget v4, v4, v1

    invoke-direct {v2, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    :goto_1
    iput-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedSize:Landroid/graphics/Point;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v3

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;I)V

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final onQueueEmpty()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
