.class public final Lcom/motorola/camera/panorama/PanoramaService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;

    invoke-direct {v0}, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda1;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/panorama/PanoramaService;->mServiceHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
