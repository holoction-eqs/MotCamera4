.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->queryLastCapture(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, v5, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->buildCameraData(Landroid/database/Cursor;Landroid/net/Uri;I)Lcom/motorola/camera/CameraData;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    move-object v5, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v6, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :cond_0
    move-object v5, v4

    move-object v6, v5

    :goto_0
    :try_start_2
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->queryLastCapture(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {v1, v6, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->buildCameraData(Landroid/database/Cursor;Landroid/net/Uri;I)Lcom/motorola/camera/CameraData;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v6

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v17, v6

    move-object v6, v5

    move-object/from16 v5, v17

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v4

    move-object v6, v5

    :goto_2
    :try_start_3
    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->eventListener:Ljava/lang/ref/WeakReference;

    invoke-static {v7}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/EventListener;

    if-eqz v7, :cond_2

    new-instance v8, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v8, v9, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {v7, v8}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v4

    move-object v5, v6

    :cond_4
    :goto_3
    const-string v2, "DATE_MODIFIED"

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v8

    iget-object v10, v5, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    invoke-virtual {v10, v2}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_4

    :cond_5
    move-wide v8, v6

    move-wide v10, v8

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v12

    iget-object v14, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    invoke-virtual {v14, v2}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    goto :goto_5

    :cond_6
    move-wide v12, v6

    move-wide v14, v12

    :goto_5
    if-eqz v5, :cond_c

    if-eqz v0, :cond_c

    cmp-long v2, v8, v6

    if-eqz v2, :cond_7

    cmp-long v16, v12, v6

    if-nez v16, :cond_8

    :cond_7
    cmp-long v16, v10, v14

    if-gtz v16, :cond_d

    :cond_8
    if-eqz v2, :cond_9

    cmp-long v16, v12, v6

    if-eqz v16, :cond_9

    cmp-long v16, v8, v12

    if-lez v16, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v2, :cond_a

    cmp-long v5, v12, v6

    if-nez v5, :cond_b

    :cond_a
    cmp-long v5, v10, v14

    if-ltz v5, :cond_f

    :cond_b
    if-eqz v2, :cond_10

    cmp-long v2, v12, v6

    if-eqz v2, :cond_10

    cmp-long v2, v8, v12

    if-gez v2, :cond_10

    goto :goto_7

    :cond_c
    if-eqz v5, :cond_e

    :cond_d
    :goto_6
    move-object v4, v5

    goto :goto_8

    :cond_e
    if-eqz v0, :cond_10

    :cond_f
    :goto_7
    move-object v4, v0

    :cond_10
    :goto_8
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->lastCaptureHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$LastCaptureHandler;

    if-eqz v0, :cond_11

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v4, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask(Ljava/lang/Runnable;)V

    :cond_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_9
    move-object v4, v5

    :goto_a
    if-eqz v4, :cond_12

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v0
.end method
