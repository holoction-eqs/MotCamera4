.class public final Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;
.super Lcom/motorola/camera/scenedetection/scene/VendorTagScene;
.source "SourceFile"


# instance fields
.field public final sceneIndex:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V
    .locals 6

    .line 1
    and-int/lit8 v0, p5, 0x10

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p5, 0x20

    if-eqz p4, :cond_1

    sget-object p4, Lcom/motorola/camera/scenedetection/scene/FocusMode;->AUTO:Lcom/motorola/camera/scenedetection/scene/FocusMode$AUTO;

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    move-object v5, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;)V
    .locals 2

    .line 2
    const/4 v0, 0x2

    const-string v1, "optType"

    invoke-static {v0, v1}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    const-string v0, "focusMode"

    invoke-static {p5, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    iput p3, p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;->sceneIndex:I

    return-void
.end method


# virtual methods
.method public final applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 3

    .line 1
    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "wrapper.mBuilder"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;->sceneIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    const-string v1, "wrapper"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;->applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final revertTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 4

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v1, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v2, "wrapper.mBuilder"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->revertFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v1, v0, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_1
    sput-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    sput-object v2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    goto :goto_0

    :cond_1
    return-void
.end method
