.class public final Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

.field public mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public mFrameHeight:F

.field public mFrameWidth:F

.field public mLineWidth:F

.field public mRect:Landroid/graphics/RectF;

.field public mType:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->setFrameType$enumunboxing$(I)V

    return-void
.end method


# virtual methods
.method public final buildFrame()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->createFrame$enumunboxing$(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->createFrame$enumunboxing$(I)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized createFrame$enumunboxing$(I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    cmpl-float v2, v4, v3

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameWidth:F

    div-float/2addr v6, v5

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v7

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    sget v9, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    const/high16 v11, 0x437a0000    # 250.0f

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    goto :goto_0

    :cond_1
    sget v9, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    :goto_0
    add-float/2addr v7, v9

    sget-object v9, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    const/high16 v11, 0x42340000    # 45.0f

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-ne v0, v8, :cond_6

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float v15, v7, v4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    iget-object v5, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v9, v5, v14

    aput v15, v5, v8

    aput v3, v5, v13

    aput v0, v5, v12

    aput v15, v5, v10

    aput v3, v5, v11

    iget-object v0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_2
    :try_start_2
    monitor-exit v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    :try_start_3
    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v6, v4, v14

    aput v7, v4, v8

    aput v3, v4, v13

    aput v0, v4, v12

    aput v7, v4, v10

    aput v3, v4, v11

    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    :try_start_4
    monitor-exit v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    iget-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v5, v0, v14

    aput v15, v0, v8

    aput v3, v0, v13

    aput v5, v0, v12

    aput v7, v0, v10

    aput v3, v0, v11

    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :try_start_6
    monitor-exit v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v0, v5

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    :try_start_7
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v0, v5, v14

    aput v15, v5, v8

    aput v3, v5, v13

    aput v0, v5, v12

    aput v7, v5, v10

    aput v3, v5, v11

    iget-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :try_start_8
    monitor-exit v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_6
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    sub-float v5, v7, v6

    add-float/2addr v7, v6

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v15, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v0

    sub-float/2addr v11, v4

    monitor-enter v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :try_start_9
    iget-object v15, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v11, v15, v14

    aput v5, v15, v8

    aput v3, v15, v13

    aput v11, v15, v12

    aput v7, v15, v10

    const/4 v11, 0x5

    aput v3, v15, v11

    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v11, :cond_7

    invoke-virtual {v11, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :cond_7
    :try_start_a
    monitor-exit v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v11, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v0

    add-float/2addr v11, v4

    monitor-enter v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :try_start_b
    iget-object v15, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v11, v15, v14

    aput v5, v15, v8

    aput v3, v15, v13

    aput v11, v15, v12

    aput v7, v15, v10

    const/4 v11, 0x5

    aput v3, v15, v11

    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v11, :cond_8

    invoke-virtual {v11, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_8
    :try_start_c
    monitor-exit v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v11, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v15, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v15, v0

    sub-float/2addr v15, v4

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v0

    add-float/2addr v11, v4

    monitor-enter v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :try_start_d
    iget-object v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v15, v10, v14

    aput v5, v10, v8

    aput v3, v10, v13

    aput v11, v10, v12

    const/4 v11, 0x4

    aput v5, v10, v11

    const/4 v5, 0x5

    aput v3, v10, v5

    iget-object v5, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_9
    :try_start_e
    monitor-exit v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v6, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mLineWidth:F

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mRect:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v0

    sub-float/2addr v10, v4

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    add-float/2addr v6, v4

    monitor-enter v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :try_start_f
    iget-object v0, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v10, v0, v14

    aput v7, v0, v8

    aput v3, v0, v13

    aput v6, v0, v12

    const/4 v4, 0x4

    aput v7, v0, v4

    const/4 v4, 0x5

    aput v3, v0, v4

    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_a
    :try_start_10
    monitor-exit v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    invoke-virtual {v4, v9, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_1

    :cond_b
    :goto_2
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->setDrawList(Ljava/util/ArrayList;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    monitor-exit p0

    return-void

    :catchall_4
    move-exception v0

    :try_start_11
    monitor-exit v5

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v6

    throw v0

    :catchall_6
    move-exception v0

    monitor-exit v6

    throw v0

    :catchall_7
    move-exception v0

    monitor-exit v6

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :cond_c
    :goto_3
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->batchDraw([F[F)V

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->getDrawList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setFrameType$enumunboxing$(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mType:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->buildFrame()V

    :cond_0
    return-void
.end method

.method public final unloadTexture()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    return-void
.end method
