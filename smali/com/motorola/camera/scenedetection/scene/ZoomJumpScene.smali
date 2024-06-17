.class public final Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;
.super Lcom/motorola/camera/scenedetection/scene/ActionScene;
.source "SourceFile"


# instance fields
.field public final cameraType:Lcom/motorola/camera/settings/CameraType;

.field public final originCameraType:Lcom/motorola/camera/settings/CameraType;

.field public final persistOnLensSwitch:Z

.field public final zoomJump:Z

.field public final zoomRatio:F

.field public final zoomSegment:Lcom/motorola/camera/utility/ZoomSegment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIFZLcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V
    .locals 1

    const-string v0, "optType"

    invoke-static {p2, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    const-string v0, "originCameraType"

    invoke-static {p6, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraType"

    invoke-static {p7, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/scenedetection/scene/ActionScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;II)V

    iput p4, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomRatio:F

    iput-boolean p5, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomJump:Z

    iput-object p6, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->originCameraType:Lcom/motorola/camera/settings/CameraType;

    iput-object p7, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->cameraType:Lcom/motorola/camera/settings/CameraType;

    iput-object p8, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomSegment:Lcom/motorola/camera/utility/ZoomSegment;

    iput-boolean p9, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->persistOnLensSwitch:Z

    return-void
.end method


# virtual methods
.method public final doAction(Lcom/motorola/camera/EventListener;)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ZOOM_SEGMENT"

    iget-object v2, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "CAMERA_TYPE"

    iget-object v2, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->cameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "ORIGIN_CAMERA_TYPE"

    iget-object v4, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->originCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "IS_MANUAL_JUMP"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v3, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomJump:Z

    iget-object v4, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackZoomBlendingCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GROUPSHOT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v4, v3, :cond_1

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4, v0, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {p1, v3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ZOOM_JUMP_X"

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->zoomRatio:F

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_JUMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v1, v0, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v4, p0, :cond_3

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOCUS_TOO_FAR:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne v4, p0, :cond_4

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->BACK_PHYSICAL_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    :goto_0
    invoke-static {p0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_4
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v1, v0, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    :goto_1
    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final getPersistOnLensSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/scenedetection/scene/ZoomJumpScene;->persistOnLensSwitch:Z

    return p0
.end method
