.class public final Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TEX_MATRIX_LEFT:[F

.field public static final TEX_MATRIX_TOP:[F

.field public static final TEX_MATRIX_WHOLE:[F


# instance fields
.field public leftMeshData:Lcom/motorola/camera/saving/XmpData$GDepth;

.field public mvpMatrixHandle:I

.field public positionHandle:I

.field public program:Landroidx/media3/common/util/GlProgram;

.field public stereoMode:I

.field public texCoordsHandle:I

.field public textureHandle:I

.field public uTexMatrixHandle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static isSupported(Landroidx/media3/exoplayer/video/spherical/Projection;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Lcom/motorola/camera/saving/XmpData$GDepth;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v0, v0, v2

    iget v0, v0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Lcom/motorola/camera/saving/XmpData$GDepth;

    array-length v0, p0

    if-ne v0, v3, :cond_0

    aget-object p0, p0, v2

    iget p0, p0, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method


# virtual methods
.method public final init()V
    .locals 3

    :try_start_0
    new-instance v0, Landroidx/media3/common/util/GlProgram;

    const-string v1, "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"

    const-string v2, "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v1, "uMvpMatrix"

    iget v0, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v1, "uTexMatrix"

    iget v0, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->positionHandle:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v1, "aTexCoords"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v1, "uTexture"

    iget v0, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->textureHandle:I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ProjectionRenderer"

    const-string v1, "Failed to initialize the program"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
