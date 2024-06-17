.class public final synthetic Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(JZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:J

    iput-boolean p3, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-wide v0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$0:J

    iget-boolean p0, p0, Lcom/motorola/camera/jms/BgJobTransferService$$ExternalSyntheticLambda0;->f$1:Z

    sget-object v2, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    iget-object v3, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJobListener:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJobListener:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/jms/BgJobManager$TransferJobListener;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v7, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    iget-object v7, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJmsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget v6, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2

    if-gtz v6, :cond_1

    iget-object v6, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mJobMgrServiceWatchDog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v6}, Lcom/motorola/camera/background/common/SimpleWatchDog;->cancel()V

    goto :goto_1

    :cond_1
    iget-object v6, v2, Lcom/motorola/camera/jms/BgJobTransferService;->mJobMgrServiceWatchDog:Lcom/motorola/camera/background/common/SimpleWatchDog;

    invoke-virtual {v6}, Lcom/motorola/camera/background/common/SimpleWatchDog;->reset()V

    :goto_1
    if-eqz p0, :cond_2

    check-cast v5, Lcom/motorola/camera/jms/BgJobManager$1;

    invoke-virtual {v5, v0, v1}, Lcom/motorola/camera/jms/BgJobManager$1;->onJobTransferComplete(J)V

    goto :goto_0

    :cond_2
    check-cast v5, Lcom/motorola/camera/jms/BgJobManager$1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v5, v5, Lcom/motorola/camera/jms/BgJobManager$1;->this$0:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v5, v5, Lcom/motorola/camera/jms/BgJobManager;->mBgJobHolderMap:Ljava/util/Map;

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-static {v5}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-static {v6}, Lcom/motorola/camera/jms/BgJobManager;->removeJob(I)Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_6
    const-string v6, "BgJobManager"

    const-string v7, "Failed to process normal job"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_3
    monitor-exit v3

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method
