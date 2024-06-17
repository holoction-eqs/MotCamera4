.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final mCameraData:Lcom/motorola/camera/CameraData;

.field public final mContext:Landroid/content/Context;

.field public final mLoadBitmapTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;

.field public final mTargetSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Landroid/content/Context;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mContext:Landroid/content/Context;

    invoke-interface {p4}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->getCameraData()Lcom/motorola/camera/CameraData;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mTargetSize:Landroid/util/Size;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;

    invoke-direct {p2, p3, p4, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mLoadBitmapTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapTask;

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mLoadThumbnailExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mTargetSize:Landroid/util/Size;

    invoke-static {v2}, Lkotlin/collections/ArraysUtilJVM;->isSizeValid(Landroid/util/Size;)Z

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$LoadBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v3, :cond_0

    invoke-static {v4, p0, v2}, Lcom/motorola/camera/Util;->loadThumbnailByTargetSize(Landroid/content/Context;Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v5

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v2, v3, v5, v6}, Lcom/motorola/camera/Util;->loadThumbnailByMediaStore(Landroid/content/Context;JILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v2, p0}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LoadBitmapTask.doInBackground dur:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method
