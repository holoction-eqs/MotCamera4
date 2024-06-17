.class public final Landroidx/media3/common/util/GlProgram;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic $r8$classId:I

.field public attributeByName:Ljava/lang/Object;

.field public attributes:Ljava/lang/Object;

.field public programId:I

.field public uniformByName:Ljava/lang/Object;

.field public uniforms:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    iget v2, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    const v3, 0x8b31

    move-object/from16 v4, p1

    invoke-static {v2, v3, v4}, Landroidx/media3/common/util/GlProgram;->addShader(IILjava/lang/String;)V

    iget v2, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    const v3, 0x8b30

    move-object/from16 v4, p2

    invoke-static {v2, v3, v4}, Landroidx/media3/common/util/GlProgram;->addShader(IILjava/lang/String;)V

    iget v2, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    filled-new-array {v1}, [I

    move-result-object v2

    iget v3, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    const v4, 0x8b82

    invoke-static {v3, v4, v2, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to link shader program: \n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/media3/common/util/GlUtil;->checkGlException(Ljava/lang/String;Z)V

    iget v2, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    new-array v2, v3, [I

    iget v4, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    const v5, 0x8b89

    invoke-static {v4, v5, v2, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v2, v1

    new-array v4, v4, [Landroidx/media3/extractor/AacUtil$Config;

    iput-object v4, v0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    move v4, v1

    :goto_1
    aget v5, v2, v1

    if-ge v4, v5, :cond_1

    iget v15, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    new-array v5, v3, [I

    const v6, 0x8b8a

    .line 3
    invoke-static {v15, v6, v5, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v7, v5, v1

    new-array v14, v7, [B

    new-array v8, v3, [I

    const/4 v9, 0x0

    new-array v10, v3, [I

    const/4 v11, 0x0

    new-array v12, v3, [I

    const/4 v13, 0x0

    const/16 v16, 0x0

    move v5, v15

    move v6, v4

    move-object/from16 p1, v14

    move v3, v15

    move/from16 v15, v16

    invoke-static/range {v5 .. v15}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    new-instance v5, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/GlProgram;->access$000([B)I

    move-result v6

    move-object/from16 v7, p1

    invoke-direct {v5, v7, v1, v6}, Ljava/lang/String;-><init>([BII)V

    .line 4
    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    .line 5
    new-instance v6, Landroidx/media3/extractor/AacUtil$Config;

    invoke-direct {v6, v5, v4, v3}, Landroidx/media3/extractor/AacUtil$Config;-><init>(Ljava/lang/String;II)V

    .line 6
    iget-object v3, v0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v3, [Landroidx/media3/extractor/AacUtil$Config;

    aput-object v6, v3, v4

    iget-object v3, v0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [I

    iget v4, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    const v5, 0x8b86

    invoke-static {v4, v5, v3, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v3, v1

    new-array v4, v4, [Lcom/motorola/camera/saving/XmpData$GDepth;

    iput-object v4, v0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    move v4, v1

    :goto_2
    aget v5, v3, v1

    if-ge v4, v5, :cond_2

    iget v15, v0, Landroidx/media3/common/util/GlProgram;->programId:I

    new-array v5, v2, [I

    const v6, 0x8b87

    .line 7
    invoke-static {v15, v6, v5, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    new-array v14, v2, [I

    aget v7, v5, v1

    new-array v13, v7, [B

    new-array v8, v2, [I

    const/4 v9, 0x0

    new-array v10, v2, [I

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v5, v15

    move v6, v4

    move-object v12, v14

    move-object/from16 p1, v13

    move/from16 v13, v16

    move-object/from16 v16, v14

    move-object/from16 v14, p1

    move v2, v15

    move/from16 v15, v17

    invoke-static/range {v5 .. v15}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    new-instance v5, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/GlProgram;->access$000([B)I

    move-result v6

    move-object/from16 v7, p1

    invoke-direct {v5, v7, v1, v6}, Ljava/lang/String;-><init>([BII)V

    .line 8
    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 9
    new-instance v6, Lcom/motorola/camera/saving/XmpData$GDepth;

    aget v7, v16, v1

    invoke-direct {v6, v5, v2, v7}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>(Ljava/lang/String;II)V

    .line 10
    iget-object v2, v0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v2, [Lcom/motorola/camera/saving/XmpData$GDepth;

    aput-object v6, v2, v4

    iget-object v2, v0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v5, v6, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/HashSet;I)V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v1, v0, [B

    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    move v0, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v3, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .line 12
    iget v1, v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->value:I

    .line 13
    invoke-direct {v4, v0, v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    move p1, v2

    :goto_1
    if-ge v2, p3, :cond_2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v0, [I

    aput p1, v0, v2

    add-int/lit8 p1, p1, 0x10

    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    aput v1, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 14
    iget-object p2, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast p2, [I

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    const/16 p3, 0x54

    add-int/2addr p2, p3

    .line 15
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v0, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p2

    const/16 p2, 0x201

    .line 16
    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    return-void
.end method

.method public static access$000([B)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p0

    :goto_1
    return v0
.end method

.method public static addShader(IILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    const v2, 0x8b81

    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/media3/common/util/GlUtil;->checkGlException(Ljava/lang/String;Z)V

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method


# virtual methods
.method public final applySupportImageTint()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    :cond_0
    if-eqz v0, :cond_9

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/TintInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/TintInfo;

    if-nez v1, :cond_2

    new-instance v1, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/TintInfo;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/TintInfo;

    const/4 v4, 0x0

    iput-object v4, v1, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    iput-boolean v2, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iput-object v4, v1, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    iput-boolean v2, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    iget-object v4, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_3

    iput-boolean v3, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iput-object v4, v1, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    :cond_3
    iget-object v4, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v4}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_4

    iput-boolean v3, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    iput-object v4, v1, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    :cond_4
    iget-boolean v4, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v4, :cond_5

    iget-boolean v4, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v4, :cond_6

    :cond_5
    iget-object v2, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    move v2, v3

    :cond_6
    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_8

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_9

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final getAttributeArrayLocationAndEnable(Ljava/lang/String;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return p0
.end method

.method public final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    invoke-static {v0, p1, v3, p2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    iget-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    if-eq v1, p2, :cond_0

    iget-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/reflect/TypesJVMKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    throw p0
.end method

.method public final perform(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final setImageResource(I)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/reflect/TypesJVMKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->applySupportImageTint()V

    return-void
.end method

.method public final setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/TintInfo;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->applySupportImageTint()V

    return-void
.end method

.method public final setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/TintInfo;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->applySupportImageTint()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/media3/common/util/GlProgram;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniforms:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-nez v1, :cond_0

    const-string p0, "\n matrix: null\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n matrix:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, ">>\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
