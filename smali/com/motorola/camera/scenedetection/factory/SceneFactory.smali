.class public abstract Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final factory$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$3:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->factory$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static getFocusTooFarScene()Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;
    .locals 11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackZoomBlendingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_1
    move-object v8, v0

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/4 v3, 0x1

    invoke-static {v2}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getLensSceneTextResource(Lcom/motorola/camera/scenedetection/scene/Scene$Type;)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    return-object v0

    :cond_2
    const-string v0, "SceneFactory"

    const-string v1, "Macro exit scene raised by MCF in non-macro mode?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLensSceneTextResource(Lcom/motorola/camera/scenedetection/scene/Scene$Type;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const-string p0, "SceneFactory"

    const-string v0, "Lens scene text resource not found"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f12061f

    goto :goto_0

    :cond_0
    const p0, 0x7f12002e

    goto :goto_0

    :cond_1
    const p0, 0x7f12002c

    :goto_0
    return p0
.end method


# virtual methods
.method public getBlueSkyScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFireworksScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FIREWORKS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120020

    const/16 v3, 0xc

    const/4 v4, 0x1

    sget-object v5, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object p0
.end method

.method public getFlashScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlowerScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120022

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidAWBTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public getGreeneryScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHolidayLightsScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->HOLIDAY_LIGHTS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120024

    const/16 v3, 0xe

    const/4 v4, 0x1

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public getMoonScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOON:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120026

    const/4 v3, 0x5

    const/4 v4, 0x1

    sget-object v5, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object p0
.end method

.method public getPetMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120027

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 18

    const-string v0, "sceneType"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v3, 0x1

    const-string v1, "getCurrentCameraType()"

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getGreeneryScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFlowerScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFlashScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    :pswitch_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result v0

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsHelper;->isGroupSelfieSupported(Z)Z

    move-result v6

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontUwCamera()Z

    move-result v7

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnlyInBackMain()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v8, v7, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    iget-object v10, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-virtual {v8, v9, v7, v10}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Landroid/util/Size;)Z

    move-result v7

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackWideCamera()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v7, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    sget-object v9, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GROUPSHOT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-eqz v7, :cond_b

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    :goto_2
    move-object v15, v0

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackZoomBlendingCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    goto :goto_2

    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-eq v15, v6, :cond_6

    if-eqz v0, :cond_5

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-eq v15, v0, :cond_6

    :cond_5
    move v13, v2

    goto :goto_4

    :cond_6
    move v13, v4

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_SCENE_DETECTION_GROUPSHOT_JUMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v2, v4

    :goto_5
    if-eqz v2, :cond_8

    const/4 v3, 0x2

    :cond_8
    move v10, v3

    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v5, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    :cond_9
    move-object/from16 v16, v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMinUIZoomX()F

    move-result v0

    goto :goto_6

    :cond_a
    invoke-static {v15}, Lcom/motorola/camera/utility/ZoomHelper;->getMinRealZoomX(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    :goto_6
    move v12, v0

    new-instance v5, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    const v11, 0x7f120031

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v14

    invoke-static {v14, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraType"

    invoke-static {v15, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v17}, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    goto/16 :goto_8

    :cond_b
    if-eqz v6, :cond_e

    if-eqz v0, :cond_e

    new-instance v5, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;

    const v0, 0x7f12002b

    const/16 v1, 0x9

    const v2, 0x7f0801e8

    invoke-direct {v5, v9, v2, v0, v1}, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    goto/16 :goto_8

    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFocusTooFarScene()Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    move-result-object v5

    goto/16 :goto_8

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getBlueSkyScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto/16 :goto_8

    :pswitch_7
    new-instance v0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    invoke-static {v2}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getLensSceneTextResource(Lcom/motorola/camera/scenedetection/scene/Scene$Type;)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    move-object v5, v0

    goto :goto_8

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFireworksScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getMoonScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getHolidayLightsScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p2, :cond_c

    goto :goto_7

    :cond_c
    move v2, v4

    :goto_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightSupported()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NIGHT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v3, 0x7f12002d

    const/16 v4, 0xe

    if-eqz v0, :cond_d

    if-eqz v2, :cond_d

    new-instance v5, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;

    const/16 v0, 0x18

    invoke-direct {v5, v1, v4, v3, v0}, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    goto :goto_8

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperPortraitSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v2, :cond_e

    new-instance v5, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;

    const/16 v0, 0x1f

    invoke-direct {v5, v1, v4, v3, v0}, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V

    goto :goto_8

    :pswitch_d
    new-instance v5, Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;

    invoke-direct {v5}, Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;-><init>()V

    goto :goto_8

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getToddlerMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getPetMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    goto :goto_8

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object v5

    :cond_e
    :goto_8
    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120029

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/16 v5, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method

.method public getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 0

    sget-object p0, Lcom/motorola/camera/utility/lens/LensApiHelper;->instance$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lkotlin/UShort$Companion;->getInstance()Lcom/motorola/camera/utility/lens/LensApiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;

    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getToddlerMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 6

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TODDLER_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120027

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V

    return-object p0
.end method
