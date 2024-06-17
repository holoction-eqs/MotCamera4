.class public abstract Lcom/motorola/camera/ui/widgets/gl/GlToolBox;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public static activeTexture(I)V
    .locals 0

    invoke-static {p0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string p0, "glActiveTexture"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static bindBuffer(I)V
    .locals 1

    const v0, 0x8892

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string p0, "glBindBuffer"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static bindFramebuffer(I)V
    .locals 1

    const v0, 0x8d40

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string p0, "glBindFramebuffer"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static bindTexture(II)V
    .locals 0

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p0, "glBindTexture"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static blendFunc(II)V
    .locals 0

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const-string p0, "glBlendFunc"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, ": "

    invoke-static {p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz v0, :cond_2

    const/16 v1, 0x505

    if-eq v0, v1, :cond_1

    const/16 v1, 0x506

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "glGetError(%x)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    const-string v1, "GL_INVALID_OPERATION"

    goto :goto_0

    :pswitch_1
    const-string v1, "GL_INVALID_VALUE"

    goto :goto_0

    :pswitch_2
    const-string v1, "GL_INVALID_ENUM"

    goto :goto_0

    :cond_0
    const-string v1, "GL_INVALID_FRAMEBUFFER_OPERATION"

    goto :goto_0

    :cond_1
    const-string v1, "GL_OUT_OF_MEMORY"

    goto :goto_0

    :cond_2
    const-string v1, "GL_NO_ERROR"

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "GlToolBox"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x500
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static clear(I)V
    .locals 0

    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    const-string p0, "glClear"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static clearColor(FFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const-string p0, "glClearColor"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 p1, 0x2

    new-array v1, p1, [F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/4 v2, 0x1

    aput p0, v1, v2

    new-array p0, p1, [F

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance p1, Landroid/graphics/PointF;

    aget v0, p0, v3

    aget p0, p0, v2

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public static createSafeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v8, v9, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static deleteTexture(I)V
    .locals 2

    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const-string p0, "glDeleteTextures"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static drawArrays(III)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p0, "glDrawArrays"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static enable(I)V
    .locals 0

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    const-string p0, "glEnable"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static generateTexture(I)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    invoke-static {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    const/16 p0, 0xde1

    const/16 v0, 0x2801

    const v3, 0x46180400    # 9729.0f

    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const-string v0, "glTexParameterf"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v4, 0x2800

    invoke-static {p0, v4, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0x2802

    const v3, 0x812f

    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "glTexParameteri"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v4, 0x2803

    invoke-static {p0, v4, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget p0, v1, v2

    return p0
.end method

.method public static getProgramiv(II[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string p0, "glGetProgramiv"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static stencilMask(I)V
    .locals 0

    invoke-static {p0}, Landroid/opengl/GLES20;->glStencilMask(I)V

    const-string p0, "glStencilMask"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static texImage2D(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-eq v1, v0, :cond_1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v0, :cond_1

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0xde1

    if-eqz v0, :cond_2

    invoke-static {v1, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_2

    :cond_2
    const-string v0, "GlToolBox"

    const-string v3, "Create temporary Bitmap for texImage2D"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->createSafeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v1, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_2
    const-string p0, "texImage2D"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
