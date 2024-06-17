.class public Lcom/motorola/camera/service/WatermarkEditorService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field public static final AREA_RATIO:F

.field public static final SCALE_LINE:F

.field public static final SCALE_LOGO:F

.field public static final SCALE_SHOT_BY:F

.field public static final SCALE_SHOT_BY_BASELINE:F

.field public static final SCALE_SHOT_ON:F

.field public static final SCALE_SHOT_ON_BASELINE:F

.field public static final SCALE_SHOT_ON_SECOND_BASELINE:F

.field public static final SCALE_TS_TEXT:F

.field public static final SCALE_TS_X:F

.field public static final SCALE_TS_Y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070517

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070516

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v0, v1

    sput v0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v3, 0x7f07051e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    sput v3, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_LOGO:F

    const v3, 0x7f07051b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    sput v3, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_LINE:F

    const v3, 0x7f070526

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v3, v1

    sput v3, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON:F

    const v3, 0x7f070527

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    sput v4, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON_BASELINE:F

    const v4, 0x7f070528

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    sput v4, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON_SECOND_BASELINE:F

    const v4, 0x7f070518

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    sput v4, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_BY:F

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f070519

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v4, v3

    div-float/2addr v4, v1

    sput v4, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_BY_BASELINE:F

    const v3, 0x7f07052a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v3, v4

    sput v3, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_X:F

    const v3, 0x7f07052b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v3, v2

    sput v3, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_Y:F

    const v2, 0x7f07052c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    sput v0, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_TEXT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "WatermarkEditorService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static addWatermarkToBitmap(Landroid/graphics/Bitmap;ZZZJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-string v2, "_0"

    const-string v3, ""

    const-string v4, "Watermark file doesn\'t exist! file name: "

    const-string v5, "Watermark size is unknown! key: "

    const-string v6, "WatermarkEditorService"

    if-nez v0, :cond_0

    const-string v0, "Invalid jpeg bitmap"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v7, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    const-string v8, "front"

    goto :goto_0

    :cond_1
    const-string v8, "rear"

    :goto_0
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v9

    invoke-static {v9}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/util/Size;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/util/Size;-><init>(II)V

    invoke-static {v11}, Lcom/motorola/camera/service/WatermarkEditorService;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v13

    invoke-static {v10, v12, v13, v8}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v11, v1}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkOnDemand(Landroid/util/Size;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {v10}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v8}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v10, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v8, v4}, Lcom/motorola/camera/service/WatermarkEditorService;->loadWatermarkFileToBitmap(IILjava/io/File;F)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    :cond_5
    sget-object v4, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v4, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->watermarkFileCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;

    invoke-virtual {v4, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    if-eqz p2, :cond_a

    :try_start_2
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0603f4

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    int-to-float v1, v1

    sget v8, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_X:F

    mul-float/2addr v8, v1

    float-to-int v8, v8

    sget v10, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_Y:F

    mul-float/2addr v10, v1

    float-to-int v10, v10

    sget v12, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_TEXT:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v14, 0xff

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v15, 0x0

    if-eqz p1, :cond_7

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v13, v16, v17

    int-to-float v13, v13

    invoke-virtual {v14, v3, v13, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v14, v3, v15, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_7
    :goto_1
    invoke-static/range {p4 .. p5}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v13, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v13, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    int-to-float v13, v1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v3, v2, v13, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v5

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v13

    sub-int/2addr v5, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    if-eqz v9, :cond_8

    goto :goto_2

    :cond_8
    move v8, v5

    :goto_2
    int-to-float v5, v8

    int-to-float v8, v13

    invoke-virtual {v14, v3, v5, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v11}, Lcom/motorola/camera/service/WatermarkEditorService;->isStrokeSupport(Landroid/util/Size;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v4, v1}, Lcom/motorola/camera/service/WatermarkEditorService;->getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v14, v3, v5, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    move-object v3, v7

    :cond_a
    invoke-static {v0, v3, v2, v9}, Lcom/motorola/camera/mcf/MotUtil;->addWatermarkToBitmap(Ljava/lang/Object;Ljava/lang/Object;IZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {v7}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :goto_5
    return-void

    :goto_6
    invoke-static {v7}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    throw v0
.end method

.method public static cacheWatermarkItems(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "The picture size list is empty, facing: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WatermarkEditorService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    invoke-static {p2}, Lcom/motorola/camera/service/WatermarkEditorService;->getMaxSize(Ljava/util/ArrayList;)Landroid/util/Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;-><init>(Landroid/util/Size;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/service/WatermarkEditorService;->createWatermarkItem(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Landroid/util/Size;Ljava/lang/String;)Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v3, v4, v1, p1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mWatermarkItems:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static convertProductName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "5G"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_ASCII_WATERMARK:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductPrc()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static createWatermarkBitmap(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 12

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    iget v2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "WatermarkEditorService"

    const-string p1, "create signature bitmap error!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_0
    if-nez p3, :cond_1

    return-object v1

    :cond_1
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    invoke-virtual {p3, v8, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const v2, 0x7f0603f4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    iget v4, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoWidth:I

    iget v5, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoHeight:I

    invoke-static {p1, v4, v5}, Lcom/motorola/camera/service/WatermarkEditorService;->loadDrawableBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-boolean v7, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    if-eqz v7, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v7, v10

    goto :goto_0

    :cond_2
    move v7, v2

    :goto_0
    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget v10, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    iput v10, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v10, v7

    iput v10, v6, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v10, v7

    iput v10, v6, Landroid/graphics/Rect;->bottom:I

    const/16 v7, 0xff

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p3, p1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v4, v6, Landroid/graphics/Rect;->right:I

    iget v5, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    iget v2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    add-int v10, v4, v2

    iget-boolean v2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v10

    goto :goto_1

    :cond_3
    move v2, v10

    :goto_1
    const v4, 0x7f07051d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/lit8 v11, v4, 0x1

    int-to-float v3, v11

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v5, v2

    iget v2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineYStart:I

    int-to-float v4, v2

    iget v3, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineHeight:I

    add-int/2addr v2, v3

    int-to-float v6, v2

    move-object v2, p3

    move v3, v5

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    add-int/2addr v11, v2

    add-int v2, v11, v10

    iget-boolean v3, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    const v4, 0x7f120628

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/motorola/camera/Util;->getProductDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/service/WatermarkEditorService;->convertProductName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    iget v5, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeShotOn:I

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnBaseline:I

    iget v6, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotByBaseline:I

    goto :goto_4

    :cond_6
    iget v5, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnSecondBaseline:I

    move v6, v8

    :goto_4
    iget-boolean v7, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    if-eqz v7, :cond_7

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    float-to-int v3, v3

    sub-int/2addr v7, v3

    sub-int v3, v7, v2

    :cond_7
    int-to-float v7, v3

    int-to-float v5, v5

    invoke-virtual {p3, v4, v7, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v10, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeShotOn:I

    invoke-static {v0, v10}, Lcom/motorola/camera/service/WatermarkEditorService;->getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v10, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mPictureSize:Landroid/util/Size;

    invoke-static {v10}, Lcom/motorola/camera/service/WatermarkEditorService;->isStrokeSupport(Landroid/util/Size;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p3, v4, v7, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    iget v4, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeBy:I

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz v10, :cond_9

    iget v4, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeBy:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_9
    iget-boolean p0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    if-eqz p0, :cond_a

    invoke-virtual {v9, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    float-to-int p0, p0

    sub-int/2addr v3, p0

    sub-int/2addr v3, v2

    :cond_a
    int-to-float p0, v3

    int-to-float v2, v6

    invoke-virtual {p3, p2, p0, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v10, :cond_b

    invoke-virtual {p3, p2, p0, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v9, p2, v8, p3, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p0, v3, v6}, Landroid/graphics/Rect;->offset(II)V

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->top:I

    :cond_c
    :goto_5
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_f

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xdc

    if-ge v2, v3, :cond_e

    const/16 v3, 0x6e

    if-ge v2, v3, :cond_d

    move v0, v8

    goto :goto_6

    :cond_d
    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    :goto_6
    invoke-virtual {v1, p2, p3, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_e
    add-int/lit8 p3, p3, 0x1

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-le p3, v0, :cond_c

    iget p3, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_f
    invoke-static {p1}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :goto_7
    return-object v1
.end method

.method public static createWatermarkItem(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Landroid/util/Size;Ljava/lang/String;)Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;
    .locals 6

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mRotationX:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v2, v4

    iget-object v2, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mFaceRects:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    iget p0, p0, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->mImageId:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    div-float/2addr v2, p0

    div-float p0, v2, v3

    new-instance v0, Landroid/util/Size;

    float-to-int v1, v2

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    div-float/2addr v2, p0

    div-float p0, v2, v3

    new-instance v0, Landroid/util/Size;

    float-to-int v1, v2

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    :goto_0
    new-instance p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    invoke-direct {p0}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mIsRtl:Z

    invoke-static {v1}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLayoutDirection:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mPictureSize:Landroid/util/Size;

    iput-object p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mFacing:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3e2aaaab

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    int-to-float p2, p2

    mul-float/2addr v3, p2

    float-to-int v0, v3

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    sget v0, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_LOGO:F

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoWidth:I

    invoke-static {v0}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoHeight:I

    sget v0, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_LINE:F

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineHeight:I

    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeShotOn:I

    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_BY:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mTextSizeBy:I

    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON_BASELINE:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnBaseline:I

    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_ON_SECOND_BASELINE:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotOnSecondBaseline:I

    sget v1, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_SHOT_BY_BASELINE:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mShotByBaseline:I

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    iget v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoHeight:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLogoMargin:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mLineYStart:I

    iget p2, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    if-le p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x4

    iput p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    :cond_1
    iget p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    invoke-static {p1}, Lcom/motorola/camera/Util;->roundToFour(I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    return-object p0
.end method

.method public static filterPortraitSize(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static generateWatermarkFile(Ljava/lang/String;Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lcom/motorola/camera/service/WatermarkEditorService;->createWatermarkBitmap(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object p4

    invoke-direct {p3, p4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lcom/motorola/camera/service/WatermarkEditorService;->saveRawBitmapToFile(Ljava/io/File;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance p3, Landroid/util/Size;

    iget p4, p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    iget p1, p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    invoke-direct {p3, p4, p1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p3}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WatermarkEditorService"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static generateWatermarkOnDemand(Landroid/util/Size;Z)Z
    .locals 7

    invoke-static {p1}, Lcom/motorola/camera/service/WatermarkEditorService;->loadPictureSizes(Z)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->parsePictureSizes(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "front"

    goto :goto_0

    :cond_1
    const-string p1, "rear"

    :goto_0
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getSignatureText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    const v3, 0x7f080292

    :goto_2
    if-eqz v3, :cond_4

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v5, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->getMaxSize(Ljava/util/ArrayList;)Landroid/util/Size;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;-><init>(Landroid/util/Size;)V

    invoke-static {v5, p0, p1}, Lcom/motorola/camera/service/WatermarkEditorService;->createWatermarkItem(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Landroid/util/Size;Ljava/lang/String;)Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    move-result-object v0

    iget-object v5, v5, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:Ljava/io/Serializable;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v5, v6, p0, p1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, v2, v4}, Lcom/motorola/camera/service/WatermarkEditorService;->createWatermarkBitmap(Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/motorola/camera/service/WatermarkEditorService;->saveRawBitmapToFile(Ljava/io/File;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v2, Landroid/util/Size;

    iget v3, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkWidth:I

    iget v0, v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;->mWatermarkHeight:I

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "WatermarkEditorService"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    return v1
.end method

.method public static getCameraPictureSizes(Z)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1, v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, v2}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/VideoHelper;->getSupportedVideoSnapshotSizes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object p0

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraTypes()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontUwCamera()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliCamera()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliUwCamera()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/VideoHelper;->getSupportedVideoSnapshotSizes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->getSwapSize(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkEditorService;->filterPortraitSize(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static getLayoutDirection(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "rtl"

    goto :goto_0

    :cond_0
    const-string p0, "ltr"

    :goto_0
    return-object p0
.end method

.method public static getMaxSize(Ljava/util/ArrayList;)Landroid/util/Size;
    .locals 2

    new-instance v0, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method public static getSignatureText()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_check_signature"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "water_mark_pref_name"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const-string v1, "pref_key_signature"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, 0x7f0603f8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    int-to-float p0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-object v0
.end method

.method public static getSwapSize(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    new-instance v2, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTimestampString(J)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MMMdyyyyHm"

    goto :goto_0

    :cond_0
    const-string v0, "MMMdyyyyhm"

    :goto_0
    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "MMdyyyyHm"

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "dd"

    if-eqz v2, :cond_3

    const-string v2, "MMM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :goto_1
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWatermarkFileFolder()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "watermarks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method public static getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ".argb"

    invoke-static {p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWatermarkPref()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "com.motorola.camera_watermark"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isSignatureChecked()Z
    .locals 4

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_check_signature"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "water_mark_pref_name"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isStrokeSupport(Landroid/util/Size;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x6cc

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTimestampChecked()Z
    .locals 4

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_check_timestamp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v3
.end method

.method public static loadDrawableBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    const-string v1, "WatermarkEditorService"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "the logo drawable is null!"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    if-lez p1, :cond_2

    if-gtz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string p0, "width and height must be > 0"

    goto :goto_0

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int p2, p0, p1

    new-array p2, p2, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p2

    move v6, p0

    move v9, p0

    move v10, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v1, v0

    :goto_3
    if-ge v1, p1, :cond_5

    move v3, v0

    :goto_4
    if-ge v3, p0, :cond_4

    mul-int v4, v1, p0

    add-int/2addr v4, v3

    aget v5, p2, v4

    shr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_3

    move v6, v0

    goto :goto_5

    :cond_3
    const/16 v6, 0xf0

    :goto_5
    shl-int/lit8 v6, v6, 0x18

    const v7, 0xffffff

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p2

    move v6, p0

    move v9, p0

    move v10, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_6

    :cond_6
    const-string p0, "load watermark logo failed or no logo!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-object v2
.end method

.method public static loadPictureSizes(Z)Ljava/util/Set;
    .locals 4

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WatermarkEditorService"

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string p0, "supported_front_pic_sizes"

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t get front supported pic sizes!"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "supported_rear_pic_sizes"

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t get rear supported pic sizes!"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v2
.end method

.method public static loadWatermarkBitmap(Landroid/util/Size;Lcom/motorola/camera/PreviewSize;Landroid/util/SizeF;IZZJ)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "rear"

    goto :goto_0

    :cond_0
    const-string v2, "front"

    :goto_0
    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/service/WatermarkEditorService;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v3, v5, v6, v2}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, ""

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Watermark size is unknown! key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Watermark file doesn\'t exist! file name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {v3}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v7, v4

    invoke-static {v3, v2, v5, v7}, Lcom/motorola/camera/service/WatermarkEditorService;->loadWatermarkFileToBitmap(IILjava/io/File;F)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, "Failed to load watermark file!"

    :goto_2
    const-string v1, "WatermarkEditorService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3
    const v5, 0x3f0ccccd    # 0.55f

    const/4 v7, 0x0

    if-eqz p5, :cond_a

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v9

    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0603f4

    invoke-virtual {v10, v11, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    int-to-float v2, v2

    sget v11, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_X:F

    mul-float/2addr v11, v2

    float-to-int v11, v11

    sget v12, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_Y:F

    mul-float/2addr v12, v2

    float-to-int v12, v12

    sget v13, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_TEXT:F

    mul-float/2addr v2, v13

    float-to-int v2, v2

    iget v13, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v14, v0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v8

    mul-float/2addr v13, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    const/16 v14, 0x5a

    if-eq v14, v1, :cond_5

    const/16 v14, 0x10e

    if-ne v14, v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    :goto_4
    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v1, v14

    div-float/2addr v1, v13

    float-to-int v1, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-static {v1, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v15, 0xff

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v15, 0x0

    if-eqz p4, :cond_7

    if-eqz v9, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v8, v16, v17

    int-to-float v8, v8

    invoke-virtual {v5, v4, v8, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v5, v4, v15, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_5
    invoke-static/range {p6 .. p7}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    int-to-float v8, v2

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v13, v4, v7, v8, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v8

    sub-int/2addr v6, v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v12

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    move v11, v6

    :goto_6
    int-to-float v6, v11

    int-to-float v8, v8

    invoke-virtual {v5, v4, v6, v8, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/service/WatermarkEditorService;->isStrokeSupport(Landroid/util/Size;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v10, v2}, Lcom/motorola/camera/service/WatermarkEditorService;->getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v5, v4, v6, v8, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    move-object v4, v1

    :cond_a
    iget v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    float-to-int v1, v1

    invoke-static {v4, v0, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v4, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    return-object v0
.end method

.method public static loadWatermarkFileToBitmap(IILjava/io/File;F)Landroid/graphics/Bitmap;
    .locals 9

    const-string p3, "WatermarkEditorService"

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/motorola/camera/service/WatermarkEditorService;->readIntArrayFromFile(Ljava/io/File;)[I

    move-result-object v2

    array-length p2, v2

    mul-int v1, p0, p1

    if-ge p2, v1, :cond_0

    const-string p0, "Corrupted watermark data!"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v4, p0

    move v7, p0

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static migrateFiles()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parsePictureSizes(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 2

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->getSwapSize(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/motorola/camera/service/WatermarkEditorService;->filterPortraitSize(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-object v0, p0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readIntArrayFromFile(Ljava/io/File;)[I
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static recreateWatermarkFiles(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getSignatureText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const v1, 0x7f080292

    :goto_1
    if-eqz v1, :cond_2

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    new-instance v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    invoke-static {p1}, Lcom/motorola/camera/service/WatermarkEditorService;->getMaxSize(Ljava/util/ArrayList;)Landroid/util/Size;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;-><init>(Landroid/util/Size;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-static {v2, v3, p0}, Lcom/motorola/camera/service/WatermarkEditorService;->createWatermarkItem(Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;Landroid/util/Size;Ljava/lang/String;)Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    move-result-object v4

    iget-object v5, v2, Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;->ImageData:Ljava/io/Serializable;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v5, v6, v3, p0}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v3, v4, v1, v0, v5}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkFile(Ljava/lang/String;Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public static saveRawBitmapToFile(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v8, v6, v7

    new-array v9, v8, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v9

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    mul-int/lit8 v8, v8, 0x4

    :try_start_0
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.motorola.camera.service.action.CREATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "rear"

    const-string v2, "front"

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const-string p0, "com.motorola.camera.service.extra.BUNDLE"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "com.motorola.camera.service.extra.CACHE"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;

    sget-object p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    sget-object p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->watermarkFileCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->migrateFiles()V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/Util;->isBrandLenovo()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const v3, 0x7f080292

    :goto_1
    if-eqz v3, :cond_2

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v0, v3, p1, v1}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mWatermarkItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    iget-boolean v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mIsSignatureEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mSignatureText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mSignatureText:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mIsSignatureEnabled:Z

    invoke-static {p1, v0, v2, v1, v3}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkFile(Ljava/lang/String;Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mWatermarkItems:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;

    if-eqz v4, :cond_5

    if-ne v4, v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v5, p0, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->mIsSignatureEnabled:Z

    invoke-static {v3, v4, v2, v1, v5}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkFile(Ljava/lang/String;Lcom/motorola/camera/service/WatermarkEditorService$WatermarkItem;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    const-string p1, "com.motorola.camera.service.action.MIGRATE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string p1, "water_mark_pref_name"

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "pref_key_check_watermark"

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x1

    if-eqz p0, :cond_a

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    new-instance v5, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_a

    array-length v5, p0

    if-lez v5, :cond_a

    const-string v5, "^front_(\\d{3,4}x\\d{3,4})"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v6, "^back_(\\d{3,4}x\\d{3,4})"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    array-length v7, p0

    move v8, v3

    :goto_5
    if-ge v8, v7, :cond_a

    aget-object v9, p0, v8

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    const-string v10, "back"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    invoke-static {v4}, Lcom/motorola/camera/service/WatermarkEditorService;->loadPictureSizes(Z)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_7

    :cond_b
    move-object p1, p0

    :goto_7
    invoke-static {p1}, Lcom/motorola/camera/service/WatermarkEditorService;->parsePictureSizes(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {v2, p0}, Lcom/motorola/camera/service/WatermarkEditorService;->recreateWatermarkFiles(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_c
    invoke-static {v3}, Lcom/motorola/camera/service/WatermarkEditorService;->loadPictureSizes(Z)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_8

    :cond_d
    move-object v0, p0

    :goto_8
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->parsePictureSizes(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-static {v1, p0}, Lcom/motorola/camera/service/WatermarkEditorService;->recreateWatermarkFiles(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_e
    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->migrateFiles()V

    :cond_f
    return-void
.end method
