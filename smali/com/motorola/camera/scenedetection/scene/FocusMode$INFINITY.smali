.class public final Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;
.super Lcom/motorola/camera/scenedetection/scene/FocusMode;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "INFINITY"

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/motorola/camera/scenedetection/scene/FocusMode;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/scenedetection/scene/FocusMode;->applyFixedFocus(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method
