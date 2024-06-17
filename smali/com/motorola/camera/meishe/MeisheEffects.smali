.class public abstract Lcom/motorola/camera/meishe/MeisheEffects;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mEffects:Ljava/util/LinkedList;

.field public static mKeepLiveFilter:Ljava/lang/String;

.field public static mLutFiles:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "MeisheEffects"

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;

    :try_start_0
    const-string v1, "meishe-nv-effects-thumbnails"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "error loading meishe-nv-effects-thumbnails.so"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "msluts"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Failed to get Meishe asset file list."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static declared-synchronized clearEffects()V
    .locals 2

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_clear_meishe_effect_thumbnails()V

    sget-object v1, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized configureThumbnails(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 13

    const-class v1, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v1

    move/from16 v0, p7

    int-to-float v0, v0

    move v2, p0

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    rem-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v0

    invoke-static/range {p5 .. p5}, Lcom/motorola/camera/meishe/MeisheEffects;->sortEffects([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MeisheEffects"

    const-string v3, "unable to sort meishe effects list"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x1

    add-int/lit8 v10, v3, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const-string v3, "Original"

    const/4 v12, 0x0

    aput-object v3, v11, v12

    array-length v3, v0

    invoke-static {v0, v12, v11, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v7, v2

    move-object v8, v11

    move/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/motorola/camera/meishe/MeisheEffects;->native_configure_bitmap_container(Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;I)V

    :goto_0
    if-ge v12, v10, :cond_2

    aget-object v0, v11, v12

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/motorola/camera/meishe/MeisheEffects;->native_add_meishe_effect_thumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "MeisheEffects"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to add meishe thumbnail effect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized deinit()V
    .locals 2

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_denit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init()V
    .locals 2

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_init()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static synchronized native native_add_meishe_effect_thumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.end method

.method private static synchronized native native_clear_meishe_effect_thumbnails()V
.end method

.method private static synchronized native native_configure_bitmap_container(Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;I)V
.end method

.method private static synchronized native native_denit()V
.end method

.method private static synchronized native native_init()Z
.end method

.method private static synchronized native native_process_thumbnails(IIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)Z
.end method

.method public static declared-synchronized processThumbnails(Landroid/media/Image;II)V
    .locals 15

    const-class v1, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    aget-object v6, v0, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aget-object v4, v0, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v4, 0x1

    aget-object v8, v0, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    aget-object v9, v0, v4

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    aget-object v4, v0, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v4, 0x2

    aget-object v11, v0, v4

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    aget-object v12, v0, v4

    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v0

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-static/range {v2 .. v14}, Lcom/motorola/camera/meishe/MeisheEffects;->native_process_thumbnails(IIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static sortEffects([Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    sget-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    array-length v2, v2

    const-string v3, "MeisheEffects"

    if-eq v1, v2, :cond_1

    const-string p0, "sortEffects: wrong number of effects in order array"

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    array-length v4, v2

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "sortEffects: effect "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in order list"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    array-length v2, v1

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    move v2, v0

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_8

    aget-object v3, v1, v2

    move v4, v0

    :goto_3
    array-length v5, p0

    if-ge v4, v5, :cond_7

    aget-object v5, p0, v4

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    if-ne v2, v4, :cond_5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    aget-object v3, p0, v2

    aget-object v5, p0, v4

    aput-object v5, p0, v2

    aput-object v3, p0, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    sput-object p0, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method
