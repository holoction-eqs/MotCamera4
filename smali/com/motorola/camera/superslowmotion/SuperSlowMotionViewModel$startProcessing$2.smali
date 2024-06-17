.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object v12, v11, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "context"

    iget-object v1, v11, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->appContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v12, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    const/4 v13, 0x0

    move v4, v13

    :goto_0
    iget v5, v12, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    if-ge v4, v3, :cond_0

    aget v6, v0, v4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v6

    int-to-long v5, v5

    mul-long/2addr v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toLongArray(Ljava/util/ArrayList;)[J

    move-result-object v0

    iget-object v2, v12, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v2

    move v6, v13

    :goto_1
    if-ge v6, v4, :cond_1

    aget v7, v2, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v9, v7

    int-to-long v14, v5

    mul-long/2addr v9, v14

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toLongArray(Ljava/util/ArrayList;)[J

    move-result-object v2

    new-instance v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    iget-object v3, v12, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    aget-wide v4, v2, v13

    const/4 v15, 0x1

    aget-wide v6, v2, v15

    aget-wide v8, v0, v13

    aget-wide v16, v0, v15

    move-object v0, v14

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-wide/from16 v9, v16

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;-><init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;JJJJLcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    iput-object v14, v12, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionProcess:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    iget v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    sget-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    aget v0, v1, v0

    sget-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    if-ne v0, v15, :cond_8

    const/4 v0, 0x2

    iput v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    new-instance v2, Lcom/motorola/camera/saving/FileName;

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    iget-object v3, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->slowMotionData:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    iget-wide v4, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->targetVideoDate:J

    invoke-direct {v2, v0, v4, v5}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->createTemporaryFile(Lcom/motorola/camera/saving/FileName;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFile:Ljava/io/File;

    const/high16 v5, 0x30000000

    invoke-static {v0, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->tempFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    const-string v0, "Cannot open file descriptor"

    invoke-virtual {v14, v0, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setupTemporaryFile: cannot create temporary file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaExtractor:Landroid/media/MediaExtractor;

    iget-object v0, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_5

    iget-object v3, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v4}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    move v3, v13

    :goto_3
    if-ge v3, v0, :cond_5

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v6, "it.getTrackFormat(i)"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "mime"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "video"

    invoke-static {v6, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v15, :cond_3

    move v6, v15

    goto :goto_4

    :cond_3
    move v6, v13

    :goto_4
    if-eqz v6, :cond_4

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iput v3, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    const-string v0, "rotation-degrees"

    invoke-virtual {v5, v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->orientationHint:I

    const-string v0, "frame-rate"

    invoke-virtual {v5, v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to read track data for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    iget v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->videoTrack:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->baseFrameRate:I

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    iget-object v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;

    invoke-direct {v1, v14, v13}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_7
    :goto_6
    const-string v0, "failed to find proper track"

    invoke-virtual {v14, v0, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_7

    :cond_8
    iget v0, v14, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    invoke-static {v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->name(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "triggerProcessing: is not idle: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
