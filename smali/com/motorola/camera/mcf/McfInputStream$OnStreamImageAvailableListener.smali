.class public final Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/mcf/McfInputStream;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcf/McfInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v0}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmLock(Lcom/motorola/camera/mcf/McfInputStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v1}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmIsStreamOpen(Lcom/motorola/camera/mcf/McfInputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onImageAvailable: stream is closed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v1}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmId(Lcom/motorola/camera/mcf/McfInputStream;)I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v2}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmCameraId(Lcom/motorola/camera/mcf/McfInputStream;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v3}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmType(Lcom/motorola/camera/mcf/McfInputStream;)Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->toInt()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/mcf/McfInputStream$OnStreamImageAvailableListener;->this$0:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-static {v4}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$fgetmFormat(Lcom/motorola/camera/mcf/McfInputStream;)Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->toInt()I

    move-result v4

    invoke-virtual {v8}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-virtual {v8}, Landroid/media/Image;->getHeight()I

    move-result v7

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$smnative_stream_process_image(ILjava/lang/String;IILandroid/media/Image;II)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImageAvailable: process image failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/media/Image;->close()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onImageAvailable: stream is not started"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/media/Image;->close()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    if-nez v8, :cond_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onImageAvailable: failed with error: "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
