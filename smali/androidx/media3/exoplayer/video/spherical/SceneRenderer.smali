.class public final Landroidx/media3/exoplayer/video/spherical/SceneRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;
.implements Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;


# instance fields
.field public volatile defaultStereoMode:I

.field public final frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final frameRotationQueue:Lcom/motorola/camera/JsonConfig$CameraMapping;

.field public lastProjectionData:[B

.field public lastStereoMode:I

.field public final projectionQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

.field public final projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

.field public final resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final rotationMatrix:[F

.field public final sampleTimestampQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

.field public surfaceTexture:Landroid/graphics/SurfaceTexture;

.field public final tempMatrix:[F

.field public textureId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    new-instance v0, Lcom/motorola/camera/JsonConfig$CameraMapping;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/motorola/camera/JsonConfig$CameraMapping;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/motorola/camera/JsonConfig$CameraMapping;

    new-instance v0, Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-direct {v0}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    new-instance v0, Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-direct {v0}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->defaultStereoMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    return-void
.end method


# virtual methods
.method public final init()Landroid/graphics/SurfaceTexture;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    :try_start_0
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->init()V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "No current context"

    invoke-static {v2, v0}, Landroidx/media3/common/util/GlUtil;->checkGlException(Ljava/lang/String;Z)V

    new-array v0, v1, [I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    aget v0, v0, v2

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroidx/media3/common/util/GlUtil;->bindTexture(II)V

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->textureId:I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SceneRenderer"

    const-string v2, "Failed to initialize the renderer"

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->textureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Landroidx/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/video/spherical/SceneRenderer;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public final onCameraMotion(J[F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/motorola/camera/JsonConfig$CameraMapping;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/saving/XmpData$GDepth;->add(JLjava/lang/Object;)V

    return-void
.end method

.method public final onCameraMotionReset()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/XmpData$GDepth;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/motorola/camera/JsonConfig$CameraMapping;

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/XmpData$GDepth;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 32

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    iget-object v4, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Lcom/motorola/camera/saving/XmpData$GDepth;->add(JLjava/lang/Object;)V

    iget-object v4, v3, Landroidx/media3/common/Format;->projectionData:[B

    iget v3, v3, Landroidx/media3/common/Format;->stereoMode:I

    iget-object v5, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    iget v6, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    iput-object v4, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget v3, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->defaultStereoMode:I

    :cond_0
    iput v3, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    if-ne v6, v3, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_e

    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_b

    iget v8, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    new-instance v9, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v9, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {v9, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {v9, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const v10, 0x70726f6a

    if-ne v3, v10, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    if-eqz v3, :cond_6

    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v3, v9, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v10, v9, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :goto_1
    if-ge v3, v10, :cond_7

    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    add-int/2addr v11, v3

    if-le v11, v3, :cond_7

    if-le v11, v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const v12, 0x79746d70

    if-eq v3, v12, :cond_5

    const v12, 0x6d736870

    if-ne v3, v12, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move v3, v11

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v9, v11}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    invoke-static {v9}, Lcom/adobe/xmp/XMPUtils;->parseMshp(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_4

    :cond_6
    invoke-static {v9}, Lcom/adobe/xmp/XMPUtils;->parseMshp(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :cond_7
    :goto_3
    move-object v3, v7

    :goto_4
    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v9, v6, :cond_a

    if-eq v9, v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance v7, Landroidx/media3/exoplayer/video/spherical/Projection;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-direct {v7, v9, v3, v8}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    goto :goto_5

    :cond_a
    new-instance v7, Landroidx/media3/exoplayer/video/spherical/Projection;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    invoke-direct {v7, v3, v3, v8}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    :cond_b
    :goto_5
    if-eqz v7, :cond_c

    invoke-static {v7}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->isSupported(Landroidx/media3/exoplayer/video/spherical/Projection;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto/16 :goto_d

    :cond_c
    iget v3, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    const/high16 v7, 0x43340000    # 180.0f

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x43b40000    # 360.0f

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/16 v9, 0x24

    int-to-float v10, v9

    div-float v10, v7, v10

    const/16 v11, 0x48

    int-to-float v12, v11

    div-float v12, v8, v12

    const/16 v13, 0x3e70

    new-array v13, v13, [F

    const/16 v14, 0x29a0

    new-array v14, v14, [F

    move v15, v5

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_6
    if-ge v15, v9, :cond_13

    int-to-float v9, v15

    mul-float/2addr v9, v10

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v7, v18

    sub-float v9, v9, v19

    add-int/lit8 v5, v15, 0x1

    int-to-float v6, v5

    mul-float/2addr v6, v10

    sub-float v6, v6, v19

    const/4 v11, 0x0

    :goto_7
    const/16 v4, 0x49

    if-ge v11, v4, :cond_12

    move/from16 v20, v5

    const/4 v4, 0x0

    const/4 v5, 0x2

    :goto_8
    if-ge v4, v5, :cond_11

    if-nez v4, :cond_d

    move/from16 v21, v6

    move v5, v9

    goto :goto_9

    :cond_d
    move v5, v6

    move/from16 v21, v5

    :goto_9
    int-to-float v6, v11

    mul-float/2addr v6, v12

    const v22, 0x40490fdb    # (float)Math.PI

    add-float v22, v6, v22

    div-float v23, v8, v18

    move/from16 v24, v9

    sub-float v9, v22, v23

    add-int/lit8 v22, v16, 0x1

    move/from16 v23, v12

    const/high16 v12, 0x42480000    # 50.0f

    float-to-double v1, v12

    move/from16 v25, v11

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v1

    move/from16 v28, v10

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    move v5, v3

    move/from16 v31, v4

    mul-double v3, v29, v26

    double-to-float v3, v3

    neg-float v3, v3

    aput v3, v13, v16

    add-int/lit8 v3, v22, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    move/from16 v29, v5

    mul-double v4, v26, v1

    double-to-float v4, v4

    aput v4, v13, v22

    add-int/lit8 v4, v3, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v11

    double-to-float v1, v1

    aput v1, v13, v3

    add-int/lit8 v1, v17, 0x1

    div-float/2addr v6, v8

    aput v6, v14, v17

    add-int/lit8 v2, v1, 0x1

    add-int v3, v15, v31

    int-to-float v3, v3

    mul-float v3, v3, v28

    div-float/2addr v3, v7

    aput v3, v14, v1

    if-nez v25, :cond_f

    if-eqz v31, :cond_e

    goto :goto_a

    :cond_e
    move/from16 v1, v25

    move/from16 v5, v31

    const/16 v3, 0x48

    goto :goto_b

    :cond_f
    :goto_a
    move/from16 v1, v25

    const/16 v3, 0x48

    move/from16 v5, v31

    if-ne v1, v3, :cond_10

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    :goto_b
    add-int/lit8 v6, v4, -0x3

    const/4 v9, 0x3

    invoke-static {v13, v6, v13, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v6, v2, -0x2

    const/4 v9, 0x2

    invoke-static {v14, v6, v14, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_c

    :cond_10
    const/4 v9, 0x2

    :goto_c
    move/from16 v17, v2

    move/from16 v16, v4

    add-int/lit8 v4, v5, 0x1

    move v11, v1

    move v5, v9

    move/from16 v6, v21

    move/from16 v12, v23

    move/from16 v9, v24

    move/from16 v10, v28

    move/from16 v3, v29

    move-wide/from16 v1, p3

    goto/16 :goto_8

    :cond_11
    move/from16 v29, v3

    move/from16 v21, v6

    move/from16 v24, v9

    move/from16 v28, v10

    move v1, v11

    move/from16 v23, v12

    const/16 v3, 0x48

    move v9, v5

    add-int/lit8 v11, v1, 0x1

    move-wide/from16 v1, p3

    move/from16 v5, v20

    move/from16 v9, v24

    move/from16 v3, v29

    goto/16 :goto_7

    :cond_12
    move/from16 v29, v3

    move/from16 v20, v5

    move-wide/from16 v1, p3

    move/from16 v15, v20

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v9, 0x24

    const/16 v11, 0x48

    goto/16 :goto_6

    :cond_13
    move/from16 v29, v3

    new-instance v1, Lcom/motorola/camera/saving/XmpData$GDepth;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v13, v14, v2, v3}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>([F[FII)V

    new-instance v7, Landroidx/media3/exoplayer/video/spherical/Projection;

    new-instance v2, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    filled-new-array {v1}, [Lcom/motorola/camera/saving/XmpData$GDepth;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;-><init>([Lcom/motorola/camera/saving/XmpData$GDepth;)V

    move/from16 v1, v29

    invoke-direct {v7, v2, v2, v1}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    :goto_d
    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v7}, Lcom/motorola/camera/saving/XmpData$GDepth;->add(JLjava/lang/Object;)V

    :goto_e
    return-void
.end method
