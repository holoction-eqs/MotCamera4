.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final mCameraData:Lcom/motorola/camera/CameraData;

.field public final mContext:Landroid/content/Context;

.field public final mUpdateLargeKindBitmapTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Landroid/content/Context;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapCallable;->mContext:Landroid/content/Context;

    invoke-interface {p4}, Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;->getCameraData()Lcom/motorola/camera/CameraData;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;

    invoke-direct {p2, p3, p4, p0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapCallable;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapCallable;->mUpdateLargeKindBitmapTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapTask;

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->mUpdateLargeKindBitmapExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapCallable;->mCameraData:Lcom/motorola/camera/CameraData;

    invoke-static {v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getLargeKindThumbnail(Lcom/motorola/camera/CameraData;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Landroid/util/Size;

    iget-object v3, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v4, "THUMB_WIDTH"

    invoke-virtual {v3, v4}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "THUMB_HEIGHT"

    invoke-virtual {v3, v5}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v2}, Lkotlin/collections/ArraysUtilJVM;->isSizeValid(Landroid/util/Size;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager$UpdateLargeKindBitmapCallable;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v2}, Lcom/motorola/camera/Util;->loadPostViewThumbnail(Landroid/content/Context;Lcom/motorola/camera/CameraData;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    return-object v1
.end method
