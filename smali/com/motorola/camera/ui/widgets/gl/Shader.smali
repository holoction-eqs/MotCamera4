.class public final Lcom/motorola/camera/ui/widgets/gl/Shader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

.field public final mProgramHandle:I

.field public final mUniforms:[Landroidx/media3/common/DeviceInfo$Builder;


# direct methods
.method public constructor <init>(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Landroidx/media3/common/DeviceInfo$Builder;

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mUniforms:[Landroidx/media3/common/DeviceInfo$Builder;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->values()[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const-wide v7, 0xffffffffL

    const-wide v9, -0x100000000L

    const/16 v11, 0x20

    const v12, 0x8b82

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v13, v1

    shl-long/2addr v13, v11

    and-long/2addr v9, v13

    int-to-long v13, v2

    and-long/2addr v13, v7

    or-long/2addr v9, v13

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->getInstance()Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    move-result-object v3

    iget-object v13, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    monitor-enter v13

    :try_start_0
    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v9

    const-string v10, "glCreateProgram"

    invoke-static {v10}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-eqz v9, :cond_3

    iget-object v10, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mBinary:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v13

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v10

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;->mFormat:I

    invoke-static {v9, v3, v13, v10}, Landroid/opengl/GLES30;->glProgramBinary(IILjava/nio/Buffer;I)V

    const-string v3, "glProgramBinary"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    filled-new-array {v5}, [I

    move-result-object v3

    invoke-static {v9, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->getProgramiv(II[I)V

    aget v3, v3, v5

    if-eq v3, v6, :cond_3

    invoke-static {v9}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v3, "glDeleteProgram"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v9, v5

    :cond_3
    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    if-nez v9, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getShaderSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getShaderSource(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x8b31

    invoke-static {v10, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const v10, 0x8b30

    invoke-static {v10, v9}, Lcom/motorola/camera/ui/widgets/gl/Shader;->loadShader(ILjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v10

    const-string v13, "glCreateProgram"

    invoke-static {v13}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-eqz v10, :cond_6

    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v10, v9}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string v3, "glLinkProgram"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    new-array v3, v6, [I

    invoke-static {v10, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->getProgramiv(II[I)V

    aget v3, v3, v5

    if-eq v3, v6, :cond_6

    const-string v3, "Could not link mProgramHandle: "

    const-string v9, "Shader"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    const-string v12, "glGetProgramInfoLog"

    invoke-static {v12}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v3, "glDeleteProgram"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :goto_2
    move v12, v5

    goto :goto_3

    :cond_6
    move v12, v10

    :goto_3
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    if-eqz v12, :cond_a

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    if-ge v3, v4, :cond_7

    move v3, v6

    goto :goto_4

    :cond_7
    move v3, v5

    :goto_4
    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    int-to-long v3, v1

    shl-long/2addr v3, v11

    const-wide v9, -0x100000000L

    and-long/2addr v3, v9

    int-to-long v1, v2

    and-long/2addr v1, v7

    or-long/2addr v1, v3

    filled-new-array {v5}, [I

    move-result-object v3

    const v4, 0x8741

    invoke-static {v12, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->getProgramiv(II[I)V

    aget v4, v3, v5

    if-lez v4, :cond_9

    new-array v7, v6, [I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    aget v13, v3, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v7

    move-object/from16 v18, v4

    invoke-static/range {v12 .. v18}, Landroid/opengl/GLES30;->glGetProgramBinary(II[II[IILjava/nio/Buffer;)V

    const-string v3, "glGetProgramBinary"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;

    aget v7, v7, v5

    invoke-direct {v3, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$ProgramBinary;-><init>(ILjava/nio/ByteBuffer;)V

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_a

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->getInstance()Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    move-result-object v4

    iget-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    monitor-enter v7

    :try_start_1
    iget-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mCache:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    iput-boolean v6, v4, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->mDirty:Z

    monitor-exit v7

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_6
    new-array v1, v6, [I

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    const v3, 0x8b86

    invoke-static {v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->getProgramiv(II[I)V

    aget v3, v1, v5

    if-lez v3, :cond_c

    move v3, v5

    :goto_7
    aget v4, v1, v5

    if-ge v3, v4, :cond_c

    new-instance v4, Landroidx/media3/common/DeviceInfo$Builder;

    invoke-direct {v4, v2, v3}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(II)V

    iget-object v6, v4, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->mLookupMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    if-eqz v6, :cond_b

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mUniforms:[Landroidx/media3/common/DeviceInfo$Builder;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput-object v4, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to locate uniform value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    const-string v3, "\'!"

    invoke-static {v1, v2, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static getShaderSource(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v2, "Shader"

    const-string v3, "Error reading shader"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const-string v1, "glCreateShader"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const-string p1, "glShaderSource"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const-string p1, "glCompileShader"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    const-string v1, "glGetShaderiv"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget p1, p1, v2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not compile shader "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Shader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "glGetShaderInfoLog"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "glDeleteShader"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    move v0, v2

    :cond_0
    return v0
.end method


# virtual methods
.method public final getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    aget-object v0, v1, v0

    if-nez v0, :cond_1

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->mName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    const-string v2, "glGetAttribLocation"

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-ltz p0, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    invoke-direct {v2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aput-object v2, v1, p0

    move-object v0, v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown attribute \'"

    const-string v1, "\'!"

    invoke-static {p1, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Landroidx/media3/common/DeviceInfo$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mUniforms:[Landroidx/media3/common/DeviceInfo$Builder;

    aget-object p0, p0, v0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not get uniform location for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final pushAttributes()V
    .locals 12

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mAttributes:[Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/nio/FloatBuffer;

    const-string v5, "glVertexAttribPointer"

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    iget v8, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iget-boolean v9, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mShouldNormalize:Z

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget-object v11, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mValues:Ljava/nio/FloatBuffer;

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mVbo:I

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mComponents:I

    iget v8, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mType:I

    iget-boolean v9, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mShouldNormalize:Z

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mStride:I

    iget v11, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mOffset:I

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :goto_1
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->mIndex:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glEnableVertexAttribArray"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object p0

    .line 1
    sget p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 2
    iget p0, p0, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string p0, "glUniform1f"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object p0

    .line 3
    sget p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 4
    iget p0, p0, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string p0, "glUniform1i"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramUniform(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object p0

    .line 5
    array-length p1, p2

    .line 6
    iget v0, p0, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    const/16 v1, 0x1406

    .line 7
    iget v2, p0, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot assign float-array to incompatible uniform type for uniform \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    const-string v0, "\'!"

    .line 9
    invoke-static {p2, p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/DeviceInfo$Builder;->checkUniformAssignment(II)V

    div-int/2addr p1, v1

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 11
    invoke-static {v2, p1, p2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const-string p0, "glUniform4fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/DeviceInfo$Builder;->checkUniformAssignment(II)V

    div-int/2addr p1, v0

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 13
    invoke-static {v2, p1, p2, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    const-string p0, "glUniform3fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/DeviceInfo$Builder;->checkUniformAssignment(II)V

    div-int/2addr p1, v0

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 15
    invoke-static {v2, p1, p2, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    const-string p0, "glUniform2fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10

    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/DeviceInfo$Builder;->checkUniformAssignment(II)V

    div-int/2addr p1, v0

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 17
    invoke-static {v2, p1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p0, "glUniformMatrix4fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/DeviceInfo$Builder;->checkUniformAssignment(II)V

    div-int/2addr p1, v0

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 19
    invoke-static {v2, p1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    const-string p0, "glUniformMatrix3fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :pswitch_5
    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/DeviceInfo$Builder;->checkUniformAssignment(II)V

    div-int/2addr p1, v1

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 21
    invoke-static {v2, p1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    const-string p0, "glUniformMatrix2fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/DeviceInfo$Builder;->checkUniformAssignment(II)V

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    .line 23
    invoke-static {v2, p1, p2, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    const-string p0, "glUniform1fv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8b50
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8b5a
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final use()V
    .locals 1

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Shader;->mProgramHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p0, "glUseProgram"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
