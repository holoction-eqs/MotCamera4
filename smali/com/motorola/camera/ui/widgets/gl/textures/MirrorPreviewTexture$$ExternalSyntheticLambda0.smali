.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v4

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->LICENSE_FILES:Ljava/util/ArrayList;

    new-instance v6, Ljava/io/File;

    const-string v7, "/vendor/etc/meishe/license/"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const-string v8, ".lic"

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_1

    array-length v7, v6

    move v9, v3

    :goto_0
    if-ge v9, v7, :cond_1

    aget-object v10, v6, v9

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->LICENSE_FILES:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object v4

    iput-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    new-instance v4, Lcom/meicam/effect/sdk/NvsVideoResolution;

    invoke-direct {v4}, Lcom/meicam/effect/sdk/NvsVideoResolution;-><init>()V

    iput-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    new-instance v5, Lcom/meicam/effect/sdk/NvsRational;

    invoke-direct {v5, v7, v7}, Lcom/meicam/effect/sdk/NvsRational;-><init>(II)V

    iput-object v5, v4, Lcom/meicam/effect/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/effect/sdk/NvsRational;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMeiSheVideoFxConfigs:Ljava/util/Map;

    const-string v9, "/vendor/etc/meishe/frame/"

    const-string v10, ".videofx"

    invoke-static {v9, v10, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->loadEffectFilePaths(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMeiSheAnimatedStickerConfigs:Ljava/util/Map;

    const-string v9, "/vendor/etc/meishe/effect/"

    const-string v10, ".animatedsticker"

    invoke-static {v9, v10, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->loadEffectFilePaths(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    move v6, v3

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    const-string v11, "."

    if-ge v6, v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v14, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/effect/sdk/NvsAssetPackageManager;

    move-result-object v12

    const/16 v16, 0x1

    const/4 v15, 0x0

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Lcom/meicam/effect/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v11

    if-eqz v11, :cond_3

    if-eq v11, v10, :cond_3

    move v10, v3

    goto :goto_2

    :cond_3
    move v10, v7

    :goto_2
    if-nez v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/meicam/effect/sdk/NvsRational;

    invoke-direct {v12, v7, v7}, Lcom/meicam/effect/sdk/NvsRational;-><init>(II)V

    invoke-virtual {v10, v11, v12}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object v10

    iget-object v11, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mFrameFilterUuid:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/effect/sdk/NvsAssetPackageManager;

    move-result-object v12

    const/16 v16, 0x1

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lcom/meicam/effect/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v9

    if-eqz v9, :cond_6

    if-eq v9, v10, :cond_6

    move v9, v3

    goto :goto_5

    :cond_6
    move v9, v7

    :goto_5
    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    new-instance v9, Lcom/meicam/effect/sdk/NvsRational;

    invoke-direct {v9, v7, v7}, Lcom/meicam/effect/sdk/NvsRational;-><init>(II)V

    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v12

    const-wide/16 v13, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const/16 v17, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v9

    invoke-virtual/range {v12 .. v19}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createAnimatedSticker(JJZLjava/lang/String;Lcom/meicam/effect/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;

    move-result-object v9

    iget-object v12, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v9, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectFilterUuid:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mTimeStamp:J

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    goto :goto_7

    :cond_9
    if-ne v4, v7, :cond_a

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedFrameIndex:I

    iput v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->switchFrameIndex(I)V

    :cond_a
    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    if-ne v4, v10, :cond_c

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectIndex:I

    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    add-int/2addr v3, v2

    if-ne v3, v2, :cond_b

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    :cond_b
    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    :cond_c
    :goto_7
    iput-boolean v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mInitFinished:Z

    :goto_8
    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInitFinished:Z

    return-void

    :goto_9
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInitFinished:Z

    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->close()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mInitFinished:Z

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-eqz v4, :cond_e

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meicam/effect/sdk/NvsEffect;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v6, v5}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    invoke-virtual {v5}, Lcom/meicam/effect/sdk/NvsEffect;->release()V

    goto :goto_a

    :cond_d
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meicam/effect/sdk/NvsEffect;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v6, v5}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    invoke-virtual {v5}, Lcom/meicam/effect/sdk/NvsEffect;->release()V

    goto :goto_b

    :cond_e
    iget-boolean v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    if-eqz v4, :cond_f

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v4}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearCacheResources()V

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v4}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->cleanUp()V

    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    :cond_f
    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
