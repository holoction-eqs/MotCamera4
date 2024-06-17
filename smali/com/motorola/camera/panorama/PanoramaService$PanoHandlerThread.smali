.class public final Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PanoramaService"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/panorama/PanoramaService$PanoHandlerThread;->mLock:Ljava/lang/Object;

    return-void
.end method
