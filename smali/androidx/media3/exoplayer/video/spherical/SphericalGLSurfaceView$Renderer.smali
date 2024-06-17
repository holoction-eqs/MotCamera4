.class public final Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;


# instance fields
.field public final deviceOrientationMatrix:[F

.field public deviceRoll:F

.field public final projectionMatrix:[F

.field public final scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

.field public final tempMatrix:[F

.field public final synthetic this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field public touchPitch:F

.field public final touchPitchMatrix:[F

.field public final touchYawMatrix:[F

.field public final viewMatrix:[F

.field public final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroidx/media3/exoplayer/video/spherical/SceneRenderer;)V
    .locals 4

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    new-array v0, p1, [F

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    new-array v1, p1, [F

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    new-array v2, p1, [F

    iput-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    new-array v3, p1, [F

    iput-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v1, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const p1, 0x40490fdb    # (float)Math.PI

    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v3, 0x0

    iget-object v4, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    const/4 v5, 0x0

    iget-object v6, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v8, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v9, 0x0

    iget-object v10, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    const/4 v11, 0x0

    iget-object v12, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    const/4 v3, 0x0

    iget-object v4, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v5, 0x0

    iget-object v6, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    iget-object v5, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :try_start_1
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "SceneRenderer"

    const-string v3, "Failed to draw a frame"

    invoke-static {v0, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v10, 0x2

    if-eqz v0, :cond_7

    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :try_start_2
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_2
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    const-string v0, "SceneRenderer"

    const-string v4, "Failed to draw a frame"

    invoke-static {v0, v4, v3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-static {v0, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :cond_0
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v3

    iget-object v6, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    monitor-enter v6

    :try_start_3
    invoke-virtual {v6, v3, v4, v9}, Lcom/motorola/camera/saving/XmpData$GDepth;->poll(JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v6

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v6, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/motorola/camera/JsonConfig$CameraMapping;

    iget-object v11, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, v6, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/motorola/camera/saving/XmpData$GDepth;

    monitor-enter v12

    :try_start_4
    invoke-virtual {v12, v7, v8, v1}, Lcom/motorola/camera/saving/XmpData$GDepth;->poll(JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v12

    check-cast v0, [F

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, v6, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    move-object v12, v7

    check-cast v12, [F

    aget v7, v0, v9

    aget v8, v0, v1

    neg-float v8, v8

    aget v0, v0, v10

    neg-float v0, v0

    invoke-static {v7, v8, v0}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-eqz v14, :cond_2

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    double-to-float v14, v14

    const/4 v15, 0x0

    div-float/2addr v7, v13

    div-float v16, v8, v13

    div-float v17, v0, v13

    move v13, v15

    move v15, v7

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_2

    :cond_2
    invoke-static {v12, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_2
    iget-boolean v0, v6, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    iget-object v7, v6, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    if-nez v0, :cond_3

    move-object v0, v7

    check-cast v0, [F

    iget-object v8, v6, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v8, [F

    invoke-static {v0, v8}, Lcom/motorola/camera/JsonConfig$CameraMapping;->computeRecenterMatrix([F[F)V

    iput-boolean v1, v6, Lcom/motorola/camera/JsonConfig$CameraMapping;->isVirtualCamera:Z

    :cond_3
    const/4 v12, 0x0

    move-object v13, v7

    check-cast v13, [F

    const/4 v14, 0x0

    iget-object v0, v6, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, [F

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v12

    throw v1

    :cond_4
    :goto_3
    iget-object v6, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    monitor-enter v6

    :try_start_5
    invoke-virtual {v6, v3, v4, v1}, Lcom/motorola/camera/saving/XmpData$GDepth;->poll(JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v6

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/Projection;

    if-eqz v0, :cond_7

    iget-object v3, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->isSupported(Landroidx/media3/exoplayer/video/spherical/Projection;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    iget v4, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->stereoMode:I

    iput v4, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->stereoMode:I

    new-instance v4, Lcom/motorola/camera/saving/XmpData$GDepth;

    iget-object v6, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    iget-object v6, v6, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Lcom/motorola/camera/saving/XmpData$GDepth;

    aget-object v6, v6, v9

    invoke-direct {v4, v6}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>(Lcom/motorola/camera/saving/XmpData$GDepth;)V

    iput-object v4, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->leftMeshData:Lcom/motorola/camera/saving/XmpData$GDepth;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->singleMesh:Z

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Lcom/motorola/camera/saving/XmpData$GDepth;

    aget-object v0, v0, v9

    iget-object v3, v0, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [F

    array-length v4, v4

    div-int/lit8 v4, v4, 0x3

    check-cast v3, [F

    invoke-static {v3}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v3, [F

    invoke-static {v3}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    iget v0, v0, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v6

    throw v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    monitor-exit v6

    throw v1

    :cond_7
    :goto_4
    iget-object v3, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v3, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    iget v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->textureId:I

    iget-object v2, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    const-string v4, "ProjectionRenderer"

    iget-object v5, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->leftMeshData:Lcom/motorola/camera/saving/XmpData$GDepth;

    if-nez v5, :cond_8

    goto/16 :goto_9

    :cond_8
    iget v6, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->stereoMode:I

    if-ne v6, v1, :cond_9

    sget-object v6, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    goto :goto_5

    :cond_9
    if-ne v6, v10, :cond_a

    sget-object v6, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    goto :goto_5

    :cond_a
    sget-object v6, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    :goto_5
    iget v7, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    invoke-static {v7, v1, v9, v6, v9}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget v6, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    invoke-static {v6, v1, v9, v2, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->textureHandle:I

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :try_start_6
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_6
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    const-string v0, "Failed to bind uniforms"

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    iget v10, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->positionHandle:I

    const/4 v11, 0x3

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0xc

    iget-object v0, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/nio/FloatBuffer;

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :try_start_7
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_7
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v1, v0

    const-string v0, "Failed to load position data"

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    iget v10, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/16 v14, 0x8

    iget-object v0, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/nio/FloatBuffer;

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :try_start_8
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_8
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v1, v0

    const-string v0, "Failed to load texture data"

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    iget v0, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    iget v1, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    invoke-static {v0, v9, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :try_start_9
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_9
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v0

    const-string v0, "Failed to render"

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method

.method public final declared-synchronized onOrientationChange([FF)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    const/4 v1, 0x0

    iget p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    neg-float v2, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float v3, p1

    iget p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float v4, p1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p2, p2

    int-to-float p3, p3

    div-float v3, p2, p3

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, v3, p2

    if-lez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    const-wide p1, 0x4046800000000000L    # 45.0

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    float-to-double v0, v3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42b40000    # 90.0f

    :goto_0
    move v2, p1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const/4 v1, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public final declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->init()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    iget-object v0, p1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p1, p2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
