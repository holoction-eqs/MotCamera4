.class public final Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# static fields
.field public static final METER_BOTTOM_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public static final METER_TOP_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# instance fields
.field public mActiveMeterSegment:I

.field public final mDensity:F

.field public mDirty:Z

.field public final mDotTextures:Ljava/util/ArrayList;

.field public mDotVisible:Z

.field public mEGLSurfaceValid:Z

.field public mInitialized:Z

.field public final mLineTextures:Ljava/util/ArrayList;

.field public mMeterSegmentRanges:[Landroid/util/Range;

.field public final mOffScreenProj:[F

.field public final mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public final mRtl:Z

.field public mStaggeredMeter:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_TOP_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_BOTTOM_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mStaggeredMeter:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mRtl:Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    return-void
.end method


# virtual methods
.method public final doLayout()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mEGLSurfaceValid:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getMeterNumOfSegment(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDensity:F

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v2

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    mul-int/lit8 v3, v3, 0x6

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40a00000    # 5.0f

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/high16 v5, 0x42300000    # 44.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v11, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    mul-float v12, v2, v6

    add-float/2addr v12, v5

    iget v5, v11, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    mul-float/2addr v10, v2

    add-float/2addr v10, v5

    invoke-direct {v3, v12, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_1

    :cond_2
    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/high16 v5, 0x41d80000    # 27.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v11, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    mul-float v12, v2, v7

    add-float/2addr v12, v5

    iget v5, v11, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    mul-float/2addr v10, v2

    add-float/2addr v10, v5

    invoke-direct {v3, v12, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    :goto_1
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mRtl:Z

    if-eqz v5, :cond_3

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v10, v12

    iput v10, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v10, v7

    iput v10, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v10, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    mul-float/2addr v10, v7

    iput v10, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    :cond_3
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v12, v11, Landroid/graphics/Point;->x:I

    iget v13, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v10

    invoke-virtual {v10, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    iget v13, v10, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    div-float/2addr v13, v8

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    invoke-static {v14, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    const/4 v15, 0x0

    neg-float v1, v13

    neg-float v12, v10

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x41a00000    # 20.0f

    move/from16 v16, v1

    move/from16 v17, v13

    move/from16 v18, v12

    move/from16 v19, v10

    invoke-static/range {v14 .. v21}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v12, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v13, 0x0

    :goto_3
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v15, v14

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-ge v13, v15, :cond_9

    iget-boolean v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mStaggeredMeter:Z

    if-eqz v14, :cond_6

    iget v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mActiveMeterSegment:I

    if-ne v13, v14, :cond_5

    const/high16 v14, 0x41a00000    # 20.0f

    goto :goto_4

    :cond_5
    const/high16 v14, 0x41000000    # 8.0f

    goto :goto_4

    :cond_6
    const/high16 v14, 0x42000000    # 32.0f

    :goto_4
    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v12, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v9, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v20, v14, v8

    mul-float v20, v20, v2

    add-float v9, v20, v9

    const/4 v8, 0x0

    invoke-direct {v15, v12, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v0, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->getMeterNumOfSegment(I)I

    move-result v9

    if-ge v8, v9, :cond_8

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-direct {v9, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    move-object/from16 v21, v6

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float v6, v2, v12

    invoke-virtual {v9, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_TOP_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->METER_BOTTOM_VERTEX:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v9, v6, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v6, 0x4

    invoke-virtual {v9, v6, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    mul-float v6, v14, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v6, v12

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v9, v12, v6, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {v15, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    goto :goto_6

    :cond_7
    invoke-virtual {v15, v4, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v21

    goto :goto_5

    :cond_8
    add-int/lit8 v13, v13, 0x1

    move-object v12, v15

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    goto :goto_3

    :cond_9
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    if-eqz v1, :cond_b

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v6, v11, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v9

    sub-float/2addr v6, v2

    array-length v2, v14

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v2, :cond_b

    aget-object v11, v14, v9

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-direct {v12, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    div-float v13, v1, v8

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13, v13, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    if-eqz v5, :cond_a

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    sub-float v11, v3, v11

    const/4 v8, 0x0

    invoke-direct {v13, v11, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    add-float/2addr v11, v3

    invoke-direct {v13, v11, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    :goto_8
    const/4 v11, 0x4

    invoke-virtual {v12, v11, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_7

    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    :cond_c
    :goto_9
    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getMeterNumOfSegment(I)I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public final getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mEGLSurfaceValid:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->doLayout()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenProj:[F

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->onDrawFboContents([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onDrawFboContents([F[F)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/16 v1, 0x4100

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDirty:Z

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mLineTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    return-void
.end method
