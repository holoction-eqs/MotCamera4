.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;


# static fields
.field public static final VERTICES_DATA:[F


# instance fields
.field public mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public mAtlasMap:Landroidx/work/impl/StartStopTokens;

.field public mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->VERTICES_DATA:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    new-instance p1, Landroidx/work/impl/StartStopTokens;

    const/16 p2, 0xe

    invoke-direct {p1, p2}, Landroidx/work/impl/StartStopTokens;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/work/impl/StartStopTokens;

    return-void
.end method

.method public static getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/motorola/camera/fsm/ChangeEvent;
    .locals 8

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->LDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/4 v1, 0x1

    if-ne v0, p0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto/16 :goto_7

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto/16 :goto_7

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->TVDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto/16 :goto_7

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_f

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI260_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v2, p0, :cond_f

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI280_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v2, p0, :cond_f

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v2, p0, :cond_f

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v2, p0, :cond_3

    goto/16 :goto_5

    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/4 v2, 0x2

    if-eq v0, p0, :cond_e

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v3, p0, :cond_4

    goto/16 :goto_4

    :cond_4
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v3, p0, :cond_d

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v3, p0, :cond_5

    goto/16 :goto_3

    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI400_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/4 v3, 0x3

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI420_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_b

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_b

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_7

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    const/4 v3, 0x4

    if-eq v0, p0, :cond_a

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_8

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_9

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(II)V

    goto :goto_7

    :cond_9
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto :goto_7

    :cond_a
    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(II)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_7

    :cond_b
    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(II)V

    goto :goto_7

    :cond_c
    :goto_2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(II)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_7

    :cond_d
    :goto_3
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto :goto_6

    :cond_e
    :goto_4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto :goto_7

    :cond_f
    :goto_5
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    :goto_6
    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    :goto_7
    new-instance v1, Lcom/motorola/camera/fsm/ChangeEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    iput-object p0, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    const-string v0, "TextureAtlasComponent"

    const-string v3, "Unable to load atlas for DPI "

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "textureatlas/drawable_atlas_texture_%s.webp"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    if-eqz v4, :cond_12

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_11

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_8
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_9
    iput-object v2, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public final declared-synchronized getSpriteData(I)Landroidx/work/WorkQuery$Builder;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/work/impl/StartStopTokens;

    iget-object v0, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/work/impl/StartStopTokens;

    iget-object v0, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v1, Landroidx/work/WorkQuery$Builder;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroidx/work/WorkQuery$Builder;-><init>(I)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSourceSize:Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v2, v1, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSpriteSourceSize:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v0, v1, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getVerticeData(I)[F

    move-result-object p1

    iput-object p1, v1, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Sprite not found"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TextureAtlasComponent"

    return-object p0
.end method

.method public final getVerticeData(I)[F
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/work/impl/StartStopTokens;

    iget-object v0, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/work/impl/StartStopTokens;

    iget-object v0, v0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/work/impl/StartStopTokens;

    iget-object p0, p0, Landroidx/work/impl/StartStopTokens;->runs:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrameRel:Landroid/graphics/RectF;

    goto :goto_2

    :cond_3
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    :goto_2
    const/16 p1, 0x14

    new-array v0, p1, [F

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->VERTICES_DATA:[F

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroid/graphics/RectF;->left:F

    const/16 v1, 0xd

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    const/16 v1, 0x9

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    iget p1, p0, Landroid/graphics/RectF;->right:F

    const/16 v1, 0x12

    aput p1, v0, v1

    const/16 v1, 0x8

    aput p1, v0, v1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    const/16 p1, 0x13

    aput p0, v0, p1

    const/16 p1, 0xe

    aput p0, v0, p1

    return-object v0
.end method

.method public final loadTextures()Z
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/motorola/camera/fsm/ChangeEvent;

    move-result-object v0

    iget-object v3, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/motorola/camera/fsm/ChangeEvent;

    move-result-object v0

    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget-object v3, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mType:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/StartStopTokens;

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/work/impl/StartStopTokens;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    const v3, 0x84c2

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    const/16 v4, 0xde1

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->generateTexture(I)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    iget-object p0, v0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->texImage2D(Landroid/graphics/Bitmap;)V

    const/4 p0, -0x1

    if-eq v3, p0, :cond_1

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    :cond_1
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Atlas image loaded dur:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TextureAtlasComponent"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 0

    return-void
.end method

.method public final unloadTextures()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/work/impl/StartStopTokens;

    invoke-virtual {v0}, Landroidx/work/impl/StartStopTokens;->clear()V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    :cond_0
    return-void
.end method
