.class public final Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# static fields
.field public static final GOLDEN_RATIO:F


# instance fields
.field public final mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

.field public mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

.field public mGridType:I

.field public mLineWidth:F

.field public mPadding:F

.field public mRect:Landroid/graphics/RectF;

.field public final mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->GOLDEN_RATIO:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->GREEN:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->setGridType(I)V

    return-void
.end method


# virtual methods
.method public final buildGrid()V
    .locals 15

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createTE42Grid()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sget v5, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->GOLDEN_RATIO:F

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v4

    div-float v4, v6, v5

    sub-float/2addr v6, v4

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->top:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v4

    cmpl-float v4, v7, v5

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    add-float/2addr v9, v10

    iget v11, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v6

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v10

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v10, v7, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    const/4 v12, 0x0

    aput v9, v10, v12

    const/4 v9, 0x1

    aput v11, v10, v9

    aput v5, v10, v2

    aput v8, v10, v3

    aput v11, v10, v1

    const/4 v8, 0x5

    aput v5, v10, v8

    iget-object v11, v7, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v11, :cond_1

    invoke-virtual {v11, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_1
    :try_start_2
    monitor-exit v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v7, v10, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    iget v13, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    add-float/2addr v11, v13

    iget v14, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v6

    iget v6, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v13

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-object v10, v7, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v11, v10, v12

    aput v14, v10, v9

    aput v5, v10, v2

    aput v6, v10, v3

    aput v14, v10, v1

    aput v5, v10, v8

    iget-object v6, v7, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    :try_start_4
    monitor-exit v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v10, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v0

    iget v11, v7, Landroid/graphics/RectF;->top:F

    iget v13, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    sub-float/2addr v11, v13

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v13

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    iget-object v13, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v10, v13, v12

    aput v11, v13, v9

    aput v5, v13, v2

    aput v10, v13, v3

    aput v7, v13, v1

    aput v5, v13, v8

    iget-object v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    :try_start_6
    monitor-exit v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v6, v7, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v10, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v0

    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    sub-float/2addr v0, v11

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v11

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v11, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v10, v11, v12

    aput v0, v11, v9

    aput v5, v11, v2

    aput v10, v11, v3

    aput v7, v11, v1

    aput v5, v11, v8

    iget-object v0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :try_start_8
    monitor-exit v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->setDrawList(Ljava/util/ArrayList;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v7

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v7

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_5
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_4
    invoke-virtual {p0, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->createGrid(II)V

    goto :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized createGrid(II)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    monitor-enter p0

    :try_start_0
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v3

    cmpl-float v3, v5, v4

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    if-ge v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->top:F

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v6

    int-to-float v6, v0

    div-float/2addr v7, v6

    const/4 v6, 0x1

    move v8, v6

    :goto_0
    const/4 v12, 0x0

    if-ge v8, v0, :cond_2

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v13, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v13, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v15, v14, Landroid/graphics/RectF;->left:F

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    add-float/2addr v15, v9

    iget v10, v14, Landroid/graphics/RectF;->top:F

    int-to-float v11, v8

    mul-float/2addr v11, v7

    sub-float/2addr v10, v11

    iget v11, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v9

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v9, v13, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v15, v9, v12

    aput v10, v9, v6

    aput v4, v9, v3

    const/4 v14, 0x3

    aput v11, v9, v14

    const/4 v11, 0x4

    aput v10, v9, v11

    const/4 v10, 0x5

    aput v4, v9, v10

    iget-object v10, v13, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v10, :cond_1

    invoke-virtual {v10, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0

    :cond_2
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v7, v2

    div-float/2addr v0, v7

    move v7, v6

    :goto_1
    if-ge v7, v2, :cond_4

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    int-to-float v11, v7

    mul-float/2addr v11, v0

    add-float/2addr v11, v10

    iget v10, v9, Landroid/graphics/RectF;->top:F

    iget v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mPadding:F

    sub-float/2addr v10, v13

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v13

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v13, v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v11, v13, v12

    aput v10, v13, v6

    aput v4, v13, v3

    const/4 v10, 0x3

    aput v11, v13, v10

    const/4 v11, 0x4

    aput v9, v13, v11

    const/4 v9, 0x5

    aput v4, v13, v9

    iget-object v14, v8, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v14, :cond_3

    invoke-virtual {v14, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :try_start_4
    monitor-exit v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_4
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->setDrawList(Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized createTE42Grid()V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    cmpl-float v0, v3, v2

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v5

    div-float/2addr v6, v4

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v8, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v6

    iget v5, v5, Landroid/graphics/RectF;->right:F

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    :try_start_1
    iget-object v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    const/4 v10, 0x0

    aput v7, v9, v10

    const/4 v7, 0x1

    aput v8, v9, v7

    const/4 v11, 0x2

    aput v2, v9, v11

    const/4 v12, 0x3

    aput v5, v9, v12

    const/4 v5, 0x4

    aput v8, v9, v5

    const/4 v8, 0x5

    aput v2, v9, v8

    iget-object v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v13, :cond_1

    invoke-virtual {v13, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    :cond_1
    :try_start_2
    monitor-exit v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mColor:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v13, v3

    iget v14, v9, Landroid/graphics/RectF;->top:F

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    :try_start_3
    iget-object v15, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v15, v10

    aput v14, v15, v7

    aput v2, v15, v11

    aput v13, v15, v12

    aput v9, v15, v5

    aput v2, v15, v8

    iget-object v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_2

    invoke-virtual {v9, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    :cond_2
    :try_start_4
    monitor-exit v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const v9, 0x3e425ed1

    mul-float/2addr v4, v9

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/RectF;->top:F

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v13, v9

    const v9, 0x3e171c72

    mul-float/2addr v13, v9

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v9, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v9, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v9, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v14, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v15, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v15, v4

    iget v8, v14, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v13

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v14, v4

    monitor-enter v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    :try_start_5
    iget-object v5, v9, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v15, v5, v10

    aput v8, v5, v7

    aput v2, v5, v11

    aput v14, v5, v12

    const/4 v14, 0x4

    aput v8, v5, v14

    const/4 v8, 0x5

    aput v2, v5, v8

    iget-object v8, v9, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    :cond_3
    :try_start_6
    monitor-exit v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v4

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v13

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v4

    monitor-enter v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_10

    :try_start_7
    iget-object v15, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v9, v15, v10

    aput v14, v15, v7

    aput v2, v15, v11

    aput v8, v15, v12

    const/4 v8, 0x4

    aput v14, v15, v8

    const/4 v8, 0x5

    aput v2, v15, v8

    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    :cond_4
    :try_start_8
    monitor-exit v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v4

    iget v14, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v13

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v13

    monitor-enter v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    :try_start_9
    iget-object v15, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v9, v15, v10

    aput v14, v15, v7

    aput v2, v15, v11

    aput v9, v15, v12

    const/4 v9, 0x4

    aput v8, v15, v9

    const/4 v8, 0x5

    aput v2, v15, v8

    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_5

    invoke-virtual {v8, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    :cond_5
    :try_start_a
    monitor-exit v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v4

    iget v4, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v13

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v13

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_10

    :try_start_b
    iget-object v13, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v9, v13, v10

    aput v4, v13, v7

    aput v2, v13, v11

    aput v9, v13, v12

    const/4 v4, 0x4

    aput v8, v13, v4

    const/4 v4, 0x5

    aput v2, v13, v4

    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    :cond_6
    :try_start_c
    monitor-exit v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const v5, 0x3df01ac5

    mul-float/2addr v4, v5

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->top:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v5

    const v5, 0x3db41414

    mul-float/2addr v8, v5

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v13, v4

    iget v14, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v8

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v4

    monitor-enter v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_10

    :try_start_d
    iget-object v15, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v15, v10

    aput v14, v15, v7

    aput v2, v15, v11

    aput v9, v15, v12

    const/4 v9, 0x4

    aput v14, v15, v9

    const/4 v9, 0x5

    aput v2, v15, v9

    iget-object v9, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_7

    invoke-virtual {v9, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :cond_7
    :try_start_e
    monitor-exit v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v13, v4

    iget v14, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v14, v8

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v4

    monitor-enter v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    :try_start_f
    iget-object v15, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v15, v10

    aput v14, v15, v7

    aput v2, v15, v11

    aput v9, v15, v12

    const/4 v9, 0x4

    aput v14, v15, v9

    const/4 v9, 0x5

    aput v2, v15, v9

    iget-object v9, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_8

    invoke-virtual {v9, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :cond_8
    :try_start_10
    monitor-exit v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v13, v4

    iget v14, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v8

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v8

    monitor-enter v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    :try_start_11
    iget-object v15, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v15, v10

    aput v14, v15, v7

    aput v2, v15, v11

    aput v13, v15, v12

    const/4 v13, 0x4

    aput v9, v15, v13

    const/4 v9, 0x5

    aput v2, v15, v9

    iget-object v9, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_9

    invoke-virtual {v9, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :cond_9
    :try_start_12
    monitor-exit v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v4

    iget v4, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v8

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v8

    monitor-enter v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    :try_start_13
    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v8, v10

    aput v4, v8, v7

    aput v2, v8, v11

    aput v13, v8, v12

    const/4 v4, 0x4

    aput v9, v8, v4

    const/4 v4, 0x5

    aput v2, v8, v4

    iget-object v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :cond_a
    :try_start_14
    monitor-exit v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_b

    neg-float v8, v8

    neg-float v4, v4

    :cond_b
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/RectF;->left:F

    iget v14, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v6

    sub-float v6, v14, v8

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v14, v8

    monitor-enter v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    :try_start_15
    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v13, v8, v10

    aput v6, v8, v7

    aput v2, v8, v11

    aput v9, v8, v12

    const/4 v6, 0x4

    aput v14, v8, v6

    const/4 v6, 0x5

    aput v2, v8, v6

    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_c

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :cond_c
    :try_start_16
    monitor-exit v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v3

    sub-float v3, v8, v4

    iget v9, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v4

    iget v4, v6, Landroid/graphics/RectF;->bottom:F

    monitor-enter v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    :try_start_17
    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v3, v6, v10

    aput v9, v6, v7

    aput v2, v6, v11

    aput v8, v6, v12

    const/4 v3, 0x4

    aput v4, v6, v3

    const/4 v3, 0x5

    aput v2, v6, v3

    iget-object v3, v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :cond_d
    :try_start_18
    monitor-exit v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v4, 0x3e904104

    mul-float/2addr v3, v4

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v4

    const v4, 0x3ead5555

    mul-float/2addr v5, v4

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v3

    iget v9, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v5

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v3

    monitor-enter v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    :try_start_19
    iget-object v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v8, v13, v10

    aput v9, v13, v7

    aput v2, v13, v11

    aput v6, v13, v12

    const/4 v6, 0x4

    aput v9, v13, v6

    const/4 v6, 0x5

    aput v2, v13, v6

    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_e

    invoke-virtual {v6, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :cond_e
    :try_start_1a
    monitor-exit v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v3

    iget v9, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v5

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v3

    monitor-enter v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    :try_start_1b
    iget-object v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v8, v13, v10

    aput v9, v13, v7

    aput v2, v13, v11

    aput v6, v13, v12

    const/4 v6, 0x4

    aput v9, v13, v6

    const/4 v6, 0x5

    aput v2, v13, v6

    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_f

    invoke-virtual {v6, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :cond_f
    :try_start_1c
    monitor-exit v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v3

    iget v9, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v5

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v5

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    :try_start_1d
    iget-object v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v8, v13, v10

    aput v9, v13, v7

    aput v2, v13, v11

    aput v8, v13, v12

    const/4 v8, 0x4

    aput v6, v13, v8

    const/4 v6, 0x5

    aput v2, v13, v6

    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v6, :cond_10

    invoke-virtual {v6, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :cond_10
    :try_start_1e
    monitor-exit v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mTE42Color:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v4, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mLineWidth:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mRect:Landroid/graphics/RectF;

    iget v8, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v3

    iget v3, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v5

    monitor-enter v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    :try_start_1f
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    aput v8, v5, v10

    aput v3, v5, v7

    aput v2, v5, v11

    aput v8, v5, v12

    const/4 v3, 0x4

    aput v6, v5, v3

    const/4 v3, 0x5

    aput v2, v5, v3

    iget-object v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :cond_11
    :try_start_20
    monitor-exit v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->setDrawList(Ljava/util/ArrayList;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_21
    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_6
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_7
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_8
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_9
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_a
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_b
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_c
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit v9

    throw v0

    :catchall_e
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v4

    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_10

    :cond_12
    :goto_0
    monitor-exit p0

    return-void

    :catchall_10
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

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->batchDraw([F[F)V

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

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

.method public final setGridType(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mGridType:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->buildGrid()V

    return-void
.end method

.method public final unloadTexture()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GridTexture;->mBatch:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->clearDrawList()V

    return-void
.end method
