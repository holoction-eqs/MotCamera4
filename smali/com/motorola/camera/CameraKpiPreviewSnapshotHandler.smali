.class public final Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aperture:F

.field public final cameraDrawTimestamps:[J

.field public final cameraFrames:[Ljava/nio/Buffer;

.field public final envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public exposure:F

.field public isDisposed:Z

.field public isFrameSaved:Z

.field public iso:I

.field public lastLux:F

.field public orientation:I

.field public previewRect:Landroid/graphics/Rect;

.field public final shutterClickListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

.field public viewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    new-array v2, v0, [J

    iput-object v2, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraDrawTimestamps:[J

    new-array v0, v0, [Ljava/nio/Buffer;

    iput-object v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->shutterClickListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->previewRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->viewSize:Lcom/motorola/camera/PreviewSize;

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_CLICKED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public static isFrameDumpEnabled()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_DUMP_PREVIEW_ON_SHUTTER_UP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "get(SettingsManager.DEBU\u2026VIEW_ON_SHUTTER_UP).value"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getLastLux()F
    .locals 0

    iget p0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->lastLux:F

    return p0
.end method

.method public final onCaptureFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameSaved:Z

    return-void
.end method

.method public final registerListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    const-string v0, "fsmContext"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void
.end method

.method public final savePreviewPixelsIntoBuffer()V
    .locals 12

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    const-string v1, "previewRect"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v2, v1

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    aget-object v11, v1, v4

    aput-object v3, v1, v4

    aput-object v11, v1, v2

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    :cond_1
    if-eqz v11, :cond_2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->viewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    invoke-static/range {v5 .. v11}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v0, "glReadPixels"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraDrawTimestamps:[J

    aget-wide v0, p0, v2

    aput-wide v0, p0, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    aput-wide v0, p0, v2

    :cond_3
    :goto_0
    return-void
.end method

.method public final unregisterListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    const-string v0, "fsmContext"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void
.end method
