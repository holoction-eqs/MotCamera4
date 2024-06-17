.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;
.implements Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final cancelButtonVisible:Landroidx/lifecycle/MediatorLiveData;

.field public cancelRequestOngoing:Z

.field public final contentHidden:Landroidx/lifecycle/MutableLiveData;

.field public final currentFrame:Landroidx/lifecycle/MutableLiveData;

.field public currentFrameIndex:I

.field public final data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

.field public final defaultMinRange:I

.field public final duration:Landroidx/lifecycle/MutableLiveData;

.field public final editControlsVisible:Landroidx/lifecycle/MediatorLiveData;

.field public final maxRange:I

.field public final mediaRetriever:Landroid/media/MediaMetadataRetriever;

.field public mediaStoreUri:Landroid/net/Uri;

.field public final minRange:Landroidx/lifecycle/MutableLiveData;

.field public final playButtonSelected:Landroidx/lifecycle/MediatorLiveData;

.field public final playWhenReady:Landroidx/lifecycle/MutableLiveData;

.field public final previews:Landroidx/lifecycle/MutableLiveData;

.field public final processProgress:Landroidx/lifecycle/MutableLiveData;

.field public final processingDone:Landroidx/lifecycle/MediatorLiveData;

.field public final processingError:Landroidx/lifecycle/MediatorLiveData;

.field public final processingIndicatorVisible:Landroidx/lifecycle/MediatorLiveData;

.field public final processingPercentageVisible:Landroidx/lifecycle/MediatorLiveData;

.field public final processingPreview:Landroidx/lifecycle/MutableLiveData;

.field public final processingProgress:Landroidx/lifecycle/MediatorLiveData;

.field public final processingProgressPercentage:Landroidx/lifecycle/MediatorLiveData;

.field public final processingScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final processingSlideshowVisible:Landroidx/lifecycle/MediatorLiveData;

.field public final processingStatus:Landroidx/lifecycle/MutableLiveData;

.field public final processingThumbnailUpdateInterval:J

.field public final rangeObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda0;

.field public final selectedRange:Landroidx/lifecycle/MutableLiveData;

.field public final superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

.field public final thumbnailCount:I

.field public thumbnailTimer:Ljava/util/Timer;

.field public totalFrames:I

.field public totalProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "data"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context.applicationContext"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->appContext:Landroid/content/Context;

    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->mediaRetriever:Landroid/media/MediaMetadataRetriever;

    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v4}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v5}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processProgress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b007c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingThumbnailUpdateInterval:J

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b007b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailCount:I

    new-instance v6, Lkotlinx/coroutines/SupervisorJobImpl;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lkotlinx/coroutines/SupervisorJobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    sget-object v8, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v8, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    check-cast v8, Lkotlinx/coroutines/android/HandlerContext;

    iget-object v8, v8, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    invoke-virtual {v6, v8}, Lkotlinx/coroutines/JobSupport;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v6

    iput-object v6, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    sget-object v8, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$16:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-static {v4, v8}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->editControlsVisible:Landroidx/lifecycle/MediatorLiveData;

    sget-object v8, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$19:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-static {v4, v8}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingIndicatorVisible:Landroidx/lifecycle/MediatorLiveData;

    sget-object v8, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$20:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-static {v4, v8}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPercentageVisible:Landroidx/lifecycle/MediatorLiveData;

    new-instance v8, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;I)V

    invoke-static {v5, v8}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgress:Landroidx/lifecycle/MediatorLiveData;

    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v8, v10}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    new-instance v8, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;

    const/4 v11, 0x2

    invoke-direct {v8, v0, v11}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;I)V

    invoke-static {v5, v8}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgressPercentage:Landroidx/lifecycle/MediatorLiveData;

    sget-object v8, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$21:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-static {v4, v8}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingSlideshowVisible:Landroidx/lifecycle/MediatorLiveData;

    sget-object v8, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$15:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-static {v4, v8}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelButtonVisible:Landroidx/lifecycle/MediatorLiveData;

    sget-object v8, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$18:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-static {v4, v8}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingDone:Landroidx/lifecycle/MediatorLiveData;

    new-instance v8, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;

    const/4 v12, 0x0

    invoke-direct {v8, v0, v12}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$processingError$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;I)V

    invoke-static {v4, v8}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v8

    new-instance v13, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v13}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v9, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v15, v8, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    sget-object v11, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v15, v11, :cond_0

    move v11, v9

    goto :goto_0

    :cond_0
    move v11, v12

    :goto_0
    if-eqz v11, :cond_1

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v13, v11}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iput-boolean v12, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_1
    new-instance v11, Landroidx/lifecycle/Transformations$map$1;

    invoke-direct {v11, v9, v13, v14}, Landroidx/lifecycle/Transformations$map$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v14, v12, v11}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {v13, v8, v14}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;)V

    iput-object v13, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingError:Landroidx/lifecycle/MediatorLiveData;

    sget-object v8, Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;->INSTANCE$17:Landroidx/work/impl/WorkerUpdater$updateWorkImpl$type$1;

    invoke-static {v3, v8}, Landroidx/room/util/DBUtil;->map(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playButtonSelected:Landroidx/lifecycle/MediatorLiveData;

    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v8}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->previews:Landroidx/lifecycle/MutableLiveData;

    new-instance v11, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v11}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v11, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    new-instance v13, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v13}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v13, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    new-instance v14, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v14}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v14, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    new-instance v15, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v15}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v15, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrame:Landroidx/lifecycle/MutableLiveData;

    new-instance v9, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v9}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b0079

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->defaultMinRange:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b0076

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v7, 0x7f0b0077

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->maxRange:I

    sget-object v7, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->INITIALIZING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v4, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    filled-new-array {v4, v5}, [I

    move-result-object v5

    invoke-virtual {v14, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    new-instance v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-direct {v5, v1, v9, v0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;ILcom/motorola/camera/superslowmotion/SuperSlowMotionController$ExoPlayerControllerListener;Landroid/content/Context;)V

    iput-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {v3, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x2

    invoke-static {v6, v1, v4, v2, v3}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->rangeObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda0;

    invoke-virtual {v14, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotionViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final finishProcessing(Lcom/motorola/camera/superslowmotion/ProcessingStatus;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$finishProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, p1, v2, v0, v1}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_1
    return-void
.end method

.method public final onCleared()V
    .locals 8

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->ERROR:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(IZ)I

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    new-instance v3, Landroidx/media3/common/text/CueGroup;

    sget-object v5, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-direct {v3, v6, v7, v5}, Landroidx/media3/common/text/CueGroup;-><init>(JLjava/util/List;)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ExoPlayerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Release "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " [AndroidXMedia3/1.1.1] ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/media3/common/MediaLibraryInfo;->registeredModules:Ljava/util/HashSet;

    const-class v5, Landroidx/media3/common/MediaLibraryInfo;

    monitor-enter v5

    :try_start_0
    sget-object v6, Landroidx/media3/common/MediaLibraryInfo;->registeredModulesString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_2

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    :cond_2
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/gms/tasks/zzr;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/gms/tasks/zzr;->setEnabled(Z)V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/TintInfo;->setStayAwake(Z)V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/TintInfo;->setStayAwake(Z)V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    iput-object v2, v3, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    monitor-enter v3

    :try_start_1
    iget-boolean v5, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    if-nez v5, :cond_4

    iget-object v5, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-wide v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseTimeoutMs:J

    invoke-virtual {v3, v5, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->waitUninterruptibly(Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;J)V

    iget-boolean v5, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    goto :goto_1

    :cond_4
    :goto_0
    monitor-exit v3

    move v5, v4

    :goto_1
    if-nez v5, :cond_5

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v5, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 v6, 0xa

    invoke-virtual {v3, v6, v5}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_5
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v3}, Landroidx/media3/common/util/ListenerSet;->release()V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object v3, v3, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    check-cast v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    iget-object v3, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->eventDispatcher:Lkotlin/DeepRecursiveFunction;

    invoke-virtual {v3, v5}, Lkotlin/DeepRecursiveFunction;->removeListener(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithEstimatedPosition()Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_6
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    check-cast v3, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v4, v3, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    new-instance v5, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/4 v6, 0x5

    invoke-direct {v5, v3, v6}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    check-cast v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object v4, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->lock:Ljava/lang/Object;

    monitor-enter v4

    const/16 v5, 0x20

    if-lt v1, v5, :cond_8

    :try_start_2
    iget-object v1, v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->spatializer:Lcom/motorola/camera/JsonConfig$CameraMapping;

    if-eqz v1, :cond_8

    iget-object v5, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    iget-object v6, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorName:Ljava/lang/Object;

    check-cast v6, Landroid/media/Spatializer;

    check-cast v5, Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-static {v6, v5}, Landroidx/media3/common/AudioAttributes$Api32$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/Spatializer;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    iget-object v5, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    check-cast v5, Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->sensorNameOverride:Ljava/lang/Object;

    iput-object v2, v1, Lcom/motorola/camera/JsonConfig$CameraMapping;->physicalRole:Ljava/lang/Object;

    :cond_8
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v2, v3, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->listener:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iput-object v2, v3, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    :cond_9
    sget-object v1, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->rangeObserver:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_b
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v3

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v5

    throw p0
.end method

.method public final onProcessingError()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->ERROR:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->FAILED:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V

    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v1

    iget v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->frameRateRatio:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->updatePlaybackSpeed(J)V

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->PLAY:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->editActions:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setSelectingRange(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    if-eqz p1, :cond_0

    iget-object p0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    invoke-virtual {v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->resetVideoPosition()V

    :goto_1
    return-void
.end method

.method public final startProcessing()V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalFrames:I

    iget-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object v3, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v3

    iget-object v4, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->superSlowMotionRange:[I

    const-string v5, "<this>"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v4

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    const-string v8, "Array is empty."

    if-nez v6, :cond_4

    aget v4, v4, v0

    sub-int/2addr v3, v4

    iget-object v4, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    iget v4, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->last([I)I

    move-result v4

    iget-object v6, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->trimRange:[I

    invoke-static {v6, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v6

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    if-nez v7, :cond_3

    aget v5, v6, v0

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->getRecordingDuration()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    sub-int/2addr v1, v3

    iget v2, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->slowMotionProgressFactor:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    iput v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->totalProgress:I

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->SETTING_UP:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    iget-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    :cond_2
    new-instance v2, Ljava/util/Timer;

    const-string v1, "Super slow motion thumbnail timer"

    invoke-direct {v2, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->thumbnailTimer:Ljava/util/Timer;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;

    const/4 v1, 0x2

    invoke-direct {v3, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingThumbnailUpdateInterval:J

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$startProcessing$2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v2, v0, v3, v1}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v8}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v8}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateProcessingPreview()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->previews:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrameIndex:I

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v1, v3, :cond_3

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrameIndex:I

    :cond_4
    :goto_0
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrameIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
