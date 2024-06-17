.class public final Lcom/motorola/camera/device/CameraHandlerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field public final mCameraData:Lcom/motorola/camera/device/CameraHandlerThread$CameraData;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "CameraHandlerThread"

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    invoke-direct {v0}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread;->mCameraData:Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    return-void
.end method
