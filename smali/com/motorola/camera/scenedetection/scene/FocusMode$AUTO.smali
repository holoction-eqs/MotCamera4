.class public final Lcom/motorola/camera/scenedetection/scene/FocusMode$AUTO;
.super Lcom/motorola/camera/scenedetection/scene/FocusMode;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AUTO"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/scenedetection/scene/FocusMode;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public final revert(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method
