.class public final Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mImage:Landroid/media/Image;

.field public final synthetic this$0:Lcom/motorola/camera/utility/ImageReaderWrapper;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/utility/ImageReaderWrapper;Landroid/media/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->this$0:Lcom/motorola/camera/utility/ImageReaderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    invoke-virtual {p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->processAfterClose()V

    return-void
.end method

.method public final getPlanes()[Landroid/media/Image$Plane;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    return-object p0
.end method

.method public final processAfterClose()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->this$0:Lcom/motorola/camera/utility/ImageReaderWrapper;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->this$0:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHeldImagesNumber:I

    iget v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mWaitingNumber:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mWaitingNumber:I

    iget-object v1, p0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
