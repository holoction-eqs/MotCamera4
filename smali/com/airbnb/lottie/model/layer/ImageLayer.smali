.class public final Lcom/airbnb/lottie/model/layer/ImageLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final dst:Ljava/lang/Object;

.field public imageAnimation:Ljava/lang/Object;

.field public final lottieImageAsset:Ljava/lang/Object;

.field public final paint:Lcom/airbnb/lottie/animation/LPaint;

.field public final src:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;I)V
    .locals 1

    iput p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-instance p3, Lcom/airbnb/lottie/animation/LPaint;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Lcom/airbnb/lottie/animation/LPaint;-><init>(I)V

    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Lcom/airbnb/lottie/animation/LPaint;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/os/Parcelable;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Ljava/lang/Object;

    iget-object p1, p1, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    iget-object p2, p2, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieImageAsset;

    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Ljava/lang/Object;

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/os/Parcelable;

    new-instance p1, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {p1}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Lcom/airbnb/lottie/animation/LPaint;

    const/16 p3, 0x8

    new-array p3, p3, [F

    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Ljava/lang/Object;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Ljava/lang/Object;

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p0, p2, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final addValueCallback(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p2, v0, :cond_1

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->IMAGE:Landroid/graphics/Bitmap;

    if-ne p2, v0, :cond_3

    if-nez p1, :cond_2

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    if-ne p2, v0, :cond_5

    if-nez p1, :cond_4

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_2

    :cond_4
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    iget v0, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->$r8$classId:I

    iget-object v4, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Ljava/lang/Object;

    iget-object v5, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Lcom/airbnb/lottie/animation/LPaint;

    iget-object v6, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Ljava/lang/Object;

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v8, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    iget-object v9, v0, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    iget-object v0, v8, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    const/4 v10, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v11

    if-nez v11, :cond_1

    goto :goto_0

    :cond_1
    instance-of v12, v11, Landroid/view/View;

    if-eqz v12, :cond_2

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    goto :goto_1

    :cond_2
    :goto_0
    move-object v11, v10

    :goto_1
    iget-object v0, v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    instance-of v12, v0, Landroid/app/Application;

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    :cond_3
    if-ne v11, v0, :cond_4

    move v0, v7

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    iput-object v10, v8, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    :cond_5
    iget-object v0, v8, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-nez v0, :cond_6

    new-instance v0, Lcom/airbnb/lottie/manager/ImageAssetManager;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v11

    iget-object v12, v8, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    iget-object v13, v8, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v13, v13, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    invoke-direct {v0, v11, v12, v13}, Lcom/airbnb/lottie/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, v8, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    :cond_6
    iget-object v0, v8, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz v0, :cond_e

    iget-object v11, v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    iget-object v12, v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/airbnb/lottie/LottieImageAsset;

    if-nez v12, :cond_7

    goto/16 :goto_7

    :cond_7
    iget-object v13, v12, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_8

    move-object v0, v13

    goto/16 :goto_8

    :cond_8
    iget-object v13, v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    if-nez v13, :cond_9

    goto/16 :goto_7

    :cond_9
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v7, v10, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v14, 0xa0

    iput v14, v10, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v14, "data:"

    iget-object v15, v12, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v14, "base64,"

    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_a

    const/16 v11, 0x2c

    :try_start_0
    invoke-virtual {v15, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-static {v7, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v12, v7

    invoke-static {v7, v11, v12, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v10, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v7, "data URL did not have correct base64 format."

    const/4 v9, 0x0

    move-object v10, v9

    goto/16 :goto_6

    :cond_a
    :try_start_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v13, 0x0

    :try_start_2
    invoke-static {v11, v13, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v10, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Decoded image `"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "` is null."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    move-object v10, v13

    goto :goto_7

    :cond_b
    iget v11, v12, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    iget v12, v12, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    sget-object v14, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Lcom/airbnb/lottie/utils/Utils$1;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-ne v14, v11, :cond_c

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-ne v14, v12, :cond_c

    move-object v7, v10

    goto :goto_3

    :cond_c
    invoke-static {v10, v11, v12, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :goto_3
    move-object v10, v13

    :goto_4
    sget-object v11, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_3
    iget-object v0, v0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    iput-object v7, v0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    monitor-exit v11

    move-object v0, v7

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    const-string v7, "Unable to decode image `"

    const-string v10, "`."

    invoke-static {v7, v9, v10}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v10, v13

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v9, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    const/4 v7, 0x0

    :goto_5
    const-string v9, "Unable to open asset."

    move-object v10, v7

    move-object v7, v9

    :goto_6
    invoke-static {v7, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_7
    move-object v0, v10

    :goto_8
    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    move-object v0, v6

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_9

    :cond_10
    move-object v0, v10

    :goto_9
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_14

    check-cast v6, Lcom/airbnb/lottie/LottieImageAsset;

    if-nez v6, :cond_11

    goto :goto_b

    :cond_11
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v7

    invoke-virtual {v5, v3}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    iget-object v3, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/os/Parcelable;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v10, v3, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v3, v8, Lcom/airbnb/lottie/LottieDrawable;->maintainOriginalImageBounds:Z

    if-eqz v3, :cond_13

    move-object v3, v4

    check-cast v3, Landroid/graphics/Rect;

    iget v8, v6, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iget v6, v6, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    goto :goto_a

    :cond_13
    move-object v3, v4

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v8, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    :goto_a
    int-to-float v6, v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v7, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_14
    :goto_b
    return-void

    :goto_c
    iget-object v0, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/model/layer/Layer;

    iget v0, v0, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_e

    :cond_15
    iget-object v8, v1, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v8, v8, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast v8, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v8, :cond_16

    const/16 v8, 0x64

    goto :goto_d

    :cond_16
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_d
    int-to-float v3, v3

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v3, v9

    int-to-float v0, v0

    div-float/2addr v0, v9

    int-to-float v8, v8

    mul-float/2addr v0, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v0, v8

    mul-float/2addr v0, v3

    mul-float/2addr v0, v9

    float-to-int v0, v0

    invoke-virtual {v5, v0}, Lcom/airbnb/lottie/animation/LPaint;->setAlpha(I)V

    iget-object v3, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->colorFilterAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_17
    if-lez v0, :cond_18

    check-cast v4, [F

    const/4 v0, 0x0

    const/4 v3, 0x0

    aput v0, v4, v3

    aput v0, v4, v7

    iget-object v1, v1, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/layer/Layer;

    iget v3, v1, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    int-to-float v3, v3

    const/4 v8, 0x2

    aput v3, v4, v8

    const/4 v9, 0x3

    aput v0, v4, v9

    const/4 v10, 0x4

    aput v3, v4, v10

    iget v1, v1, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    int-to-float v1, v1

    const/4 v3, 0x5

    aput v1, v4, v3

    const/4 v11, 0x6

    aput v0, v4, v11

    const/4 v0, 0x7

    aput v1, v4, v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    aget v1, v4, v1

    aget v12, v4, v7

    invoke-virtual {v6, v1, v12}, Landroid/graphics/Path;->moveTo(FF)V

    aget v1, v4, v8

    aget v8, v4, v9

    invoke-virtual {v6, v1, v8}, Landroid/graphics/Path;->lineTo(FF)V

    aget v1, v4, v10

    aget v3, v4, v3

    invoke-virtual {v6, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    aget v1, v4, v11

    aget v0, v4, v0

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v0, 0x0

    aget v0, v4, v0

    aget v1, v4, v7

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_18
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer;->boundsMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->$r8$classId:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieImageAsset:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/LottieImageAsset;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result p2

    iget p3, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    iget p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    invoke-virtual {p1, v2, v2, p3, p0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/os/Parcelable;

    check-cast p2, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->imageAnimation:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/model/layer/Layer;

    iget p3, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    int-to-float p3, p3

    iget p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    int-to-float p0, p0

    invoke-virtual {p2, v2, v2, p3, p0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
