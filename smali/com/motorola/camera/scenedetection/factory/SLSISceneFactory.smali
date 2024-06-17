.class public final Lcom/motorola/camera/scenedetection/factory/SLSISceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "SourceFile"


# virtual methods
.method public final getFireworksScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 7

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FIREWORKS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120020

    const-wide/16 v3, 0xb

    const/4 v5, 0x1

    sget-object v6, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object p0
.end method

.method public final getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 7

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120022

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZI)V

    return-object p0
.end method

.method public final getHolidayLightsScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 7

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->HOLIDAY_LIGHTS:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120024

    const-wide/16 v3, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZI)V

    return-object p0
.end method

.method public final getMoonScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 7

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOON:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120026

    const-wide/16 v3, 0xa

    const/4 v5, 0x1

    sget-object v6, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-object p0
.end method

.method public final getPetMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 7

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120027

    const-wide/16 v3, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZI)V

    return-object p0
.end method

.method public final getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 7

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120029

    const-wide/16 v3, 0x9

    const/4 v5, 0x1

    const/16 v6, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZI)V

    return-object p0
.end method

.method public final getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 7

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f12002a

    const-wide/16 v3, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZI)V

    return-object p0
.end method

.method public final getToddlerMotionScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 7

    new-instance p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TODDLER_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v2, 0x7f120027

    const-wide/16 v3, 0x4

    const/4 v5, 0x0

    const/16 v6, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZI)V

    return-object p0
.end method
