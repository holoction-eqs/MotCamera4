.class public final Lcom/motorola/camera/scenedetection/scene/MtkVendorTagScene;
.super Lcom/motorola/camera/scenedetection/scene/VendorTagScene;
.source "SourceFile"


# instance fields
.field public final sceneIndex:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IIZI)V
    .locals 2

    and-int/lit8 v0, p5, 0x10

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x20

    if-eqz p5, :cond_1

    sget-object p5, Lcom/motorola/camera/scenedetection/scene/FocusMode;->AUTO:Lcom/motorola/camera/scenedetection/scene/FocusMode$AUTO;

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_0
    const-string v0, "optType"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    const-string v0, "focusMode"

    invoke-static {p5, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    iput p3, p0, Lcom/motorola/camera/scenedetection/scene/MtkVendorTagScene;->sceneIndex:I

    return-void
.end method


# virtual methods
.method public final applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "wrapper.mBuilder"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_AI_SCENE_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/MtkVendorTagScene;->sceneIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

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

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/MtkVendorTagScene;->applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final revertTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 5

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v1, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v2, "wrapper.mBuilder"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->revertFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_AI_SCENE_MODE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v4, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, v4, v0, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v1, v0, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v2

    :goto_2
    sput-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    sput-object v2, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    goto :goto_0

    :cond_2
    return-void
.end method
