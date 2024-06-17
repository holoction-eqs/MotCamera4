.class public abstract Lcom/motorola/camera/scenedetection/SceneDetectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

.field public static queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;


# direct methods
.method public static applySceneTags(Lcom/motorola/camera/scenedetection/scene/Scene;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    instance-of v0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V

    :cond_1
    return-void
.end method
