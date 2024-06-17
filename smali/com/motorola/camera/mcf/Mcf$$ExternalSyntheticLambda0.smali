.class public final synthetic Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$motorola$camera$service$JmsServiceInterface$1$$InternalSyntheticLambda$5$a55dcc31cd04baee300960c5d0dd4176498d543d60556bad66199527a43db599$0()V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/service/JmsServiceInterface$1;

    iget-object v0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v0, v0, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/service/JmsServiceInterface$1;->this$0:Lcom/motorola/camera/service/JmsServiceInterface;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_26

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->orientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->getRotation(I)F

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->videoIndication:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->galleryThumbnail:Landroidx/constraintlayout/utils/widget/ImageFilterButton;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setRotation(F)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v10, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->refreshing:Z

    iput-object v9, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->visibleCameraData:Lcom/motorola/camera/CameraData;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailChangeController;->queryLastCaptureTask:Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;

    invoke-direct {v0, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask$execute$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v9, v11, v0, v5}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->processResult:I

    if-ne v1, v6, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->shouldShowUI:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->isMenuMode:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v10, v11

    :goto_1
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->videoPortraitToast:Landroid/view/View;

    if-eqz v10, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->LISTENED_STATES:Ljava/util/Set;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->controlPanelBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    const-string v2, "mEventHandler.layoutManager"

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v1, :cond_5

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "it.context"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4}, Ljms/IJobMgrService$_Parcel;->controlPanelGuidelineBottom(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)I

    move-result v4

    invoke-static {v4, v1, v11}, Ljms/IJobMgrService$_Parcel;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    :cond_5
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->controlPanelTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_6

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v4, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v2, v4

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v1

    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lkotlin/ResultKt;->roundToInt(F)I

    move-result v1

    invoke-static {v1, v0, v11}, Ljms/IJobMgrService$_Parcel;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    :cond_6
    return-void

    :pswitch_4
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    sget v1, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->$r8$clinit:I

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_8

    move v4, v11

    :goto_3
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eq v4, v2, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->currentAnimation:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v10

    if-eqz v2, :cond_a

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v2

    iget v4, v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->uiOrientation:I

    invoke-static {v2, v4}, L_COROUTINE/ArtificialStackFrames;->getRotation(FI)F

    move-result v2

    new-array v4, v8, [F

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRotation()F

    move-result v5

    aput v5, v4, v11

    aput v2, v4, v10

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-wide v5, v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->animDuration:J

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v3}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;

    invoke-direct {v3, v1, v2, v10}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iput-object v4, v0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->currentAnimation:Landroid/animation/ValueAnimator;

    :cond_a
    return-void

    :pswitch_5
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    invoke-virtual {v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->stop()V

    iput v2, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->transcodeStatus:I

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->processingCallback:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcessCallback;

    check-cast v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->COMPLETE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingScope:Lkotlinx/coroutines/internal/ContextScope;

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$onProcessingComplete$1;

    invoke-direct {v3, v0, v9}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$onProcessingComplete$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2, v11, v3, v8}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :pswitch_6
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/storage/MediaVolumesHolder;

    invoke-static {v0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->access$refreshMediaVolumes(Lcom/motorola/camera/storage/MediaVolumesHolder;)V

    return-void

    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->run$com$motorola$camera$service$JmsServiceInterface$1$$InternalSyntheticLambda$5$a55dcc31cd04baee300960c5d0dd4176498d543d60556bad66199527a43db599$0()V

    return-void

    :pswitch_8
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/service/JmsServiceInterface;

    iget-object v2, v1, Lcom/motorola/camera/service/JmsServiceInterface;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean v11, v1, Lcom/motorola/camera/service/JmsServiceInterface;->mBgBindPending:Z

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    iget-boolean v0, v1, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_c

    :try_start_1
    iget v4, v1, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceClientId:I

    invoke-interface {v0, v4}, Ljms/IJobMgrService;->unregisterClient(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Lcom/motorola/camera/service/JmsServiceInterface;->TAG:Ljava/lang/String;

    const-string v5, "JobMgrService registerClient() exception: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object v0, v1, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceConnection:Lcom/motorola/camera/service/JmsServiceInterface$1;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v11, v1, Lcom/motorola/camera/service/JmsServiceInterface;->mBgServiceBound:Z

    :cond_c
    :goto_5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_9
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/service/CameraForegroundServiceManager$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    iget-object v1, v1, Lcom/motorola/camera/jms/BgJobManager;->mBjJobMgrListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/service/JmsServiceInterface;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v3, 0x14

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :pswitch_a
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/EventListener;

    sget v1, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;->$r8$clinit:I

    const-string v1, "$eventListener"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-direct {v1, v9, v4, v11, v9}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void

    :pswitch_b
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    :try_start_3
    iget-object v0, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->finish()V

    iget-object v0, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v0, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Landroid/util/Size;

    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    iget v2, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOrientation:I

    invoke-static {v0, v2}, Lkotlin/collections/ArraysUtilJVM;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/CameraData;

    iget-wide v4, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mUUID:J

    iget-object v3, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v7

    iget-wide v9, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mCaptureTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v14

    iget v15, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOrientation:I

    const/16 v16, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v16}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    iget-object v0, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-boolean v0, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    invoke-static {v2, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    const-string v1, "SaveImageService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void

    :pswitch_c
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->finishVideoFile(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    return-void

    :pswitch_d
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/storage/MediaFile;

    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/SaveListener;

    invoke-interface {v2, v0}, Lcom/motorola/camera/saving/SaveListener;->onMediaSaveComplete(Lcom/motorola/camera/storage/MediaFile;)V

    goto :goto_7

    :cond_d
    return-void

    :pswitch_e
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/saving/SaveImageService;

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v1

    :try_start_4
    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-virtual {v2}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->poll()Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    move-result-object v2

    iget-object v12, v0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-eqz v12, :cond_e

    iget v13, v12, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iget v12, v12, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    invoke-static {v13, v12, v9}, Lcom/motorola/camera/saving/SaveImageService;->canSave(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    iget-object v9, v9, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;

    if-eqz v9, :cond_e

    const-string v12, "this$0"

    iget-object v9, v9, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    invoke-static {v9, v12}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda8;

    invoke-direct {v12, v9, v6}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;I)V

    invoke-virtual {v9, v12}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsOnlyCaptureRecord:Z

    if-eqz v1, :cond_f

    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    new-instance v4, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/16 v5, 0xd

    invoke-direct {v4, v5, v0, v2, v1}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto/16 :goto_1c

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v6, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    move-object v9, v6

    check-cast v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v14, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFull:Z

    if-eqz v14, :cond_10

    goto/16 :goto_1c

    :cond_10
    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->processExif()V

    iget-object v14, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v14, :cond_16

    const-string v15, "ExposureMode"

    invoke-virtual {v14, v7, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    const-string v7, "Orientation"

    invoke-virtual {v14, v10, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v7

    if-eq v7, v5, :cond_14

    if-eq v7, v3, :cond_13

    if-eq v7, v4, :cond_12

    move v5, v11

    goto :goto_8

    :cond_12
    const/16 v5, 0x10e

    goto :goto_8

    :cond_13
    const/16 v5, 0x5a

    goto :goto_8

    :cond_14
    const/16 v5, 0xb4

    :goto_8
    iput v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    sget-object v5, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    iget-object v7, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v7, "PANO_IMAGE_WIDTH"

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget-object v5, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "PANO_IMAGE_HEIGHT"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_9

    :cond_15
    const-string v5, "ImageWidth"

    invoke-virtual {v14, v11, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const-string v5, "ImageLength"

    invoke-virtual {v14, v11, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v5

    :goto_9
    iput v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    :try_start_5
    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ALTM_ATTEMPTED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v14, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAltmAttempted:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_16
    :goto_a
    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v6, v5, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v7, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->hasSuffix()Z

    move-result v15

    if-eqz v15, :cond_17

    iget-object v7, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-object v7, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iget-object v15, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v15, v7}, Lcom/motorola/camera/saving/FileName;->setInstanceTypeAttributes(Lcom/motorola/camera/mcf/Mcf$InstanceType;)Lcom/motorola/camera/saving/FileName;

    iget v7, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mExposureMode:I

    if-ne v7, v10, :cond_18

    invoke-virtual {v15, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :cond_18
    iget v4, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mAltmAttempted:I

    if-ne v4, v10, :cond_19

    invoke-virtual {v15, v10}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :cond_19
    iget v4, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    sget-object v7, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/16 v7, 0x12

    if-ne v4, v7, :cond_1a

    move v7, v10

    goto :goto_b

    :cond_1a
    move v7, v11

    :goto_b
    if-nez v7, :cond_1d

    if-ne v4, v3, :cond_1b

    move v3, v10

    goto :goto_c

    :cond_1b
    move v3, v11

    :goto_c
    if-eqz v3, :cond_1c

    goto :goto_d

    :cond_1c
    move v3, v11

    goto :goto_e

    :cond_1d
    :goto_d
    move v3, v10

    :goto_e
    const/high16 v4, 0x20000

    if-eqz v3, :cond_20

    invoke-static {v6}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v15, v8}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :cond_1e
    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMfnr()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v15, v4}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :cond_1f
    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v3

    if-nez v3, :cond_21

    const/16 v3, 0x200

    goto :goto_f

    :cond_20
    iget-boolean v3, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v3, :cond_21

    invoke-static {v6}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v15, v8}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    const/16 v3, 0x100

    :goto_f
    invoke-virtual {v15, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :cond_21
    iget v3, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result v3

    if-eqz v3, :cond_22

    const/high16 v3, 0x2000000

    invoke-virtual {v15, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    :cond_22
    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$InstanceType;->RAW_HDR:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne v3, v4, :cond_23

    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$SceneMode;->RAW_NR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v3, v4, :cond_23

    const/16 v3, 0x20

    invoke-virtual {v15, v3}, Lcom/motorola/camera/saving/FileName;->removeAttribute(I)Lcom/motorola/camera/saving/FileName;

    :cond_23
    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v4, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v3, v4, :cond_25

    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    sub-int/2addr v3, v10

    if-nez v3, :cond_24

    goto :goto_10

    :cond_24
    move v10, v11

    :goto_10
    invoke-static {v3, v10}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v4, "ALTERNATE_SHOT"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v7, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v3, :cond_2c

    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v8, "UUID"

    invoke-virtual {v3, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v8, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "alternate_shot_index_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_26

    const/4 v10, 0x1

    goto :goto_11

    :cond_26
    const/4 v10, 0x0

    :goto_11
    invoke-static {v8, v10}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v8

    if-eqz v8, :cond_27

    sget-object v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    goto :goto_12

    :cond_27
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v8

    if-eqz v8, :cond_28

    sget-object v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    goto :goto_12

    :cond_28
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v8

    if-eqz v8, :cond_29

    sget-object v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    goto :goto_12

    :cond_29
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v8

    if-eqz v8, :cond_2a

    sget-object v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    goto :goto_12

    :cond_2a
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v5

    if-eqz v5, :cond_2b

    sget-object v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    :goto_12
    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    new-instance v5, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v15}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v10, v8}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v5, v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    :cond_2c
    invoke-virtual {v7}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v3

    if-eqz v3, :cond_2d

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE_RAW:Lcom/motorola/camera/ShotType;

    goto :goto_13

    :cond_2d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    :goto_13
    invoke-virtual {v15, v3}, Lcom/motorola/camera/saving/FileName;->setType(Lcom/motorola/camera/ShotType;)Lcom/motorola/camera/saving/FileName;

    :cond_2e
    iget-object v3, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v7, "SaveImageService"

    const/4 v8, 0x1

    if-ne v5, v8, :cond_34

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v5, v3, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v5, :cond_33

    iget-object v5, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_BSSCOUNT_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v8, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v10, v3, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v5, v8, v10}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2f

    const/high16 v5, 0x20000

    invoke-virtual {v15, v5}, Lcom/motorola/camera/saving/FileName;->removeAttribute(I)Lcom/motorola/camera/saving/FileName;

    :cond_2f
    iget-object v5, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v8, v3, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_CAPTURE_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    if-eqz v10, :cond_30

    invoke-virtual {v10, v5, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    goto :goto_14

    :cond_30
    const/4 v5, 0x0

    :goto_14
    sget-object v8, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-virtual {v8, v5}, Ljava/lang/Byte;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v8, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_31

    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_MFNR_CAPTURE_RESULT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v3, v3, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v8, v6, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_31

    const/16 v6, 0xff

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v6, v3, :cond_31

    const/4 v3, 0x1

    goto :goto_15

    :cond_31
    const/4 v3, 0x0

    :goto_15
    if-nez v5, :cond_32

    if-eqz v3, :cond_34

    :cond_32
    const/high16 v3, 0x20000

    invoke-virtual {v15, v3}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    goto :goto_16

    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "appendSuffix, ignore MFNR check. mResult is null for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_16
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    invoke-virtual {v15, v3}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    :cond_35
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_3b

    new-instance v3, Lcom/motorola/camera/instrumentreport/CalibrationData;

    invoke-direct {v3}, Lcom/motorola/camera/instrumentreport/CalibrationData;-><init>()V

    iget-object v5, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget v5, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    if-nez v5, :cond_36

    const/4 v5, 0x1

    goto :goto_17

    :cond_36
    const/4 v5, 0x0

    :goto_17
    sput-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    if-eqz v5, :cond_37

    const/4 v5, 0x0

    sput-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    sput-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    const/4 v5, 0x1

    sput-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    :cond_37
    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    if-nez v5, :cond_38

    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v5, :cond_39

    :cond_38
    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    if-nez v5, :cond_3a

    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v5, :cond_3a

    :cond_39
    const/4 v5, 0x1

    sput-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    if-eqz v5, :cond_3b

    iget-object v5, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    if-eqz v5, :cond_3b

    new-instance v6, Ljava/lang/Thread;

    new-instance v8, Landroidx/work/Worker$2;

    invoke-direct {v8, v3, v5}, Landroidx/work/Worker$2;-><init>(Lcom/motorola/camera/instrumentreport/CalibrationData;Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v3, "calibration"

    invoke-virtual {v6, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_18

    :cond_3a
    const/4 v3, 0x0

    sput-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    :cond_3b
    :goto_18
    :try_start_6
    iget-boolean v3, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkSign:Z

    if-nez v3, :cond_3c

    iget-boolean v5, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkTs:Z

    if-eqz v5, :cond_3d

    :cond_3c
    iget-boolean v5, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNeedWatermarkTs:Z

    invoke-static {v2, v3, v5}, Lcom/motorola/camera/saving/SaveImageService;->addWatermarkToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;ZZ)V

    :cond_3d
    invoke-virtual {v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/SaveListener;

    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v5}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/motorola/camera/saving/SaveListener;->onReviewSaveComplete(Landroid/net/Uri;)V

    goto :goto_19

    :cond_3e
    iget-boolean v0, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1c

    :cond_3f
    sget-object v0, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-eq v0, v2, :cond_40

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v12

    const-string v5, "SAVE_TIME"

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_40
    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne v0, v2, :cond_44

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v0

    if-nez v0, :cond_44

    iget-boolean v0, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    if-eqz v0, :cond_44

    iget-object v0, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    if-eqz v0, :cond_42

    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-nez v2, :cond_41

    goto :goto_1a

    :cond_41
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v2

    if-eqz v0, :cond_43

    if-eqz v2, :cond_43

    const/4 v0, 0x1

    goto :goto_1b

    :cond_42
    :goto_1a
    const-string v0, "Couldn\'t check if was the default alternate shot."

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    const/4 v0, 0x0

    :goto_1b
    if-nez v0, :cond_44

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    :cond_44
    iget-object v0, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v0, v2, :cond_45

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v0, v2, :cond_45

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BG_SERVICE:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne v0, v2, :cond_46

    :cond_45
    iget-object v0, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v1, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-eq v0, v1, :cond_46

    invoke-static {v9}, Lcom/motorola/camera/saving/SaveImageService;->commitTotalCaptureTimeKPI(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    :cond_46
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v0, :cond_48

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    const-string v1, "End - addImage"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    goto :goto_1c

    :catch_3
    move-exception v0

    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "error_message"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "task_id"

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_47
    new-instance v0, Lcom/motorola/camera/CameraData;

    iget-wide v4, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object v1, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/motorola/camera/CameraData;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    :cond_48
    :goto_1c
    return-void

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :pswitch_f
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1d
    const/4 v9, 0x0

    move v10, v9

    move v9, v7

    move v7, v4

    move v4, v3

    move v3, v0

    :cond_49
    :goto_1e
    if-nez v3, :cond_54

    :try_start_8
    iget-object v0, v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    if-eqz v0, :cond_4f

    sget-object v11, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v0, :cond_4e

    const/4 v11, 0x1

    if-eq v0, v11, :cond_52

    if-eq v0, v8, :cond_4d

    if-eq v0, v5, :cond_4c

    if-eq v0, v6, :cond_4b

    if-eq v0, v2, :cond_4a

    goto :goto_1e

    :cond_4a
    const/4 v9, 0x1

    goto :goto_1e

    :cond_4b
    const/4 v7, 0x1

    goto :goto_1e

    :cond_4c
    move v0, v3

    move v3, v4

    move v4, v7

    move v7, v9

    goto :goto_1d

    :cond_4d
    const/4 v10, 0x1

    goto :goto_1e

    :cond_4e
    :try_start_9
    invoke-virtual {v1}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->processInput()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v4, 0x1

    goto :goto_1e

    :catch_4
    move-exception v0

    const/4 v4, 0x1

    goto :goto_1f

    :cond_4f
    if-eqz v4, :cond_49

    if-nez v7, :cond_50

    :try_start_a
    invoke-virtual {v1}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->processInput()V

    :cond_50
    if-nez v9, :cond_51

    if-nez v10, :cond_51

    invoke-virtual {v1}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->processOutput()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_51
    if-eqz v7, :cond_49

    if-eqz v9, :cond_49

    :cond_52
    const/4 v3, 0x1

    goto :goto_1e

    :catch_5
    move-exception v0

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "exception in codecLooper: "

    invoke-static {v12, v11}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->TAG:Ljava/lang/String;

    invoke-static {v12, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v11, v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->showToast:Z

    if-eqz v11, :cond_53

    sget-object v11, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v12, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v13, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v14, 0x7f120158

    invoke-direct {v13, v14}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v6, v13, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v13, v11, v12}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_53
    iget-object v11, v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    invoke-interface {v11, v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleError(Ljava/lang/Exception;)V

    goto :goto_1e

    :cond_54
    return-void

    :pswitch_10
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    :cond_55
    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz v1, :cond_57

    monitor-enter v1

    :try_start_b
    iget-object v2, v1, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_56

    goto :goto_20

    :cond_56
    iget-object v3, v1, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, v1, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v2, v1, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_20
    monitor-exit v1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    goto :goto_21

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_57
    :goto_21
    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    :cond_58
    return-void

    :pswitch_11
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/jms/BgJobTransferService;

    const-string v0, "BgJobTransferService: WatchDog triggered - killing JobMgrService pid = "

    const-string v2, "BgJobTransferService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BgJobTransferService: WatchDog triggered - JobRefCount = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    monitor-enter v1

    :try_start_c
    iget v4, v1, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    monitor-exit v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getJmsInterface()Lcom/motorola/camera/service/JmsServiceInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/service/JmsServiceInterface;->isServiceBounded()Z

    move-result v3

    if-eqz v3, :cond_59

    iget-object v2, v2, Lcom/motorola/camera/service/JmsServiceInterface;->mBgService:Ljms/IJobMgrService;

    invoke-interface {v2}, Ljms/IJobMgrService;->getPid()I

    move-result v2

    if-eq v2, v7, :cond_59

    monitor-enter v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6

    :try_start_e
    iget v3, v1, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    monitor-exit v1

    if-lez v3, :cond_59

    const-string v3, "BgJobTransferService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_22

    :catchall_3
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6

    :catch_6
    const-string v0, "BgJobTransferService"

    const-string v2, "JMS not responding"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    :goto_22
    monitor-enter v1

    :try_start_10
    iget-object v0, v1, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v3, "BgJobTransferService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Watch Dog: exception: for seq ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-static {v4, v5, v2, v3}, Lcom/motorola/camera/jms/BgJobTransferService;->notifyTransferJobStatus(JZLandroid/os/Bundle;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_23

    :cond_5a
    monitor-exit v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_11
    iput v0, v1, Lcom/motorola/camera/jms/BgJobTransferService;->mJobRefCount:I

    iget-object v0, v1, Lcom/motorola/camera/jms/BgJobTransferService;->mTransferJmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    monitor-exit v1

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_6
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2

    :pswitch_12
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForAeRunnable;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->sOneShotErrorCallbacks:Landroid/util/ArrayMap;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mAutoFocusStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void

    :pswitch_14
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;

    const/4 v1, 0x0

    :goto_24
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5c

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v3, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    if-nez v3, :cond_5b

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mCameraId:Ljava/lang/String;

    iput-object v3, v2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    :cond_5b
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateFullFrameRequestsRunnable;->mRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RequestListener;

    invoke-interface {v3, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RequestListener;->onRequest(ILcom/motorola/camera/fsm/RequestWrapper;)V

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->onComplete(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_5c
    return-void

    :pswitch_15
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;-><init>()V

    const v2, 0x7f120146

    iput v2, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    const v2, 0x7f120145

    iput v2, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    new-instance v2, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v0, 0x7f120115

    iput v0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    new-instance v0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v0, v8}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    const v0, 0x7f120129

    iput v0, v1, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :pswitch_16
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void

    :pswitch_17
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object v1, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v1, Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->removePreviousOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->ABORT_CAPTURE_BEFORE_CLOSE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v2

    if-nez v2, :cond_5d

    const/4 v2, 0x1

    goto :goto_25

    :cond_5d
    const/4 v2, 0x0

    :goto_25
    if-eqz v2, :cond_5e

    iget-object v2, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/device/callables/CameraListener;

    iget-object v3, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v6, Lcom/motorola/camera/device/callables/AbortCapturesRequestCallable;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7, v2, v3}, Lcom/motorola/camera/device/callables/AbortCapturesRequestCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/AbortCapturesListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    invoke-virtual {v4, v6}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    :cond_5e
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession$enumunboxing$(Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/device/callables/CameraListener;

    iget-object v3, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v5, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;

    invoke-direct {v5, v1, v0, v2, v3}, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/parser/DropShadowEffect;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void

    :pswitch_18
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->close(Z)V

    return-void

    :pswitch_19
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->close(Z)V

    return-void

    :pswitch_1a
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;->mBundleType:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    return-void

    :pswitch_1b
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mHighResAutoSwitchAllowed:Z

    return-void

    :pswitch_1c
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$H_tQLwGN7x5XWv_Z2tL1qO7SxEQ(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    return-void

    :goto_26
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;

    sget v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->$r8$clinit:I

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->shutter:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;->getShutterState()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;->PHOTO_DISABLED:Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton$ShutterState;

    if-ne v2, v3, :cond_5f

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_5f
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->unsetPhotoStateRunnable:Landroidx/work/Worker$1;

    if-nez v2, :cond_60

    new-instance v2, Landroidx/work/Worker$1;

    invoke-direct {v2, v1}, Landroidx/work/Worker$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterButton;)V

    iput-object v2, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->unsetPhotoStateRunnable:Landroidx/work/Worker$1;

    :cond_60
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterTouchHandler;->unsetPhotoStateRunnable:Landroidx/work/Worker$1;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
