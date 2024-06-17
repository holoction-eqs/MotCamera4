.class public final Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final TEXTURE_UNIFORMS:[Ljava/lang/String;

.field public static final TEXTURE_VERTICES:Ljava/nio/FloatBuffer;


# instance fields
.field public final pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

.field public final previousStrides:[I

.field public final previousWidths:[I

.field public program:Landroidx/media3/common/util/GlProgram;

.field public final surfaceView:Landroid/opengl/GLSurfaceView;

.field public final texLocations:[I

.field public final yuvTextures:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "v_tex"

    const-string v1, "y_tex"

    const-string v2, "u_tex"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    const/4 p1, 0x3

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0, p0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8

    const-string p1, "VideoDecoderGLSV"

    iget-object p2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    :try_start_0
    new-instance v0, Landroidx/media3/common/util/GlProgram;

    const-string v1, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    const-string v2, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v1, "in_pos"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v1, "in_tc_y"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v2, "in_tc_u"

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    aput v0, p2, v2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v2, "in_tc_v"

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    aput v0, p2, v2

    iget-object p2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v0, "mColorConversion"

    iget p2, p2, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    iget-object p2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    :try_start_1
    invoke-static {v0, p2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    sget-object v3, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget v2, v2, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v2, 0x84c0

    add-int/2addr v2, v1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v2, p2, v1

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroidx/media3/common/util/GlUtil;->bindTexture(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    :try_start_2
    const-string p2, "Failed to set up the textures"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_2
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p2, "Failed to set up the textures and program"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
