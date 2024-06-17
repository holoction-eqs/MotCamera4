.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;
.implements Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$LastCaptureHandler;
.implements Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;
.implements Lcom/motorola/camera/saving/SaveListener;


# instance fields
.field public final eventHandler:Lcom/motorola/camera/EventListener;

.field public executor:Ljava/util/concurrent/ExecutorService;

.field public final onImageAvailable:Lkotlin/jvm/functions/Function3;

.field public final onLargeKindImageAvailable:Lkotlin/jvm/functions/Function2;

.field public queryLastCaptureTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

.field public refreshing:Z

.field public updateOnly:Z

.field public visibleCameraData:Lcom/motorola/camera/CameraData;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/motorola/camera/EventListener;Lkotlinx/coroutines/sync/MutexImpl$onSelectCancellationUnlockConstructor$1;Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->executor:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onImageAvailable:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onLargeKindImageAvailable:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final displayCliPreview(Lcom/motorola/camera/CameraData;)V
    .locals 8

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v3, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v1, v3, :cond_0

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    if-le v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "THUMB_PATH"

    invoke-virtual {v0, v1}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result p0

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v7

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_4

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupportedMode(I)Z

    move-result p0

    if-nez p0, :cond_3

    if-ne v7, v5, :cond_2

    goto :goto_0

    :cond_2
    move p0, v6

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_2

    :cond_4
    move p0, v6

    :goto_2
    if-eqz p0, :cond_5

    move p0, v2

    goto :goto_3

    :cond_5
    move p0, v6

    :goto_3
    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v6

    :goto_4
    if-eqz v2, :cond_8

    new-instance p0, Landroid/content/Intent;

    const-string v2, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "GLOBAL_UUID"

    invoke-virtual {v0, v2}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "com.motorola.camera3.EXTRA_ACTION"

    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.motorola.camera3.EXTRA_CONTENT"

    const/4 v5, 0x3

    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "FILE_NAME"

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "FILE_PATH"

    invoke-virtual {v0, v2}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "THUMB_WIDTH"

    invoke-virtual {v0, v2}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "THUMB_HEIGHT"

    invoke-virtual {v0, v2}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ORIENTATION"

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "DATE_TAKEN"

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v5

    invoke-virtual {p0, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "DATE_MODIFIED"

    invoke-virtual {v0, p1}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p0, p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v3, :cond_7

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_7
    const-string p1, "URI"

    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_5
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "getInstance()"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    :goto_6
    return-void
.end method

.method public final getCameraData()Lcom/motorola/camera/CameraData;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public final handleCameraData(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->isPhotosProcessingSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->EMPTY:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p0, p0, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    if-nez p0, :cond_0

    new-instance p0, Lcom/motorola/camera/SecureDataHelper;

    invoke-direct {p0}, Lcom/motorola/camera/SecureDataHelper;-><init>()V

    sput-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    :cond_0
    sget-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_5

    goto/16 :goto_8

    :cond_5
    if-eqz v2, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v6, v0

    :goto_2
    if-eqz v5, :cond_9

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    const-string v7, "."

    invoke-static {v6, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {v5, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "."

    const/4 v8, 0x6

    invoke-static {v5, v7, v8}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "."

    invoke-static {v6, v9, v8}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v5

    goto :goto_4

    :cond_9
    :goto_3
    move v5, v4

    :goto_4
    if-eqz v5, :cond_a

    move v5, v3

    goto :goto_5

    :cond_a
    move v5, v4

    :goto_5
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_6

    :cond_b
    move-object v6, v0

    :goto_6
    if-eqz v5, :cond_c

    goto :goto_8

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_d

    goto :goto_7

    :cond_d
    iget v5, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v6, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v5, v6, :cond_e

    goto :goto_8

    :cond_e
    if-ge v5, v6, :cond_f

    goto :goto_7

    :cond_f
    if-eq v6, v5, :cond_10

    goto :goto_8

    :cond_10
    :goto_7
    move v5, v4

    goto :goto_9

    :cond_11
    :goto_8
    move v5, v3

    :goto_9
    if-nez v1, :cond_12

    if-eqz v2, :cond_14

    :cond_12
    if-eqz v2, :cond_15

    if-eqz v1, :cond_13

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v1, v2, :cond_13

    move v1, v3

    goto :goto_a

    :cond_13
    move v1, v4

    :goto_a
    if-eqz v1, :cond_15

    :cond_14
    move v1, v3

    goto :goto_b

    :cond_15
    move v1, v4

    :goto_b
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->updateOnly:Z

    if-eqz v5, :cond_1b

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz p2, :cond_19

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p1

    if-ne p1, v3, :cond_16

    goto :goto_c

    :cond_16
    move v3, v4

    :goto_c
    if-eqz v3, :cond_17

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->VIDEO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    goto :goto_d

    :cond_17
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result p1

    if-eqz p1, :cond_18

    if-nez v1, :cond_18

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->SEGMENTATION_FIRST_SHOT:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    goto :goto_d

    :cond_18
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    :goto_d
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setLargeKindBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;)V

    goto :goto_e

    :cond_19
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1a

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->sInstance:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getUiContext()Landroid/content/Context;

    move-result-object p2

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailManager;->loadThumbnail(Landroid/content/Context;Lcom/motorola/camera/ui/widgets/gl/photoroll/iThumbnail;Landroid/util/Size;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_e

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1a
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->EMPTY:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V

    :cond_1b
    :goto_e
    return-void
.end method

.method public final onPostCaptureAvailable(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Landroidx/core/view/ContentInfoCompat$CompatImpl;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object p1

    new-instance v0, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p2, p0, p1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isFromCurrentSession()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.fileName"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_LAYER"

    invoke-static {v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    if-nez v5, :cond_2

    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    :goto_0
    if-eq v5, v4, :cond_4

    if-eq v5, v3, :cond_3

    const/4 v0, 0x3

    if-eq v5, v0, :cond_6

    const/4 v0, 0x4

    if-eq v5, v0, :cond_6

    goto :goto_3

    :cond_3
    iget v0, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    if-le v0, v4, :cond_7

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v5

    if-eqz v5, :cond_5

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v5, v5, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v1, v5, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    :cond_6
    :goto_2
    move v0, v4

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v2

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->displayCliPreview(Lcom/motorola/camera/CameraData;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FILE_FORMAT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_9

    if-ne v3, v0, :cond_9

    goto :goto_5

    :cond_9
    move v4, v2

    :goto_5
    if-eqz v4, :cond_a

    return-void

    :cond_a
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;Lcom/motorola/camera/CameraData;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->displayCliPreview(Lcom/motorola/camera/CameraData;)V

    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public final onSaveProcessing(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public final queryLastCapture()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v1, 0x1b

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->submitTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->updateOnly:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onImageAvailable:Lkotlin/jvm/functions/Function3;

    invoke-interface {p0, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setLargeKindBitmap(Lcom/motorola/camera/CameraData;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->onLargeKindImageAvailable:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final submitTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
